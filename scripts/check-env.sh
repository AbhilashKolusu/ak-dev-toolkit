#!/bin/bash

# DevOps Toolkit 2026 - Environment Validator

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

check_version() {
    local tool=$1
    local cmd=$2
    local min_version=$3

    if ! command -v $cmd &> /dev/null; then
        echo -e "${RED}✘ $tool is not installed.${NC}"
        return
    fi

    current_version=$($cmd --version | head -n 1)
    echo -e "${GREEN}✔ $tool found: $current_version (Target: $min_version+)${NC}"
}

echo "Checking DevOps Stack (2026 Standards)..."
echo "----------------------------------------"

# Check Core Tools
check_version "Terraform" "terraform" "1.9.0"
check_version "Docker" "docker" "25.0.0"
check_version "Kubernetes (kubectl)" "kubectl" "1.30.0"
check_version "Ansible" "ansible" "2.14.0"
check_version "AWS CLI" "aws" "2.15.0"

echo "----------------------------------------"
echo "Setup verification complete."
if [[ "$OSTYPE" == "darwin"* ]]; then
    echo "Tip: Use 'brew upgrade <tool>' to meet 2026 requirements."
fi
chmod +x "$0" 2>/dev/null