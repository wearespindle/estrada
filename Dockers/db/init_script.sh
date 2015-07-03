#!/bin/bash

echo "Grant {{project_name}} access from all IPs."
echo "host all {{project_name}} 0.0.0.0/0 trust" >> /var/lib/postgresql/data/pg_hba.conf

echo "Create a user and database."
gosu postgres postgres --single <<- EOSQL
    CREATE USER {{project_name}};
    CREATE DATABASE {{project_name}};
    GRANT ALL PRIVILEGES ON DATABASE {{project_name}} TO {{project_name}};
EOSQL

echo "Done initializing."
