# GenAI Tools & Best Practices

This guide outlines the standards for using AI-assisted engineering tools within the `ak-dev-toolkit` environment.

## Core Tooling

### 1. Gemini Code Assist / Google Cloud Code
- **Primary Use**: Context-aware code generation, cloud architecture explanations, and log analysis.
- **Setup**: Install the "Google Cloud Code" extension in VS Code and authenticate with your GCP project.

### 2. GitHub Copilot
- **Primary Use**: Inline completions, repetitive boilerplate generation, and unit test skeleton creation.
- **Key Command**: `Cmd + I` (Inline Chat) for quick refactors.

## Team Best Practices

### 🛡️ Privacy & Security
- **Never** paste production secrets, PII (Personally Identifiable Information), or sensitive client keys into AI chat prompts.
- Ensure "Code Snippets Collection" is disabled in settings for enterprise/private repositories.

### 🔍 The "Pilot" Rule
- The AI is the **Copilot**, you are the **Pilot**.
- Never commit AI-generated code without a line-by-line review.
- Validate that generated logic handles edge cases (null checks, error boundaries).

### 🧪 Automated Validation
- Every piece of AI-generated logic should be accompanied by a unit test.
- Use `/tests` in Copilot Chat or "Generate Tests" in Gemini to verify the logic immediately.

## Prompt Engineering for Engineers

| Technique | Example |
|---|---|
| **Role Prompting** | "Act as a Senior DevOps Engineer with expertise in Terraform 1.9..." |
| **Few-Shot** | Provide 1-2 examples of existing code style before asking for a new function. |
| **Chain of Thought** | "Explain the logic step-by-step before writing the actual code." |

## Workflow Integration

1. **Refactoring**: Highlight old code -> `Cmd + I` -> `/refactor for readability and performance`.
2. **Documentation**: Highlight function -> `Cmd + I` -> `/doc` (generates JSDoc/Docstring).
3. **Debugging**: Paste stack trace into chat -> "Analyze this error based on my current workspace."

## Resources
- Google AI for Developers
- GitHub Copilot Documentation
- Anthropic Claude Code Guide