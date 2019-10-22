## What is this
This is playbook to prepare env for saving co2 & temperature with Raspberry Pi.

## Tool
- sensor: MH-Z19
- database: influxdb
- lib: https://github.com/UedaTakeyuki/mh-z19

### Run ansible command
`ansible-playbook main.yml -i inventory --tags <tag> --ask-become-pass`
