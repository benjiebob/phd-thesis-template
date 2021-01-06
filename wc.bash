#!/bin/bash
numWords=$(ps2ascii thesis.pdf | wc -w)
totalWordsAllowed=65000
percentComplete=$(echo "scale=2; (100 * $numWords) / $totalWordsAllowed" | bc)

echo Num Words: $numWords of $totalWordsAllowed. Percent Complete: $percentComplete%