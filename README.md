## RCCF-PEP25
All code for RCCF's PEP 25 Competition Boat

# About:
The boat is be controlled by [ArduRover](https://ardupilot.org/rover/). The onboard flight controller is a [CubePilot Orange](https://ardupilot.org/copter/docs/common-thecubeorange-overview.html).

Learn how to install Mission Planner [here](https://ardupilot.org/planner/docs/mission-planner-installation.html). When the CubePilot is connected to a computer in Mission Planner, the latest version of ArduRover can be installed. Download the [parameters](PEP25ArdupilotParameters.param) and upload them to the Board in Mission Planner.

## Installation:
This will install all of the code in a GIT workspace on your computer.

Find instructions on adding an ssh key [here](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account).

```bash
mkdir "RCCF PEP 2025"
cd "RCCF PEP 2025"
mkdir src
git clone git@github.com:RoboticsClubatUCF/RCCF-PEP25.git src
cd src
git submodule update --init --recursive
```

## In This Repository:
- Ardupilot parameter list
- [ESP32 PWM to Stepper](https://github.com/RoboticsClubatUCF/ESP32-PWM-to-Stepper/tree/8160392d6b5879aeb35a627ed0b1841411643998)
	- Rudder control

## Goals:
- Reliable RC Control of Boat
- CAN BUS communication with ESC
- WiFi based communications:
	- Camera stream
	- Temperature sensors on high power components
	- Battery voltage and current monitoring
- Later: Telemetry Radio
