# Contributing Guidelines

Please note that this project is released with a [Contributor Code of Conduct](code-of-conduct.md). By participating in this project you agree to abide by its terms.

## The more the merrier! 

The more datasets we have, the better!  We welcome contributions to this repository.  

In particular, we are looking for datasets that:

- contain a database schema along with the data
- you have tested yourself and can provide a brief explanation for
- are small enough that it can be explored in an editor without it crashing :p 

## Steps for contributing

1. Fork this repository

2. Clone the forked version of the repository

```sh
git clone https://github.com/yourusername/datasets.git
```

3. Go into the repository and create a new branch

```sh
cd datasets
git checkout -b [branch_name]
```

4. Create a new folder under the database that your dataset works with under `/datasets` directory. For example:

```sh
cd datasets/sqlite
mkdir mynewdataset
```

5. Add your dataset file(s) along with a README that gives a brief description of this dataset.

6. Edit the main [README](README.md) file to include your dataset in the list. 

7. Commit your files

```sh
git add .
git commit -m "commit message"
```

8. Push your commit to your forked repository's branch

```sh
git push origin [branch name]
```

9. Make a pull request.  


### Quality, quality, quality!  

Try to contribute a dataset that is normalized, which could mean removing duplicate, incorrect, or irrelevant data. Take care to do a thorough job in cleaning your dataset because even small mistakes can diminish the quality. 

Here are some guidelines to consider when creating or cleaning up a dataset:
- the values in each column of a table are atomic
- each row of a table are unique
- a separate table is created for each set of related data
- 
- 

### Giving credit where it is due

If you stumble upon a cool dataset that you want to add to this repository, be sure to specify where you found it. 


### Where can I find a good dataset?

Want to help find good datasets but not sure where to look? You can check out the following resources:

- [Kaggle](https://www.kaggle.com/datasets)
- [Socrata](https://opendata.socrata.com/)
- [ProPublica](https://www.propublica.org/datastore/datasets)
- [Data.Gov](https://www.data.gov/)
- [World Bank Open Data](https://data.worldbank.org/)