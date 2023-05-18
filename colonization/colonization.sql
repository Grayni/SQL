DROP DATABASE IF EXISTS colonization;
CREATE DATABASE colonization;
USE colonization;

DROP TABLE IF EXISTS `crew`;
CREATE TABLE `crew` (
	id SERIAL PRIMARY KEY,
	firstname VARCHAR(100),
	lastname VARCHAR(100) COMMENT 'Surname',
	mission_role ENUM(
		'P', 'MS', 'PS', 'CDR', 'RB',
		'BENG', 'AE', 'ME', 'ROBENG',
		'CE', 'CM', 'MD',
		'SURG', 'EMT', 'ASTROENG',
		'ASTG', 'BIO', 'CHEM',
		'GEOL', 'METEO', 'PHYS',
		'BOT', 'ENVSCI', 'MATE') NOT NULL, -- 1*
	access_rank TINYINT CHECK (access_rank >= 1 AND access_rank <= 5), -- [1, 5]
	gender ENUM('Male', 'Female', 'Other'),
	birthday DATE,
	nationality VARCHAR(100),
	skils TEXT,
	responsibilities TEXT,
	arrived_ship_id INT
);

/* 1*
Pilot Astronaut (P)
Mission Specialist (MS)
Payload Specialist (PS)
Commander (CDR)
Roboticist (RB)
Bioengineering BENG
Aerospace Engineer (AE)
Mechanical Engineer (ME)
Robotics Engineer (ROBENG)
Civil Engineer (CE)
Construction Manager (CM)
Medical Doctor (MD)
Surgeon (SURG)
Emergency Medical Technician (EMT)
Astronautical Engineer (ASTROENG)
Astrogeologist (ASTG)
Biologist (BIO)
Chemist (CHEM)
Geologist (GEOL)
Meteorologist (METEO)
Physician (PHYS)
Botanist (BOT)
Environmental Scientist (ENVSCI)
Materials Engineer (MATE)
 */

DROP TABLE IF EXISTS `resources`;
CREATE TABLE `resources` (
	id SERIAL PRIMARY KEY,
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

DROP TABLE IF EXISTS `buildings`;
CREATE TABLE `buildings` (
	id SERIAL PRIMARY KEY,
	name VARCHAR(100),
	address VARCHAR(200), -- on base
	building_count TINYINT,
	facility_manager_id BIGINT UNSIGNED NOT NULL,
	functions TEXT,
	energy_efficiency ENUM('Low', 'Medium', 'High'),
	state ENUM(
		'New', 'Good', 'Requires repair', 'Old',
		'Dilapidated', 'Under Construction' , 'Unsafe') NOT NULL,
	date_construction DATE,
	number_of_employees INT,
	peculiarities TEXT,
	area INT,
	construction_material_id BIGINT UNSIGNED NOT NULL,
	last_inspection_date DATE,
	last_maintenance_date DATE,
	FOREIGN KEY (facility_manager_id) REFERENCES crew(id),
	FOREIGN KEY (construction_material_id) REFERENCES resources(id)
);


