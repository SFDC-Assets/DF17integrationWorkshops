sf demoutil org create scratch -f config/project-scratch-def.json -d 5 -s -p int -e work.shop
sf project deploy start
sf demoutil user password set -p salesforce1 -g User -l User
sf org assign permset -n CustomerID
sf apex run -f scripts/CustomerIDSetup.cls
sf org open
