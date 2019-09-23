# Prisma 2

You can use the tools from Prisma 2 to work with these datasets.   

## What is Prisma 2?

Prisma 2 is an application data framework consisting of these tools:

- [**Photon**](https://photonjs.prisma.io/): Type-safe and auto-generated database client ("ORM replacement")
- [**Lift**](https://lift.prisma.io/): Declarative data modeling and migrations
- [**Studio**](https://github.com/prisma/studio): Admin UI to support various database workflows

You can introspect the database schema created by a dataset and introspect it with Prisma 2 to generate a [Prisma schema](https://github.com/prisma/prisma2/blob/master/docs/prisma-schema-file.md).

With this schema, you can:
- generate a Photon client for database access and use it within your application
- migrate your database with Lift

## Getting started: introspect a database schema

### 1. Install the Prisma 2 CLI

Prisma 2 is available as an npm package:

```
npm install -g prisma2
```

### 2. Introspect the database schema with the Prisma2 CLI

Run the following command to initialize a new project named "my-dataset":

```
prisma2 init my-dataset
```

Then follow the interactive prompt:

1. "Languages for starter kits": **Blank project**
2. "Supported databases": choose the database you are working with
3. "Database credentials": fill in your database credentials and select **Connect**
4. "Database options": **Use existing database schema**
5. "Non-empty schemas": select the schema you want to work with
6. "Prisma 2 tools": confirm the default selections 
7. "Photon is available in these languages": choose a language
8. **Just the Prisma schema**

The introspection process is now complete.  You should see a message like:
```
 SUCCESS  The my-dataset directory was created!
 SUCCESS  Prisma is connected to your database at localhost
```

If you explore the project directory, you will see: 
```
prisma
└── schema.prisma
```

Now in your terminal, type:

```sh
prisma2 dev
```

This launches the [development mode](https://github.com/prisma/prisma2/blob/master/docs/development-mode.md) and creates a [Prisma Studio](https://github.com/prisma/studio) endpoint for you.  Go to the endpoint (i.e. http://localhost:5555 ) and explore the generated Prisma schema visually in your browser.


> **Note**: Prisma 2 currently supports introspecting MySQL and PostgreSQL database schemas. [Introspection support for SQLite](https://github.com/prisma/prisma2/issues/51) is in the works.