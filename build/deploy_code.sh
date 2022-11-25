echo "Deploying code to org"
sfdx sgd:source:delta --to HEAD --from HEAD^ --output .
sfdx force:source:deploy -x package/package.xml -l RunLocalTests