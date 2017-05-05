# fpga-space-invaders
Space Invaders Game Designed in Verilog for the Digilent Zybo FPGA Board

## Hardware/Software Used
* Digilent Zybo FGPA Board - Zynq-7000 Development Board
* VGA monitor that support 1024x768 resolution at 85Hz
* Xilinx Vivado

## Instructions on How to Play
I/O pins used
* SW3 - start switch
* BTN3 - move left
* BTN2 - shoot
* BTN1 - move right
* BTN0 - continue button
* VGA out - connected to a monitor

1.	Flip the “start switch” into the on position and you should be prompted with a title screen that says “SPACE INVADERS.”
2.	To get to the next screen press the “continue button.”
3.	The game starts on this screen. In the top left you will see the text “LEVEL” and a number next to it stating that you are on level 1. In the bottom left is you score. For each ship destroyed you gain points based on the level you are on. In the bottom right is the shot charge. When it is green the “shoot” button will shoot a red laser that destroys invader ships. 
4.	You, the orange player ship, can move left, move right, and shoot using the buttons on the Zybo board. The invader ships, that are cyan, will continuously moves towards you. The goal of the game is to destroy the invader ships, with your red laser, before they cross the green line.
5.	Once you have destroyed all of the invader ships a blue screen will appear.
6.	Press the “continue button” to start the next level. 
7.	Repeat steps 4, 5, and 6 until you reach the green screen.
8.	If you reach the green screen, you have won the game and have earned a score of 280. Congratulations!
9.	If the invader ships cross the green line on any level, a red screen will appear meaning that you have lost. You can restart the game by switching off and on the “power switch.”
10.	There are a total of 5 levels. Good luck on your endeavor, space defender!
