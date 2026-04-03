# Security and Compliance Setup Guide

## Introduction

This guide provides an overview of security and compliance best practices for GitHub repositories. It covers setting up security features, managing sensitive information, and ensuring compliance with industry standards.

## Security Features

### 1. Enable Two-Factor Authentication (2FA)

Two-Factor Authentication (2FA) adds an extra layer of security to your GitHub account. It requires a second form of authentication in addition to your password.

#### Steps to Enable 2FA:
1. Go to your GitHub account settings.
2. Click on "Security".
3. Click "Enable two-factor authentication".
4. Follow the on-screen instructions to set up 2FA.

### 2. Set Up SSH Keys

SSH keys provide a secure way to access your repositories without needing to enter your username and password.

#### Steps to Set Up SSH Keys:
1. Generate a new SSH key.
   ```sh
   ssh-keygen -t rsa -b 4096 -C "your.email@example.com"
   ```
2. Start the SSH agent and add your SSH key.
   ```sh
   eval "$(ssh-agent -s)"
   ssh-add ~/.ssh/id_rsa
   ```
3. Copy the public key to your GitHub account.
   ```sh
   pbcopy < ~/.ssh/id_rsa.pub
   ```
4. Add the SSH key to GitHub under "Settings" > "SSH and GPG keys".

### 3. Enable Branch Protection Rules

Branch protection rules help prevent unauthorized changes to important branches, such as `main` or `develop`.

#### Steps to Enable Branch Protection:
1. Go to your repository settings.
2. Click on "Branches".
3. Add branch protection rules for the desired branch.
4. Configure required status checks, review approvals, and other settings.

### 4. Use Security Alerts

GitHub provides security alerts for vulnerable dependencies. Ensure that dependency scanning is enabled.

#### Steps to Enable Security Alerts:
1. Go to your repository settings.
2. Click on "Security & analysis".
3. Enable "Dependabot alerts" and "Dependabot security updates".

## Managing Sensitive Information

### 1. Use GitHub Secrets

GitHub Secrets allow you to store sensitive information (e.g., API keys, passwords) securely.

#### Steps to Use GitHub Secrets:
1. Go to your repository settings.
2. Click on "Secrets and variables" > "Actions".
3. Click "New repository secret" and add your secret.

### 2. Use .gitignore

Ensure sensitive files are not committed to the repository by using a `.gitignore` file.

#### Example .gitignore:
````name=.gitignore
# Ignore sensitive files
.env
*.key
*.pem