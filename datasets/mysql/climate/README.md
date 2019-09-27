# Climate data for over 100 cities

## Description of the data

This dataset features over one-hundred destinations. It includes the average high and low temperature, dry days, snow days, and rainfall, for every month.
It is adapted from [here](https://michaelxander.com/climate-data/).

## How to use just the dataset

Import the datadump into your MySQL database by running:

```sh
mysql -u username -p climate < climate.sql
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
+  url      = "mysql://username:password@localhost:3306/database"
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
