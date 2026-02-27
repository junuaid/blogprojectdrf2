#!/bin/bash
set -e

APP_DIR="/home/ubuntu/app"

echo "Updating packages..."
apt-get update -y

echo "Installing python venv..."
apt-get install -y python3-venv python3-pip

echo "Moving to app directory..."
cd $APP_DIR

echo "Creating virtual environment..."
python3 -m venv venv

echo "Activating virtual environment..."
source venv/bin/activate

echo "Upgrading pip..."
pip install --upgrade pip

echo "Installing requirements..."
pip install -r requirements.txt

echo "DONE ✅"
