#!/bin/sh

value=$(sudo python -m ~/mh_z19/mh_z19.py)
curl -i -XPOST "http://localhost:8086/write?db=home" --data-binary "co2, field1=${value}"
