# Spotify data set

## Description

This dataset works with PostgreSQL.  It includes these tables:
- Album
- Artist
- Category
- Genre
- Image
- Playlist
- Track
- User

## How to use

1. Make sure your Postgres database server is [running](https://tableplus.com/blog/2018/10/how-to-start-stop-restart-postgresql-server.html).

2. Download the spotify.pgsql file.

3. Open the file in your editor of choice and do a find and replace all occurrences of **MYUSERNAME** with your Postgres username.  

4. Create an empty database called **spotify** in your Postgres instance.

5. In your terminal, run:

```sh
psql -U MYUSERNAME -d spotify < spotify.pgsql 
```

(Replace "MYUSERNAME" with your Postgres username)
