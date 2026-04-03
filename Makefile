.PHONY: setup lint clean help

help: ## Show this help message
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

setup: ## Install local development hooks
	brew install pre-commit
	pre-commit install
	pre-commit install --hook-type commit-msg

lint: ## Run linting against all files
	pre-commit run --all-files

clean: ## Clean up temporary files
	find . -type f -name "*.log" -delete
	find . -type d -name ".terraform" -exec rm -rf {} +