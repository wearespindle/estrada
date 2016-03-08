#!/bin/bash

echo "Grant {{project_name}} access from all IPs."
echo "host all {{project_name}} 0.0.0.0/0 trust" >> /var/lib/postgresql/data/pg_hba.conf

echo "Done initializing."
