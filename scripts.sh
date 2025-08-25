#!/bin/bash

dragon="dragon"
cowsay -f "$dragon" "Run for cover, I am a Dragon" | tee dragon.txt
cat dragon.txt
