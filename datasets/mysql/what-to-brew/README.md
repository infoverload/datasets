# What to brew data set

## Description

This dataset works with MySQL.  It is a crowd sourced database of how well beer styles (Stout, Pale Ale, etc) and additions (chocolate, bacon, cherry) go with each other.

## How to use

1. Make sure your MySQL database server is running.

2. Download the brew.sql file.

3. Create an empty database called **brew** in your MySQL instance.

4. In your terminal, run:

```sh
mysql -u username -p brew < brew.sql
```

(Replace "username" with your MySQL username)
