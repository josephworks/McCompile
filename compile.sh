#!/bin/bash

echo 'Removing old SRC Code...'
rm -rf Forge Proxy Server ServerPocketEdition
clear

echo 'Creating Directories...'
mkdir Server
mkdir Forge
mkdir Proxy
mkdir ServerPocketEdition
clear

echo 'Installing Dependencies...'
apt install maven default-jdk default-jre git wget unzip gradle -y
clear

echo 'Starting...'
screenfetch

echo 'Getting SRC Files...'
cd Server
git clone https://github.com/GlowstoneMC/Glowstone.git
git clone https://github.com/PaperMC/Paper.git
git clone https://github.com/minecraftserverorg/cuberite.git
git clone https://github.com/Diorite/Diorite.git
git clone https://github.com/LanternPowered/LanternServer.git
git clone https://github.com/SpongePowered/SpongeVanilla.git
cd ..
cd Forge
git clone https://github.com/CyberdyneCC/Thermos.git
git clone https://github.com/SpongePowered/SpongeForge.git
cd ..
cd Proxy
git clone https://github.com/SpigotMC/BungeeCord.git
git clone https://github.com/WaterfallMC/Travertine.git
git clone https://github.com/WaterfallMC/Waterfall.git
cd ..
cd ServerPocketEdition
git clone https://github.com/Nukkit/Nukkit.git
git clone https://github.com/pmmp/PocketMine-MP.git
git clone https://github.com/iTXTech/Genisys.git
cd ..
clear
echo 'Finished grabbing source files!'

echo 'Compiling Servers...'
cd Server
cd Glowstone
mvn -B package
cd ..
cd Paper
mvn clean install && ./scripts/paperclip.sh "$basedir"
cd ..
cd Diorite
mvn clean install
cd ..
cd LanternServer
gradle build
cd ..
cd SpongeVanilla
gradle build
cd ..
cd ..

echo 'Compiling Proxies...'
cd Proxy
cd BungeeCord
mvn clean install
cd ..
cd Travertine
mvn clean install
cd ..
cd Waterfall
mvn clean install
cd ..
cd ..

echo 'Compiling Forge Servers...'
cd Forge
cd SpongeForge
gradle build
cd ..
cd Thermos
gradle build
cd ..
cd ..

echo 'Compiling Pocket Edition Servers...'
cd ServerPocketEdition
cd Nukkit
mvn clean install
cd ..
cd ..

echo 'Compiling finished!'
