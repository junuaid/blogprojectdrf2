#!/bin/bash
set -e

echo "Updating packages..."
apt-get update -y

echo "Installing Python dependencies..."
apt-get install -y python3-pip python3-venv
