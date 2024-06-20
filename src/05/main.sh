#!/bin/bash

start_time=$SECONDS

source fails.sh
source total_number_folders.sh
source folder_max_size.sh
source total_number_files.sh
source configuration_files.sh
source files_max_size.sh
source executable_files_max_size.sh

end_time=$(echo "scale=2; ($SECONDS - $start_time)" 2>/dev/null | bc)
printf "Script execution time (in seconds) = %.2f\n" "$end_time"

