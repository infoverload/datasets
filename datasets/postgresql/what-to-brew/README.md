# What to brew! 

## Description of the data

This dataset is a crowd sourced database of how well beer styles (Stout, Pale Ale, etc) and additions (chocolate, bacon, cherry) go with each other. It is adapted from here: http://whattobrew.com/info.html

## How to use

### 1. Clone GitHub repository

Get started by cloning the repo and navigating into this directory:

```
git clone git@github.com:infoverload/datasets.git
cd datasets/datasets/postgresql/brew
```

### 2. Explore the dataset

The data is in the form of a PostgreSQL dump. 

Run:

```sh
psql -U username -d brew < brew.pgsql 
```

For more detailed instructions, go [here](../README.md).


### 3. Explore the dataset with Prisma development mode

A Prisma schema based on the dataset is provided for you already, which will allow you to run Prisma's development mode. Change the database credentials in the `schema.prisma` file:

```diff
datasource db {
  provider = "mysql"
+  url      = "postgresql://username:password@localhost:5432/database?schema=public"
}
```

Prisma's development mode provides you with an endpoint for Prisma Studio (note that you need to install the Node.js dependencies first since the `prisma2` CLI is included there):

```sh
npm install
npm run prisma2 dev
```

You can now open Prisma Studio on: [`http://localhost:5555`](http://localhost:5555).

The development mode lets you make quick changes to your data model as you develop your application without the need to persist these changes in a migration.  Learn more [here](https://github.com/prisma/prisma2/blob/master/docs/development-mode.md).


### 3. (Optional) Run demo script

A demo script showcasing some sample Photon API calls has been created.  Run:

```sh
npm run start
```
