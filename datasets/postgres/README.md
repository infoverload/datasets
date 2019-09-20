## How to use a dataset for

<div align="center">
	<img width="400" height="250" src="https://i.imgur.com/hoDcvk1.png">
	<br><br>
</div>

1. Make sure your Postgres database server is [running](https://tableplus.com/blog/2018/10/how-to-start-stop-restart-postgresql-server.html).

2. Download the `.pgsql` file.

3. Create an empty database in your Postgres instance.

4. In your terminal, run:

```sh
psql -U username -d database < filename.pgsql 
```

Replace: 
- "username" with your Postgres username
- "database" with the database you just created in step 3
- "filename" with the name of your `.pgsql` file