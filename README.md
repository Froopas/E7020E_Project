# Project Armory
by Josef Utbult (josutb-7@student.ltu.se) and Anton Johansson (anojoh-7@student.ltu.se)

# Specification
We plan to make a mouse wired mouse of our own design with 2 buttons(left and right), a sensor instead of a scroll wheel, a 7 segment display to view your progress and a RGB led strip to give you the gaming feeling.

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
The shell is, at the moment, a 3d render from Fusion 360. It has space for the PCB in the middle and some plexi-glass windows to make it more visually pleasing. The buttons on the pcb are designed as *vertical* buttons, which means that the mecanic force from the button will have to come from the front of the pcb, rather than the top. This enables us to have a shell that is a single piece, where some cutout allows the buttons to flex and pivot around where they are joined to the rest of the body. The touch strip is placed under the buttons in the middle, and are mounted on a seperate piece that is screwed into the rest of the shell.

![Mouse_1](https://github.com/Froopas/E7020E_Project/blob/main/img/Mouse_1.png "Mouse_1")

![Mouse_2](https://github.com/Froopas/E7020E_Project/blob/main/img/Mouse_2.png "Mouse_2")

![Mouse_3](https://github.com/Froopas/E7020E_Project/blob/main/img/Mouse_3.png "Mouse_3")
