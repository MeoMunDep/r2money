@echo off
title r2money Bot by @MeoMunDep
python --version >nul 2>&1 || (
    echo Please install Python version higher than 3.10 first!
    pause
    exit
)

echo Checking for bot updates...
git pull origin main > nul 2>&1
echo Bot updated!

pip install eth-abi python-dotenv colorama web3 pyfiglet

if not exist privateKeys.txt echo # game_data > privateKeys.txt
if [ ! -f .env ]; then
    cp .env-example .env
    echo ".env file created from .env-example."
else
    echo ".env already exists. Skipping copy."
fi

python meomundep.py
pause
