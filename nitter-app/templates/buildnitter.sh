#!/usr/bin/env bash
# This script runs the build process for nitter and its SCSS

cd /home/{{ NITTER_USER }}/nitter
nimble build -d:release
nimble scss
mkdir ./tmp
