#!/bin/bash

mkdir Server
mkdir Forge
mkdir Proxy
mkdir ServerPocketEdition
mkdir plugins

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
https://github.com/essentials/Essentials.git