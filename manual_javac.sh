#!/bin/bash

set -exuo pipefail

TEMP=$(mktemp -d)

# Compile ChangesOften.java with no deps
javac ChangesOften.java -d ${TEMP}/a

# Compile NotExposed.java with ChangesOften.class in cp
javac NotExposed.java -cp ${TEMP}/a -d ${TEMP}/b

# Compile OnNotExposed.java with ONLY NotExposed.class in cp
javac OnNotExposed.java -cp ${TEMP}/b -d ${TEMP}/c

# Running the program requires all 3 classes in classpath, of course
java -cp ${TEMP}/c:${TEMP}/b:${TEMP}/a OnNotExposed
