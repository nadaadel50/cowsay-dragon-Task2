#!/bin/bash

sudo apt-get update
sudo apt-get install -y cowsay
dragon="dragon"
cowsay -f "$dragon" "Run for cover, I am a Dragon" | tee dragon.txt
cat dragon.txt
