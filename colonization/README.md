# Colonization Database

## Project Description

The database aims to capture information about the key entities involved in the colonization efforts, their relationships, and relevant attributes. It provides a foundation for storing and querying data related to various aspects of the colonization process, facilitating effective management and decision-making for the successful establishment and operation of colonies on Mars. (Parody)

## How to Run

To set up the database, follow these steps:

- Execute the `start.sql`

## File Descriptions

- `start.sql`: This script includes the necessary commands to initialize the database, create the tables, and populate them with sample data.
- `tables.sql`: This script contains the table definitions for each entity in the database.
- `data.sql`: This script includes sample data inserts for each table in the database.
- `actions.sql` Views, procedures, triggers, scripts.

## How to Run
To run the database initialization process, follow these steps:

1. Make sure you have a compatible SQL database management system installed.
2. Open the start.sql script.
3. Execute the script using the SQL command-line interface or a compatible SQL client.

The start.sql script initiates the database creation, table creation, and data population processes by executing separate scripts.


## Table Descriptions

- `astronauts`: Stores information about astronauts participating in the colonization efforts.
- `colonies`: Stores information about colonies on Mars.
- `mission_roles`: Stores information about different roles in missions.
- `missions`: Stores information about missions to Mars.
- `equipment`: Stores information about equipment used in the colonization process.
- `crew_members`: Stores information about crew members involved in missions.
- `resources`: Stores information about resources available on Mars.
- `equipment_resources`: Establishes the relationship between equipment and resources.
- `addresses`: Stores address information for various entities.
- `buildings`: Stores information about buildings on Mars.
- `building_materials`: Establishes the relationship between buildings and construction materials.
- `equipment_building_relations`: Establishes the relationship between equipment and buildings.
- `life_support_systems`: Stores information about life support systems.
- `life_support_system_building_relations`: Establishes the relationship between life support systems and buildings.
