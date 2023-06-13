/* Run all scripts */

-- table initialization
@include tables.sql
-- add data in database
@include data.SQL
-- triggers, procedures, views, scripts
@include actions.sql
