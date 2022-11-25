#This installs the sfdx cli

echo "Installing Salesforce CLI"
sudo npm install -global sfdx-cli

echo y | sfdx plugins:install sfdx-git-delta
sfdx plugins