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


## How to use

The data is in the form of a PostgreSQL dump. 

Run:

```sh
psql -U username -d spotify < spotify.pgsql 
```

For more detailed instructions, go [here](../README.md).
