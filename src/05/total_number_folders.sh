#!/bin/bash

total_folders=$(find "$1" -type d 2>/dev/null | wc -l)
echo "Total number of folders (including all nested ones) = $total_folders"

