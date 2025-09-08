# Electrical System
![Electrical Diagram]("Full Boat.png")
*Diagram includes components not yet implemented on boat*

The electrical system is divided into to subsystems:
 - High Voltage Power and Steering
 - Low Voltage Control and Communication Electronics
The high voltage system is powered by 4 12.8V LiFePO3 batteries connected in series, providing 100Ah of 55V power for the main motor and rudder. The low voltage system is powered by a 4S LiPo battery.

# High Voltage
The high voltage system is routed through a contactor and a 150A fuse to protect the motor. It is then connected to a bus bar which allows for distribution to the VESC and Stepper controller.
### Contactor
The contactor is essentially a on/off switch for the high voltage system controlled by the low voltage system. This means we can fully cutoff power to the motor/steering without turning off the low voltage system.

### Batteries:
4 100Ah, 14.8V LiFePO3 connected in series
**Nominal voltage: 51.2V**

The batteries are each labelled with aft/forward and port/starboard to help with placement. When correctly conected, the full voltage can be read across the farthest aft terminals.

### Motor/VESC
- ApisQueen 70167
- FlipSky 75350
See [VESC Guide](VESCguide.md) for more info on how to configure the VESC.


