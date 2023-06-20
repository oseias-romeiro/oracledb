# create database 
PW=oracle # all db passwords

source /home/oracle/.bashrc
## listner
lsnrctl start

## dbca silent mode
dbca -silent -createDatabase                                                  \
    -templateName General_Purpose.dbc                                         \
    -gdbname ${ORACLE_SID} -sid  ${ORACLE_SID} -responseFile NO_VALUE         \
    -characterSet AL32UTF8                                                    \
    -sysPassword ${PW}                                                        \
    -systemPassword ${PW}                                                     \
    -createAsContainerDatabase true                                           \
    -numberOfPDBs 1                                                           \
    -pdbName ${PDB_NAME}                                                      \
    -pdbAdminPassword ${PW}                                                   \
    -databaseType MULTIPURPOSE                                                \
    -memoryMgmtType auto_sga                                                  \
    -totalMemory 2000                                                         \
    -storageType FS                                                           \
    -datafileDestination "${DATA_DIR}"                                        \
    -redoLogFileSize 50                                                       \
    -emConfiguration NONE                                                     \
    -ignorePreReqs

## Post instalation
sqlplus / as sysdba <<EOF
alter system set db_create_file_dest='${DATA_DIR}';
alter pluggable database ${PDB_NAME} save state;
exit;
EOF
