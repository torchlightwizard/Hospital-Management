import json

input_path = "../design/templates/schema_mysql.json"
output_path_db = "../design/queries/mysql/query_create_db.sql"
output_path_schema = "../design/queries/mysql/query_create_schema.sql"
output_path_table = "../design/queries/mysql/query_create_table.sql"

with open(input_path) as file:
    content = file.read()
content = json.loads(content)

create_db = "CREATE DATABASE \"{}\" \n\tCHARACTER SET \"utf8\" \n\tCOLLATE \"utf8_general_ci\";"
create_schema = "CREATE SCHEMA \"{}\";"
create_table = "CREATE TABLE \"{} {}\" (\n{}\n);\n"

with open(output_path_db, "w") as file:
    query = create_db.format("hospital management")
    file.write(query)

with open(output_path_table, "w") as file:
    query = ""
    for schema in content.keys():
        for table in content[schema].keys():
            cols = [f"\t\"{col}\" {content[schema][table][col]}," for col in content[schema][table]]
            query = query + create_table.format(schema, table, "\n".join(cols))
    file.write(query)