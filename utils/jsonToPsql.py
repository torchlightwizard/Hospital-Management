import json

input_path = "../design/templates/schema_psql.json"
output_path_db = "../design/queries/postgresql/query_create_db.sql"
output_path_schema = "../design/queries/postgresql/query_create_schema.sql"
output_path_table = "../design/queries/postgresql/query_create_table.sql"
output_path_columns = "../design/queries/postgresql/query_create_columns.sql"
output_path_relations = "../design/queries/postgresql/query_create_relations.sql"

create_db = "CREATE DATABASE \"{}\" \n\tWITH \n\tENCODING = \"UTF8\" \n\tLC_COLLATE = \"English_Pakistan.1252\" \n\tLC_CTYPE = \"English_Pakistan.1252\";"
create_schema = "CREATE SCHEMA \"{}\";"
create_table = "CREATE TABLE \"{}\".\"{}\" (\n{}\n);\n"
create_columns = "ALTER TABLE \"{}\".\"{}\"\n{};\n"
create_relations = "ALTER TABLE \"{}\".\"{}\"\n\tADD FOREIGN KEY (\"{}\") REFERENCES \"INPUT_SCHEMA\".\"{}\"(\"Id\");\n"

def get_columns(content, schema, table):
    query2 = "\tADD COLUMN \"{}\" {}"
    columns = content[schema][table]
    columns = [query2.format(col, columns[col]) for col in columns if col != "Id"]
    columns = ",\n".join(columns)
    return columns

def get_relations(content, schema, table):
    columns = content[schema][table]
    columns = [create_relations.format(schema, table, col, " ".join(col.split(" ")[:-1])) for col in columns if ((col.split(" ")[-1] == "Id") and (col != "Id"))]
    columns = "".join(columns)
    return columns

with open(input_path) as file:
    content = file.read()
content = json.loads(content)

# 1. create db query
with open(output_path_db, "w") as file:
    query = create_db.format("hospital management")
    file.write(query)

# 2. create schema query
with open(output_path_schema, "w") as file:
    schemas = [create_schema.format(schema) for schema in content.keys()]
    query = "\n".join(schemas)
    file.write(query)

# 3. create table query
with open(output_path_table, "w") as file:
    query = ""
    for schema in content.keys():
        for table in content[schema].keys():
            query = query + create_table.format(schema, table, "\"Id\" " + content[schema][table]["Id"])
    file.write(query)

# 4. create columns for each table
with open(output_path_columns, "w") as file:
    query = ""
    for schema in content.keys():
        for table in content[schema].keys():
            query = query + create_columns.format(schema, table, get_columns(content, schema, table))
    file.write(query)

# 5. create relations for each table
with open(output_path_relations, "w") as file:
    query = ""
    for schema in content.keys():
        for table in content[schema].keys():
            query = query + get_relations(content, schema, table)
    file.write(query)