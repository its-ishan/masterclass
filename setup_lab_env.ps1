$ENV_NAME = ".lab_env"

if (-Not (Test-Path "$ENV_NAME")) {
    Write-Host "Creating virtual environment..."
    python -m venv $ENV_NAME
    & "$ENV_NAME\Scripts\activate.ps1"
    Write-Host "Installing required packages..."
    pip install --upgrade pip
    pip install pandas numpy matplotlib seaborn jupyter
} else {
    Write-Host "Environment already exists."
    & "$ENV_NAME\Scripts\activate.ps1"
}

Write-Host "Starting Jupyter Notebook..."
jupyter notebook
