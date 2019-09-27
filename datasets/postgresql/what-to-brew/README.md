# What to brew! 

## Description of the data

This dataset is a crowd sourced database of how well beer styles (Stout, Pale Ale, etc) and additions (chocolate, bacon, cherry) go with each other. It is adapted from here: http://whattobrew.com/info.html

## How to use just the dataset

Run:

```sh
psql -U username -d brew < brew.pgsql 
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