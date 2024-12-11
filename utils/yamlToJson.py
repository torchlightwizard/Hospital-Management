import json

input_path = "../design/templates/schema.yaml"
output_path = "../design/templates/schema.json"

with open(input_path) as file:
    sentences = file.read().split("\n")

dic = {}
curr_schema = ""
for sent in sentences:
    if len(sent) < 1:
        continue
    elif sent[1] != "-":
        curr_schema = sent.split(":")[0]
        dic[curr_schema] = {}
    elif sent[1] == "-":
        curr_table = sent.split(":")[0][3:]
        curr_cols = sent.split(":")[1].replace("[", "").replace("]", "").split(",")
        dic[curr_schema][curr_table] = {}
        for col in curr_cols:
            dic[curr_schema][curr_table][col.strip()] = {}

js = json.dumps(dic, indent=1)
with open(output_path, "w") as file:
    file.write(js)