sfdx config:set defaultusername=$SANDBOX_USERNAME

sfdx sgd:source:delta --to HEAD --from HEAD^ --output .
sfdx force:source:deploy -x package/package.xml -l RunLocalTests