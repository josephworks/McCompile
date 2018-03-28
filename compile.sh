#!/bin/bash

echo 'Removing old SRC Code...'
rm -rf Forge Proxy Server ServerPocketEdition Plugins
clear

echo 'Creating Directories...'
mkdir Server
mkdir Forge
mkdir Proxy
mkdir ServerPocketEdition
mkdir Plugins
clear

echo 'Installing Dependencies...'
apt install maven default-jdk default-jre git -y
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
git clone https://github.com/PrismarineMC/Prismarine.git
cd ..
cd Plugins
git clone https://github.com/essentials/Essentials.git
clear