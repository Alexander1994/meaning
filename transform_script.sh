#!/bin/bash

sed '/^\s*$/d' sentences > clean       # remove empty lines
sed 's/.*/"&"/' clean > quoted         # wrap in quotes
sed '$!s/$/,/' quoted > sentence_final # add semi colon to everyline but last 