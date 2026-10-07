#Converting Python to JSON

import json

py_obj = {
    "name": "Manasvi",
    "isTeacher": None
}

json_str = json.dumps(py_obj) #python obj -> JSON string

print(type(json_str), json_str)
