## How to use

1. Make sure your Postgres database server is [running](https://tableplus.com/blog/2018/10/how-to-start-stop-restart-postgresql-server.html).

2. Download the database.pgsql file.

3. Create an empty database in your Postgres instance.

4. In your terminal, run:

```sh
psql -U username -d database < database.pgsql 
```

(Replace "username" with your Postgres username, "database" with the database you just created in step 3)