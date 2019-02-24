pipeline {
    agent any

    stages {
        stage('Clear') {
            steps {
                sh 'rm -rf Forge Proxy Server ServerPocketEdition'
            }
        }
        stage('Prepare') {
            steps {
                sh 'mkdir Server'
                sh 'mkdir Forge'
                sh 'mkdir Proxy'
                sh 'mkdir ServerPocketEdition'
            }
        }
        stage('PrintInfo') {
            steps {
                sh 'neofetch'
            }
        }
        stage('Get') {
            steps {
                sh 'cd Server'
                sh 'git clone https://github.com/GlowstoneMC/Glowstone.git'
                sh 'git clone https://github.com/PaperMC/Paper.git'
                sh 'git clone https://github.com/minecraftserverorg/cuberite.git'
                sh 'git clone https://github.com/Diorite/Diorite.git'
                sh 'git clone https://github.com/LanternPowered/LanternServer.git'
                sh 'git clone https://github.com/SpongePowered/SpongeVanilla.git'
                sh 'cd ..'
                sh 'cd Forge'
                sh 'git clone https://github.com/CyberdyneCC/Thermos.git'
                sh 'git clone https://github.com/SpongePowered/SpongeForge.git'
                sh 'cd ..'
                sh 'cd Proxy'
                sh 'git clone https://github.com/SpigotMC/BungeeCord.git'
                sh 'git clone https://github.com/WaterfallMC/Travertine.git'
                sh 'git clone https://github.com/WaterfallMC/Waterfall.git'
                sh 'cd ..'
                sh 'cd ServerPocketEdition'
                sh 'git clone https://github.com/Nukkit/Nukkit.git'
                sh 'git clone https://github.com/pmmp/PocketMine-MP.git'
                sh 'git clone https://github.com/iTXTech/Genisys.git'
                sh 'cd ..'
            }
        }
        stage('Build') {
            steps {
                sh 'echo 'Compiling Servers...''
                sh 'cd Server/Glowstone'
                sh 'mvn -B package'
                sh 'cd .. && cd Paper'
                sh 'mvn clean install && ./scripts/paperclip.sh "$basedir"'
                sh 'cd .. && cd Diorite'
                sh 'mvn clean install'
                sh 'cd .. && cd LanternServer'
                sh 'gradle build'
                sh 'cd .. && cd SpongeVanilla'
                sh 'gradle build'
                sh 'cd .. && cd ..'
                sh 'echo "Compiling Proxies..."'
                sh 'cd Proxy && cd BungeeCord'
                sh 'mvn clean install'
                sh 'cd .. && cd Travertine'
                sh 'mvn clean install'
                sh 'cd .. && cd Waterfall'
                sh 'mvn clean install'
                sh 'cd .. && cd ..'
                sh 'echo "Compiling Forge Servers..."'
                sh 'cd Forge && cd SpongeForge'
                sh 'gradle build'
                sh 'cd .. && cd Thermos'
                sh 'gradle build'
                sh 'cd .. && cd ..'
                sh 'echo "Compiling Pocket Edition Servers..."'
                sh 'cd ServerPocketEdition && cd Nukkit'
                sh 'mvn clean install'
                sh 'cd .. && cd ..'
            }
        }
        stage('Artifact') {
            steps {
                sh 'echo Artifacts'
            }
        }
    }
}
