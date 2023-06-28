# ----------------------------------------------------------
# Author:          damiancypcar
# Modified:        03.03.2023
# Version:         1.0
# Desc:            description
# ----------------------------------------------------------
# [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseApprovedVerbs')] Param()
#   ^ - disable an unapproved verb. PSScriptAnalyzer notification

# ROOT CHECK


# YES/NO ASK
$decision = $Host.UI.PromptForChoice('Confirm', 'Do you want to continue?', @("&Yes", "&No"), 1)
if ($decision -eq 0) {
    Write-Host 'Your choice is Yes.'
} else {
    Write-Host 'Your choice is No.'
}
