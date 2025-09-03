## ArduPilot Parameters
ArduPilot uses a parameter list to configure vehicles. Inside Mission Planner, configurations can be backed up and uploaded from a file.
Parameters include mapping controls, reversing PWM signals, throttle threshholds, RC input types, etc.

## Lua Scripts
Some Autopilot boards such as the Cube Orange allow for Lua Scripts. This is a simple way to expand the capabilities of ArduPilot without modifiying the source code itself.

In MissionPlanner, you must navigate to MavFTP and navigate to the `scripts` folder to upload the scripts. You can also delete scripts here. Rebooting the board will apply changes.

### arm_disarm_relay.lua
ArduPilot disarms the motor by sending a neutral PWM signal (1500) to the throttle motor. For the PEP competition, we need to actually cut power to the high voltage system, so this script outputs a PWM signal to the servo signal 5 that is high when armed and low when disarmed. This can be used to control a relay connected to high voltage so that power is actually shutoff if the controller signal is lost or the disarm switch hit.

### reverse_servo_3.lua
We could map the throttle switch directly to the throttle motor which would mean that all the way down would be full reverse, all the way up full speed forward, and in the middle would cut throttle. However, this script allows for the mapping of a switch to reverse the motor so we can use the full range of the throttle stick. The boat will mostly be piloted forwards so this makes fine speed control easier. 
This makes for safer piloting as you can more quickly kill throttle by flicking the throttle stick straight down and have more precise control of speed.
