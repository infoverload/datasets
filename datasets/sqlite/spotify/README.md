# Spotify Playlist!

## Description of the data

This dataset is a representation of playlists in a Spotify account.  

## How to use

### 1. Clone GitHub repository

Get started by cloning the repo and navigating into this directory:

```
git clone git@github.com:infoverload/datasets.git
cd datasets/datasets/sqlite/spotify
```

### 2. Explore the dataset

Open the `.db` file in an [SQLite browser](https://sqliteonline.com/).


### 3. Explore the dataset with Prisma development mode

A Prisma schema based on the dataset is provided for you already, which will allow you to run Prisma's development mode. 

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
