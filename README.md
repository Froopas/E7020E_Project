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
![design](https://github.com/Froopas/E7020E_Project/raw/main/Documents/Design.PNG "Design")