#!/bin/bash

# Update & install required packages
sudo apt update && sudo apt upgrade -y
sudo apt install screen wget curl -y

# Download INIChain Miner binary
wget -O iniminer-linux-x64 https://github.com/Project-InitVerse/miner/releases/download/v1.0.0/iniminer-linux-x64

# Give execute permission
chmod +x iniminer-linux-x64

# Start Mining
screen -dmS inichain ./iniminer-linux-x64 --pool pool-a.yatespool.com:31588 --wallet 0x574FDEA623F4518F950Bd03Ab2add2A30CCBd1Dd
