-- NB: need the uuid-ossp extension installed.
-- Run: CREATE extension pgcrypto;

CREATE DATABASE hrdb;

CREATE USER hruser PASSWORD 'hr';

GRANT ALL PRIVILEGES ON DATABASE hrdb TO hruser;

\c hrdb

CREATE EXTENSION pgcrypto;

CREATE SCHEMA hrschema;

GRANT ALL ON SCHEMA hrschema to hruser;

ALTER DATABASE hrdb SET search_path = hrschema, public;
ALTER ROLE hruser SET search_path = hrschema, public;
