#!/bin/bash

sudo apt-get install -y cowsay
dragon="dragon"
cowsay -f "$dragon" "Run for cover, i am a Dragon" | tee dragon.txt
cat dragon.txt
exit 0