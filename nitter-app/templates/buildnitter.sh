#!/usr/bin/env bash
# This script runs the build process for nitter and its SCSS

cd /home/{{ NITTER_USER }}/nitter
nimble -y build -d:release
nimble -y scss
mkdir ./tmp
