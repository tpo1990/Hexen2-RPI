#!/bin/bash

# Script version 1.1
# This script is created by tpo1990

# The script downloads and installs uHexen2 - Hammer of Thyrion Hexen II source port in RetroPie.
# After install script is complete, remember to enable parse gamelists enabled in RetroPie settings to hide Hexen2 install folder

# First download required dependencies and install them.

cd ~
sudo apt-get update
sudo apt-get install libsdl1.2debian libsdl-image1.2 libsdl-mixer1.2 libsdl-mixer1.2-dev libsdl-net1.2 libsdl-net1.2-dev timidity.

# Then download uHexen2 source, demo pak and install them into RetroPie.

cd ~
cd /home/pi/RetroPie/roms/ports/
mkdir Hexen2
cd Hexen2
sudo wget https://vorboss.dl.sourceforge.net/project/uhexen2/Hammer%20of%20Thyrion/1.5.9/Source/hexen2source-1.5.9.tgz
tar -xvf hexen2source-1.5.9.tgz
sudo wget https://netix.dl.sourceforge.net/project/uhexen2/Hexen2Demo-Nov.1997/hexen2demo_nov1997-linux-i586.tgz
tar -xvf hexen2demo_nov1997-linux-i586.tgz
sudo mkdir /home/pi/.hexen2
cd /home/pi/RetroPie/roms/ports/Hexen2/hexen2source-1.5.9/engine/hexen2
./build_all.sh
sudo mv /home/pi/RetroPie/roms/ports/Hexen2/hexen2demo_nov1997/* /home/pi/.hexen2/

# Clean up by removing uHexen2 source, demo pak download files.

sudo rm -r /home/pi/RetroPie/roms/ports/Hexen2/hexen2demo_nov1997
sudo rm /home/pi/RetroPie/roms/ports/Hexen2/hexen2demo_nov1997-linux-i586.tgz
sudo rm /home/pi/RetroPie/roms/ports/Hexen2/hexen2source-1.5.9.tgz 

# Create .sh file in RetroPie roms ports folder so that the port will be visible in Emulation Station.

echo "#!/bin/bash

cd /home/pi/RetroPie/roms/ports/Hexen2/hexen2source-1.5.9/engine/hexen2/

./hexen2" > /home/pi/RetroPie/roms/ports/Hexen2.sh

