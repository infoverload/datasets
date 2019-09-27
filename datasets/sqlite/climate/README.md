# Climate data for over 100 cities

## Description of the data

This dataset features over one-hundred destinations. It includes the average high and low temperature, dry days, snow days, and rainfall, for every month.
It is adapted from [here](https://michaelxander.com/climate-data/).

## How to use just the dataset

Open the `.db` file in an [SQLite browser](https://sqliteonline.com/).

## How to explore the dataset with Prisma

Install the project dependencies by typing in your terminal:

```sh
npm install
```

A Prisma schema based on the dataset is provided for you already. 

To migrate the schema to your database, run:

```sh
prisma2 dev
```

To seed the database with data, run:

```sh
npm start
```