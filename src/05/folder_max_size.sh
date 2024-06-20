#!/bin/bash

folders=$(du -sh $1*/ 2>/dev/null)

echo "TOP 5 folders of maximum size arranged in descending order (path and size): "
echo "$folders" | sort -rh | head -n 5 | awk '{print NR " - " $2 ", " $1}' | tee >(wc -l | awk '{print "etc up to " $1}')




