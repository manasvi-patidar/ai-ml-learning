#Writing JSON to a file

import json

data = {
    "name": "Manasviii",
    "age": "21",
    "isStudent": True,
    "note": "This data will be dumped into data4.json file using json.dump()"
}

with open("data4.json", "w") as f:
    json.dump(data, f, indent=4, sort_keys=True)
