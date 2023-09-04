#!/bin/bash

# Clone repository
git clone $1 /src
cd /src

# Extract function signatures from Java/Kotlin/Groovy files
grep -rE "def |fun |public static " --include=\*.{java,kt,groovy} . | \
awk -F ":" '{print $2}' > signatures.txt

# Optionally, you can cat the signatures.txt to log
cat signatures.txt
