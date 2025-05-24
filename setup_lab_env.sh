#!/bin/bash

ENV_NAME=".lab_env"

# Check if environment folder exists
if [ ! -d "$ENV_NAME" ]; then
  echo "Creating virtual environment..."
  python3 -m venv $ENV_NAME
  source $ENV_NAME/bin/activate
  echo "Installing required packages..."
  pip install --upgrade pip
  pip install pandas numpy matplotlib seaborn jupyter
else
  echo "Environment already exists."
  source $ENV_NAME/bin/activate
fi

# Launch Jupyter Notebook
echo "Starting Jupyter Notebook..."
jupyter notebook
