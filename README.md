# Hexen2-RPI
Hexen 2 for Raspberry pi script

**Hexen II - uHexen II: Hammer of Thyrion source port**

It is now possible to play Hexen II on RetroPie and Raspbian thanks to uHexen II: Hammer of Thyrion source port.

I am in the process of writing a script that compiles and builds the source port, while also adding it to RetroPie.

**Build process:**
1: Download and install necessary required libs for SDL, Timidity and etc.
2: Create folders Games and Hexen II with full path /home/pi/Games/Hexen II.
3: Download uHexenII source files and 1997 Nov. demo of Hexen II.
4: Compile uHexenII.
5: Move .Pak file from 1997 Nov. demo of Hexen II into /home/pi/.HexenII.
6: Create .desktop as a shortcut on Raspbian desktop and create Hexen II.sh file into Ports folder in RetroPie.

**Future plan:**
Make script available into RetroPie-script as a package (Need help for this)
Create a script for HexenWorld and maybe make script available into RetroPie-script as a package.
Adjustments in scripts.

**Notes:**
Hexen II runs at full speed with SDL and Timidity support as compared to the Quake 1 port Tyrquake. It runs both in X11 window and in RetroPie/ES. It is also possible to use your original Hexen II install disc by using the .Pak files. Multiplayer has not been tested yet although it looks as it will work. HexenWorld the online multiplayer client/server is also available to compile/build. I need to see how further the development and build goes.
