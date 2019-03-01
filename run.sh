#!/bin/bash -   
#title          :run.sh 
#description    :install apoc and run docker-compose
#author         :monciopeloncio
#date           :20190301
#version        :1.0    
#usage          :./run  
#notes          :       
#bash_version   :3.2.57(1)-release
#============================================================================

# Download apoc and move to plugins folder
mkdir plugins
pushd plugins
wget https://github.com/neo4j-contrib/neo4j-apoc-procedures/releases/download/3.5.0.2/apoc-3.5.0.2-all.jar
popd

# Run docker-compose
docker-compose up
