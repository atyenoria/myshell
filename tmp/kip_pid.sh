#!/bin/bash
lsof -i -n -P |gawk '{print $2}'|sed -n $1p