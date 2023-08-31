# Naming Conventions

**TODO: ADD OCEM EXCEL**

<!-- 

## Users
_ _ _ 
As default we install 5 users:

| Username | Notes |
|--------|--------|
| **ROOT** | |
| **OCEM_MNT** | |
| **ADMIN** | |
| **{{airport}}_{{config.extra.stations[0]}}** | (airport code)_(station1) |
| **{{airport}}_{{config.extra.stations[1]}}** | (airport code)_(station2) |

## Passwords
_ _ _ 
As default, for the previously listed users, we install, respectively, the following 5 passwords:

| Username | Passwords | Notes |
|--------|--------|--------|
| **ROOT** | **ENERGY-{{airport}}@2023** | ENERGY-(airport code)@(installation year) | 
| **OCEM_MNT** | **ENERGY-{{airport}}@2023** | ENERGY-(airport code)@(installation year) |
| **ADMIN** | **{{airport}}{{config.extra.headings[0]}}@{{config.extra.headings[1]}}** | (airport code)_(heading1)@(heading2) |
| **{{airport}}_{{config.extra.stations[0]}}** | **{{airport}}{{config.extra.stations[0]}}@{{config.extra.headings[0]}}** | (airport code)_(station1)@(heading1) |
| **{{airport}}_{{config.extra.stations[1]}}** | **{{airport}}{{config.extra.stations[1]}}@{{config.extra.headings[1]}}** | (airport code)_(station2)@(heading2) |

In the previouusly listed points, {{config.extra.stations[0]}} and {{config.extra.stations[1]}} can be intended as stations types.

## Stations
_ _ _ 
If there are only one station for each possible type we will use the following names:

### Single/Multiple Runway - Single Tower:

- **TWR** 

### Single/Multiple Runway - Single Electrical Vault:

- **ELV**

In case in which we have more than one type of station we will use the following names:

### Single Runway - Multiple Towers:

If we have 2 towers for a single runway

- **TWRs{{config.extra.headings[0]}}** for the tower on the {{config.extra.headings[0]}} side
- **TWRs{{config.extra.headings[1]}}** for the tower on the {{config.extra.headings[1]}} side

Note: **s** stands for "side"

### Single Runway - Multiple Electrical Vaults:

- **ELVs{{config.extra.headings[0]}}** for the electrical vault on the {{config.extra.headings[0]}} side
- **ELVs{{config.extra.headings[1]}}** for the electrical vault on the {{config.extra.headings[1]}} side

### Multiple Runway - Single Runway Tower:

- **TWR_{{config.extra.runways[0]}}** for the tower on the {{config.extra.runways[0]}} runway
  
### Multiple Runway - Single Runway Electrical Vault:

- **ELV_{{config.extra.runways[0]}}** for the electrical vault on the {{config.extra.runways[0]}} runway

### Multiple Runway - Multiple Runway Towers:

- **TWR_{{config.extra.runways[0]}}s{{config.extra.headings[0]}}** for the tower on the {{config.extra.runways[0]}} runway on the {{config.extra.headings[0]}} side
- **TWR_{{config.extra.runways[0]}}s{{config.extra.headings[1]}}** for the tower on the {{config.extra.runways[0]}} runway on the {{config.extra.headings[1]}} side
  
### Multiple Runway - Multiple Runway Electrical Vaults: 
- **ELV_{{config.extra.runways[0]}}s{{config.extra.headings[0]}}** for the electrical vault on the {{config.extra.runways[0]}} runway on the {{config.extra.headings[1]}} side
- **ELV_{{config.extra.runways[0]}}s{{config.extra.headings[1]}}** for the electrical vault on the {{config.extra.runways[0]}} runway on the {{config.extra.headings[1]}} side

## PCs
_ _ _ 
Same as Stations

**Can we have more than one pc for each station?**

In case (STATION-NAME)_(ROOM-NAME), ie:

- TWR_CONTROL
- TWR_MAINTENANCE

## Interface Panels
_ _ _ 
Same as Stations

**Can we have more than one interface panels for each station?**

In case (STATION-NAME)_(ROOM-NAME), ie:

- TWR_CONTROL
- TWR_MAINTENANCE

## Modules
_ _ _ 
Same as Stations with module type suffix.

Examples:

- **{{config.extra.stations[0]}}_BACKEND**
- **{{config.extra.stations[0]}}_CONFIGURATOR**
- **{{config.extra.stations[0]}}_LOGGER**
- **{{config.extra.stations[0]}}_BRIDGE_S**
- **{{config.extra.stations[0]}}_GATEWAY_S**

&

- **{{config.extra.stations[1]}}_BACKEND**
- **{{config.extra.stations[1]}}_CONFIGURATOR**
- **{{config.extra.stations[1]}}_LOGGER**
- **{{config.extra.stations[1]}}_BRIDGE_M**
- **{{config.extra.stations[1]}}_GATEWAY_M** 

-->
