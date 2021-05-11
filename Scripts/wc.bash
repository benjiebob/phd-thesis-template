#!/bin/bash
numWords=$(ps2ascii $1 | wc -w)
totalWordsAllowed=65000
alexWords=68182
fotiosWords=50973
yaniWords=57477
percentComplete=$(echo "scale=2; (100 * $numWords) / $totalWordsAllowed" | bc)
percentCompleteAlex=$(echo "scale=2; (100 * $numWords) / $alexWords" | bc)
percentCompleteFotios=$(echo "scale=2; (100 * $numWords) / $fotiosWords" | bc)
percentCompleteYani=$(echo "scale=2; (100 * $numWords) / $yaniWords" | bc)

echo "****************************************"
echo "MAX_ALLOWED:" $numWords of $totalWordsAllowed: $percentComplete%
echo "****************************************"
echo "       ALEX:" $numWords of $alexWords: $percentCompleteAlex%
echo "     FOTIOS:" $numWords of $fotiosWords: $percentCompleteFotios%
echo "       YANI:" $numWords of $yaniWords: $percentCompleteYani%
echo "****************************************"
