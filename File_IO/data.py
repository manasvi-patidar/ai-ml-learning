#Converting JSON to Python

import json

json_str = '{"name": "Manasvi", "isStudent": true}'

py_obj = json.loads(json_str) #JSON string -> python obj

print(type(py_obj), py_obj)
