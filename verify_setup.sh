#!/bin/bash
# Verify Agent Registry setup for multi-project boundary

PROJECT_HUB=${1:-"wortz-project-352116"} # Default to our verified Hub Project
LOCATION=${2:-"us-west1"} # Default to region where agent is deployed

echo "=== Target Management/Hub Project: ${PROJECT_HUB} ==="

# Check if it is a google-managed folder project (Option A)
if [[ $PROJECT_HUB =~ ^google-mp ]]; then
  echo "Detected Folder-Managed Project (Option A). Skipping manual attachments check."
else
  echo "=== Checking App Hub Project Attachment (Option B) ==="
  gcloud apphub service-project-attachments list --project=${PROJECT_HUB}
fi

echo "=== Checking Discovered Workloads ==="
gcloud apphub discovered-workloads list --project=${PROJECT_HUB} --location=${LOCATION}

echo "=== Searching Agent Registry ==="
gcloud alpha agent-registry agents search --project=${PROJECT_HUB} --location=${LOCATION}
