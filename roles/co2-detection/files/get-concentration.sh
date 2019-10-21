#!/bin/sh

co2_value=$(sudo python -m mh_z19 --all | jq .co2)
temperature_value=$(sudo python -m mh_z19 --all | jq .temperature)
curl -sS -i -XPOST "http://localhost:8086/write?db=home" --data-binary "co2,host=server01 value=${co2_value}
temperature,host=server01 value=${temperature_value}"
