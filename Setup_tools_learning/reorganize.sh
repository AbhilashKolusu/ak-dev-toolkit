#!/bin/bash

# Professional Toolkit Reorganization Script
# This script aligns the physical file structure with the new taxonomy.

ROOT_DIR="/Users/_ak/Workspace_Personal/ak-dev-toolkit"
cd "$ROOT_DIR" || exit

echo "🚀 Starting repository reorganization..."

# 1. Create new directory structure
mkdir -p setup/macos setup/linux \
         tools/developer tools/devops tools/ai \
         containers/docker \
         security \
         projects/sandbox-demo \
         scripts

# 2. Relocate Developer Tools
if [ -d "developer-tools" ]; then
    echo "📦 Moving developer-tools to tools/developer..."
    cp -R developer-tools/* tools/developer/
    # Move linux essentials specifically to setup
    if [ -d "tools/developer/linux-essentials" ]; then
        mv tools/developer/linux-essentials/* setup/linux/
        rm -rf tools/developer/linux-essentials
    fi
fi

# 3. Relocate DevOps Tools
if [ -d "devops-tools" ]; then
    echo "📦 Moving devops-tools to tools/devops..."
    cp -R devops-tools/* tools/devops/
fi

# 4. Relocate Legacy/Scattered Folders
[ -d "Mac_Os_Setup" ] && mv Mac_Os_Setup/* setup/macos/ && echo "✅ Moved macOS Setup"
[ -d "AKGenAI_Tools" ] && mv AKGenAI_Tools/* tools/ai/ && echo "✅ Moved AI Tools"
[ -d "Dokcerfiles_aK" ] && mv Dokcerfiles_aK/* containers/docker/ && echo "✅ Moved Dockerfiles"
[ -d "Demo_Project" ] && mv Demo_Project/* projects/sandbox-demo/ && echo "✅ Moved Demo Project"
[ -d "Setup_tools_learning/XI. Security and Compliance" ] && cp -R "Setup_tools_learning/XI. Security and Compliance"/* security/ && echo "✅ Moved Security docs"

# 5. Cleanup (Uncomment the line below once you verify the moves)
# rm -rf developer-tools devops-tools Mac_Os_Setup AKGenAI_Tools Dokcerfiles_aK Demo_Project

echo "✨ Reorganization complete!"
echo "Next step: Update relative links in your README files to reflect new paths."