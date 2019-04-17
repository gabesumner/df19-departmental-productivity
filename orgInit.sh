sfdx force:org:create -f config/project-scratch-def.json -d 1 -s -w 60

sfdx shane:github:package:install -g mshanemc -r electron-theme
sfdx shane:github:package:install -g gabesumner -r electron-base

sfdx force:source:push
sfdx force:user:permset:assign -n electron
# sfdx shane:org:reauth -r --json
sleep 500
sfdx shane:theme:activate -n Electron

sfdx force:org:open
sfdx force:user:password:generate

sfdx force:apex:execute -f scripts/generatePredictionAccounts.apex
sfdx force:apex:execute -f scripts/generatePredictionAccounts.apex
sfdx force:apex:execute -f scripts/generatePredictionAccounts.apex
sfdx force:apex:execute -f scripts/generatePredictionAccounts.apex
sfdx force:apex:execute -f scripts/generatePredictionAccounts.apex
sfdx force:apex:execute -f scripts/generateAccounts.apex