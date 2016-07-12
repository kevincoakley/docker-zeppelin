# docker-zeppelin

[![Build Status](https://travis-ci.org/kevincoakley/docker-zeppelin.svg?branch=master)](https://travis-ci.org/kevincoakley/docker-zeppelin)

## Apache Zeppelin - https://zeppelin.apache.org/

A web-based notebook that enables interactive data analytics. 

## Running

To start the container and save your notebooks on your local computer:

1. Create a local directory to save your notebooks.


    mkdir -p ~/zeppelin/notebook

2. Run the Zeppelin Docker container and mount the newly created notebook directory as a volume.


    docker run \ 
        --name my_zeppelin \
        -d \
        -p 127.0.0.1:8080:8080 \
        -v ~/zeppelin/notebook:/opt/zeppelin/notebook \
        kevincoakley/zeppelin

3. Access Zeppelin by going to http://127.0.0.1:8080/ in a web browser.


To use a custom Zeppelin configuration:

1. Temporarily run the Zeppelin Docker container in order to copy the /opt/zeppelin/conf directory.


    docker run \
        --name my_zeppelin \
        -d \
        -p 127.0.0.1:8080:8080 \
        kevincoakley/zeppelin
    
2. Copy the /opt/zeppelin/conf directory to ~/zeppelin/conf/.


    docker cp my_zeppelin:/opt/zeppelin/conf ~/zeppelin

3. Stop the temporary Zeppelin Docker container.


    docker stop my_zeppelin; docker rm my_zeppelin

4. Modify the config files in ~/zeppelin/conf/

5. Run the Zeppelin Docker container with the new conf directory mounted as a volume.


    docker run \
        --name my_zeppelin \
        -d \
        -p 127.0.0.1:8080:8080 \
        -v ~/zeppelin/conf:/opt/zeppelin/conf \
        -v ~/zeppelin/notebook:/opt/zeppelin/notebook \
        kevincoakley/zeppelin


Report issues to: https://github.com/kevincoakley/docker-zeppelin
