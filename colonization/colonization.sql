-- PROJECT: Colonization
/*
   This database project aims to model the infrastructure and resources required for the colonization of Mars.
   It includes various tables to represent different aspects of the colonization process such as addresses, astronauts,
   building materials, buildings, colonies, crew members, equipment, missions, resources, and more.

   The tables capture information about the key entities involved in the colonization efforts, their relationships,
   and relevant attributes. This database can be used to track and manage data related to the physical infrastructure,
   personnel, resources, and missions associated with the Mars colonization project.

   The tables can be further expanded and customized based on specific requirements and additional functionality
   needed for the project. It provides a foundation for storing and querying data related to various aspects of
   the colonization process, facilitating effective management and decision-making for the successful
   establishment and operation of colonies on Mars.
*/

/* 
	Notes:
	1) id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT -> [1:2147483647] sufficient range | +
	   id SERIAL PRIMARY KEY -> [1: 9223372036854775807] redundant range    | -
 
	2) Pilot Astronaut (P), Mission Specialist (MS), Payload Specialist (PS),
	   Commander (CDR), Roboticist (RB), Bioengineering BENG, Aerospace Engineer (AE),
	   Mechanical Engineer (ME), Robotics Engineer (ROBENG), Civil Engineer (CE),
	   Construction Manager (CM), Medical Doctor (MD), Surgeon (SURG),
	   Emergency Medical Technician (EMT), Astronautical Engineer (ASTROENG),
	   Astrogeologist (ASTG), Biologist (BIO), Chemist (CHEM), Geologist (GEOL),
	   Meteorologist (METEO), Physician (PHYS), Botanist (BOT),
	   Environmental Scientist (ENVSCI), Materials Engineer (MATE)
*/

CREATE DATABASE IF NOT EXISTS colonization;
USE colonization;

-- --------------------------------
-- Drop all tables
DROP PROCEDURE IF EXISTS DropTables; -- clear cache
DELIMITER $$
CREATE PROCEDURE DropTables()
BEGIN    
    SET @drop_tables = (
        SELECT GROUP_CONCAT(table_name)
        FROM information_schema.tables
        WHERE table_schema = 'colonization'
    );
    
    SET @drop_tables_statement = CONCAT('DROP TABLE IF EXISTS ', @drop_tables);
   
    IF @drop_tables IS NULL THEN
		SELECT 'Empty tables';
    ELSE
        PREPARE drop_tables_stmt FROM @drop_tables_statement;
        EXECUTE drop_tables_stmt;
        DEALLOCATE PREPARE drop_tables_stmt; -- clear memory
    END IF;
END$$
DELIMITER ;

CALL DropTables();
-- ---------------------------------


-- TABLE: astronauts
/*
   Table to store information about astronauts.
   Includes columns for their personal details such as first name,
   last name, gender, nationality, membership in a colony.
*/

-- DROP TABLE IF EXISTS `astronauts`;
CREATE TABLE `astronauts` (
  id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT, -- * 1 notes
  firstname VARCHAR(100),
  lastname VARCHAR(100) COMMENT 'Surname',
  gender ENUM('Male', 'Female', 'Other'),
  birthday DATE,
  nationality VARCHAR(100),
  colony_id INT UNSIGNED NOT NULL,
  skils TEXT
);


-- TABLE: colonies
/*
   Table to store information about colonies.
   Includes columns for colony name, location, established date, population, and leader ID.
*/

-- DROP TABLE IF EXISTS `colonies`;
CREATE TABLE `colonies` (
  id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  colony_name ENUM('Deimos', 'Phobos', 'Ares'),
  location VARCHAR(100) COMMENT 'coordinates',
  established_date DATE,
  population INT,
  leader_id INT UNSIGNED NOT NULL,
  FOREIGN KEY (leader_id) REFERENCES astronauts(id)
);

-- Ensures astronauts are associated with existing colonies
ALTER TABLE `astronauts`
ADD CONSTRAINT `fk_astronauts_colonies`
FOREIGN KEY (colony_id) REFERENCES colonies(id);


-- TABLE: mission_roles
/*
   Table to store information about different roles in missions.
   Includes columns for role name, description, and other relevant details.
*/

-- DROP TABLE IF EXISTS `mission_roles`;
CREATE TABLE `mission_roles` (
  id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  mission_role ENUM( -- * 2 notes
    'P', 'MS', 'PS', 'CDR', 'RB',
    'BENG', 'AE', 'ME', 'ROBENG',
    'CE', 'CM', 'MD',
    'SURG', 'EMT', 'ASTROENG',
    'ASTG', 'BIO', 'CHEM',
    'GEOL', 'METEO', 'PHYS',
    'BOT', 'ENVSCI', 'MATE') NOT NULL,
  description TEXT
);


-- TABLE: missions
/*
   Table to store information about missions.
   Includes columns for mission details such as name, description, start date, end date, and other relevant information.
*/

-- DROP TABLE IF EXISTS `missions`;
CREATE TABLE `missions` (
  id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255),
  description TEXT,
  launch_date DATE
);


-- TABLE: equipment
/*
   Table to store information about equipment.
   Includes columns for equipment name, purpose, category, and quantity.
*/

-- DROP TABLE IF EXISTS `equipment`;
CREATE TABLE `equipment` (
  id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100),
  purpose TEXT,
  category ENUM(''),
  quantity INT
);


-- TABLE: crew_members
/*
   Table to store information about crew members.
   Includes columns for crew member details such as name, role, and other relevant information.
*/

-- DROP TABLE IF EXISTS `crew_members`;
CREATE TABLE crew_members (
  id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  astronaut_id INT UNSIGNED NOT NULL,
  mission_id INT UNSIGNED NOT NULL,
  mission_role_id INT UNSIGNED NOT NULL,
  access_rank TINYINT CHECK (access_rank >= 1 AND access_rank <= 5),
  arrived_ship_id INT UNSIGNED NOT NULL,
  responsibilities TEXT,
  FOREIGN KEY (astronaut_id) REFERENCES astronauts(id),
  FOREIGN KEY (mission_id) REFERENCES missions(id),
  FOREIGN KEY (mission_role_id) REFERENCES mission_roles(id),
  FOREIGN KEY (arrived_ship_id) REFERENCES equipment(id)
);


-- TABLE: resources
/*
   Table to store information about resources.
   Includes columns for resource name, description, unit, and other relevant details.
*/

-- DROP TABLE IF EXISTS `resources`;
CREATE TABLE `resources` (
	id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(100),
	description TEXT,
	unit varchar(50),
	value BIGINT,
	mining ENUM(
		'Surface Mining', 'Underground Mining',
		'Placer Mining', 'In Situ Mining',
		'Open Pit Mining', 'Mountaintop Removal Mining',
		'Delivery from Earth') NOT NULL,
	fill_level ENUM(
		'Low', 'Medium', 'High', 
		'Very High', 'Critical', 'None'),
	estimated_reserve BIGINT,
	source_planet ENUM('Mars', 'Earth') NOT NULL
);


-- TABLE: equipment_resources
/*
   Table to establish the relationship between equipment and resources.
   Contains columns for equipment ID and resource ID.
*/

-- DROP TABLE IF EXISTS `equipment_resources`;
CREATE TABLE `equipment_resources` (
  equipment_id INT UNSIGNED NOT NULL,
  resource_id INT UNSIGNED NOT NULL,
  PRIMARY KEY (equipment_id, resource_id),
  FOREIGN KEY (equipment_id) REFERENCES equipment(id),
  FOREIGN KEY (resource_id) REFERENCES resources(id)
);


-- TABLE: addresses
/*
   Table to store address information for various entities.
   Contains columns for address details such as colony, sector, street, building type.
*/

-- DROP TABLE IF EXISTS `addresses`;
CREATE TABLE `addresses` (
    id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    colony_id INT UNSIGNED NOT NULL,
    sector VARCHAR(100) NOT NULL,
    street VARCHAR(100) NOT NULL,
    building_number VARCHAR(10) NOT NULL,
    building_type_id INT UNSIGNED NOT NULL,
    FOREIGN KEY (colony_id) REFERENCES colonies(id)
);


-- TABLE: buildings
/*
   Table to store information about buildings.
   Includes columns for building name, address ID, facility manager ID, and other building-specific details.
*/

-- DROP TABLE IF EXISTS `buildings`;
CREATE TABLE `buildings` (
	id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(100),
	address_id INT UNSIGNED NOT NULL, -- on base
	building_count TINYINT,
	facility_manager_id INT UNSIGNED NOT NULL,
	functions TEXT,
	energy_efficiency ENUM('Low', 'Medium', 'High'),
	state ENUM(
		'New', 'Good', 'Requires repair', 'Old',
		'Dilapidated', 'Under Construction' , 'Unsafe') NOT NULL,
	date_construction DATE,
	number_of_employees INT,
	peculiarities TEXT,
	area INT,
	construction_material_id INT UNSIGNED NOT NULL,
	last_inspection_date DATE,
	last_maintenance_date DATE,
	FOREIGN KEY (address_id) REFERENCES addresses(id),
	FOREIGN KEY (facility_manager_id) REFERENCES crew_members(id)
);

-- Ensures the building type of an address references an existing building
ALTER TABLE `addresses`
ADD CONSTRAINT `fk_addresses_buildings`
FOREIGN KEY (building_type_id) REFERENCES buildings(id);


-- TABLE: building_materials
/*
	Table to store the relationship between buildings and materials used for construction.
	It contains the building_id and material_id as foreign keys referencing the respective tables.
*/

-- DROP TABLE IF EXISTS `building_materials`;
CREATE TABLE `building_materials` (
	building_id INT UNSIGNED,
	material_id INT UNSIGNED,
	PRIMARY KEY (building_id, material_id),
	FOREIGN KEY (building_id) REFERENCES buildings(id),
	FOREIGN KEY (material_id) REFERENCES resources(id)
);


-- TABLE: equipment_building_relations
/*
   Table to establish the relationship between equipment and buildings.
   Contains columns for equipment ID and building ID.
*/

-- DROP TABLE IF EXISTS `equipment_building_relations`;
CREATE TABLE `equipment_building_relations` (
  id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  equipment_id INT UNSIGNED NOT NULL,
  building_id INT UNSIGNED NOT NULL,
  FOREIGN KEY (equipment_id) REFERENCES `equipment`(id) ON DELETE CASCADE,
  FOREIGN KEY (building_id) REFERENCES `buildings`(id) ON DELETE CASCADE
);


-- TABLE: life_support_systems
/*
   Table to store information about life support systems.
   Includes columns for system name, type, capacity, and other relevant details.
*/

-- DROP TABLE IF EXISTS `life_support_systems`;
CREATE TABLE `life_support_systems` (
  id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  system_name VARCHAR(100) NOT NULL,
  description TEXT,
  capacity FLOAT,
  status ENUM('Operational', 'Under Maintenance', 'Out of Service') NOT NULL,
  last_maintenance_date DATE,
  building_id INT UNSIGNED NOT NULL,
  FOREIGN KEY (building_id) REFERENCES buildings(id)
);


-- TABLE: life_support_system_building_relations
/*
   Table to establish the relationship between life support systems and buildings.
   Contains columns for life support system ID and building ID.
*/

-- DROP TABLE IF EXISTS `life_support_system_building_relations`;
CREATE TABLE `life_support_system_building_relations` (
  id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  life_support_system_id INT UNSIGNED NOT NULL,
  building_id INT UNSIGNED NOT NULL,
  FOREIGN KEY (life_support_system_id) REFERENCES life_support_systems(id),
  FOREIGN KEY (building_id) REFERENCES buildings(id)
);


