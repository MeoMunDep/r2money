# 🤖 MeoMunDep r2money Bot - Complete Setup Guide

This comprehensive guide will help you set up and run the MeoMunDep r2money Bot on Windows, macOS, or Linux. The bot automates certain game tasks efficiently and securely.

## 📋 Table of Contents

- [Prerequisites](#prerequisites)
- [Installation Methods](#installation-methods)
- [Configuration](#configuration)
- [Running the Bot](#running-the-bot)
- [Troubleshooting](#troubleshooting)
- [Security Recommendations](#security-recommendations)
- [Contact and Support](#contact-and-support)

## Prerequisites

Before setting up the bot, ensure you have the following installed:

- **Python 3.11.9** - Required to run the script
- **Git** (optional) - For cloning the repository

## Installation Methods

You can choose between standard installation or Docker-based deployment.

<details>
<summary><b>⚙️ Standard Installation</b></summary>

### 1. Install Python

<details>
<summary><b>Windows</b></summary>

- Download Python from [python.org](https://www.python.org/downloads/release/python-3119/)
- During installation, check "Add Python to PATH"
- Verify installation by opening Command Prompt and typing:
  ```bash
  python --version
  ```

</details>

<details>
<summary><b>macOS</b></summary>

- Install [Homebrew](https://brew.sh/) first:

  ```bash
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  ```

- Install Python using Homebrew:

  ```bash
  brew install python
  ```

- Verify installation:

  ```bash
  python3 --version
  ```

</details>

<details>
<summary><b>Linux</b></summary>

- For Ubuntu/Debian:

  ```bash
  sudo apt update
  sudo apt install python3 python3-pip -y
  ```

- For CentOS/RHEL:

  ```bash
  sudo yum install python3 python3-pip -y
  ```

- Verify installation:

  ```bash
  python3 --version
  ```

</details>

### 2. Install Git (Optional)

<details>
<summary><b>Windows</b></summary>

- Download from [git-scm.com](https://git-scm.com/download/win)
- Use default settings during installation

</details>

<details>
<summary><b>macOS</b></summary>

```bash
brew install git
```

</details>

<details>
<summary><b>Linux (Debian/Ubuntu)</b></summary>

```bash
sudo apt install git -y
```

</details>

### 3. Clone Repository (If using Git)

```bash
git clone https://github.com/MeoMunDep/r2money.git
cd r2money
```

</details>

---

## Configuration

### Required Files

Ensure you have the following files in your folder:

- `meomundep.py` - Main bot script
- `.env` - Configuration file
- `privateKeys.txt` - Wallet private keys

### Configuration Parameters (`.env`)

Edit the `.env` file to customize the bot's behavior:

| Field                  | Type              | Description                                    | Example Value |
| ---------------------- | ----------------- | ---------------------------------------------- | ------------- |
| `ADD_LIQUIDITY`        | Boolean           | Enable adding liquidity                        | `true`        |
| `ADD_LIQUIDITY_TIMES`  | Integer           | Number of times to add liquidity               | `3`           |
| `ADD_LIQUIDITY_AMOUNT` | Array \[min, max] | Random liquidity amount range                  | `[1, 11]`     |
| `DEPOSIT`              | Boolean           | Enable deposit action                          | `true`        |
| `DEPOSIT_TIMES`        | Integer           | Number of deposit transactions                 | `1`           |
| `DEPOSIT_AMOUNT`       | Array \[min, max] | Random deposit amount range                    | `[1, 11]`     |
| `SWAP`                 | Boolean           | Enable token swap                              | `true`        |
| `SWAP_TIMES`           | Integer           | Number of swap transactions                    | `1`           |
| `SWAP_AMOUNT`          | Array \[min, max] | Random swap amount range                       | `[10, 20]`    |
| `STAKE`                | Boolean           | Enable staking                                 | `true`        |
| `STAKE_TIMES`          | Integer           | Number of staking actions                      | `1`           |
| `STAKE_AMOUNT`         | Array \[min, max] | Random stake amount range                      | `[10, 20]`    |
| `WITHDRAW`             | Boolean           | Enable withdrawals                             | `true`        |
| `WITHDRAW_TIMES`       | Integer           | Number of withdrawal transactions              | `1`           |
| `WITHDRAW_AMOUNT`      | Array \[min, max] | Random withdrawal amount range                 | `[1, 11]`     |
| `CLAIM`                | Boolean           | Enable claim rewards                           | `true`        |
| `CLAIM_TIMES`          | Integer           | Number of reward claims                        | `1`           |
| `CLAIM_AMOUNT`         | Array \[min, max] | Random claim amount range                      | `[1, 11]`     |
| `REFERRAL`             | Boolean           | Enable using referral codes                    | `true`        |
| `REFERRAL_TIMES`       | Integer           | Number of referral code usages                 | `10`          |
| `INTERVAL_SECONDS`     | Integer           | Time interval between task rounds (in seconds) | `86400`       |

---

## Running the Bot

<details>
<summary><b>Standard Method</b></summary>

### Windows

```bash
python meomundep.py
```

Or double-click the provided `run.bat` file.

### macOS/Linux

```bash
python3 meomundep.py
```

Or make the script executable and run:

```bash
chmod +x run.sh && ./run.sh
```

</details>

---

## 🔐 File Permissions

<details>
<summary><b>Windows</b></summary>

```powershell
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
```

</details>

<details>
<summary><b>Linux/macOS</b></summary>

```bash
chmod 600 configs.json privateKeys.txt .env meomundep.py
```

</details>

---

## 🔑 Private Keys

📥 [Generate wallets here](https://github.com/MeoMunDep/Automatic-Ultimate-Create-Wallets-for-Airdrop)

Each line in `privateKeys.txt` should contain one private key:

```
evm privatekey
evm privatekey
evm privatekey
```

_Note: each row represents one wallet/account_

---

## Troubleshooting

<details>
<summary><b>Bot crashes on startup</b></summary>

- Ensure all required packages are installed
- Check your Python version (Python 3.11.9 required)
- Verify configuration file format

</details>

<details>
<summary><b>Connection errors</b></summary>

- Check your internet connection
- Verify proxy settings if using proxies
- Check if the required endpoints are accessible

</details>

<details>
<summary><b>Authentication failures</b></summary>

- Ensure your private key is correct and not malformed

</details>

---

## Security Recommendations

<details>
<summary><b>Recommendations</b></summary>

1. **Data Protection**:

   - Keep your `privateKeys.txt` and `.env` files safe
   - Use file permissions to prevent unauthorized access

2. **Docker Security**:

   - Run Docker containers as non-root user:

     ```bash
     docker run -u 1000:1000 meomundep-bot
     ```

   - Keep Docker and dependencies updated

</details>

---

## Contact and Support

- **Support via Referral:** [r2.money?code=M2Y7E](https://r2.money?code=M2Y7E)
- **Donate:** [Telegram Donate](https://t.me/KeoAirDropFreeNe/312/27801)
- **Work Contact:** [@MeoMunDep on Telegram](https://t.me/MeoMunDep)
- **Support Group:** [Join here](https://t.me/KeoAirDropFreeNe)
- **Updates Channel:** [View channel](https://t.me/KeoAirDropFreeNee)
- **YouTube:** [@keoairdropfreene](https://www.youtube.com/@keoairdropfreene)
- **Instagram:** [@meomundep](https://www.instagram.com/meomundep)
- **TikTok:** [@meomundep](https://www.tiktok.com/@meomundep)

---

⚠️ **Disclaimer**: This code is provided "as is" without any warranties. Use it at your own risk. Redistribution or sale of this code in any form is strictly prohibited.

✨ Thank you for using the bot. Good luck and happy farming! 🚀
