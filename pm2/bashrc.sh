#!/bin/bash
fswatch -0 /Users/jima/.bashrc | while read -d "" event 
  do 
    tty_orc sor 
  done