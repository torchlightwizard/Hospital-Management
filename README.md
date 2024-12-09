# Description
A database design for a real world hospital management system. The design will incorporate an sql database "postgresql" and visualization using "power bi".<br>

The folder hierarchy is as follows:<br>
|     |       |           |
|-----|-------|-----------|
|root/|       |           |
|     |design/|           |
|     |       |schema/    |
|     |       |proposals/ |
|     |       |templates/ |
|     |db/    |           |
|     |       |postgresql/|

# Schema

# Notes

# Workflow
 1. The schema and tables are implemented in `/design/templates/schema.yaml`.
 2. The `/utils/yamlToJson.py` is used to convert `/design/templates/schema.yaml` to json `/design/templates/schema.json` for ease of Editing data types.
 3. The `/utils/jsonToXsql.py` is used to convert the `/design/templates/schema_Xsql.json` files into `/design/queries/X/query_xyz.sql` queries to generate the database.
    (`X` = `My` or `P`)
 4. Finally edit `/design/queries/X/query_xyz.sql` query files to properly align foreign keys with schemas.