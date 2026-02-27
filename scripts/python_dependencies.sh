#!/bin/bash
set -e

echo "Finding deployment directory..."

DEPLOY_DIR=$(find /opt/codedeploy-agent/deployment-root -type d -name deployment-archive | head -n 1)

echo "Deployment directory is: $DEPLOY_DIR"

cd $DEPLOY_DIR

echo "Now inside:"
pwd

echo "Creating virtual environment..."
python3 -m venv venv

source venv/bin/activate

pip install --upgrade pip
pip install -r requirements.txt

echo "Python dependencies installed successfully!"
