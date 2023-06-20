FROM oraclelinux:7.9

COPY ./LINUX.X64_193000_db_home.zip /opt/LINUX.X64_193000_db_home.zip
COPY ./scripts/ /tmp/scripts
COPY ./setup.sh /tmp/setup.sh
COPY ./OCIinstall.sh /tmp/OCIinstall.sh
COPY ./create_db.sh /tmp/create_db.sh
COPY ./installation.sh /tmp/installation.sh

CMD [ "sh", "/tmp/installation.sh" ]
