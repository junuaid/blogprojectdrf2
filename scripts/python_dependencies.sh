#!/usr/bin/env bash

set -e

echo "Moving to deployment directory..."

# Go to project root (CodeDeploy archive location)
cd /opt/codedeploy-agent/deployment-root///deployment-archive

echo "Current directory:"
pwd
ls

echo "Creating virtual environment..."

python3 -m venv venv

echo "Activating virtual environment..."
source venv/bin/activate

echo "Installing dependencies..."
pip install -r requirements.txt
