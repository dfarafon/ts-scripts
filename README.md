atlas_stop.sh - Designed to pause all active running Atlas clusters.

Stop Atlas Clusters Script
This is a Bash script to pause all clusters in a MongoDB Atlas project. It was created by Dmitri Farafontov on 2025-02-02. The script uses the MongoDB Atlas CLI to interact with your Atlas account.

Prerequisites
Before running this script, ensure you have the following:

MongoDB Atlas CLI: You must have the Atlas command-line interface (CLI) installed and set up on your machine. If it's not installed, follow the installation instructions to get started.

Atlas Project Owner Permission Key: Ensure you have the necessary permissions (Project Owner) to manage clusters within your MongoDB Atlas account.

Configuration Initialization: Run atlas config init to set up the default profile with your API key and account information. This step is necessary to authenticate the script with your Atlas account.

Script Details
The script performs the following actions:

Checks for the availability of the MongoDB Atlas CLI in your system PATH.
Retrieves and validates the project_id from your Atlas CLI configuration.
Lists all clusters in the specified Atlas project.
Pauses each cluster it finds.
How to Use the Script
Clone or Download: Get a copy of this script onto your local machine.

Ensure CLI is Configured: Make sure you have configured the MongoDB Atlas CLI using atlas config init. This step will ensure your API key and project details are stored.

Run the Script: Execute the script using the terminal. Make sure you have execute permissions:

chmod +x stop_atlas_clusters.sh
./stop_atlas_clusters.sh

Important Notes
Ensure you have appropriate permissions to pause clusters in the target MongoDB Atlas project.
This script will pause all clusters in the specified project. Be cautious and ensure this is the desired action, as paused clusters will not be accessible until resumed.
Troubleshooting
If the script reports that the Atlas CLI is not found, verify that the CLI is installed and the binary is included in your system's PATH.
If the project_id is empty or not found, re-run atlas config init to properly set it up.
