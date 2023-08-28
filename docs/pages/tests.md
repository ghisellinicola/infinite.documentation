# Tests

This will be done with the specifications

## Preliminary (PRE)
Check CCRs nameplates, Interface panel board, wiring, positioning and clamping. Before any test check the following points and make sure there are no alarms/warnings on computerized control system.

| Code        | Passed | Description                                                                                                                                                                                                                                                                                                            |
| ----------- | ------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| PRE-01      |        | Each supplied computer system, located at the respective site, must be connected to the power supply and prepared                                                                                                                                                                                                      |
| PRE-02      |        | Each Constant Current Regulators (CCR) unit, located in the relevant Electrical Vault, has to be supplied and set for remote commands (the relevant series circuit, or series circuits in case of Circuit Selector Switch, is connected to the field luminous section; the CCR connected to the Communication Network) |
| PRE-03      |        | Each Parallel/Auxiliary User must be supplied and connected to the corresponding control/power relay located in the low-voltage power supply panel, utilizing cables and contacts. These users should be prepared to control the relevant electrical relay (OUT) and receive the status/alarm (IN)                     |
| PRE-04      |        | All communicaton lines (Ethernet cupper patch cables, LonWorks copper cables) are connected and working                                                                                                                                                                                                                |
| PRE-OVERALL |        | All previous tests are successful                                                                                                                                                                                                                                                                                      |

---


## EXCHANGE COMMANDS BETWEEN MRCS (Monitoring and Remote-Control Station) (RCS)
Check the transition of commands between Monitoring and Remote-Control Station (MRCS) based on pre-defined priorities for users.

| Code        | Passed | Description                                                                                                         |
| ----------- | ------ | ------------------------------------------------------------------------------------------------------------------- |
| RCS-01      |        | Check if only one user (Master) is able to operate time and other users are able to monitor the status of the ALCMS |
| RCS-02      |        | Activating Mastership request from other user                                                                       |
| RCS-03      |        | Simulation of the missing workstation (Fault simulation)                                                            |
| PRE-OVERALL |        | All previous tests are successful                                                                                   |


---

## CONTROL AND COMMAND OF AN UNIFORM GROUP OF CCRs (CMD)
Check the following operations, from one or each MRCS, Overview, for one or more uniform groups of CCRs or Auxiliaries.

| Code        | Passed | Description                                                |
| ----------- | ------ | ---------------------------------------------------------- |
| CMD-01      |        | Power ON CCR Group RWYEDGE                                 |
| CMD-02      |        | Power OFF CCR Group RWYEDGE                                |
| CMD-03      |        | Adjustments of brilliancy to 10%                           |
| CMD-04      |        | Displays on the monitor of the CCRs group state            |
| CMD-05      |        | Power ON ABN                                               |
| CMD-06      |        | Power OFF ABN                                              |
| CMD-07      |        | Displays on the monitor of electrical parameters monitored |
| CMD-08      |        | Check on field that the relevant lights are on             |
| CMD-09      |        | Ensure that the response time is within a 5-second         |
| PRE-OVERALL |        | All previous tests are successful                          |


---

## CONTROL AND COMMAND OF A SINGLE CCR (CCR)
Check the following operations, with maintenance user for one or more CCRs.

| Code        | Passed | Description                                                          |
| ----------- | ------ | -------------------------------------------------------------------- |
| CCR-01      |        | Power ON CCR RWYEND1                                                 |
| CCR-02      |        | Adjustments of brilliancy to 10%                                     |
| CCR-03      |        | Check on the CCR control of the CCR state                            |
| CCR-04      |        | Verify on the CCR control window the electrical parameters monitored |
| CCR-05      |        | Display on the monitor of details about CCR alarms                   |
| CCR-06      |        | Check on field that the relevant lights are on                       |
| CCR-07      |        | Ensure that the response time is within a 5-second                   |
| PRE-OVERALL |        | All previous tests are successful                                    |


---

## CONTROL AND COMMAND OF A SINGLE CCR CIRCUIT (CRS)
Check the following operations, from one or each control and monitoring workstation for one CCR with circuit selector.

| Code        | Passed | Description                                                |
| ----------- | ------ | ---------------------------------------------------------- |
| CRS-01      |        | Power ON CCR APAPI 12                                      |
| CRS-02      |        | Power OFF CCR Circuit 1                                    |
| CRS-03      |        | Adjustments of brilliancy                                  |
| CRS-04      |        | Displays on the monitor of the CCR state                   |
| CRS-05      |        | Displays on the monitor of electrical parameters monitored |
| CRS-07      |        | Displays on the monitor of details about CCR alarms        |
| CRS-08      |        | Check on field that the relevant lights are on             |
| CRS-06      |        | Power OFF CCR Circuit 1                                    |
| CRS-09      |        | Ensure that the response time is within a 5-second         |
| PRE-OVERALL |        | All previous tests are successful                          |


---

## CONTROL AND COMMAND OF STANDARD (MEMORY) AGL CONFIGURATION BRIGHTNESS LEVELS (MRC)
For one or more operating conditions and configurations scheduled, from one or each MRCS, check one or more Preset brightness levels scheduled.

| Code        | Passed | Description                                              |
| ----------- | ------ | -------------------------------------------------------- |
| MRC-01      |        | Tap on preset runway 12 at 1%                            |
| MRC-02      |        | Choose the heading and the preset                        |
| MRC-03      |        | Apply the preset                                         |
| MRC-04      |        | Verify on the over view or smart view the CCRs           |
| MRC-05      |        | Verify on the monitor of electrical parameters monitored |
| MRC-06      |        | Checks on field that the relevant lights are on          |
| MRC-07      |        | Ensure that the response time is within a 5-second       |
| PRE-OVERALL |        | All previous tests are successful                        |


---

## CONFIGURATION OF STANDARD (MEMORY) AGL CONFIGURATION BRIGHTNESS LEVELS (MRS)
For changing pre-set or more operating conditions and configurations scheduled, from one or each MRCS, open configuration selection tab and change the brightness levels.

| Code        | Passed | Description                                         |
| ----------- | ------ | --------------------------------------------------- |
| MRS-01      |        | Open pre-set configuration                          |
| MRS-02      |        | Change the Pre-set configuration                    |
| MRS-03      |        | Click on Save                                       |
| MRS-04      |        | Click on back to AGL                                |
| MRS-05      |        | Tap on preset runway 12 at 1%                       |
| MRS-06      |        | Choose the heading and the apply preset             |
| MRS-06      |        | Verify on the over view or smart view the CCRs step |
| MRS-06      |        | Checks on field that the relevant lights are on     |
| MRS-07      |        | Ensure that the response time is within a 5-second  |
| PRE-OVERALL |        | All previous tests are successful                   |


---

## VIEW ALARMS AND LOG (LOG)
For one or more operating conditions and configurations scheduled, from one or each MRCS, check one or more Standard AGL configuration brightness levels scheduled.


| Code        | Passed | Description                                                                    |
| ----------- | ------ | ------------------------------------------------------------------------------ |
| LOG-01      |        | Open LOG                                                                       |
| LOG-02      |        | Verify log based on the previous commands (Changing preset)                    |
| LOG-03      |        | Open Alarm                                                                     |
| LOG-04      |        | Acknowledge alarms                                                             |
| LOG-05      |        | Verify the correct identification of the previous commands and acknowledgement |
| PRE-OVERALL |        | All previous tests are successful                                              |

