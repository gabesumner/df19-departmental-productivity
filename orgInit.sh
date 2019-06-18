sfdx force:org:create -f config/project-scratch-def.json -d 30 -s -w 60

sfdx force:source:push
sfdx force:user:permset:assign -n electron
sfdx shane:user:permset:assign -n analytics -g Integration -l User

sfdx force:apex:execute -f scripts/generatePredictionAccounts.apex
sfdx force:apex:execute -f scripts/generatePredictionAccounts.apex
sfdx force:apex:execute -f scripts/generatePredictionAccounts.apex
sfdx force:apex:execute -f scripts/generatePredictionAccounts.apex
sfdx force:apex:execute -f scripts/generatePredictionAccounts.apex
sfdx force:apex:execute -f scripts/generateAccounts.apex

sfdx force:source:deploy -p dataflow
sfdx shane:analytics:dataflow:start -n Electron

sfdx shane:theme:activate -n Electron
sfdx force:org:open
sfdx shane:user:password:set -g User -l User -p sfdx1234

sfdx force:source:deploy -p visualization
