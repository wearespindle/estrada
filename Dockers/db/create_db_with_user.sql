CREATE USER {{project_name}};
CREATE DATABASE {{project_name}};
GRANT ALL PRIVILEGES ON DATABASE {{project_name}} TO {{project_name}};
ALTER USER {{project_name}} CREATEDB;
