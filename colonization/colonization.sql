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
		'CE', 'CM', 'PHYS', 'MD',
		'SURG', 'EMT', 'ASTROENG',
		'ASTG', 'AE', 'BIO', 'CHEM',
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
Physician (PHYS)
Medical Doctor (MD)
Surgeon (SURG)
Emergency Medical Technician (EMT)
Astronautical Engineer (ASTROENG)
Astrogeologist (ASTG)
Aerospace Engineer (AE)
Biologist (BIO)
Chemist (CHEM)
Geologist (GEOL)
Meteorologist (METEO)
Physician (PHYS)
Botanist (BOT)
Environmental Scientist (ENVSCI)
Materials Engineer (MATE)
 */ 