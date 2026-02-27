#!/usr/bin/env bash

set -e

echo "Moving to deployment directory..."

# CodeDeploy automatically sets this variable
cd "$PWD"

echo "Current directory:"
pwd
ls

echo "Creating virtual environment..."
python3 -m venv venv

echo "Activating virtual environment..."
source venv/bin/activate

echo "Installing dependencies..."
pip install -r requirements.txt
