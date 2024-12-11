import json

input_path = "../design/templates/schema_psql.json"
output_path_db = "../design/queries/postgresql/query_create_db.sql"
output_path_schema = "../design/queries/postgresql/query_create_schema.sql"
output_path_table = "../design/queries/postgresql/query_create_table.sql"

def addForeignKeys(cols):
    # print(cols)
    return cols

with open(input_path) as file:
    content = file.read()
content = json.loads(content)

create_db = "CREATE DATABASE \"{}\" \n\tWITH \n\tENCODING = \"UTF8\" \n\tLC_COLLATE = \"en_US.utf8\" \n\tLC_CTYPE = \"en_US.utf8\";"
create_schema = "CREATE SCHEMA \"{}\";"
create_table = "CREATE TABLE \"{}\".\"{}\" (\n{}\n);\n"

with open(output_path_db, "w") as file:
    query = create_db.format("hospital management")
    file.write(query)

with open(output_path_schema, "w") as file:
    schemas = [create_schema.format(schema) for schema in content.keys()]
    query = "\n".join(schemas)
    file.write(query)

with open(output_path_table, "w") as file:
    query = ""
    for schema in content.keys():
        for table in content[schema].keys():
            cols = [f"\t\"{col}\" {content[schema][table][col]}," for col in content[schema][table]]
            cols = addForeignKeys(cols)
            query = query + create_table.format(schema, table, "\n".join(cols))
    file.write(query)