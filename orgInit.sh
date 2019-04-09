sfdx force:org:create -f config/project-scratch-def.json -d 1 -s -w 60

if [ ! -d "../electron-theme" ]; then
git clone https://github.com/mshanemc/electron-theme ../electron-theme
fi
cp -r ../electron-theme ./electron-theme
mkdir ./electron-theme/.sfdx
cp ./.sfdx/sfdx-config.json ./electron-theme/.sfdx/
cd ./electron-theme
sfdx force:source:push -f
cd ..
rm -rf electron-theme

if [ ! -d "../electron-base" ]; then
git clone https://github.com/gabesumner/electron-base ../electron-base
fi
cp -r ../electron-base ./electron-base
mkdir ./electron-base/.sfdx
cp ./.sfdx/sfdx-config.json ./electron-base/.sfdx/
cd ./electron-base
sfdx force:source:push -f
cd ..
rm -rf electron-base

if [ ! -d "../electron-prediction-builder" ]; then
git clone https://github.com/gabesumner/electron-prediction-builder ../electron-prediction-builder
fi
cp -r ../electron-prediction-builder ./electron-prediction-builder
mkdir ./electron-prediction-builder/.sfdx
cp ./.sfdx/sfdx-config.json ./electron-prediction-builder/.sfdx/
cd ./electron-prediction-builder
sfdx force:source:push -f
cd ..
rm -rf electron-prediction-builder

sfdx force:source:push
sfdx force:user:permset:assign -n electron
sleep 30
sfdx shane:theme:activate -n Electron

sfdx force:org:open
sfdx force:user:password:generate