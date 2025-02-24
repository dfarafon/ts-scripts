#!/bin/bash

# Stop Atlas Clusters script by Dmitri Farafontov 2025-02-02.

# Function to get the current timestamp
timestamp() {
  date +"%Y-%m-%d %H:%M:%S"
}

# Start timestamp
echo "Script started at: $(timestamp)"

# Check if the Atlas command-line tool is available
if ! command -v atlas &> /dev/null; then
  echo "The MongoDB Atlas CLI Tools are not installed or not found in your PATH."
  echo "Please install it or add it to your PATH environment variable before running this script."
  exit 1
fi

# List all Atlas clusters and parse their names
clusterNames=$(atlas clusters list -o text | awk 'NR > 1 {print $2}')
echo "User: [$(atlas whoami)]"

# Iterate through each cluster name and pause the cluster
for clusterName in $clusterNames; do
  echo "Pausing cluster: $clusterName at $(timestamp)"
  atlas clusters pause "$clusterName"
  # Check if the pause command succeeded
  if [ $? -eq 0 ]; then
    echo "Successfully paused cluster: $clusterName at $(timestamp)"
  else
    echo "-"
  fi
done

# End timestamp
echo "Script ended at: $(timestamp)"
