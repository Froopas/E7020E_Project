# Project Armory
by Josef Utbult (josutb-7@student.ltu.se) and Anton Johansson (anojoh-7@student.ltu.se)

# Specification
We plan to make a mouse wired mouse of our own design with 2 buttons(left and right), a sensor 
instead of a scroll wheel, a 7 segment display to view your progress and a RGB led strip to give 
you the gaming feeling.

## Features
- [x] Required
- [x] Display
- [ ] Custom shell
- [ ] Touch scroll 
- [ ] LED

## Parts
To make this we would need:
- A PWM3389DM-T3QU sensor ([datasheet](https://www.pixart.com/products-detail/4/PMW3389DM-T3QU))
- A [STM32F411RE](https://www.st.com/en/microcontrollers-microprocessors/stm32f411re.html#overview) MCU ([Reference Manual](https://www.st.com/resource/en/reference_manual/dm00119316-stm32f411xce-advanced-armbased-32bit-mcus-stmicroelectronics.pdf))
- A 3 digit [7 segment display](https://www.elfa.se/en/segment-led-display-mm-red-tht-everlight-electronics-elt315surwa-s530-a3/p/11068625?q=7+segment+display&pos=43&origPos=42&origPageSize=50&track=true) ([datasheet](https://www.elfa.se/Web/Downloads/_t/ds/ELT315SURWA-S530-A3_eng_tds.pdf))
- A [LED strip](https://www.elfa.se/en/ws2812b-led-strip-rgb-5v-18w-1m-seeed-studio-104990014/p/30089752?track=true&no-cache=true) ([datasheet](https://www.elfa.se/Web/Downloads/_t/ds/WS2812B_104990014_eng_tds.pdf))
- A [Resistive Linear Sensor](https://www.digikey.com/en/products/detail/spectra-symbol/SP-L-0012-103-1--RH/2175422) ([datasheet](https://media.digikey.com/pdf/Data%20Sheets/Spectra%20Symbol/SP%20Series%20SoftPot.pdf))

## Overall design
![design](https://github.com/Froopas/E7020E_Project/blob/main/img/Design.PNG "Design")

## PCB
The PCB is a standard two layer pcb, with the dimentions 40x60 mm.

![pcb](https://github.com/Froopas/E7020E_Project/blob/main/img/pcb.png "pcb")

## Shell
The shell is, at the moment, a 3d render from Fusion 360. It has space for the PCB in the middle 
and some plexi-glass windows to make it more visually pleasing. The buttons on the pcb are 
designed as *vertical* buttons, which means that the mecanic force from the button will have to 
come from the front of the pcb, rather than the top. This enables us to have a shell that is a 
single piece, where some cutout allows the buttons to flex and pivot around where they are joined 
to the rest of the body. The touch strip is placed under the buttons in the middle, and are mounted 
on a seperate piece that is screwed into the rest of the shell.

Shell stuff

![Mouse_1](https://github.com/Froopas/E7020E_Project/blob/main/img/Mouse_1.png "Mouse_1")

![Mouse_2](https://github.com/Froopas/E7020E_Project/blob/main/img/Mouse_2.png "Mouse_2")

![Mouse_3](https://github.com/Froopas/E7020E_Project/blob/main/img/Mouse_3.png "Mouse_3")

# Result

As of 26 of March 2021 we have the following result on our project.

## Features

The hardware in place on the mouse is the mcu, the buttons, the PMW sensor and 7 segment 
display. The RGB leds that was supposed to be mounted on the pcb, and the touch sensor was left 
unmounted due to lack of time.

In software we were able to implement RTIC and got the mouse sensor, and the buttons to work with the 
HID protocol. Due to a mismatch in pin selection for the touch strip, the analog pin we chose to connect
the sensor to wasn't compatible with the HAL, which meant we could not get the ADC to work on that pin. 
Therefore, we chose to prioritize other tasks before the touch sensor. And as the RGB leds weren't in 
place we did not test these either.

The first prototype of the shell could fit the pcb and had the sensor working, but it didn't fit the 
display and was not very responsive for the buttons. A second version of this is on the way, but due to 
time constraints this will not be finished for the presentation.

## Testing

The mouse has been tested on Linux and on Windows. It worked great on Linux, but on Windows we had to 
restart the computer and pull some updates for the mouse to work. The mouse only works on very specific
surfaces, but other than that it is a functional mouse (at best).

## Evaluation

I (Josef) feel that I've could have put in more work on the software side, and less into designing the 
shell. Due to personal problems I had less time to work on it than I would have wanted. 

We feel like we've gotten an acceptable result and that the mouse is good enough for what it is.

## Future goals

We would have liked to implement the following.

* A working touch sensor that supports scrolling and scroll wheel click.

* An ergonomic shell that looks nice and is usable, with easily used mouse buttons.

* Cool led colors.

* Communication from the computer to the mouse to display killcount from CS.
