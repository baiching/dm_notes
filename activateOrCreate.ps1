# Name of the environment
$envName = "DataMining"

# Check if the environment exists
$envExists = conda env list | Select-String "^\s*$envName\s"

if ($envExists) {
    Write-Host ">>> Environment '$envName' already exists. Activating..."
} else {
    Write-Host ">>> Environment '$envName' does not exist. Creating..."
    conda create -y -n $envName python=3.9
}

# Activate the environment
Write-Host ">>> Activating environment '$envName'"
# Ensure conda commands work in PowerShell
& conda activate $envName
