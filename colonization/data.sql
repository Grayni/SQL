USE colonization;

-- colonies 1.0
INSERT INTO `colonies` (colony_name, location, established_date)

VALUES
    ('Deimos', '20° N, 30° E', '2028-01-01'),
    ('Phobos', '10° S, 45° W', '2031-06-15'),
    ('Ares', '0° Equator, 60° E', '2035-12-31');


-- astronauts
INSERT INTO `astronauts` (firstname, lastname, gender, birthday, nationality, colony_id, skills)

VALUES
	('John', 'Smith', 'Male', '1990-01-15', 'USA', 1, 'Expert in Mars colonization research and robotics'),
    ('Emma', 'Johnson', 'Female', '1988-05-23', 'Canada', 2, 'Skilled in medical research for long-duration space missions'),
    ('Olivia', 'Brown', 'Female', '1992-02-08', 'USA', 3, 'Specialist in Mars agriculture and sustainable food production'),
    ('Michael', 'Williams', 'Male', '1985-07-10', 'Australia', 1, 'Proficient in Mars geology and geological sample analysis'),
    ('James', 'Jones', 'Male', '1983-11-17', 'UK', 2, 'Experienced in Mars habitat design and construction'),
    ('Emily', 'Davis', 'Female', '1986-09-29', 'USA', 1, 'Expert in Mars atmospheric research'),
    ('Alexander', 'Taylor', 'Male', '1987-06-12', 'Russia', 2, 'Skilled in Mars rover operations and exploration'),
    ('Sophia', 'Anderson', 'Female', '1984-04-05', 'Germany', 3, 'Specialist in space medicine and human physiology'),
    ('Daniel', 'Miller', 'Male', '1989-03-21', 'USA', 1, 'Proficient in Mars resource utilization and ISRU technologies'),
    ('Ava', 'Garcia', 'Female', '1995-12-19', 'Mexico', 2, 'Experienced in Mars mission planning and logistics'),
    ('Liam', 'Wilson', 'Male', '1988-08-14', 'USA', 1, 'Expert in Mars climate modeling and simulations'),
    ('Mia', 'Martinez', 'Female', '1991-03-03', 'Spain', 2, 'Skilled in astrobiology and extremophile research'),
    ('Benjamin', 'Lee', 'Male', '1983-12-27', 'South Korea', 3, 'Proficient in Mars surface operations and exploration'),
    ('Charlotte', 'Clark', 'Female', '1994-07-08', 'USA', 1, 'Specialist in space agriculture and hydroponics systems'),
    ('Henry', 'Rodriguez', 'Male', '1987-05-11', 'Mexico', 2, 'Experienced in space robotics and autonomous systems'),
    ('Harper', 'Walker', 'Female', '1990-01-19', 'USA', 3, 'Expert in Mars geological sample collection and analysis'),
    ('Ethan', 'Hill', 'Male', '1985-09-07', 'Canada', 1, 'Skilled in space medicine and telemedicine'),
    ('Amelia', 'Baker', 'Female', '1986-03-15', 'UK', 2, 'Specialist in Mars habitat life support systems'),
    ('Sebastian', 'Fisher', 'Male', '1992-11-28', 'Germany', 1, 'Proficient in Mars geophysical research'),
    ('Lily', 'Morris', 'Female', '1989-04-25', 'Australia', 2, 'Experienced in Mars mission simulation and training'),
    ('Noah', 'Lewis', 'Male', '1993-02-18', 'USA', 3, 'Expert in Mars mission communication and data systems'),
    ('Grace', 'Young', 'Female', '1984-10-05', 'Canada', 1, 'Skilled in astrochemistry and planetary formation'),
    ('David', 'Turner', 'Male', '1986-06-27', 'Australia', 2, 'Proficient in space physics and magnetospheric research'),
    ('Victoria', 'Adams', 'Female', '1990-12-10', 'USA', 1, 'Specialist in Mars exploration rover operations'),
    ('Samuel', 'Wright', 'Male', '1987-08-29', 'UK', 3, 'Experienced in space habitats and life support systems'),
    ('Ella', 'Harris', 'Female', '1991-05-17', 'USA', 2, 'Expert in Mars sample return missions'),
    ('Matthew', 'Cooper', 'Male', '1988-09-03', 'Russia', 1, 'Skilled in space navigation and trajectory analysis'),
    ('Scarlett', 'Barnes', 'Female', '1985-07-21', 'Canada', 3, 'Specialist in space radiation shielding and protection'),
    ('Leo', 'Allen', 'Male', '1989-03-14', 'Germany', 2, 'Proficient in Mars dust and regolith research'),
    ('Stella', 'Parker', 'Female', '1994-11-22', 'USA', 1, 'Experienced in space suit design and testing'),
    ('Daniel', 'Walker', 'Male', '1989-06-11', 'USA', 2, 'Expert in Mars surface exploration and mapping'),
    ('Chloe', 'Gonzalez', 'Female', '1986-03-02', 'Spain', 3, 'Skilled in astrogeology and planetary mapping'),
    ('Jacob', 'Hall', 'Male', '1983-11-25', 'Canada', 1, 'Proficient in space biology and life sciences'),
    ('Zoe', 'White', 'Female', '1992-08-12', 'USA', 2, 'Specialist in Mars habitat maintenance and repair'),
    ('Gabriel', 'Scott', 'Male', '1985-04-21', 'UK', 3, 'Experienced in Mars mission simulations and analog studies'),
    ('Sofia', 'Lee', 'Female', '1990-02-09', 'USA', 1, 'Expert in space weather and solar radiation'),
    ('Carter', 'Lopez', 'Male', '1987-09-07', 'Russia', 2, 'Skilled in Mars geological mapping and analysis'),
    ('Avery', 'Adams', 'Female', '1984-06-15', 'Canada', 3, 'Specialist in space agriculture and plant cultivation'),
    ('Owen', 'Morris', 'Male', '1989-03-21', 'Germany', 1, 'Proficient in space debris mitigation and tracking'),
    ('Luna', 'Rivera', 'Female', '1994-12-19', 'USA', 2, 'Experienced in Mars habitat testing and validation'),
    ('Liam', 'Martin', 'Male', '1993-02-18', 'USA', 3, 'Expert in Mars mission communication and data systems'),
    ('Emma', 'Lee', 'Female', '1984-10-05', 'Canada', 1, 'Skilled in astrochemistry and planetary formation'),
    ('Noah', 'Garcia', 'Male', '1986-06-27', 'Australia', 2, 'Proficient in space physics and magnetospheric research'),
    ('Olivia', 'Clark', 'Female', '1990-12-10', 'USA', 1, 'Specialist in Mars exploration rover operations'),
    ('Ava', 'Wright', 'Female', '1987-08-29', 'UK', 3, 'Experienced in space habitats and life support systems'),
    ('Sophia', 'Hall', 'Female', '1991-05-17', 'USA', 2, 'Expert in Mars sample return missions'),
    ('Jackson', 'Scott', 'Male', '1988-09-03', 'Russia', 1, 'Skilled in space navigation and trajectory analysis'),
    ('Mia', 'Adams', 'Female', '1985-07-21', 'Canada', 3, 'Specialist in space radiation shielding and protection'),
    ('Aiden', 'Morris', 'Male', '1989-03-14', 'Germany', 2, 'Proficient in Mars dust and regolith research'),
    ('Charlotte', 'Parker', 'Female', '1994-11-22', 'USA', 1, 'Experienced in space suit design and testing'),
    ('Liam', 'Martin', 'Male', '1993-02-18', 'USA', 3, 'Expert in Mars mission communication and data systems'),
    ('Emma', 'Lee', 'Female', '1984-10-05', 'Canada', 1, 'Skilled in astrochemistry and planetary formation'),
    ('Noah', 'Garcia', 'Male', '1986-06-27', 'Australia', 2, 'Proficient in space physics and magnetospheric research'),
    ('Olivia', 'Clark', 'Female', '1990-12-10', 'USA', 1, 'Specialist in Mars exploration rover operations'),
    ('Ava', 'Wright', 'Female', '1987-08-29', 'UK', 3, 'Experienced in space habitats and life support systems'),
    ('Sophia', 'Hall', 'Female', '1991-05-17', 'USA', 2, 'Expert in Mars sample return missions'),
    ('Jackson', 'Scott', 'Male', '1988-09-03', 'Russia', 1, 'Skilled in space navigation and trajectory analysis'),
    ('Mia', 'Adams', 'Female', '1985-07-21', 'Canada', 3, 'Specialist in space radiation shielding and protection'),
    ('Aiden', 'Morris', 'Male', '1989-03-14', 'Germany', 2, 'Proficient in Mars dust and regolith research'),
    ('Charlotte', 'Parker', 'Female', '1994-11-22', 'USA', 1, 'Experienced in space suit design and testing'),
    ('Daniel', 'Walker', 'Male', '1989-06-11', 'USA', 2, 'Expert in Mars surface exploration and mapping'),
    ('Chloe', 'Gonzalez', 'Female', '1986-03-02', 'Spain', 3, 'Skilled in astrogeology and planetary mapping'),
    ('Jacob', 'Hall', 'Male', '1983-11-25', 'Canada', 1, 'Proficient in space biology and life sciences'),
    ('Zoe', 'White', 'Female', '1992-08-12', 'USA', 2, 'Specialist in Mars habitat maintenance and repair'),
    ('Gabriel', 'Scott', 'Male', '1985-04-21', 'UK', 3, 'Experienced in Mars mission simulations and analog studies'),
    ('Sofia', 'Lee', 'Female', '1990-02-09', 'USA', 1, 'Expert in space weather and solar radiation'),
    ('Carter', 'Lopez', 'Male', '1987-09-07', 'Russia', 2, 'Skilled in Mars geological mapping and analysis'),
    ('Avery', 'Adams', 'Female', '1984-06-15', 'Canada', 3, 'Specialist in space agriculture and plant cultivation'),
    ('Owen', 'Morris', 'Male', '1989-03-21', 'Germany', 1, 'Proficient in space debris mitigation and tracking'),
    ('Luna', 'Rivera', 'Female', '1994-12-19', 'USA', 2, 'Experienced in Mars habitat testing and validation'),
    ('Elijah', 'Harris', 'Male', '1986-09-08', 'USA', 1, 'Skilled in space communications and satellite operations'),
    ('Harper', 'Turner', 'Female', '1987-07-14', 'Canada', 2, 'Expert in Mars atmospheric studies and climate modeling'),
    ('Sebastian', 'Collins', 'Male', '1992-05-19', 'Australia', 3, 'Proficient in space robotics and autonomous systems'),
    ('Amelia', 'Bailey', 'Female', '1990-03-25', 'USA', 1, 'Specialist in extraterrestrial life detection and astrobiology'),
    ('Grayson', 'Miller', 'Male', '1985-11-02', 'UK', 2, 'Experienced in Mars mission planning and logistics'),
    ('Layla', 'Young', 'Female', '1993-08-11', 'USA', 3, 'Expert in space medicine and astronaut health monitoring'),
    ('Henry', 'Flores', 'Male', '1988-12-07', 'Russia', 1, 'Skilled in Mars geology and rock sample analysis'),
    ('Mila', 'Baker', 'Female', '1984-04-16', 'Canada', 2, 'Specialist in space radiation effects and protection'),
    ('Jack', 'Gonzalez', 'Male', '1989-06-29', 'Germany', 3, 'Proficient in space propulsion systems and rocketry'),
    ('Emily', 'Roberts', 'Female', '1991-02-23', 'USA', 1, 'Experienced in Mars surface operations and rover control'),
    ('William', 'Hall', 'Male', '1987-09-18', 'UK', 2, 'Expert in space astrophysics and cosmology'),
    ('Scarlett', 'Carter', 'Female', '1990-07-12', 'USA', 3, 'Skilled in Mars soil analysis and regolith studies'),
    ('James', 'Murphy', 'Male', '1986-01-30', 'Australia', 1, 'Specialist in space mission simulations and training'),
    ('Aria', 'Lopez', 'Female', '1988-10-26', 'Canada', 2, 'Proficient in space weather forecasting and prediction'),
    ('Benjamin', 'Young', 'Male', '1983-12-14', 'USA', 3, 'Experienced in Mars habitat design and construction'),
    ('Lily', 'Hill', 'Female', '1989-04-21', 'UK', 1, 'Expert in space materials science and engineering'),
    ('Michael', 'Adams', 'Male', '1985-07-05', 'Germany', 2, 'Skilled in Mars geological field exploration'),
    ('Grace', 'Morris', 'Female', '1992-06-30', 'USA', 3, 'Specialist in space navigation and orbital mechanics'),
    ('Joseph', 'Cook', 'Male', '1987-09-24', 'Canada', 1, 'Proficient in space biology and biotechnology'),
    ('Victoria', 'Ramirez', 'Female', '1994-03-02', 'USA', 2, 'Experienced in Mars mission control and operations'),
    ('Ethan', 'Parker', 'Male', '1988-06-19', 'USA', 1, 'Skilled in Mars geophysics and planetary geodesy'),
    ('Ariana', 'Reed', 'Female', '1991-04-23', 'Canada', 2, 'Expert in space mission coordination and logistics'),
    ('Alexander', 'Bell', 'Male', '1985-11-15', 'Australia', 3, 'Proficient in space systems engineering and integration'),
    ('Brooklyn', 'Collins', 'Female', '1990-01-08', 'USA', 1, 'Specialist in Mars surface geology and crater analysis'),
    ('Mason', 'Foster', 'Male', '1987-09-27', 'UK', 2, 'Experienced in space biology and bioregenerative systems'),
    ('Aurora', 'Howard', 'Female', '1992-08-04', 'USA', 3, 'Expert in Mars atmospheric entry and descent'),
    ('Logan', 'Barnes', 'Male', '1986-05-11', 'Russia', 1, 'Skilled in space propulsion and rocket engine design'),
    ('Nora', 'Simmons', 'Female', '1984-02-16', 'Canada', 2, 'Specialist in space debris tracking and mitigation'),
    ('Lucas', 'Morgan', 'Male', '1989-07-30', 'Germany', 3, 'Proficient in Mars geological field mapping and analysis'),
    ('Hazel', 'Ross', 'Female', '1991-03-26', 'USA', 1, 'Experienced in space life support systems and habitation'),
    ('Matthew', 'Stewart', 'Male', '1987-10-01', 'UK', 2, 'Expert in space plasma physics and magnetospheric studies'),
    ('Natalie', 'Sanders', 'Female', '1990-06-14', 'USA', 3, 'Skilled in Mars mission planning and operations'),
    ('David', 'Turner', 'Male', '1985-12-27', 'Australia', 1, 'Specialist in space communications and satellite systems'),
    ('Samantha', 'Ward', 'Female', '1988-03-07', 'Canada', 2, 'Proficient in space weather and solar activity monitoring'),
    ('John', 'Harris', 'Male', '1983-11-11', 'USA', 3, 'Experienced in Mars rover operations and navigation'),
    ('Leah', 'Cox', 'Female', '1989-09-24', 'UK', 1, 'Expert in space materials science and metallurgy'),
    ('Christopher', 'Reid', 'Male', '1985-08-13', 'Germany', 2, 'Skilled in Mars atmospheric chemistry and analysis'),
    ('Stella', 'Fisher', 'Female', '1992-07-18', 'USA', 3, 'Specialist in space navigation and trajectory optimization'),
    ('Samuel', 'Murray', 'Male', '1987-12-09', 'Canada', 1, 'Proficient in space biology and astroecology'),
    ('Olivia', 'Bryant', 'Female', '1991-05-22', 'USA', 2, 'Experienced in Mars habitat design and ergonomics');
    
    
-- colonies 1.1
UPDATE colonies
SET
    population = (
        SELECT COUNT(*) FROM astronauts WHERE astronauts.colony_id = colonies.id
    ),
    leader_id = 
        CASE colony_name
            WHEN 'Deimos' THEN 77
            WHEN 'Phobos' THEN 61
            WHEN 'Ares' THEN 25
            ELSE leader_id
        END;


-- mission_roles
INSERT INTO `mission_roles` (mission_role, description)

VALUES
    ('P', 'Pilot - Responsible for spacecraft piloting and navigation during the mission.'),
    ('MS', 'Mission Specialist - Performs various scientific and technical tasks during the mission.'),
    ('PS', 'Payload Specialist - Responsible for specific payload operations and experiments.'),
    ('CDR', 'Commander - In charge of overall mission command, crew coordination, and decision-making.'),
    ('RB', 'Robotics Specialist - Handles robotic systems and operations.'),
    ('BENG', 'Biomedical Engineer - Focuses on biomedical systems and health monitoring of the crew.'),
    ('AE', 'Aerospace Engineer - Deals with spacecraft and aerospace systems engineering.'),
    ('ME', 'Mechanical Engineer - Responsible for mechanical systems and equipment maintenance.'),
    ('ROBENG', 'Robotic Engineer - Develops and maintains robotic systems and technologies.'),
    ('CE', 'Civil Engineer - Focuses on civil engineering tasks related to infrastructure and habitats.'),
    ('CM', 'Communications Specialist - Manages communication systems and protocols.'),
    ('MD', 'Medical Doctor - Provides medical care and monitors crew health during the mission.'),
    ('SURG', 'Surgeon - Specializes in surgical procedures and emergency medical care.'),
    ('EMT', 'Emergency Medical Technician - Assists with medical emergencies and first aid.'),
    ('ASTROENG', 'Astrobiological Engineer - Studies and develops technologies related to astrobiology.'),
    ('ASTG', 'Astrogeologist - Conducts geological research and analysis of Martian terrain.'),
    ('BIO', 'Biologist - Studies Martian biology and life forms.'),
    ('CHEM', 'Chemist - Conducts chemical analyses and experiments on Martian samples.'),
    ('GEOL', 'Geologist - Studies Martian geology and geological processes.'),
    ('METEO', 'Meteorologist - Monitors and studies Martian weather and atmospheric conditions.'),
    ('PHYS', 'Physicist - Conducts physical science experiments and research.'),
    ('BOT', 'Botanist - Studies Martian plant life and agriculture.'),
    ('ENVSCI', 'Environmental Scientist - Researches Martian environmental conditions and sustainability.'),
    ('MATE', 'Material Scientist - Conducts research on Martian materials and their properties.');

   
-- missions
INSERT INTO `missions` (name, description, launch_date)

VALUES
    ('Mars Mission 1', 'Exploration of Martian surface and collection of geological samples.', '2028-01-01'),
    ('Mars Mission 2', 'Study of Martian atmosphere and climate patterns.', '2028-02-15'),
    ('Mars Mission 3', 'Investigation of potential water sources on Mars.', '2028-04-10'),
    ('Mars Mission 4', 'Testing of new rover technology for enhanced mobility on Martian terrain.', '2028-06-22'),
    ('Mars Mission 5', 'Evaluation of potential landing sites for future human missions to Mars.', '2028-08-07'),
    ('Mars Mission 6', 'Assessment of radiation levels on Mars and their impact on human health.', '2028-09-18'),
    ('Mars Mission 7', 'Search for signs of past or present microbial life on Mars.', '2028-11-08'),
    ('Mars Mission 8', 'Investigation of Martian subsurface for possible underground habitats.', '2029-01-29'),
    ('Mars Mission 9', 'Experiments on Martian agriculture and sustainable food production.', '2029-03-12'),
    ('Mars Mission 10', 'Study of Martian magnetic fields and their influence on the planet.', '2029-04-25'),
    ('Mars Mission 11', 'Analysis of Martian dust storms and their impact on the atmosphere.', '2029-06-10'),
    ('Mars Mission 12', 'Exploration of Martian polar regions and search for frozen water.', '2029-07-22'),
    ('Mars Mission 13', 'Testing of new spacesuit technology for future extravehicular activities on Mars.', '2029-09-05'),
    ('Mars Mission 14', 'Investigation of potential resources for in-situ resource utilization on Mars.', '2029-10-17'),
    ('Mars Mission 15', 'Study of Martian geological formations and their history.', '2029-12-08'),
    ('Mars Mission 16', 'Assessment of the Martian ionosphere and its interaction with solar wind.', '2030-01-19'),
    ('Mars Mission 17', 'Evaluation of potential sites for future Martian colony establishment.', '2030-03-11'),
    ('Mars Mission 18', 'Experiments on 3D printing technology for construction on Mars.', '2030-04-24'),
    ('Mars Mission 19', 'Investigation of Martian caves for potential underground habitats.', '2030-06-07'),
    ('Mars Mission 20', 'Analysis of Martian rock formations and their composition.', '2030-07-20'),
    ('Mars Mission 21', 'Study of Martian volcanic activity and its implications for planetary evolution.', '2030-09-01'),
    ('Mars Mission 22', 'Assessment of potential risks and mitigation strategies for future human missions to Mars.', '2030-10-14'),
    ('Mars Mission 23', 'Exploration of Martian canyons and their geological significance.', '2030-11-25'),
    ('Mars Mission 24', 'Investigation of Martian dust devils and their role in atmospheric dynamics.', '2031-01-09'),
    ('Mars Mission 25', 'Testing of new communication systems for long-range Mars missions.', '2031-02-20'),
    ('Mars Mission 26', 'Evaluation of potential sites for future Martian resource extraction.', '2031-04-05'),
    ('Mars Mission 27', 'Study of Martian seismic activity and tectonic processes.', '2031-05-18'),
    ('Mars Mission 28', 'Assessment of Martian sand dunes and their formation mechanisms.', '2031-07-02'),
    ('Mars Mission 29', 'Investigation of Martian caves for potential signs of ancient life.', '2031-08-14'),
    ('Mars Mission 30', 'Analysis of Martian soil properties and their suitability for agriculture.', '2031-09-27'),
    ('Mars Mission 31', 'Study of Martian auroras and their connection to solar activity.', '2031-11-09'),
    ('Mars Mission 32', 'Assessment of potential risks from space debris in Martian orbit.', '2031-12-21'),
    ('Mars Mission 33', 'Exploration of Martian lava tubes and their potential for human habitation.', '2032-02-02'),
    ('Mars Mission 34', 'Investigation of potential underground water reservoirs on Mars.', '2032-03-16'),
    ('Mars Mission 35', 'Evaluation of Martian atmospheric escape and its effect on the planet.', '2032-04-29'),
    ('Mars Mission 36', 'Experiments on advanced propulsion systems for future Mars missions.', '2032-06-11'),
    ('Mars Mission 37', 'Testing of new energy storage technologies for sustainable power generation on Mars.', '2032-07-25'),
    ('Mars Mission 38', 'Investigation of Martian meteorites and their origin.', '2032-09-06'),
    ('Mars Mission 39', 'Study of potential sites for future Martian outpost establishment.', '2032-10-19'),
    ('Mars Mission 40', 'Assessment of potential risks from solar flares during Martian missions.', '2032-12-02');


-- equipment
INSERT INTO `equipment` (name, purpose, category, quantity) VALUES
    ('Research Lab', 'Conducting scientific experiments and research', 'Research Equipment', 5),
    ('Life Support System', 'Providing breathable air, water, and food for astronauts', 'Life Support Equipment', 10),
    ('Starship', 'Interplanetary spacecraft for crew and cargo transport', 'Mobile Equipment', 30),
    ('Cybertruck', 'Electric vehicle for transportation on Mars surface', 'Mobile Equipment', 49),
    ('Mars Rover', 'Exploration vehicle for surface exploration and sample collection', 'Mobile Equipment', 7),
    ('Drilling Equipment', 'Extracting core samples from Martian soil and rocks', 'Research Equipment', 4),
    ('Water Filtration System', 'Purifying Martian water sources for consumption', 'Support Equipment', 2),
    ('Greenhouse Modules', 'Growing plants for food and oxygen production', 'Support Equipment', 6),
    ('Communication Antenna', 'Facilitating communication with Earth and other Mars missions', 'Communication Equipment', 3),
    ('Radiation Shielding', 'Protecting astronauts from harmful radiation on Mars', 'Protective Equipment', 8),
    ('Solar Panels', 'Generating electricity from solar energy on Mars', 'Power Generation Equipment', 10),
    ('Medical Kit', 'Providing medical supplies and equipment for healthcare', 'Medical Equipment', 5),
    ('Mining Equipment', 'Extracting valuable resources from Martian soil', 'Research Equipment', 3),
    ('Atmospheric Analyzer', 'Analyzing the composition of Martian atmosphere', 'Research Equipment', 2),
    ('Water Extraction Device', 'Extracting water from underground sources on Mars', 'Support Equipment', 4),
    ('Mars Suit', 'Protective suit for astronauts during extravehicular activities', 'Protective Equipment', 10),
    ('Geological Tools', 'Tools for studying Martian geology and rock formations', 'Research Equipment', 5),
    ('Power Storage Batteries', 'Storing generated energy for later use', 'Power Generation Equipment', 6),
    ('Medical Scanner', 'Scanning and diagnosing medical conditions', 'Medical Equipment', 3),
    ('Mars Helicopter', 'Unmanned aerial vehicle for aerial exploration', 'Mobile Equipment', 2),
    ('Water Recycling System', 'Recycling and purifying water for sustainable use', 'Support Equipment', 4),
    ('Communication System', 'Facilitating communication between astronauts and mission control', 'Communication Equipment', 5),
    ('Climate Control System', 'Regulating temperature and humidity in habitats', 'Life Support Equipment', 6),
    ('Robotic Arm', 'Manipulator for handling objects and performing tasks', 'Support Equipment', 8),
    ('Lab Equipment', 'Various equipment for scientific experiments and analysis', 'Research Equipment', 10),
    ('Airlock Chamber', 'Sealed chamber for transitioning between indoor and outdoor environments', 'Support Equipment', 3),
    ('Emergency Medical Kit', 'Emergency supplies for medical emergencies', 'Medical Equipment', 4),
    ('Seismic Monitoring Station', 'Monitoring seismic activities and movements on Mars', 'Research Equipment', 2),
    ('Water Storage Tanks', 'Storing water for long-term use', 'Support Equipment', 6),
    ('Astronaut Helmets', 'Protective helmets for astronauts', 'Protective Equipment', 12),
    ('Mars Soil Analyzer', 'Analyzing the composition of Martian soil', 'Research Equipment', 4),
    ('Power Distribution Unit', 'Distributing generated power to various systems', 'Power Generation Equipment', 5),
    ('Surgical Tools', 'Tools for performing medical surgeries', 'Medical Equipment', 3),
    ('Mars Excavator', 'Heavy machinery for excavation and construction on Mars', 'Mobile Equipment', 2),
    ('Hydroponic System', 'Growing plants without soil using nutrient-rich water', 'Support Equipment', 5),
    ('Satellite Communication System', 'Establishing communication with satellites in orbit', 'Communication Equipment', 4),
    ('Radiation Monitoring Device', 'Monitoring radiation levels on Mars', 'Research Equipment', 3),
    ('Water Purification System', 'Purifying Martian water sources for various uses', 'Support Equipment', 4),
    ('Emergency Shelter', 'Portable shelter for emergency situations', 'Support Equipment', 3),
    ('Mars Mapping Drone', 'Unmanned aerial vehicle for mapping Martian surface', 'Mobile Equipment', 2),
    ('Lab Freezer', 'Freezing and preserving samples and specimens', 'Research Equipment', 3),
    ('Mars Atmospheric Analyzer', 'Analyzing the atmospheric conditions on Mars', 'Research Equipment', 3),
    ('Solar Power Panels', 'Generating electricity from solar energy on Mars', 'Power Generation Equipment', 8),
    ('Emergency Oxygen Supply', 'Providing emergency oxygen in case of system failure', 'Life Support Equipment', 5),
    ('Mars Dust Vacuum', 'Removing dust and debris from equipment and habitats', 'Support Equipment', 4),
    ('Radioisotope Thermoelectric Generator', 'Generating power using radioactive decay', 'Power Generation Equipment', 3),
    ('Microbiology Lab', 'Conducting research on microbial life on Mars', 'Research Equipment', 2),
    ('Mars Habitat Module', 'Living quarters for astronauts on Mars', 'Support Equipment', 6),
    ('Astrobiology Experiment Kit', 'Equipment for studying the potential for life on Mars', 'Research Equipment', 4),
    ('Water Desalination System', 'Removing salt from Martian water sources', 'Support Equipment', 3),
    ('Emergency Communication Beacon', 'Emergency communication device for distress signals', 'Communication Equipment', 4),
    ('Robotic Mining System', 'Automated system for mining resources on Mars', 'Mobile Equipment', 3),
    ('Portable Laboratory', 'Compact lab for on-site analysis and experiments', 'Research Equipment', 5),
    ('Geothermal Power Generator', 'Generating power using Mars\'s geothermal energy', 'Power Generation Equipment', 2),
    ('Mars EVA Suit', 'Advanced spacesuit for extravehicular activities on Mars', 'Protective Equipment', 10),
    ('Food Production System', 'Growing food crops for long-duration missions', 'Support Equipment', 8),
    ('Astronomy Telescope', 'Observing celestial objects from the surface of Mars', 'Research Equipment', 3),
    ('Water Recycling Unit', 'Recycling and purifying wastewater for reuse', 'Support Equipment', 5),
    ('Emergency First Aid Kit', 'Essential medical supplies for emergency medical care', 'Medical Equipment', 6),
    ('Mars Lander', 'Unmanned spacecraft for landing on Mars surface', 'Mobile Equipment', 2),
    ('Portable Weather Station', 'Measuring and monitoring weather conditions on Mars', 'Research Equipment', 3),
    ('Mars Rover Repair Kit', 'Tools and spare parts for repairing Mars rovers', 'Support Equipment', 4),
    ('Mars Geological Drill', 'Drilling equipment for studying Martian geology', 'Research Equipment', 3),
    ('Hydroponic Nutrient Solution', 'Nutrient-rich solution for hydroponic plant growth', 'Support Equipment', 5),
    ('Satellite Communication Antenna', 'Receiving and transmitting signals to Mars satellites', 'Communication Equipment', 3),
    ('Mars Seismometer', 'Measuring and monitoring seismic activity on Mars', 'Research Equipment', 2),
    ('Portable Water Storage Container', 'Compact container for storing water on Mars', 'Support Equipment', 5),
    ('Mars Rover Navigation System', 'Advanced navigation system for Mars rovers', 'Mobile Equipment', 4),
    ('Lab Centrifuge', 'Equipment for separating substances based on density', 'Research Equipment', 4),
    ('Emergency Fire Suppression System', 'Quick-response system for extinguishing fires on Mars', 'Support Equipment', 3),
    ('Mars Sample Collection Kit', 'Tools and containers for collecting Martian samples', 'Research Equipment', 6),
    ('Portable Solar Charger', 'Charging devices using solar energy on Mars', 'Support Equipment', 5),
    ('Medical Imaging Scanner', 'Diagnostic imaging equipment for medical examinations', 'Medical Equipment', 3),
    ('Mars Habitat Airlock', 'Pressurized entrance and exit for Mars habitats', 'Support Equipment', 4),
    ('Bioregenerative Life Support System', 'Closed-loop system for recycling air, water, and waste', 'Life Support Equipment', 4),
    ('Mars Rover Remote Manipulator', 'Remote-controlled robotic arm for Mars rovers', 'Mobile Equipment', 3),
    ('Lab Incubator', 'Equipment for cultivating and growing microorganisms', 'Research Equipment', 3),
    ('Emergency Lighting System', 'Backup lighting system for power outages', 'Support Equipment', 6),
    ('Mars Dust Protection Shield', 'Protective shield against abrasive Martian dust', 'Protective Equipment', 5),
    ('Portable Water Filtration Device', 'Filtering water from natural sources on Mars', 'Support Equipment', 4),
    ('Mars Rover Cameras', 'High-resolution cameras for capturing images and videos on Mars', 'Mobile Equipment', 5),
    ('Portable Laboratory Spectrometer', 'Analyzing the composition of Martian samples', 'Research Equipment', 3),
    ('Emergency Evacuation Vehicle', 'Vehicle for emergency evacuation from Mars surface', 'Mobile Equipment', 2),
    ('Lab Autoclave', 'Sterilizing equipment and materials for scientific experiments', 'Research Equipment', 3),
    ('Mars Greenhouse', 'Controlled environment for plant cultivation on Mars', 'Support Equipment', 4),
    ('Geological Hammer', 'Tool for breaking rocks and collecting geological samples', 'Research Equipment', 6),
    ('Portable Solar Power Bank', 'Portable power bank charged by solar energy', 'Support Equipment', 8),
    ('Portable Ultrasound Scanner', 'Portable medical imaging device for diagnostic purposes', 'Medical Equipment', 4),
    ('Mars Rover Communications Antenna', 'Communication antenna for Mars rovers', 'Mobile Equipment', 3),
    ('Lab Microscope', 'Instrument for magnifying and observing small specimens', 'Research Equipment', 5),
    ('Emergency Escape Pod', 'Capsule for emergency escape from Mars habitats', 'Support Equipment', 2),
    ('Mars Rover Solar Array', 'Solar panels for powering Mars rovers', 'Mobile Equipment', 5),
    ('Lab Spectrophotometer', 'Measuring the intensity of light absorbed by substances', 'Research Equipment', 4),
    ('Portable Air Purification System', 'Removing contaminants from the air in enclosed spaces', 'Support Equipment', 6),
    ('Mars Rover Sampling Arm', 'Robotic arm for collecting and storing Martian samples', 'Mobile Equipment', 4),
    ('Portable Laboratory Oven', 'Heating and sterilizing equipment and samples', 'Research Equipment', 3),
    ('Emergency Supply Cache', 'Stockpile of essential supplies for emergency situations', 'Support Equipment', 5),
    ('Mars Rover Wheel Assembly', 'Wheel assembly for Mars rovers', 'Mobile Equipment', 6),
    ('Lab Microplate Reader', 'Analyzing samples in microplates for research', 'Research Equipment', 3),
    ('Portable Water Extraction Device', 'Extracting water from underground sources on Mars', 'Support Equipment', 4),
    ('Mars Rover Robotic Arm', 'Robotic arm for manipulating objects on Mars', 'Mobile Equipment', 4),
    ('Portable DNA Sequencer', 'Sequencing DNA samples for genetic analysis', 'Research Equipment', 2),
    ('Emergency Medical Kit', 'Essential medical supplies for emergencies', 'Medical Equipment', 6),
    ('Mars Rover Navigation Camera', 'Camera for capturing images and aiding in navigation', 'Mobile Equipment', 5),
    ('Lab Incinerator', 'Equipment for burning and disposing of laboratory waste', 'Research Equipment', 3),
    ('Portable Waste Management System', 'Managing and processing waste materials on Mars', 'Support Equipment', 5),
    ('Mars Rover Drill', 'Drilling tool for collecting subsurface samples on Mars', 'Mobile Equipment', 4),
    ('Portable X-ray Machine', 'Portable device for medical imaging using X-rays', 'Medical Equipment', 4),
    ('Lab Magnetic Stirrer', 'Stirring liquids in laboratory experiments', 'Research Equipment', 5),
    ('Emergency Shelter Tent', 'Portable shelter for emergency situations', 'Support Equipment', 8),
    ('Mars Rover Soil Analyzer', 'Analyzing soil composition and properties on Mars', 'Research Equipment', 3),
	('Portable Oxygen Generator', 'Generating oxygen from Martian resources', 'Life Support Equipment', 4),
	('Mars Drone', 'Unmanned aerial vehicle for aerial exploration on Mars', 'Mobile Equipment', 2),
	('Portable Lab Centrifuge', 'Separating and isolating substances in laboratory samples', 'Research Equipment', 4),
	('Emergency Fire Extinguisher', 'Extinguishing fires in Mars habitats', 'Support Equipment', 6),
	('Mars Rover LIDAR System', 'Laser-based system for mapping and navigation on Mars', 'Mobile Equipment', 3),
	('Lab DNA Sequencing Machine', 'Sequencing DNA samples for genetic analysis', 'Research Equipment', 3),
	('Portable Water Storage Container', 'Storing and transporting water on Mars', 'Support Equipment', 6),
	('Mars Rover Weather Station', 'Monitoring weather conditions on Mars', 'Mobile Equipment', 5),
	('Lab Microarray Scanner', 'Analyzing gene expression patterns on microarrays', 'Research Equipment', 3),
	('Portable Airlock System', 'Portable pressurized entrance and exit for extravehicular activities', 'Support Equipment', 3),
	('Mars Rover Solar Panel Cleaner', 'Cleaning and maintaining solar panels on Mars rovers', 'Mobile Equipment', 5),
	('Lab Freeze Dryer', 'Preserving biological samples through freeze-drying', 'Research Equipment', 3),
	('Portable Emergency Radio', 'Communication device for emergency situations', 'Communication Equipment', 8),
	('Mars Rover Robotic Arm Tools', 'Various tools and attachments for the robotic arm on Mars rovers', 'Mobile Equipment', 6),
	('Portable Laboratory Balance', 'Measuring mass and weighing substances in the lab', 'Research Equipment', 4),
	('Emergency First Aid Kit', 'Basic medical supplies for first aid treatment', 'Medical Equipment', 8),
	('Mars Habitat Construction Kit', 'Tools and materials for constructing habitats on Mars', 'Support Equipment', 4),
	('Lab Fume Hood', 'Containment system for working with hazardous or noxious gases', 'Research Equipment', 3),
	('Portable Solar Water Heater', 'Heating water using solar energy on Mars', 'Support Equipment', 5),
	('Mars Rover Sample Storage Container', 'Container for storing and preserving Martian samples', 'Mobile Equipment', 6),
	('Portable Lab Microplate Washer', 'Washing and cleaning microplates used in laboratory experiments', 'Research Equipment', 4),
	('Emergency Satellite Phone', 'Communication device for satellite-based communication in remote areas', 'Communication Equipment', 4),
	('Mars Rover Stereo Camera', 'Stereo vision system for depth perception on Mars rovers', 'Mobile Equipment', 5),
	('Lab Electrophoresis System', 'Separating and analyzing biomolecules in the lab', 'Research Equipment', 4),
	('Portable Solar Oven', 'Cooking and food heating using solar energy on Mars', 'Support Equipment', 6),
	('Mars Habitat Repair Kit', 'Tools and materials for repairing and maintaining Mars habitats', 'Support Equipment', 4),
	('Lab Magnetic Resonance Imaging (MRI) Machine', 'Imaging technique for visualizing internal structures in the lab', 'Medical Equipment', 2),
	('Portable Lab Incubator Shaker', 'Simultaneous incubation and shaking of samples in the lab', 'Research Equipment', 3),
	('Emergency GPS Locator Beacon', 'Emergency distress beacon with GPS location capabilities', 'Communication Equipment', 4),
	('Mars Rover Panoramic Camera', 'High-resolution panoramic imaging system on Mars rovers', 'Mobile Equipment', 5),
	('Lab Spectrophotometer', 'Measuring light intensity and absorption in the lab', 'Research Equipment', 4),
	('Portable Solar Power Bank', 'Portable power storage and charging device using solar energy', 'Power Generation Equipment', 8),
	('Mars Habitat Air Filtration System', 'Filtering and purifying air in Mars habitats', 'Life Support Equipment', 5),
	('Lab DNA Synthesizer', 'Synthesizing custom DNA sequences in the lab', 'Research Equipment', 3),
	('Portable Lab Autoclave', 'Sterilizing laboratory equipment and materials', 'Research Equipment', 5),
	('Emergency Survival Kit', 'Essential supplies for survival in emergency situations', 'Support Equipment', 10),
	('Mars Rover Hazard Avoidance Camera', 'Camera system for detecting and avoiding hazards on Mars', 'Mobile Equipment', 6),
	('Lab Gel Documentation System', 'Documenting and analyzing DNA and protein gels in the lab', 'Research Equipment', 3),
	('Portable Solar Charger', 'Charging electronic devices using solar power on Mars', 'Power Generation Equipment', 10),
	('Mars Habitat Waste Recycling System', 'Processing and recycling waste materials in Mars habitats', 'Life Support Equipment', 4),
	('Lab Fluorescence Microscope', 'Microscope for visualizing fluorescent samples in the lab', 'Research Equipment', 4),
	('Portable Lab Water Purification System', 'Purifying and filtering water for laboratory use on Mars', 'Research Equipment', 5),
	('Emergency Portable Shelter', 'Foldable and portable shelter for emergency situations', 'Support Equipment', 8),
	('Mars Rover Soil Moisture Sensor', 'Measuring and monitoring soil moisture content on Mars', 'Mobile Equipment', 4),
	('Lab Gene Sequencer', 'High-throughput DNA sequencing instrument in the lab', 'Research Equipment', 2),
	('Portable Lab PCR Machine', 'Performing polymerase chain reaction (PCR) in the lab', 'Research Equipment', 3),
	('Emergency Solar-Powered Radio', 'Solar-powered radio for communication in emergency situations', 'Communication Equipment', 6),
	('Mars Rover Robotic Arm Gripper', 'Gripper attachment for the robotic arm on Mars rovers', 'Mobile Equipment', 5),
	('Lab Microbial Incubator', 'Creating optimal conditions for microbial growth in the lab', 'Research Equipment', 3),
	('Portable Water Filtration System', 'Filtering and purifying water from Martian sources', 'Life Support Equipment', 6),
	('Mars Habitat Fire Suppression System', 'Suppression and control of fires in Mars habitats', 'Support Equipment', 4),
	('Lab Ultracentrifuge', 'Centrifuge for separating and analyzing biomolecules at high speeds', 'Research Equipment', 3),
	('Portable Lab PCR Thermal Cycler', 'Device for performing PCR amplification in the lab', 'Research Equipment', 4),
	('Emergency Solar-Powered Lantern', 'Portable lantern powered by solar energy for emergency lighting', 'Support Equipment', 8),
	('Mars Rover Drill', 'Drilling and extracting samples from Martian surface', 'Mobile Equipment', 5),
	('Lab DNA Sequencing System', 'Automated system for high-throughput DNA sequencing', 'Research Equipment', 2),
	('Portable Solar Panel Array', 'Array of solar panels for generating electricity on Mars', 'Power Generation Equipment', 6),
	('Mars Habitat Airlock System', 'Pressurized entrance and exit for Mars habitats', 'Support Equipment', 3),
	('Lab Fluorescence Spectrophotometer', 'Measuring fluorescence intensity and spectra in the lab', 'Research Equipment', 3),
	('Portable Water Purification Tablets', 'Tablets for purifying and disinfecting water on Mars', 'Life Support Equipment', 10),
	('Mars Rover Ground Penetrating Radar', 'Radar system for subsurface mapping and exploration on Mars', 'Mobile Equipment', 4),
	('Lab Gas Chromatograph', 'Analyzing and separating volatile compounds in the lab', 'Research Equipment', 3),
	('Portable Solar Panel Cleaning Kit', 'Cleaning and maintaining solar panels on Mars using specialized tools', 'Power Generation Equipment', 4),
	('Mars Habitat Radiation Shielding Materials', 'Materials for shielding against radiation in Mars habitats', 'Protective Equipment', 6),
	('Lab Microplate Reader', 'Reading and analyzing microplates in the lab', 'Research Equipment', 3);
    

-- crew_members
INSERT INTO crew_members (astronaut_id, mission_id, mission_role_id, access_rank, type_ship_id, responsibilities)

VALUES
  (1, 1, 1, 3, 3, 'Responsible for conducting research on Mars soil composition'),
  (2, 1, 2, 4, 3, 'Responsible for monitoring crew health during the mission'),
  (3, 2, 3, 2, 3, 'Responsible for managing the agricultural systems on Mars'),
  (4, 2, 1, 3, 3, 'Responsible for studying the geological features of Mars'),
  (5, 3, 2, 4, 3, 'Responsible for designing and constructing Mars habitats'),
  (6, 3, 3, 2, 3, 'Responsible for studying the Martian atmosphere'),
  (7, 4, 1, 4, 3, 'Responsible for operating Mars rovers and conducting exploration'),
  (8, 4, 2, 3, 3, 'Responsible for conducting medical research on the effects of space on the human body'),
  (9, 5, 3, 2, 3, 'Responsible for studying the effects of microgravity on human physiology'),
  (10, 5, 1, 3, 3, 'Responsible for researching and developing technologies for resource utilization on Mars'),
  (11, 6, 2, 3, 3, 'Responsible for conducting experiments in Martian laboratories'),
  (12, 6, 3, 2, 3, 'Responsible for studying the effects of Martian gravity on plant growth'),
  (13, 7, 1, 4, 3, 'Responsible for analyzing Martian rock samples'),
  (14, 7, 2, 3, 3, 'Responsible for maintaining communication systems on Mars'),
  (15, 8, 3, 2, 3, 'Responsible for monitoring weather patterns on Mars'),
  (16, 8, 1, 3, 3, 'Responsible for conducting experiments on Mars surface radiation'),
  (17, 9, 2, 4, 3, 'Responsible for overseeing the construction of Martian infrastructure'),
  (18, 9, 3, 2, 3, 'Responsible for studying the potential for water resources on Mars'),
  (19, 10, 1, 3, 3, 'Responsible for analyzing data collected by Mars orbiters'),
  (20, 10, 2, 4, 3, 'Responsible for managing the storage and distribution of supplies on Mars'),
  (21, 11, 3, 2, 3, 'Responsible for studying the Martian magnetic field'),
  (22, 11, 1, 3, 3, 'Responsible for conducting experiments on Martian soil fertility'),
  (23, 12, 2, 4, 3, 'Responsible for managing communications with Earth'),
  (24, 12, 3, 2, 3, 'Responsible for analyzing atmospheric samples on Mars'),
  (25, 13, 1, 3, 3, 'Responsible for monitoring the health of the crew during spacewalks'),
  (26, 13, 2, 4, 3, 'Responsible for conducting experiments on Mars gravity effects on human muscles'),
  (27, 14, 3, 2, 3, 'Responsible for studying the geological history of Mars'),
  (28, 14, 1, 3, 3, 'Responsible for designing and testing Mars exploration vehicles'),
  (29, 15, 2, 4, 3, 'Responsible for monitoring and maintaining life support systems on Mars'),
  (30, 15, 3, 2, 3, 'Responsible for studying the impact of Martian dust storms on equipment'),
  (31, 16, 1, 3, 3, 'Responsible for conducting experiments on Mars\' temperature variations'),
  (32, 16, 2, 4, 3, 'Responsible for managing scientific research equipment on Mars'),
  (33, 17, 3, 2, 3, 'Responsible for studying the composition of Martian ice caps'),
  (34, 17, 1, 3, 3, 'Responsible for analyzing data collected by Mars landers'),
  (35, 18, 2, 4, 3, 'Responsible for maintaining power systems on Mars'),
  (36, 18, 3, 2, 3, 'Responsible for studying the potential for underground habitats on Mars'),
  (37, 19, 1, 3, 3, 'Responsible for conducting experiments on Martian plant growth'),
  (38, 19, 2, 4, 3, 'Responsible for managing the distribution of resources on Mars'),
  (39, 20, 3, 2, 3, 'Responsible for studying the impact of solar radiation on Mars'),
  (40, 20, 1, 3, 3, 'Responsible for analyzing data collected by Mars rovers'),
  (41, 21, 2, 4, 3, 'Responsible for conducting experiments on Mars\' magnetic field'),
  (42, 21, 3, 2, 3, 'Responsible for studying the potential for Martian colonization'),
  (43, 22, 1, 3, 3, 'Responsible for analyzing data collected by Mars orbiters'),
  (44, 22, 2, 4, 3, 'Responsible for managing the navigation systems on Mars'),
  (45, 23, 3, 2, 3, 'Responsible for studying the effects of Martian gravity on plant growth'),
  (46, 23, 1, 3, 3, 'Responsible for designing and testing Mars spacesuits'),
  (47, 24, 2, 4, 3, 'Responsible for monitoring and maintaining Mars communication satellites'),
  (48, 24, 3, 2, 3, 'Responsible for studying the geology of Mars\' polar regions'),
  (49, 25, 1, 3, 3, 'Responsible for conducting experiments on Mars\' atmosphere'),
  (50, 25, 2, 4, 3, 'Responsible for managing the energy systems on Mars'),
  (51, 26, 3, 2, 3, 'Responsible for studying the effects of long-duration space travel on the human body'),
  (52, 26, 1, 3, 3, 'Responsible for analyzing samples of Martian rock and soil'),
  (53, 27, 2, 4, 3, 'Responsible for monitoring and maintaining Mars weather stations'),
  (54, 27, 3, 2, 3, 'Responsible for studying the potential for extracting water from Martian soil'),
  (55, 28, 1, 3, 3, 'Responsible for conducting experiments on the growth of edible crops on Mars'),
  (56, 28, 2, 4, 3, 'Responsible for managing the waste disposal systems on Mars'),
  (57, 29, 3, 2, 3, 'Responsible for studying the effects of Mars\' low gravity on bone density'),
  (58, 29, 1, 3, 3, 'Responsible for analyzing data collected by Mars orbiters'),
  (59, 30, 2, 4, 3, 'Responsible for monitoring and maintaining Mars habitat systems'),
  (60, 30, 3, 2, 3, 'Responsible for studying the potential for using Martian resources for fuel production'),
  (61, 31, 1, 3, 3, 'Responsible for conducting research on the Martian magnetic field'),
  (62, 31, 2, 4, 3, 'Responsible for monitoring the crew\'s physical and mental health during the mission'),
  (63, 32, 3, 2, 3, 'Responsible for managing the water recycling systems on Mars'),
  (64, 32, 1, 3, 3, 'Responsible for studying the geological history of Mars'),
  (65, 33, 2, 4, 3, 'Responsible for designing and constructing infrastructure for human settlements on Mars'),
  (66, 33, 3, 2, 3, 'Responsible for studying the Martian climate patterns'),
  (67, 34, 1, 4, 3, 'Responsible for operating Mars rovers and collecting samples'),
  (68, 34, 2, 3, 3, 'Responsible for conducting medical experiments on the effects of long-duration space travel'),
  (69, 35, 3, 2, 3, 'Responsible for studying the effects of Mars\' radiation on human health'),
  (70, 35, 1, 3, 3, 'Responsible for researching and developing technologies for sustainable food production on Mars'),
  (71, 36, 2, 4, 3, 'Responsible for monitoring and maintaining life support systems on Mars'),
  (72, 36, 3, 2, 3, 'Responsible for studying the potential for mining Martian resources'),
  (73, 37, 1, 3, 3, 'Responsible for conducting experiments on Mars\' soil fertility'),
  (74, 37, 2, 4, 3, 'Responsible for managing the power systems on Mars'),
  (75, 38, 3, 2, 3, 'Responsible for studying the effects of Mars\' dust storms on equipment'),
  (76, 38, 1, 3, 3, 'Responsible for analyzing data collected by Mars orbiters'),
  (77, 39, 2, 4, 3, 'Responsible for monitoring and maintaining Mars communication systems'),
  (78, 39, 3, 2, 3, 'Responsible for studying the potential for growing Martian crops indoors'),
  (79, 40, 1, 3, 3, 'Responsible for conducting experiments on Mars\' atmosphere composition'),
  (80, 40, 2, 4, 3, 'Responsible for managing the waste management systems on Mars'),
  (81, 1, 1, 3, 3, 'Responsible for conducting research on the geological formations of Mars'),
  (82, 2, 2, 4, 3, 'Responsible for monitoring the crew\'s nutritional needs during the mission'),
  (83, 3, 3, 2, 3, 'Responsible for managing the waste recycling systems on Mars'),
  (84, 4, 1, 3, 3, 'Responsible for studying the impact of Mars\' gravity on human physiology'),
  (85, 5, 2, 4, 3, 'Responsible for designing and constructing sustainable energy systems on Mars'),
  (86, 6, 3, 2, 3, 'Responsible for studying the potential for extracting water from Martian ice'),
  (87, 7, 1, 4, 3, 'Responsible for operating Mars landers and conducting surface experiments'),
  (88, 8, 2, 3, 3, 'Responsible for conducting research on the psychological effects of isolation on Mars'),
  (89, 9, 3, 2, 3, 'Responsible for studying the effects of Martian dust on equipment durability'),
  (90, 10, 1, 3, 3, 'Responsible for researching and developing advanced propulsion systems for Mars missions'),
  (91, 11, 2, 4, 3, 'Responsible for monitoring and maintaining Mars habitat systems'),
  (92, 12, 3, 2, 3, 'Responsible for studying the potential for extracting minerals from Martian regolith'),
  (93, 13, 1, 3, 3, 'Responsible for conducting experiments on Mars\' magnetic field'),
  (94, 14, 2, 4, 3, 'Responsible for managing the communications infrastructure on Mars'),
  (95, 15, 3, 2, 3, 'Responsible for studying the effects of Mars\' extreme temperatures on equipment performance'),
  (96, 16, 1, 3, 3, 'Responsible for analyzing geological data collected by Mars rovers'),
  (97, 17, 2, 4, 3, 'Responsible for monitoring and maintaining Mars life support systems'),
  (98, 18, 3, 2, 3, 'Responsible for studying the potential for growing Martian plants in controlled environments'),
  (99, 19, 1, 3, 3, 'Responsible for conducting experiments on Mars\' atmospheric composition'),
  (100, 20, 2, 4, 3, 'Responsible for managing the data analysis systems on Mars'),
  (101, 21, 3, 2, 3, 'Responsible for studying the effects of Martian radiation on human health'),
  (102, 22, 1, 3, 3, 'Responsible for analyzing Mars samples for signs of past microbial life'),
  (103, 23, 2, 4, 3, 'Responsible for monitoring and maintaining Mars communication systems'),
  (104, 24, 3, 2, 3, 'Responsible for studying the potential for extracting resources from Martian subsurface'),
  (105, 25, 1, 4, 3, 'Responsible for operating Mars drones for aerial reconnaissance'),
  (106, 26, 2, 3, 3, 'Responsible for conducting research on Mars\' geological history'),
  (107, 27, 3, 2, 3, 'Responsible for managing the logistics of Martian surface operations'),
  (108, 28, 1, 3, 3, 'Responsible for studying the potential for generating oxygen from Martian atmosphere'),
  (109, 29, 2, 4, 3, 'Responsible for monitoring and maintaining Mars power generation systems'),
  (110, 38, 3, 2, 3, 'Responsible for studying the effects of Mars\' low gravity on plant growth');
 

-- resources  
INSERT INTO resources (name, description, unit, value, mining, fill_level, estimated_reserve, source_planet)

VALUES
  ('Glass', 'Transparent component made of quartz', 'square meters', 100, 'Surface Mining', 'Low', 1000, 'Mars'),
  ('Iron Ore', 'Raw material containing iron', 'metric tons', 200, 'Underground Mining', 'Medium', 2000, 'Earth'),
  ('Copper', 'Durable and malleable metal', 'kilograms', 300, 'Placer Mining', 'High', 3000, 'Mars'),
  ('Coal', 'Fossil fuel used for energy generation', 'metric tons', 400, 'In Situ Mining', 'Very High', 4000, 'Earth'),
  ('Limestone', 'Sedimentary rock used in construction', 'metric tons', 500, 'Open Pit Mining', 'Critical', 5000, 'Mars'),
  ('Sand', 'Granular material used in various applications', 'metric tons', 600, 'Surface Mining', 'None', 6000, 'Mars'),
  ('Gold', 'Precious metal with high economic value', 'ounces', 700, 'Placer Mining', 'Low', 7000, 'Mars'),
  ('Silver', 'Valuable metal with various industrial uses', 'ounces', 800, 'Surface Mining', 'Medium', 8000, 'Earth'),
  ('Diamond', 'Highly sought-after gemstone', 'carats', 900, 'Underground Mining', 'High', 9000, 'Mars'),
  ('Quartz', 'Mineral used in electronics and jewelry', 'metric tons', 1000, 'Placer Mining', 'Very High', 10000, 'Earth'),
  ('Marble', 'Metamorphic rock prized for its aesthetics', 'metric tons', 1100, 'Surface Mining', 'Critical', 11000, 'Mars'),
  ('Granite', 'Igneous rock commonly used in construction', 'metric tons', 1200, 'Open Pit Mining', 'None', 12000, 'Earth'),
  ('Clay', 'Fine-grained soil used for pottery and ceramics', 'metric tons', 1300, 'Surface Mining', 'Low', 13000, 'Mars'),
  ('Wood', 'Natural material from tree trunks', 'cubic meters', 1400, 'Delivery from Earth', 'Medium', 14000, 'Earth'),
  ('Oil', 'Fossil fuel used for energy production and various products', 'barrels', 1500, 'In Situ Mining', 'High', 15000, 'Mars'),
  ('Natural Gas', 'Clean-burning fossil fuel', 'cubic meters', 1600, 'In Situ Mining', 'Very High', 16000, 'Earth'),
  ('Uranium', 'Radioactive material used in nuclear power generation', 'kilograms', 1700, 'Underground Mining', 'Critical', 17000, 'Mars'),
  ('Titanium', 'Strong and lightweight metal', 'kilograms', 1800, 'Placer Mining', 'None', 18000, 'Earth'),
  ('Bauxite', 'Principal ore of aluminum', 'metric tons', 1900, 'Surface Mining', 'Low', 19000, 'Mars'),
  ('Platinum', 'Precious metal with various industrial uses', 'ounces', 2000, 'Surface Mining', 'Medium', 20000, 'Earth'),
  ('Silicon', 'Semiconductor material used in electronics', 'metric tons', 2100, 'Surface Mining', 'Low', 21000, 'Mars'),
  ('Nickel', 'Metal used in alloys and batteries', 'kilograms', 2200, 'Underground Mining', 'Medium', 22000, 'Earth'),
  ('Zinc', 'Corrosion-resistant metal', 'kilograms', 2300, 'Placer Mining', 'High', 23000, 'Mars'),
  ('Lead', 'Heavy metal used in batteries and construction', 'metric tons', 2400, 'In Situ Mining', 'Very High', 24000, 'Earth'),
  ('Tin', 'Malleable metal used in soldering and coatings', 'metric tons', 2500, 'Open Pit Mining', 'Critical', 25000, 'Mars'),
  ('Mercury', 'Toxic liquid metal', 'kilograms', 2600, 'Surface Mining', 'None', 26000, 'Earth'),
  ('Chromium', 'Hard metal used in stainless steel production', 'kilograms', 2700, 'Placer Mining', 'Low', 27000, 'Mars'),
  ('Manganese', 'Metal used in steel production and batteries', 'metric tons', 2800, 'Surface Mining', 'Medium', 28000, 'Earth'),
  ('Cobalt', 'Metal used in rechargeable batteries and magnets', 'kilograms', 2900, 'Underground Mining', 'High', 29000, 'Mars'),
  ('Graphite', 'Conductive material used in batteries and pencils', 'metric tons', 3000, 'Placer Mining', 'Very High', 30000, 'Earth'),
  ('Silver', 'Precious metal with various industrial uses', 'ounces', 3100, 'Surface Mining', 'Critical', 31000, 'Mars'),
  ('Palladium', 'Rare and lustrous metal', 'ounces', 3200, 'Open Pit Mining', 'None', 32000, 'Earth'),
  ('Cadmium', 'Soft and malleable metal', 'kilograms', 3300, 'Surface Mining', 'Low', 33000, 'Mars'),
  ('Antimony', 'Brittle and shiny metalloid', 'kilograms', 3400, 'Delivery from Earth', 'Medium', 34000, 'Earth'),
  ('Rare Earth Elements', 'Group of elements used in various technologies', 'metric tons', 3500, 'In Situ Mining', 'High', 35000, 'Mars'),
  ('Phosphate', 'Mineral used in fertilizers and detergents', 'metric tons', 3600, 'In Situ Mining', 'Very High', 36000, 'Earth'),
  ('Tungsten', 'Hard and dense metal with high melting point', 'kilograms', 3700, 'Underground Mining', 'Critical', 37000, 'Mars'),
  ('Boron', 'Chemical element used in various industries', 'kilograms', 3800, 'Placer Mining', 'None', 38000, 'Earth'),
  ('Lithium', 'Lightweight metal used in batteries', 'metric tons', 3900, 'Surface Mining', 'Low', 39000, 'Mars'),
  ('Asbestos', 'Heat-resistant fibrous mineral', 'metric tons', 4000, 'Surface Mining', 'Medium', 40000, 'Earth'),
  ('Plastic', 'Synthetic material with various applications', 'metric tons', 4100, 'Surface Mining', 'Low', 41000, 'Mars'),
  ('Rubber', 'Elastic material used in tires and seals', 'metric tons', 4200, 'In Situ Mining', 'Medium', 42000, 'Earth'),
  ('Polyethylene', 'Common plastic used in packaging and containers', 'metric tons', 4300, 'Surface Mining', 'High', 43000, 'Mars'),
  ('Polypropylene', 'Versatile plastic used in automotive and furniture', 'metric tons', 4400, 'Underground Mining', 'Very High', 44000, 'Earth'),
  ('Polyvinyl Chloride (PVC)', 'Durable plastic used in construction and piping', 'metric tons', 4500, 'Placer Mining', 'Critical', 45000, 'Mars'),
  ('Polystyrene', 'Insulating foam material', 'metric tons', 4600, 'Surface Mining', 'None', 46000, 'Earth'),
  ('Polyurethane', 'Flexible and resilient material', 'metric tons', 4700, 'Surface Mining', 'Low', 47000, 'Mars'),
  ('Nylon', 'Strong synthetic fiber used in textiles and plastics', 'metric tons', 4800, 'Delivery from Earth', 'Medium', 48000, 'Earth'),
  ('Polyester', 'Synthetic fabric material', 'metric tons', 4900, 'Underground Mining', 'High', 49000, 'Mars'),
  ('Acrylic', 'Transparent plastic used in signage and furniture', 'metric tons', 5000, 'Surface Mining', 'Very High', 50000, 'Earth'),
  ('Epoxy Resin', 'Versatile adhesive and coating material', 'metric tons', 5100, 'Placer Mining', 'Critical', 51000, 'Mars'),
  ('Fiberglass', 'Reinforcing material made of glass fibers', 'metric tons', 5200, 'Surface Mining', 'None', 52000, 'Earth'),
  ('Carbon Fiber', 'Lightweight and high-strength material', 'metric tons', 5300, 'Surface Mining', 'Low', 53000, 'Mars'),
  ('Polycarbonate', 'Strong and transparent plastic', 'metric tons', 5400, 'Delivery from Earth', 'Medium', 54000, 'Earth'),
  ('Polyimide', 'Heat-resistant and electrically insulating material', 'metric tons', 5500, 'Underground Mining', 'High', 55000, 'Mars'),
  ('Polyethylene Terephthalate (PET)', 'Common plastic used in bottles and textiles', 'metric tons', 5600, 'Surface Mining', 'Very High', 56000, 'Earth'),
  ('Polypropylene Copolymer', 'Modified form of polypropylene with improved properties', 'metric tons', 5700, 'Placer Mining', 'Critical', 57000, 'Mars'),
  ('Polyethylene Foam', 'Lightweight and cushioning material', 'metric tons', 5800, 'Surface Mining', 'None', 58000, 'Earth'),
  ('Polyvinyl Acetate (PVA)', 'Water-soluble synthetic polymer', 'metric tons', 5900, 'Surface Mining', 'Low', 59000, 'Mars'),
  ('Silicone', 'Flexible and heat-resistant material', 'metric tons', 6000, 'Underground Mining', 'Medium', 60000, 'Earth'),
  ('Gasoline', 'Liquid fuel used in internal combustion engines', 'gallons', 100000, 'Surface Mining', 'High', 1000000, 'Earth'),
  ('Diesel', 'Fuel for diesel engines with high energy density', 'gallons', 90000, 'Underground Mining', 'Medium', 900000, 'Mars'),
  ('Jet Fuel', 'Specialized fuel for aircraft propulsion', 'gallons', 80000, 'Placer Mining', 'Very High', 800000, 'Earth'),
  ('Kerosene', 'Combustible hydrocarbon liquid used as fuel', 'gallons', 70000, 'Surface Mining', 'Critical', 700000, 'Mars'),
  ('Ethanol', 'Renewable fuel produced from plant materials', 'gallons', 60000, 'In Situ Mining', 'None', 600000, 'Earth'),
  ('Methanol', 'Simple alcohol used as a solvent and fuel', 'gallons', 50000, 'Surface Mining', 'Low', 500000, 'Mars'),
  ('Propane', 'Clean-burning fuel commonly used for heating and cooking', 'gallons', 40000, 'Surface Mining', 'Medium', 400000, 'Earth'),
  ('Butane', 'Flammable gas used in lighters and as fuel', 'gallons', 30000, 'Delivery from Earth', 'High', 300000, 'Mars'),
  ('LPG (Liquefied Petroleum Gas)', 'Mixture of propane and butane used as fuel', 'gallons', 20000, 'Underground Mining', 'Very High', 200000, 'Earth'),
  ('Hydrogen', 'Clean fuel with high energy content', 'gallons', 10000, 'Surface Mining', 'Critical', 100000, 'Mars'),
  ('Liquid Oxygen', 'Oxygen in liquid form used as rocket propellant', 'gallons', 9000, 'Surface Mining', 'None', 90000, 'Earth'),
  ('Liquid Nitrogen', 'Nitrogen in liquid form used in cryogenic applications', 'gallons', 8000, 'Placer Mining', 'Low', 80000, 'Mars'),
  ('Liquid Methane', 'Methane in liquid form used as rocket propellant', 'gallons', 7000, 'Surface Mining', 'Medium', 70000, 'Earth'),
  ('Liquid Hydrogen', 'Hydrogen in liquid form used as rocket propellant', 'gallons', 6000, 'Underground Mining', 'High', 60000, 'Mars'),
  ('Deuterium', 'Heavy isotope of hydrogen used in nuclear fusion', 'gallons', 5000, 'Surface Mining', 'Very High', 50000, 'Earth'),
  ('Water', 'Essential liquid for human survival', 'gallons', 700000, 'Surface Mining', 'Critical', 40000, 'Mars'),
  ('Distilled Water', 'Purified water with impurities removed', 'gallons', 3000, 'Delivery from Earth', 'None', 30000, 'Earth'),
  ('Sea Water', 'Saline water from the Earth\'s oceans', 'gallons', 2000, 'Surface Mining', 'Low', 20000, 'Mars'),
  ('Alcohol', 'Generic term for various types of alcoholic beverages', 'gallons', 1000, 'Surface Mining', 'Medium', 10000, 'Earth'),
  ('Isopropyl Alcohol', 'Rubbing alcohol commonly used as a disinfectant', 'gallons', 500, 'Surface Mining', 'High', 5000, 'Mars');
 
 
 -- equipment_resources
INSERT INTO `equipment_resources` (equipment_id, resource_id) VALUES
    (1, 1),  -- Research Lab requires Resource 1
    (1, 2),  -- Research Lab requires Resource 2
    (2, 3),  -- Life Support System requires Resource 3
    (2, 4),  -- Life Support System requires Resource 4
    (3, 5),  -- Starship requires Resource 5
    (3, 6),  -- Starship requires Resource 6
    (4, 7),  -- Cybertruck requires Resource 7
    (5, 8),  -- Mars Rover requires Resource 8
    (5, 9),  -- Mars Rover requires Resource 9
    (6, 10), -- Drilling Equipment requires Resource 10
    (7, 11), -- Water Filtration System requires Resource 11
    (8, 12), -- Greenhouse Modules require Resource 12
    (9, 13), -- Communication Antenna requires Resource 13
    (10, 14), -- Solar Panels require Resource 14
    (10, 15), -- Solar Panels require Resource 15
    (11, 16), -- Water Purification System requires Resource 16
    (11, 17), -- Water Purification System requires Resource 17
    (12, 18), -- Oxygen Generator requires Resource 18
    (12, 19), -- Oxygen Generator requires Resource 19
    (13, 20), -- Food Processor requires Resource 20
    (14, 21), -- Navigation System requires Resource 21
    (15, 22), -- Habitat Modules require Resource 22
    (15, 23), -- Habitat Modules require Resource 23
    (16, 24), -- Power Generators require Resource 24
    (17, 25), -- Waste Recycling System requires Resource 25
    (17, 26), -- Waste Recycling System requires Resource 26
    (18, 27), -- Medical Equipment requires Resource 27
    (18, 28), -- Medical Equipment requires Resource 28
    (19, 29), -- Communication System requires Resource 29
    (20, 30), -- Security System requires Resource 30
    (21, 31), -- Research Equipment requires Resource 31
    (22, 32), -- Robotics System requires Resource 32
    (23, 33), -- Mining Equipment requires Resource 33
    (24, 34), -- Air Filters require Resource 34
    (25, 35), -- Waste Disposal System requires Resource 35
    (25, 36), -- Waste Disposal System requires Resource 36
    (26, 37), -- Life Support System requires Resource 37
    (27, 38), -- Communication Antennas require Resource 38
    (28, 39), -- Research Laboratory requires Resource 39
    (28, 40), -- Research Laboratory requires Resource 40
    (29, 41), -- Agriculture System requires Resource 41
    (29, 42), -- Agriculture System requires Resource 42
    (30, 43), -- Water Recycling System requires Resource 43
    (31, 44), -- Solar Power System requires Resource 44
    (32, 45), -- Battery Storage System requires Resource 45
    (32, 46), -- Battery Storage System requires Resource 46
    (33, 47), -- Heating System requires Resource 47
    (34, 48), -- Cooling System requires Resource 48
    (35, 49), -- Gravity Generator requires Resource 49
    (36, 50), -- Airlock System requires Resource 50
    (37, 51), -- Waste Water Treatment System requires Resource 51
    (37, 52), -- Waste Water Treatment System requires Resource 52
    (38, 53), -- Emergency Medical Kit requires Resource 53
    (39, 54), -- Entertainment System requires Resource 54
    (40, 55), -- Exercise Equipment requires Resource 55
    (41, 56), -- Security Cameras require Resource 56
    (42, 57), -- Laboratory Equipment requires Resource 57
    (42, 58), -- Laboratory Equipment requires Resource 58
    (43, 59), -- Robotics Components require Resource 59
    (44, 60), -- Excavation Tools require Resource 60
    (45, 61), -- Drilling Equipment requires Resource 61
    (45, 62), -- Drilling Equipment requires Resource 62
    (46, 63), -- Space Suits require Resource 63
    (47, 64), -- Communication Satellites require Resource 64
    (48, 65), -- Navigation Equipment requires Resource 65
    (49, 66), -- Weather Monitoring System requires Resource 66
    (50, 67), -- Power Distribution System requires Resource 67
    (51, 68), -- Waste Incinerator requires Resource 68
    (52, 69), -- Medical Diagnostics Equipment requires Resource 69
    (52, 70), -- Medical Diagnostics Equipment requires Resource 70
    (53, 71), -- Communication Relay requires Resource 71
    (54, 72), -- Research Samples require Resource 72
    (55, 73), -- Agricultural Seeds require Resource 73
    (56, 74), -- Water Filters require Resource 74
    (57, 75), -- Solar Panels require Resource 75
    (57, 76), -- Solar Panels require Resource 76
    (58, 77), -- Water Purification System requires Resource 77
    (59, 78), -- Oxygen Generator requires Resource 78
    (60, 79), -- Food Processor requires Resource 79
    (61, 80), -- Navigation System requires Resource 80
    (62, 68), -- Habitat Modules require Resource 68
    (62, 69), -- Habitat Modules require Resource 69
    (63, 77), -- Power Generators require Resource 77
    (64, 44), -- Waste Recycling System requires Resource 44
    (64, 32), -- Waste Recycling System requires Resource 32
    (65, 57), -- Medical Equipment requires Resource 57
    (66, 32), -- Communication System requires Resource 32
    (67, 76), -- Security System requires Resource 76
    (68, 54), -- Research Equipment requires Resource 54
    (69, 63), -- Robotics System requires Resource 63
    (70, 24), -- Mining Equipment requires Resource 24
    (71, 54), -- Air Filters require Resource 54
    (72, 76), -- Waste Disposal System requires Resource 76
    (72, 54), -- Waste Disposal System requires Resource 54
    (73, 32), -- Life Support System requires Resource 32
    (74, 11), -- Communication Antennas require Resource 11
    (75, 26), -- Research Laboratory requires Resource 26
    (75, 77), -- Research Laboratory requires Resource 77
    (76, 15), -- Agriculture System requires Resource 15
    (76, 43), -- Agriculture System requires Resource 43
    (77, 64), -- Water Recycling System requires Resource 64
    (78, 14), -- Solar Power System requires Resource 14
    (79, 12), -- Battery Storage System requires Resource 12
    (79, 75), -- Battery Storage System requires Resource 75
    (80, 44), -- Heating System requires Resource 44
    (81, 24), -- Cooling System requires Resource 24
    (82, 22), -- Gravity Generator requires Resource 22
    (83, 43), -- Airlock System requires Resource 43
    (84, 65), -- Waste Water Treatment System requires Resource 65
    (84, 61), -- Waste Water Treatment System requires Resource 61
    (85, 23), -- Emergency Medical Kit requires Resource 23
    (86, 15), -- Entertainment System requires Resource 15
    (87, 71), -- Exercise Equipment requires Resource 71
    (88, 33), -- Security Cameras require Resource 33
    (89, 65), -- Laboratory Equipment requires Resource 65
    (89, 41), -- Laboratory Equipment requires Resource 41
    (90, 69), -- Robotics Components require Resource 69
    (91, 27), -- Excavation Tools require Resource 27
    (92, 22), -- Drilling Equipment requires Resource 22
    (92, 58), -- Drilling Equipment requires Resource 58
    (93, 21), -- Space Suits require Resource 21
    (94, 33), -- Communication Satellites require Resource 33
    (95, 46), -- Navigation Equipment requires Resource 46
    (96, 57), -- Weather Monitoring System requires Resource 57
    (97, 65), -- Power Distribution System requires Resource 65
    (98, 36), -- Waste Incinerator requires Resource 36
    (99, 62), -- Medical Diagnostics Equipment requires Resource 62
    (99, 54), -- Medical Diagnostics Equipment requires Resource 54
    (100, 32), -- Communication Relay requires Resource 32
    (101, 62), -- Research Samples require Resource 62
    (102, 75), -- Agricultural Seeds require Resource 75
    (103, 73), -- Water Filters require Resource 73
    (104, 25), -- Solar Panels require Resource 25
    (104, 45), -- Solar Panels require Resource 45
    (105, 23), -- Water Purification System requires Resource 23
    (106, 34), -- Oxygen Generator requires Resource 34
    (107, 23), -- Food Processor requires Resource 23
    (108, 6); -- Navigation System requires Resource 6

    
-- addresses 1.0
INSERT INTO `addresses` (colony_id, sector, street, building_number) VALUES
    (1, 'Sector A', 'Main Street', '1'), -- Deimos, Sector A, Main Street, Building 1
    (1, 'Sector B', 'Park Avenue', '10'), -- Deimos, Sector B, Park Avenue, Building 10
    (1, 'Sector C', 'Sunset Boulevard', '25'), -- Deimos, Sector C, Sunset Boulevard, Building 25
    (2, 'Sector X', 'Ocean Drive', '5'), -- Phobos, Sector X, Ocean Drive, Building 5
    (2, 'Sector Y', 'Mountain View Road', '15'), -- Phobos, Sector Y, Mountain View Road, Building 15
    (2, 'Sector Z', 'Valley Street', '30'), -- Phobos, Sector Z, Valley Street, Building 30
    (3, 'Sector Alpha', 'Main Street', '1'), -- Ares, Sector Alpha, Main Street, Building 1
    (3, 'Sector Beta', 'Park Avenue', '10'), -- Ares, Sector Beta, Park Avenue, Building 10
    (3, 'Sector Gamma', 'Sunset Boulevard', '25'), -- Ares, Sector Gamma, Sunset Boulevard, Building 25
    (1, 'Sector D', 'Garden Street', '5'), -- Deimos, Sector D, Garden Street, Building 5
    (1, 'Sector E', 'Lakeview Avenue', '12'), -- Deimos, Sector E, Lakeview Avenue, Building 12
    (1, 'Sector F', 'Forest Drive', '30'), -- Deimos, Sector F, Forest Drive, Building 30
    (2, 'Sector A', 'Sunrise Boulevard', '8'), -- Phobos, Sector A, Sunrise Boulevard, Building 8
    (2, 'Sector B', 'Meadow Lane', '20'), -- Phobos, Sector B, Meadow Lane, Building 20
    (2, 'Sector C', 'Hillside Road', '35'), -- Phobos, Sector C, Hillside Road, Building 35
    (3, 'Sector Delta', 'Garden Street', '5'), -- Ares, Sector Delta, Garden Street, Building 5
    (3, 'Sector Epsilon', 'Lakeview Avenue', '12'), -- Ares, Sector Epsilon, Lakeview Avenue, Building 12
    (3, 'Sector Zeta', 'Forest Drive', '30'), -- Ares, Sector Zeta, Forest Drive, Building 30
    (1, 'Sector G', 'Main Street', '1'), -- Deimos, Sector G, Main Street, Building 1
    (1, 'Sector H', 'Park Avenue', '10'), -- Deimos, Sector H, Park Avenue, Building 10
    (1, 'Sector I', 'Sunset Boulevard', '25'), -- Deimos, Sector I, Sunset Boulevard, Building 25
    (2, 'Sector D', 'Ocean Drive', '5'), -- Phobos, Sector D, Ocean Drive, Building 5
    (2, 'Sector E', 'Mountain View Road', '15'), -- Phobos, Sector E, Mountain View Road, Building 15
    (2, 'Sector F', 'Valley Street', '30'), -- Phobos, Sector F, Valley Street, Building 30
    (3, 'Sector Eta', 'Main Street', '1'), -- Ares, Sector Eta, Main Street, Building 1
    (3, 'Sector Theta', 'Park Avenue', '10'), -- Ares, Sector Theta, Park Avenue, Building 10
    (3, 'Sector Iota', 'Sunset Boulevard', '25'), -- Ares, Sector Iota, Sunset Boulevard, Building 25
    (1, 'Sector J', 'Garden Street', '5'), -- Deimos, Sector J, Garden Street, Building 5
    (1, 'Sector K', 'Lakeview Avenue', '12'), -- Deimos, Sector K, Lakeview Avenue, Building 12
    (1, 'Sector L', 'Forest Drive', '30'), -- Deimos, Sector L, Forest Drive, Building 30
    (2, 'Sector G', 'Sunrise Boulevard', '8'), -- Phobos, Sector G, Sunrise Boulevard, Building 8
    (2, 'Sector H', 'Meadow Lane', '20'), -- Phobos, Sector H, Meadow Lane, Building 20
    (2, 'Sector I', 'Hillside Road', '35'), -- Phobos, Sector I, Hillside Road, Building 35
    (3, 'Sector Kappa', 'Garden Street', '5'), -- Ares, Sector Kappa, Garden Street, Building 5
    (3, 'Sector Lambda', 'Lakeview Avenue', '12'), -- Ares, Sector Lambda, Lakeview Avenue, Building 12
    (3, 'Sector Mu', 'Forest Drive', '30'), -- Ares, Sector Mu, Forest Drive, Building 30
    (1, 'Sector M', 'Main Street', '1'), -- Deimos, Sector M, Main Street, Building 1
    (1, 'Sector N', 'Park Avenue', '10'), -- Deimos, Sector N, Park Avenue, Building 10
    (1, 'Sector O', 'Sunset Boulevard', '25'), -- Deimos, Sector O, Sunset Boulevard, Building 25
    (2, 'Sector J', 'Ocean Drive', '5'), -- Phobos, Sector J, Ocean Drive, Building 5
    (2, 'Sector K', 'Mountain View Road', '15'), -- Phobos, Sector K, Mountain View Road, Building 15
    (2, 'Sector L', 'Valley Street', '30'), -- Phobos, Sector L, Valley Street, Building 30
    (3, 'Sector Nu', 'Main Street', '1'), -- Ares, Sector Nu, Main Street, Building 1
    (3, 'Sector Xi', 'Park Avenue', '10'); -- Ares, Sector Xi, Park Avenue, Building 10
    

-- buildings
INSERT INTO buildings (name, address_id, building_count, facility_manager_id, functions, energy_efficiency, state, date_construction, number_of_employees, peculiarities, area, construction_material_id, last_inspection_date, last_maintenance_date)
VALUES
    ('Research Laboratory', 1, 5, 1, 'Research facility', 'Medium', 'Good', '2028-01-01', 50, 'None', 1000, 1, '2028-01-01', '2028-01-01'),
    ('Refueling Station', 2, 3, 2, 'Fueling station', 'High', 'New', '2028-01-02', 20, 'Fuel storage', 500, 2, '2028-01-03', '2028-01-04'),
    ('Engineering Office', 3, 2, 3, 'Engineering firm', 'Low', 'Requires repair', '2028-01-05', 10, 'Testing lab', 800, 3, '2028-01-06', '2028-01-07'),
    ('Living Quarters', 4, 1, 4, 'Residential space', 'Medium', 'Old', '2028-01-08', 30, 'None', 2000, 4, '2028-01-09', '2028-01-10'),
    ('Education Center', 5, 4, 5, 'Educational institution', 'High', 'Good', '2028-01-11', 100, 'Library', 1500, 5, '2028-01-12', '2028-01-13'),
    ('Medical Facility', 6, 1, 6, 'Healthcare center', 'Medium', 'Under Construction', '2028-01-14', 40, 'None', 1200, 6, '2028-01-15', '2028-01-16'),
    ('Power Plant', 7, 3, 7, 'Power generation facility', 'Low', 'Unsafe', '2028-01-17', 15, 'Energy storage', 600, 7, '2028-01-18', '2028-01-19'),
    ('Greenhouse', 8, 2, 8, 'Agricultural facility', 'Medium', 'Requires repair', '2028-01-20', 25, 'Vertical farming', 900, 8, '2028-01-21', '2028-01-22'),
    ('Research Facility', 9, 1, 9, 'Scientific research center', 'High', 'Dilapidated', '2028-01-23', 5, 'Laboratory equipment', 400, 9, '2028-01-24', '2028-01-25'),
    ('Communication Center', 10, 4, 10, 'Telecommunications hub', 'Medium', 'Good', '2028-01-26', 80, 'Data center', 1800, 10, '2028-01-27', '2028-01-28'),
    ('Research Laboratory', 11, 5, 11, 'Research facility', 'Medium', 'Good', '2028-02-01', 50, 'None', 1000, 1, '2028-02-01', '2028-02-01'),
    ('Refueling Station', 12, 3, 12, 'Fueling station', 'High', 'New', '2028-02-02', 20, 'Fuel storage', 500, 2, '2028-02-02', '2028-02-02'),
    ('Engineering Office', 13, 2, 13, 'Engineering firm', 'Low', 'Requires repair', '2028-02-03', 10, 'Testing lab', 800, 3, '2028-02-03', '2028-02-03'),
    ('Living Quarters', 14, 1, 14, 'Residential space', 'Medium', 'Old', '2028-02-04', 30, 'None', 2000, 4, '2028-02-04', '2028-02-04'),
    ('Education Center', 15, 4, 15, 'Educational institution', 'High', 'Good', '2028-02-05', 100, 'Library', 1500, 5, '2028-02-05', '2028-02-05'),
    ('Medical Facility', 16, 1, 16, 'Healthcare center', 'Medium', 'Under Construction', '2028-02-06', 40, 'None', 1200, 6, '2028-02-06', '2028-02-06'),
    ('Power Plant', 17, 3, 17, 'Power generation facility', 'Low', 'Unsafe', '2028-02-07', 15, 'Energy storage', 600, 7, '2028-02-07', '2028-02-07'),
    ('Greenhouse', 18, 2, 18, 'Agricultural facility', 'Medium', 'Requires repair', '2028-02-08', 25, 'Vertical farming', 900, 8, '2028-02-08', '2028-02-08'),
    ('Research Facility', 19, 1, 19, 'Scientific research center', 'High', 'Dilapidated', '2028-02-09', 5, 'Laboratory equipment', 400, 9, '2028-02-09', '2028-02-09'),
    ('Communication Center', 20, 4, 20, 'Telecommunications hub', 'Medium', 'Good', '2028-02-10', 80, 'Data center', 1800, 10, '2028-02-10', '2028-02-10'),
    ('Research Laboratory', 21, 5, 21, 'Research facility', 'Medium', 'Good', '2028-02-11', 50, 'None', 1000, 1, '2028-02-11', '2028-02-11'),
    ('Refueling Station', 22, 3, 22, 'Fueling station', 'High', 'New', '2028-02-12', 20, 'Fuel storage', 500, 2, '2028-02-12', '2028-02-12'),
    ('Engineering Office', 23, 2, 23, 'Engineering firm', 'Low', 'Requires repair', '2028-02-13', 10, 'Testing lab', 800, 3, '2028-02-13', '2028-02-13'),
    ('Living Quarters', 24, 1, 24, 'Residential space', 'Medium', 'Old', '2028-02-14', 30, 'None', 2000, 4, '2028-02-14', '2028-02-14'),
    ('Education Center', 25, 4, 25, 'Educational institution', 'High', 'Good', '2028-02-15', 100, 'Library', 1500, 5, '2028-02-15', '2028-02-15'),
    ('Medical Facility', 26, 1, 26, 'Healthcare center', 'Medium', 'Under Construction', '2028-02-16', 40, 'None', 1200, 6, '2028-02-16', '2028-02-16'),
    ('Power Plant', 27, 3, 27, 'Power generation facility', 'Low', 'Unsafe', '2028-02-17', 15, 'Energy storage', 600, 7, '2028-02-17', '2028-02-17'),
    ('Greenhouse', 28, 2, 28, 'Agricultural facility', 'Medium', 'Requires repair', '2028-02-18', 25, 'Vertical farming', 900, 8, '2028-02-18', '2028-02-18'),
    ('Research Facility', 29, 1, 29, 'Scientific research center', 'High', 'Dilapidated', '2028-02-19', 5, 'Laboratory equipment', 400, 9, '2028-02-19', '2028-02-19'),
    ('Communication Center', 30, 4, 30, 'Telecommunications hub', 'Medium', 'Good', '2028-02-20', 80, 'Data center', 1800, 10, '2028-02-20', '2028-02-20'),
    ('Research Laboratory', 31, 5, 31, 'Research facility', 'Medium', 'Good', '2028-02-21', 50, 'None', 1000, 1, '2028-02-21', '2028-02-21'),
    ('Refueling Station', 32, 3, 32, 'Fueling station', 'High', 'New', '2028-02-22', 20, 'Fuel storage', 500, 2, '2028-02-22', '2028-02-22'),
    ('Engineering Office', 33, 2, 33, 'Engineering firm', 'Low', 'Requires repair', '2028-02-23', 10, 'Testing lab', 800, 3, '2028-02-23', '2028-02-23'),
    ('Living Quarters', 34, 1, 34, 'Residential space', 'Medium', 'Old', '2028-02-24', 30, 'None', 2000, 4, '2028-02-24', '2028-02-24'),
    ('Education Center', 35, 4, 35, 'Educational institution', 'High', 'Good', '2028-02-25', 100, 'Library', 1500, 5, '2028-02-25', '2028-02-25'),
    ('Medical Facility', 36, 1, 36, 'Healthcare center', 'Medium', 'Under Construction', '2028-02-26', 40, 'None', 1200, 6, '2028-02-26', '2028-02-26'),
    ('Power Plant', 37, 3, 37, 'Power generation facility', 'Low', 'Unsafe', '2028-02-27', 15, 'Energy storage', 600, 7, '2028-02-27', '2028-02-27'),
    ('Greenhouse', 38, 2, 38, 'Agricultural facility', 'Medium', 'Requires repair', '2028-02-28', 25, 'Vertical farming', 900, 8, '2028-02-28', '2028-02-28'),
    ('Research Facility', 39, 1, 39, 'Scientific research center', 'High', 'Dilapidated', '2028-02-29', 5, 'Laboratory equipment', 400, 9, '2028-02-29', '2028-02-29'),
    ('Communication Center', 40, 4, 40, 'Telecommunications hub', 'Medium', 'Good', '2028-03-01', 80, 'Data center', 1800, 10, '2028-03-01', '2028-03-01'),
    ('Research Laboratory', 41, 5, 41, 'Research facility', 'Medium', 'Good', '2028-03-02', 50, 'None', 1000, 1, '2028-03-02', '2028-03-02'),
    ('Refueling Station', 42, 3, 42, 'Fueling station', 'High', 'New', '2028-03-03', 20, 'Fuel storage', 500, 2, '2028-03-03', '2028-03-03'),
    ('Engineering Office', 43, 2, 43, 'Engineering firm', 'Low', 'Requires repair', '2028-03-04', 10, 'Testing lab', 800, 3, '2028-03-04', '2028-03-04'),
    ('Living Quarters', 44, 1, 44, 'Residential space', 'Medium', 'Old', '2028-03-05', 30, 'None', 2000, 4, '2028-03-05', '2028-03-05'),
    ('Education Center', 43, 4, 45, 'Educational institution', 'High', 'Good', '2028-03-06', 100, 'Library', 1500, 5, '2028-03-06', '2028-03-06'),
    ('Medical Facility', 42, 1, 46, 'Healthcare center', 'Medium', 'Under Construction', '2028-03-07', 40, 'None', 1200, 6, '2028-03-07', '2028-03-07'),
    ('Power Plant', 41, 3, 47, 'Power generation facility', 'Low', 'Unsafe', '2028-03-08', 15, 'Energy storage', 600, 7, '2028-03-08', '2028-03-08'),
    ('Greenhouse', 40, 2, 48, 'Agricultural facility', 'Medium', 'Requires repair', '2028-03-09', 25, 'Vertical farming', 900, 8, '2028-03-09', '2028-03-09'),
    ('Research Facility', 39, 1, 49, 'Scientific research center', 'High', 'Dilapidated', '2028-03-10', 5, 'Laboratory equipment', 400, 9, '2028-03-10', '2028-03-10'),
    ('Communication Center', 5, 4, 50, 'Telecommunications hub', 'Medium', 'Good', '2028-03-11', 80, 'Data center', 1800, 10, '2028-03-11', '2028-03-11'),
    ('Research Laboratory', 15, 5, 51, 'Research facility', 'Medium', 'Good', '2028-03-12', 50, 'None', 1000, 1, '2028-03-12', '2028-03-12'),
    ('Refueling Station', 32, 3, 52, 'Fueling station', 'High', 'New', '2028-03-13', 20, 'Fuel storage', 500, 2, '2028-03-13', '2028-03-13'),
    ('Engineering Office', 11, 2, 53, 'Engineering firm', 'Low', 'Requires repair', '2028-03-14', 10, 'Testing lab', 800, 3, '2028-03-14', '2028-03-14'),
    ('Living Quarters', 14, 1, 54, 'Residential space', 'Medium', 'Old', '2028-03-15', 30, 'None', 2000, 4, '2028-03-15', '2028-03-15'),
    ('Education Center', 43, 4, 55, 'Educational institution', 'High', 'Good', '2028-03-16', 100, 'Library', 1500, 5, '2028-03-16', '2028-03-16'),
    ('Medical Facility', 21, 1, 56, 'Healthcare center', 'Medium', 'Under Construction', '2028-03-17', 40, 'None', 1200, 6, '2028-03-17', '2028-03-17'),
    ('Power Plant', 23, 3, 57, 'Power generation facility', 'Low', 'Unsafe', '2028-03-18', 15, 'Energy storage', 600, 7, '2028-03-18', '2028-03-18'),
    ('Greenhouse', 31, 2, 58, 'Agricultural facility', 'Medium', 'Requires repair', '2028-03-19', 25, 'Vertical farming', 900, 8, '2028-03-19', '2028-03-19'),
    ('Research Facility', 4, 1, 59, 'Scientific research center', 'High', 'Dilapidated', '2028-03-20', 5, 'Laboratory equipment', 400, 9, '2028-03-20', '2028-03-20'),
    ('Communication Center', 16, 4, 60, 'Telecommunications hub', 'Medium', 'Good', '2028-03-21', 80, 'Data center', 1800, 10, '2028-03-21', '2028-03-21'),
    ('Research Laboratory', 6, 5, 61, 'Research facility', 'Medium', 'Good', '2028-03-22', 50, 'None', 1000, 1, '2028-03-22', '2028-03-22'),
    ('Refueling Station', 12, 3, 62, 'Fueling station', 'High', 'New', '2028-03-23', 20, 'Fuel storage', 500, 2, '2028-03-23', '2028-03-23'),
    ('Engineering Office', 32, 2, 63, 'Engineering firm', 'Low', 'Requires repair', '2028-03-24', 10, 'Testing lab', 800, 3, '2028-03-24', '2028-03-24'),
    ('Living Quarters', 1, 1, 64, 'Residential space', 'Medium', 'Old', '2028-03-25', 30, 'None', 2000, 4, '2028-03-25', '2028-03-25'),
    ('Education Center', 23, 4, 65, 'Educational institution', 'High', 'Good', '2028-03-26', 100, 'Library', 1500, 5, '2028-03-26', '2028-03-26'),
    ('Medical Facility', 2, 1, 66, 'Healthcare center', 'Medium', 'Under Construction', '2028-03-27', 40, 'None', 1200, 6, '2028-03-27', '2028-03-27'),
    ('Power Plant', 17, 3, 67, 'Power generation facility', 'Low', 'Unsafe', '2028-03-28', 15, 'Energy storage', 600, 7, '2028-03-28', '2028-03-28'),
    ('Greenhouse', 19, 2, 68, 'Agricultural facility', 'Medium', 'Requires repair', '2028-03-29', 25, 'Vertical farming', 900, 8, '2028-03-29', '2028-03-29'),
    ('Research Facility', 9, 1, 69, 'Scientific research center', 'High', 'Dilapidated', '2028-03-30', 5, 'Laboratory equipment', 400, 9, '2028-03-30', '2028-03-30');


-- addresses 1.1
UPDATE addresses
SET building_type_id = id;


-- building_materials
INSERT INTO `building_materials` (building_id, material_id)
VALUES
	(1, 5),
	(2, 32),
	(3, 53),
	(4, 34),
	(5, 15),
	(6, 46),
	(7, 7),
	(8, 28),
	(9, 9),
	(9, 19),
	(10, 12),
	(11, 11),
	(12, 2),
	(13, 13),
	(13, 23),
	(14, 4),
	(15, 15),
	(16, 16),
	(16, 53),
	(17, 17),
	(18, 18),
	(19, 9),
	(20, 20),
	(21, 21),
	(22, 22),
	(23, 23),
	(24, 31),
	(25, 25),
	(26, 22),
	(27, 2),
	(28, 28),
	(29, 64),
	(30, 30),
	(31, 31),
	(32, 32),
	(33, 13),
	(34, 34),
	(35, 35),
	(36, 36),
	(37, 37),
	(38, 28),
	(39, 42),
	(40, 11),
	(41, 41),
	(42, 42),
	(43, 43),
	(44, 46),
	(45, 45),
	(46, 46),
	(47, 22),
	(48, 17),
	(49, 49),
	(50, 50),
	(51, 51),
	(52, 52),
	(53, 16),
	(54, 54),
	(55, 55),
	(56, 6),
	(57, 5),
	(58, 8),
	(59, 59),
	(60, 60),
	(61, 1),
	(62, 62),
	(63, 3),
	(64, 23),
	(65, 5),
	(66, 66),
	(67, 67),
	(68, 4),
	(69, 9);


-- equipment_building_relations
INSERT INTO `equipment_building_relations` (building_id, equipment_id)
VALUES
	(1, 25),
	(2, 2),
	(3, 23),
	(4, 14),
	(5, 15),
	(6, 6),
	(7, 37),
	(8, 84),
	(9, 9),
	(9, 122),
	(10, 111),
	(11, 1),
	(12, 14),
	(13, 32),
	(13, 21),
	(14, 43),
	(15, 126),
	(16, 176),
	(16, 21),
	(17, 88),
	(18, 96),
	(19, 12),
	(20, 47),
	(21, 137),
	(22, 28),
	(23, 81),
	(24, 38),
	(25, 23),
	(26, 22),
	(27, 2),
	(28, 28),
	(29, 64),
	(30, 33),
	(31, 33),
	(32, 12),
	(33, 14),
	(34, 73),
	(35, 28),
	(36, 24),
	(37, 86),
	(38, 101),
	(39, 34),
	(40, 128),
	(41, 141),
	(42, 42),
	(43, 43),
	(44, 46),
	(45, 45),
	(46, 46),
	(47, 122),
	(48, 17),
	(49, 19),
	(50, 4),
	(51, 41),
	(52, 152),
	(53, 16),
	(54, 54),
	(55, 155),
	(56, 6),
	(57, 5),
	(58, 8),
	(59, 59),
	(60, 60),
	(61, 1),
	(62, 62),
	(63, 3),
	(64, 23),
	(65, 5),
	(66, 61),
	(67, 7),
	(68, 4),
	(69, 9);


-- life_support_systems
INSERT INTO `life_support_systems` (system_name, description, capacity, status, last_maintenance_date)
VALUES
('Oxygen Generation System', 'The Oxygen Generation System extracts oxygen from the Martian atmosphere using a process called electrolysis. It provides breathable air for the crew.', 100.5, 'Operational', '2028-01-01'),
('Water Recycling System', 'The Water Recycling System purifies and recycles water from various sources, including wastewater and condensation. It ensures a sustainable water supply for the crew.', 150.2, 'Under Maintenance', '2028-02-05'),
('Food Production System', 'The Food Production System utilizes hydroponics and controlled environment agriculture to grow crops and produce fresh food for the crew. It reduces reliance on resupply missions.', 200.8, 'Operational', '2028-03-10'),
('Atmosphere Control System', 'The Atmosphere Control System maintains the composition and pressure of the habitat\'s atmosphere, regulating oxygen, carbon dioxide, and humidity levels. It creates a habitable environment.', 180.7, 'Out of Service', '2028-04-15'),
('Waste Management System', 'The Waste Management System processes and manages solid and liquid waste generated by the crew. It employs recycling and incineration techniques to minimize environmental impact.', 120.0, 'Operational', '2028-05-20'),
('Radiation Shielding System', 'The Radiation Shielding System protects the crew from harmful cosmic radiation by using advanced materials and shielding techniques. It ensures the safety of the habitat.', 90.3, 'Under Maintenance', '2028-06-25'),
('Power Generation System', 'The Power Generation System harnesses solar energy through photovoltaic panels and stores it in batteries for continuous power supply. It meets the energy demands of the habitat.', 210.1, 'Operational', '2028-07-30'),
('Heating and Cooling System', 'The Heating and Cooling System regulates the temperature and thermal comfort inside the habitat. It utilizes heat pumps and thermal insulation for efficient climate control.', 175.6, 'Out of Service', '2028-08-02'),
('Communication System', 'The Communication System enables reliable communication between the Martian habitat and Earth. It uses advanced antennas and satellite relays for data transmission.', 160.9, 'Operational', '2028-09-05'),
('Emergency Life Support System', 'The Emergency Life Support System provides backup life support in case of critical failures. It includes emergency oxygen supply, fire suppression, and evacuation protocols.', 185.4, 'Under Maintenance', '2028-10-10'),
('Airlock System', 'The Airlock System facilitates safe entry and exit from the habitat. It maintains pressure differentials and prevents contamination from the external Martian environment.', 140.2, 'Operational', '2028-11-15'),
('Medical Support System', 'The Medical Support System includes medical equipment, supplies, and a dedicated medical bay for providing healthcare to the crew. It ensures their well-being and supports medical emergencies.', 195.7, 'Out of Service', '2028-12-20'),
('Air Filtration System', 'The Air Filtration System removes particulate matter, dust, and contaminants from the habitat\'s air supply. It ensures a clean and healthy breathing environment for the crew.', 110.3, 'Operational', '2028-01-02'),
('Fire Suppression System', 'The Fire Suppression System detects and suppresses fires using automatic sensors, extinguishers, and emergency protocols. It safeguards the habitat and crew from fire hazards.', 130.6, 'Under Maintenance', '2028-02-06'),
('Emergency Power System', 'The Emergency Power System provides backup power in case of a main power failure. It includes generators, batteries, and power distribution mechanisms for critical operations.', 205.9, 'Operational', '2028-03-11'),
('Crew Quarantine Facility', 'The Crew Quarantine Facility serves as a dedicated area for isolating and monitoring astronauts returning from extravehicular activities. It prevents the spread of potential contaminants.', 95.4, 'Out of Service', '2028-04-16'),
('Cryogenic Storage System', 'The Cryogenic Storage System stores and preserves biological samples, scientific specimens, and perishable supplies at ultra-low temperatures. It supports research and experimentation on Mars.', 125.7, 'Operational', '2028-05-21'),
('Emergency Lighting System', 'The Emergency Lighting System provides illumination during power outages or low-light situations. It ensures visibility for critical tasks and safe movement within the habitat.', 150.0, 'Under Maintenance', '2028-06-26'),
('Water Purification System', 'The Water Purification System uses advanced filtration and sterilization techniques to purify water from local Martian sources. It supplies clean drinking water for the crew.', 190.5, 'Operational', '2028-07-31'),
('Biowaste Processing System', 'The Biowaste Processing System treats and converts biological waste into usable resources, such as fertilizer or energy. It promotes sustainability and reduces waste accumulation.', 180.8, 'Out of Service', '2028-08-03'),
('Navigation and Positioning System', 'The Navigation and Positioning System provides accurate location data and navigation assistance for crew members during extravehicular activities. It ensures their safety and orientation.', 165.2, 'Operational', '2028-09-06'),
('Emergency Evacuation System', 'The Emergency Evacuation System includes escape pods, evacuation routes, and protocols for safe evacuation in case of habitat-wide emergencies. It ensures crew survival and rescue.', 200.6, 'Under Maintenance', '2028-10-11');


-- life_support_system_building_relations
INSERT INTO `life_support_system_building_relations` (life_support_system_id, building_id)
VALUES
(1, 58),
(2, 35),
(3, 15),
(4, 10),
(5, 45),
(6, 23),
(7, 67),
(8, 2),
(9, 38),
(10, 16),
(11, 29),
(12, 54),
(13, 48),
(14, 60),
(15, 7),
(16, 33),
(17, 18),
(18, 42),
(19, 69),
(20, 12),
(1, 5),
(2, 41),
(3, 31),
(4, 22),
(5, 6),
(6, 13),
(7, 50),
(8, 26),
(9, 3),
(10, 9),
(11, 51),
(12, 36),
(13, 47),
(14, 11),
(15, 39),
(16, 30),
(17, 63),
(18, 24),
(19, 1),
(20, 65),
(1, 40),
(2, 31),
(3, 11),
(4, 19),
(5, 5),
(6, 36),
(7, 15),
(8, 22),
(9, 60),
(10, 7),
(11, 42),
(12, 56),
(13, 18),
(14, 52),
(15, 2),
(16, 47),
(17, 68),
(18, 28),
(19, 8),
(20, 65),
(1, 17),
(2, 63),
(3, 14),
(4, 51),
(5, 27),
(6, 33),
(7, 64),
(8, 55),
(9, 9),
(10, 41),
(11, 1),
(12, 50),
(13, 26),
(14, 39),
(15, 6),
(16, 30),
(17, 69),
(18, 43),
(19, 20),
(20, 57),
(1, 16),
(2, 34),
(3, 12),
(4, 48),
(5, 21),
(6, 38),
(7, 67),
(8, 54),
(9, 10),
(10, 35),
(11, 3),
(12, 58),
(13, 24),
(14, 46),
(15, 4),
(16, 29),
(17, 62),
(18, 23),
(19, 13),
(20, 61);








