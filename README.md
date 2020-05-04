## Docker Anaconda Environment 

Anaconda environment running Jupyter with persistent Notebook (yes, they don't get deleted if you stop the container) created with Docker Compose.

#### Usage

In the folder where ```docker-compose.yml``` and ```Dockerfile``` are, just run:

```
$docker-compose up
```

#### How to modify where Jupyter Notebooks are stored in the docker host

Docker containers do not store data in it, as soon as you stop or remove the container, the data created during the instance (let's say a Jupyter Notebook or some pickle file with the most awesome machine learning model ever created) is removed too.

To get persistant data you can use volumes that basically creates a "mirror" in a host folder.

The ```docker-compose.yml``` has set ```~/jupyter``` as local folder (in the machine that is hosting the docker image) and ```/opt/notebooks``` as the folder inside the docker and where the Jupyter Notebooks are saved.

```
volumes:
    - ~/jupyter:/opt/notebooks
```

### References
https://docs.docker.com/compose/compose-file/
https://docs.docker.com/docker-for-mac/osxfs/#namespaces
https://www.reddit.com/r/docker/comments/6ltn29/noob_q_how_do_i_save_my_work_done_on_docker/