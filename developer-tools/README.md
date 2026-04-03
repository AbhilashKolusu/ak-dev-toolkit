# Developer Tools Central Index

This folder collects essential developer tools, setup instructions, and workflow recommendations.

## Directory overview
- `git/` - Version control and branch strategies.
- `linux-essentials/` - Terminal, process management, and system utilities.
- `vscode/` - VS Code extensions and environment setup.

## 2026 additions
- Add tooling for remote containers, Codespaces, and Dev Containers.
- Add GitHub CLI workflow patterns and PR automation.
- Add guidance for code quality tools: `pre-commit`, `lint-staged`, `SonarCloud`.

## Getting started
1. Start with `git/README.md` to configure identity and branching.
2. Configure shell and environment using `linux-essentials/README.md`.
3. Set up IDE with `vscode/README.md`.
4. Integrate with CI/CD in `devops-tools/`.

## Fast commands
```bash
# sample toolchain install
brew install git gh tmux eksctl kubectl helm k9s
# optional: developer productivity
brew install ripgrep fd starship fzf
```

## Future enhancements
- Add `github-actions/` and `pre-commit/` folder with step-by-step config.
- Add `testing/` folder for unit, integration, and contract test toolchains.
- Add `observability/` folder for local execution monitoring and profiling.
