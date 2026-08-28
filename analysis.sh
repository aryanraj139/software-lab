#!/bin/bash

file="students.csv"

if [ ! -f "$file" ]; then
    echo "Error: File '$file' does not exist."
    exit 1
fi

echo "Total number of lines: $(wc -l < "$file")"
echo "Number of CSE students: $(grep -c "CSE" "$file")"
echo "Number of EE students: $(grep -c "EE" "$file")"
echo "Number of students in Hostel 4: $(grep -c "Hostel 4" "$file")"

echo "Analysis Completed"
