#!/bin/bash

if ! command -v python3 &> /dev/null; then
    echo "Please install Python version higher than 3.10 first!"
    exit 1
fi

git pull origin main >/dev/null 2>&1
if [ $? -eq 0 ]; then
    print_green "r2money Bot is up to date!"
else
    print_red "Failed to update the bot. Please check your internet connection or Git configuration."
fi

pip3 install pip install eth-abi python-dotenv colorama web3 pyfiglet

[ ! -f privateKeys.txt ] && echo "# bot_data" > privateKeys.txt
if [ ! -f .env ]; then
    cp .env-example .env
    echo ".env file created from .env-example."
else
    echo ".env already exists. Skipping copy."
fi

python3 meomundep.py
