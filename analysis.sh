#!/bin/bash

file="students.csv"

if [ ! -f "$file" ]; then
    echo "Error: File '$file' does not exist."
    exit 1
fi

echo "Total number of lines: $(wc -l < "$file")"
echo "Number of CSE students: $(grep -c "CSE" "$file")"
echo "Number of EE students: $(grep -c "EE" "$file")"
echo "Number of ME students: $(grep -c "ME" "$file")"

echo "Analysis Completed"
