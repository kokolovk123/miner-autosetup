#!/bin/bash
sudo apt update && sudo apt upgrade -y
sudo apt install screen wget curl -y

# Download INIChain Miner
wget https://github.com/Project-InitVerse/miner/releases/latest/download/inichain-miner
chmod +x inichain-miner

# Start mining
screen -dmS inichain ./inichain-miner --pool pool-a.yatespool.com:31588 --wallet 0x574FDEA623F4518F950Bd03Ab2add2A30CCBd1Dd
