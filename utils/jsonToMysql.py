import json

input_path = "../design/templates/schema_mysql.json"
output_path_db = "../design/queries/mysql/query_create_db.sql"
output_path_schema = "../design/queries/mysql/query_create_schema.sql"
output_path_table = "../design/queries/mysql/query_create_table.sql"

def processCols(schema, table, col):
    """
        Description:
            1. Adds the query : "ColumnName" DATATYPE CONSTRAINT
               to each column of table
            2. Checks if a foreign key is needed or not.
               The check is made using the "Id" keyword in the column name.

        Args:
            schema: <str>
                Name of schema to put the table and its columns into
            table: <str>
                Name of table
            col: <str>
                Name of column to
                1. put into format "ColumnName" DATATYPE CONSTRAINT
                2. check if needs foreign key constraints
    """

    if (col.split(" ")[-1] == "Id") and (len(col.split(" ")) > 1):
        ref_table = " ".join(col.split(" ")[:-1]).strip()
        return f"\t\"{col}\" {content[schema][table][col]}, FOREIGN KEY (\"{col}\") REFERENCES `INPUT_SCHEMA_PREFIX {ref_table}`(Id),"
    return f"\t\"{col}\" {content[schema][table][col]},"

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
            cols = [processCols(schema, table, col) for col in content[schema][table]]
            query = query + create_table.format(schema, table, "\n".join(cols))
    file.write(query)