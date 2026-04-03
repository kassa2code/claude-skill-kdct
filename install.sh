#!/bin/bash
set -e

MARKETPLACE="kassa2code/claude-skill-kdct"
MARKETPLACE_NAME="kassa2code-claude-skill-kdct"
PLUGIN="claude-kdctcli-skill"
SCOPE="${1:-user}"

echo "Installing $PLUGIN plugin..."

# Check claude CLI
if ! command -v claude &>/dev/null; then
  echo "Error: Claude Code CLI not found."
  echo "Install it from: https://claude.ai/code"
  exit 1
fi

# Register marketplace
echo "Step 1: Registering marketplace..."
claude plugin marketplace add "$MARKETPLACE" --scope "$SCOPE"

# Install plugin
echo "Step 2: Installing plugin..."
claude plugin install "${PLUGIN}@${MARKETPLACE_NAME}" --scope "$SCOPE"

echo ""
echo "Done! Plugin '$PLUGIN' installed (scope: $SCOPE)."
echo "Try asking Claude: '帮我查询借贷产品'"
