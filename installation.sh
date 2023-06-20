# Installation

chmod -R 777 /tmp 

## Setup 
sh /tmp/setup.sh

## install 
su oracle -c /tmp/OCIinstall.sh

## running root scripts
sh /u01/app/oraInventory/orainstRoot.sh
sh /u01/app/oracle/product/19.0.0/dbhome_1/root.sh

## Create Database
su oracle -c /tmp/create_db.sh

