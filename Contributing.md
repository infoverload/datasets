# Contributing

Please note that this project is released with a [Contributor Code of Conduct](code-of-conduct.md). By participating in this project you agree to abide by its terms.

## The more the merrier! 
The more datasets we have, the better!  We welcome contributions to this repository. :)

## Guidelines for contributing

1. Clone this repository

```sh
git clone https://github.com/infoverload/datasets.git
```

2. Create a new branch

```sh
cd datasets
git checkout -b [branch_name]
```

3. Create a new folder under the database that your dataset works with under `/datasets` directory. For example:

```sh
cd datasets/sqlite
mkdir mynewdataset
```

4. Add your dataset file along with a README that explains briefly the database schema in the directory.

5. Commit your files

```sh
git add .
git commit -m "commit message"
```

6. Push your commit to your repository branch

```sh
git push origin [branch name]
```

7. Make a pull request.  


## Quality, quality, quality!  

Try to contribute a dataset that is normalized, which could mean removing duplicate, incorrect, or irrelevant data. Take care to do a thorough job in cleaning your dataset because even small mistakes can diminish the quality. 


How do I clean the dataset?
How can you give credit to where it was found?
Where can I find a good dataset?
Hacktoberfest label?
