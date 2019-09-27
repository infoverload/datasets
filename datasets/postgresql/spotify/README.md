# Spotify Playlist!

## Description of the data

This dataset is a representation of playlists in a Spotify account.  It includes these tables:

|Album              |
|-------------------| 
|id: text           |
|album_type: text   |
|href: text         |
|name: text         |
|release_date: text |
|uri: text          |

|Album_availableMarkets|
|----------------------| 
|nodeId: text          |
|position: integer     |
|value: text           |

|Artist        |
|--------------| 
|id: text      |
|href: text    |
|name: text    |
|uri: text     |
|albunm: text  |
|track: text   |


## How to use just the dataset

The data is in the form of a PostgreSQL dump. 

Run:

```sh
psql -U username -d spotify < spotify.pgsql 
```

For more detailed instructions, go [here](../README.md).

## How to explore the dataset with Prisma

Install the project dependencies by typing in your terminal:

```sh
npm install
```

A Prisma schema based on the dataset is provided for you already. Change the database credentials in the `schema.prisma` file:

```diff
datasource db {
  provider = "mysql"
+  url      = "postgresql://username:password@localhost:5432/database?schema=public"
}
```

To migrate the schema to your database, run:

```sh
prisma2 dev
```

To seed the database with data, run:

```sh
npm run seed
```

A demo script showcasing some sample Photon API calls has been created.  Run:

```sh
npm run start
```