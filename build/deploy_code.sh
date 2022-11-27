sfdx config:set defaultusername=DevHub

sfdx sgd:source:delta --to HEAD --from HEAD^ --output .
sfdx force:source:deploy -x package/package.xml -l RunLocalTests