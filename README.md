# Electron Motors - Departmental Apps Solution Webinar Demo

This webinar demo will help customers understand what the Salesforce Platform can do to help them digitize manual business processes into apps , mapping 1:1 with our third solution: Make Any Department More Productive

## Prerequisites

1. Install the SFDX CLI

```
npm install sfdx-cli --global
```

2. Install the Shane-SFDX-Plugin

```
sfdx plugins:install shane-sfdx-plugins
```

## Installation Instructions

1. Clone this repository:

```
git clone https://github.com/gabesumner/solutions-departmental-apps
cd solutions-departmental-apps
```

2. Run the orgInit.sh script
```
sh orgInit.sh
```

3. Create and activate an Einstein Prediction to predict the "Cancellation Risk" score ([see video](https://drive.google.com/open?id=1SCfkYPVv2mYP9ynz1BOak1yaUc78NTXH)).
    - Prediction Name: Predict Cancellations
    - Object: Vehicle__c
    - Segment: Status = Purchase
    - Prediction Field: Cancelled
    - Record Examples: Prediction Sample = True
    - Fields: (All Fields)
    - Prediction Field: Cancellation Risk

4. Add the "Cancellation Risk" field to the Vehicle Page Layout.

5. Assign the "analytics" Permission Set to the "Integration User".

6. Click App Launcher, click Analytics Studio, click Data Manager then run the "Default Salesforce Dataflow".

7. Reorder the App Launcher icons to match the delivery pipline:
    - Marketing
    - Sales
    - Finance
    - Manufacturing
    - Inspections
    - Delivery
    - Service
    - Human Resources

