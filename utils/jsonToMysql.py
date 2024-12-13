import json

input_path = "../design/templates/schema_mysql.json"
output_path_db = "../design/queries/mysql/query_create_db.sql"
output_path_schema = "../design/queries/mysql/query_create_schema.sql"
output_path_table = "../design/queries/mysql/query_create_table.sql"
output_path_columns = "../design/queries/mysql/query_create_columns.sql"
output_path_relations = "../design/queries/mysql/query_create_relations.sql"

create_db = "CREATE DATABASE `{}` \n\tCHARACTER SET `utf8` \n\tCOLLATE `utf8_general_ci`;"
create_schema = "CREATE SCHEMA `{}`;"
create_table = "CREATE TABLE `{} {}` (\n{}\n);\n"
create_columns = "ALTER TABLE `{} {}`\n{};\n"
create_relations = "\tADD FOREIGN KEY (`{}`) REFERENCES `INPUT_SCHEMA {}`(`Id`)"

def get_columns(content, schema, table):
    query2 = "\tADD COLUMN `{}` {}"
    columns = content[schema][table]
    columns = [query2.format(col, columns[col]) for col in columns if col != "Id"]
    columns = ",\n".join(columns)
    return columns

def get_relations(content, schema, table):
    columns = content[schema][table]
    columns = [create_relations.format(col, " ".join(col.split(" ")[:-1])) for col in columns if ((col.split(" ")[-1] == "Id") and (col != "Id"))]
    columns = ",\n".join(columns)
    return columns

with open(input_path) as file:
    content = file.read()
content = json.loads(content)

# 1. create db query
with open(output_path_db, "w") as file:
    query = create_db.format("hospital management")
    file.write(query)

# 2. create table query
with open(output_path_table, "w") as file:
    query = ""
    for schema in content.keys():
        for table in content[schema].keys():
            query = query + create_table.format(schema, table, "`Id` " + content[schema][table]["Id"])
    file.write(query)

# 3. create columns for each table
with open(output_path_columns, "w") as file:
    query = ""
    for schema in content.keys():
        for table in content[schema].keys():
            query = query + create_columns.format(schema, table, get_columns(content, schema, table))
    file.write(query)

# 4. create relations for each table
with open(output_path_relations, "w") as file:
    query = ""
    for schema in content.keys():
        for table in content[schema].keys():
            query = query + create_columns.format(schema, table, get_relations(content, schema, table))
    file.write(query)