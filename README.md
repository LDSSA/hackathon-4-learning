# hackathon-4-learning

Learning material for Hackathon #4.

## Instructions for running the notebooks

1. Go to src/data and unzip the ml-100k.zip file.
In Linux and OSX this can be done with the following command, run from the root directory (hackathon-4-learning)

```
$ unzip src/data/ml-100k.zip
```

2. If you want to use Docker, run the run-notebooks.sh command:

```
$ sh run-notebooks.sh
```

This will install all the needed dependencies in the docker container and a
jupyter-notebook server will start running. Just copy and paste the given URL in your browser and you'll
reach the notebooks from there.

3. If you don't want to user Docker, you can use the requirements.txt file to install all the needed
dependencies.