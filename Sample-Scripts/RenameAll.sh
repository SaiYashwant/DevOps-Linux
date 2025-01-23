#!/bin/bash

# Rename all the .txt files to .log
ls | cut -d. -f1 | xargs -i mv {}.txt {}.log
