#!/bin/bash
lsof -i -n -P |gawk '{print $1}'|sed -n $1p