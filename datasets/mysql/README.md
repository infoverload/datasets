## How to use a dataset for...

<div align="center">
	<img width="350" height="250" src="https://i.imgur.com/MSFjyPp.png">
	<br>
</div>

1. Make sure your MySQL database server is [running](https://tableplus.com/blog/2018/10/how-to-start-stop-restart-mysql-server.html).

2. Download the `.sql` file.

3. Create an empty database in your MySQL instance.

4. In your terminal, run:

```sh
mysql -u username -p database < filename.sql
```

Replace: 
- "username" with your MySQL username
- "database" with the database you just created in step 3
- "filename" with the name of your `.sql` file