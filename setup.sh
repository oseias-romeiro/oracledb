# Oracle setup
yum update -y

## oracle database 19c
yum install -y oracle-database-preinstall-19c

echo 'oracle:oracle' | chpasswd

setenforce Permissive

## dirs
mkdir -p /u01/app/oracle/product/19.0.0/dbhome_1
mkdir -p /u02/oradata
chown -R oracle:oinstall /u01 /u02
chmod -R 775 /u01 /u02
mkdir /home/oracle/scripts

## scripts
cp -r /tmp/scripts/. /home/oracle/scripts/.

## envs
echo ". /home/oracle/scripts/setEnv.sh" >> /home/oracle/.bashrc

## set previleges to oracle e orainstall
chown -R oracle:oinstall /home/oracle/scripts
chmod u+x /home/oracle/scripts/*.sh

