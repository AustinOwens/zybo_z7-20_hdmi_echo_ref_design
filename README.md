# Zybo Z7-20 FPGA HDMI Test

## Description
A simple Vivado HDMI test project that echos the HDMI input to the HDMI output in the FPGA programmable logic of a Zybo Z7-20 board.

https://user-images.githubusercontent.com/29415197/154883277-7094feda-99f1-46d9-8d17-99b99be47359.mp4

## Prerequisite
* [Install Xilinx tools](https://youtu.be/LaXdJpswYt0?t=987) (currently the only version supported is 2020.2.2. The Tcl script should work with later version but you'll probably be required to update some IP cores)

## Getting Started
To implement the bitstream into the FPGA programmable logic, execute the following steps:

### Linux
1. Run the start.sh script

### Windows
1. Launch Vivado and go to Tools>Run Tcl Script...

### Linux or Windows
2. Click "Generate Bitstream" in the Flow Navigator (press OK if the Launch Run Critical Messages box comes up, the run will still execute in the background)
3. Once the bitstream is finished, You'll get a "Bitstream Generation Completed" pop-up. Select "Open Hardware Manager" and press OK
4. Connect your Zybo Z7-20 board to the computer and turn it on
5. Click on Open target> Auto Connect
6. Click on Program Device>xc7z020_1 in the Flow Navigator
7. Make sure your design_1_wrapper.bit and design_1_wrapper.ltx files are in the Bitstream file and Debug probes file respectivley. Click Program.
8. If you have your HDMI camera plugged into HDMI In and a monitor plugged into HDMI Out, you should be able to see the camera streaming to your monitor. You should also be able to see the RGB color values on the waveform window in Vivado if you Click the play button (says "Run trigger for this ILA core" if you hover over it).

## Tested HDMI In Devices
### GoPro HERO3+
Tested and validated at:
| Resolution | FPS    | Megapixels | Ratio |
| :--------: | :----: | :--------: | :---: |
| 4k         | 12fps  | 12MP       | 17:9  |
| 4k         | 15fps  | 12MP       |       |
| 2.7k       | 24fps  | 12MP       | 17:9  |
| 2.7k       | 30fps  | 12MP       |       |
| 1440p      | 30fps  | 12MP       |       |
| 1080p      | 60fps  | 12MP       |       |
| 960p       | 100fps | 12MP       |       |
| 720p       | 120fps | 12MP       |       |

## Debugging
If you click on Open Block Design in the flow navigator, you can see that I routed the reset button (BTN0 on the board) and the locked signals from the clock wizard and the dvi2rgb IP cores to the LEDs. The LEDs on the board are as follows:
* LD0 - Reset
* LD1 - Clock Wizard 'locked" signal
* LD2 - dvi2rgb 'aPixedClkLckd' signal
* LD3 - dvi2rgb 'pLocked' signal

If everything is working properly, LD 1 should always be on as soon as you flash the bitstream, and LD 2 and 3 should light up as soon as you turn on streaming out HDMI on your camera.
