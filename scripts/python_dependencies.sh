#!/bin/bash
set -e

APP_DIR="/home/ubuntu/app"

echo "Moving to app directory..."
cd $APP_DIR

echo "Creating virtual environment..."
python3 -m venv venv

echo "Activating venv..."
source venv/bin/activate

echo "Upgrading pip..."
pip install --upgrade pip

echo "Installing dependencies..."
pip install -r requirements.txt

echo "Dependencies installed successfully!"
