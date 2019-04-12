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

3. Activate the "Electron Motors Theme", if the Shane-SFDX-Plugin didn't activate it already.

4. Create an Einstein Prediction to predict the "Cancellation Risk" score from the Cancelled checkbox (see video).

5. Add the new Vehicle "Cancellation Risk" field to the "analytics" permission set.

6. Add the Vehicle "Prediction Sample" field to the "analytics" permission set.

6. Assign the "analytics" Permission Set to the "Integration User".

7. Add the "Cancellation Risk" field to the Vehicle Page Layout.

8. Click App Launcher, click Analytics Studio, click Data Manager then run the "Default Salesforce Dataflow".

9. Modify with Home page for Sales, add the Wave Dashboard, and a Contact and Vehicle List View.

10. Create "Purchased Vehicles" Vehicles List View. Filter by:
    - Status = Purchased
    - Prediction Sample = False
    - Cancelled = False

11. Reorder the App Launcher icons to match the delivery pipline:
Marketing, Sales, Finance, Manufacturing, Inspections, Delivery, Service, Human Resources

