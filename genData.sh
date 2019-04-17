# Generate 5,000 Einstein Prediction accounts 
for (( i=1 ; ((i-100)) ; i=(($i+1)) ))
do
# Generate 50 accounts
sfdx force:apex:execute -f scripts/generateEinsteinAccounts.apex
sleep 5
done;

# Generate 1,000 normal accounts 
for (( i=1 ; ((i-20)) ; i=(($i+1)) ))
do
# Generate 50 accounts
sfdx force:apex:execute -f scripts/generateAccounts.apex
sleep 5
done;


sfdx force:apex:execute -f scripts/generateContacts.apex