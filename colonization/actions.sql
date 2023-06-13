USE colonization;

-- ------------------- VIEWS -------------------

-- VIEW: colony_leaders
/*
   This view retrieves information about colony leaders.
   It includes the colony name, location, established date, population,
   and the first name and last name of the leader.
   The view joins the 'colonies' table with the 'astronauts' table
   using the leader ID as a foreign key to get the leader's information.
   This view provides a convenient way to access the details of colony leaders.
*/

DROP VIEW IF EXISTS `colony_leaders`;
CREATE VIEW `colony_leaders` AS
SELECT c.colony_name, c.location, c.established_date, c.population,
	 a.firstname AS leader_firstname, a.lastname AS leader_lastname
FROM colonies c
JOIN astronauts a ON c.leader_id = a.id;


-- VIEW: mission_crew
/*
   This view retrieves information about the crew members assigned to missions.
   It includes the mission name, mission description, crew member responsibilities,
   access rank, first name, last name, and mission role.
   The view joins the 'missions', 'crew_members', 'astronauts', and 'mission_roles' tables
   using their respective IDs as foreign keys to get the required information.
   This view provides a comprehensive overview of the crew members and their roles in missions.
*/
DROP VIEW IF EXISTS `mission_crew`;
CREATE VIEW `mission_crew` AS
SELECT m.name AS mission_name, m.description AS mission_description,
	cm.responsibilities, cm.access_rank,
	a.firstname, a.lastname,
	mr.mission_role
FROM missions m
JOIN crew_members cm ON m.id = cm.mission_id
JOIN astronauts a ON cm.astronaut_id = a.id
JOIN mission_roles mr ON cm.mission_role_id = mr.id;


-- VIEW: building_materials_info
/*
   This view retrieves information about the building materials used in buildings.
   It includes the building name, functions, material name, and material description.
   The view joins the 'buildings', 'building_materials', and 'resources' tables
   using their respective IDs as foreign keys to get the necessary details.
   This view offers insights into the relationship between buildings and the materials they utilize.
*/

DROP VIEW IF EXISTS `building_materials_info`;
CREATE VIEW `building_materials_info` AS
SELECT b.name AS building_name, b.functions, r.name AS material_name,
       r.description AS material_description
FROM buildings b
JOIN building_materials bm ON b.id = bm.building_id
JOIN resources r ON bm.material_id = r.id;



-- ------------------- TRIGGERS-------------------

-- delete astronaut

/*
   Trigger to remove astronaut and update building manager.
*/

DROP TRIGGER IF EXISTS DeleteAstronautAndUpdateBuildingManager;
DELIMITER $$
CREATE TRIGGER DeleteAstronautAndUpdateBuildingManager
BEFORE DELETE ON astronauts
FOR EACH ROW
BEGIN
    UPDATE buildings SET facility_manager_id = 1 WHERE facility_manager_id = OLD.id;
END$$
DELIMITER ;

/*
   Trigger to remove astronaut and update colony leader.
*/

DROP TRIGGER IF EXISTS DeleteAstronautAndUpdateColonyLeader;
DELIMITER $$
CREATE TRIGGER DeleteAstronautAndUpdateColonyLeader
BEFORE DELETE ON astronauts
FOR EACH ROW
BEGIN
    UPDATE colonies SET leader_id = 1 WHERE leader_id = OLD.id;
END$$

DELIMITER ;


/*
   Deleting related records in a table crew_members
*/

DROP TRIGGER IF EXISTS DeleteAstronautAndCrewMembers;
DELIMITER $$
CREATE TRIGGER DeleteAstronautAndCrewMembers
BEFORE DELETE ON astronauts
FOR EACH ROW
BEGIN
    DELETE FROM crew_members WHERE astronaut_id = OLD.id;
END$$
DELIMITER ;


/*
   Update population after delete astronaut.
*/

DROP TRIGGER IF EXISTS UpdatePopulationDown;
DELIMITER $$
CREATE TRIGGER UpdatePopulationDown AFTER DELETE ON astronauts
FOR EACH ROW
BEGIN
    UPDATE colonies
    SET population = population - 1
    WHERE id = OLD.colony_id;
END$$
DELIMITER ;


/*
   Update population after added astronaut.
*/

DROP TRIGGER IF EXISTS UpdatePopulationUp;
DELIMITER $$
CREATE TRIGGER UpdatePopulationUp AFTER INSERT ON astronauts
FOR EACH ROW
BEGIN
    UPDATE colonies
    SET population = population + 1
    WHERE id = NEW.colony_id;
END$$
DELIMITER ;


SELECT * FROM astronauts WHERE id = 55;
DELETE FROM astronauts WHERE id = 55;

INSERT INTO `astronauts` (id, firstname, lastname, gender, birthday, nationality, colony_id, skills)
VALUES
	(55, 'Ava', 'Wright', 'Female', '1987-08-29', 'UK', 3, 'Experienced in space habitats and life support systems');

SHOW TRIGGERS;




-- ------------------- SCRIPTS -------------------

/*
   Sample of colonies with information
   about the number of astronauts in each colony.
*/

SELECT c.colony_name, COUNT(a.id) AS astronaut_count
FROM colonies c
LEFT JOIN astronauts a ON c.id = a.colony_id
GROUP BY c.colony_name;


/* 
   A selection of missions with information
   about the number of crew members and their overall rank.
*/

SELECT
	m.name AS mission_name,
	COUNT(cm.astronaut_id) AS crew_count,
	SUM(cm.access_rank) AS total_rank
FROM missions m
LEFT JOIN crew_members cm ON m.id = cm.mission_id
GROUP BY m.name;


/*
   A selection of buildings with information
   about the materials used in each building.
*/

SELECT b.name AS building_name, GROUP_CONCAT(r.name) AS material_names
FROM buildings b
LEFT JOIN building_materials bm ON b.id = bm.building_id
LEFT JOIN resources r ON bm.material_id = r.id
GROUP BY b.name;


/*
   A sample of astronauts with information about the number
   of missions they have completed and their roles.
*/

SELECT
	a.firstname, a.lastname,
	COUNT(cm.mission_id) AS mission_count,
	GROUP_CONCAT(mr.mission_role) AS mission_roles
FROM astronauts a
LEFT JOIN crew_members cm ON a.id = cm.astronaut_id
LEFT JOIN missions m ON cm.mission_id = m.id
LEFT JOIN mission_roles mr ON cm.mission_role_id = mr.id
GROUP BY a.id;


-- ------------------- PROCEDURES -------------------

/*
   Mission details
*/

DROP PROCEDURE IF EXISTS GetMissionDetails;
DELIMITER $$
CREATE PROCEDURE GetMissionDetails(IN mission_id INT)
BEGIN
    SELECT m.name AS mission_name, a.firstname, a.lastname, cm.responsibilities
    FROM missions m
    JOIN crew_members cm ON m.id = cm.mission_id
    JOIN astronauts a ON cm.astronaut_id = a.id
    WHERE m.id = mission_id;
END$$
DELIMITER ;

CALL GetMissionDetails(1);
CALL GetMissionDetails(2);


/*
   Update information about leader.
*/

DROP PROCEDURE IF EXISTS UpdateLeader;
DELIMITER $$
CREATE PROCEDURE UpdateLeader(IN colony_id INT, IN new_leader_id INT)
BEGIN
    UPDATE colonies
    SET leader_id = new_leader_id
    WHERE id = colony_id;
END$$
DELIMITER ;

CALL UpdateColony(1, 45)


