# Contributing

Please note that this project is released with a [Contributor Code of Conduct](code-of-conduct.md). By participating in this project you agree to abide by its terms.

## The more the merrier! 
The more datasets we have, the better!  We welcome contributions to this repository. :)

## Guidelines for contributing

1. Fork this repository

2. Clone the forked version of the repository

```sh
git clone https://github.com/username/datasets.git
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

5. Add your dataset file along with a README that gives a brief description of this dataset.

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


## Quality, quality, quality!  

Try to contribute a dataset that is normalized, which could mean removing duplicate, incorrect, or irrelevant data. Take care to do a thorough job in cleaning your dataset because even small mistakes can diminish the quality. 

How do I clean the dataset?. Incorporate this:
https://en.wikipedia.org/wiki/Database_normalization#Example_of_a_step_by_step_normalization


How can you give credit to where it was found?
Where can I find a good dataset?
Hacktoberfest label?
