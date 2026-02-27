#!/usr/bin/env bash

set -e

echo "Moving to deployment directory..."

cd /opt/codedeploy-agent/deployment-root/*/deployment-archive

echo "Creating virtual environment..."

python3 -m venv venv

echo "Activating virtual environment..."

source venv/bin/activate

echo "Installing dependencies..."

pip install --upgrade pip
pip install -r requirements.txt

echo "Dependencies installed successfully!"
