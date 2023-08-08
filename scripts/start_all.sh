#!/bin/bash
. /home/oracle/scripts/setEnv.sh

export ORAENV_ASK=NO
. oraenv
export ORAENV_ASK=YES

dbstart $ORACLE_HOME

echo -e "startup;\n ALTER PLUGGABLE DATABASE pdb1 OPEN;\n exit\n" | sqlplus / as sysdba
