## Database installation and configuration

### Setting up PostgreSQL on Mac OS X with Homebrew

*Caveat: these directions worked for me, and I'm putting them here as notes. YMMV.*

Download from http://postgres.org.

Ensure PATH includes it by adding the following line to ~/.profile:

PATH=$PATH:/usr/local/bin/postgres

General notes:

- In general, put keywords in upper case: e.g., SELECT column FROM schema.table;
- A role and a user are the same thing. CREATE USER differs from CREATE ROLE only in that it allows login by default. Use "ALTER ROLE role WITH LOGIN" to add the login privilege.
- I haven't created a postgres user, opting to connect as myself for now (not specifying password, of course).

### Starting

pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start

### Connecting

I got some good advice on connecting to a Homebrew-installed Postgres database from http://dba.stackexchange.com/questions/21587/postgresql-is-running-locally-but-i-cannot-connect-why:

- Create /var/pgsql_socket
- chown it to myself
- In postgresql.conf (/usr/local/var/postgres), set unix_socket_directory to that directory.
- Ensure path includes pgsql (as above).
- Execute pg_sql start (see above for full command).

### Running setup scripts

- cd to the directory with the scripts in it.
- Ensure psql is in the path.
- psql postgres

### Extensions

- To enable random UUID generation: CREATE EXTENSION pgcrypto;

### Tools

- Download and install [PG Admin](http://www.pgadmin.org/download/).
- Connection parameters:
  - Name: local
  - Host: localhost
  - Port: 5432 (default)
  - Service: (blank)
  - Maintenance DB: postgres
  - Username: (your login)
  - Password: (blank)

