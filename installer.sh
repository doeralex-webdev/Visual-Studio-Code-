#!/bin/bash
echo Visual Studio Code is being installed...
sleep 1
sudo apt update
sleep 1
sudo apt install software-properties-common apt-transport-https wget
sleep 1
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo gpg --dearmor -o /usr/share/keyrings/packages.microsoft.gpg
sleep 1
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" | sudo tee /etc/apt/sources.list.d/vscode.list
sleep 1
sudo apt update
sleep 1
sudo apt install code
sleep 1
sudo apt-get install git
read -n 1 -s -r -p "Visual Studio Code succesfull installed. Press Enter to close the Window."

