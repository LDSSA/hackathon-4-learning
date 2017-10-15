#!/bin/bash

# build our local docker for the data-science-reports project
docker build -t hackathon-4-learning .

# run the built docker exposing port 8888 to localhost
docker run -it  --rm  --volume  `pwd`/src:/project/ -p 127.0.0.1:8888:8888 \
           --workdir /project/notebooks/ hackathon-4-learning
