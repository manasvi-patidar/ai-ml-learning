#Reading JSON from a file

import json

with open("data.json", "r") as f:
    py_obj = json.load(f)
    print(py_obj)
    print(type(py_obj))
