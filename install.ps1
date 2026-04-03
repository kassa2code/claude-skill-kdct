param(
    [string]$Scope = "user"
)

$ErrorActionPreference = "Stop"

$Marketplace     = "kassa2code/claude-skill-kdct"
$MarketplaceName = "kassa2code-claude-skill-kdct"
$Plugin          = "claude-kdctcli-skill"

Write-Host "Installing $Plugin plugin..."

# Check claude CLI
if (-not (Get-Command claude -ErrorAction SilentlyContinue)) {
    Write-Error "Claude Code CLI not found. Install it from: https://claude.ai/code"
    exit 1
}

# Register marketplace
Write-Host "Step 1: Registering marketplace..."
claude plugin marketplace add $Marketplace --scope $Scope

# Install plugin
Write-Host "Step 2: Installing plugin..."
claude plugin install "${Plugin}@${MarketplaceName}" --scope $Scope

Write-Host ""
Write-Host "Done! Plugin '$Plugin' installed (scope: $Scope)."
Write-Host "Try asking Claude: '帮我查询借贷产品'"
