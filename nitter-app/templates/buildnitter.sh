#!/usr/bin/env bash
# This script runs the build process for nitter and its SCSS
export PATH=/home/{{ NITTER_USER }}/.nimble/bin:$PATH
cd /home/{{ NITTER_USER }}/nitter
nimble -y build -d:release
nimble -y scss
mkdir ./tmp
