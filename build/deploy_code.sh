sfdx config:set defaultusername=DevHub

mkdir changed-sources
sfdx sgd:source:delta --to "HEAD" --from "HEAD^" --output changed-sources/ --generate-delta --source force-app/ 
sfdx force:source:deploy -x package/package.xml -l RunLocalTests