# Football meets graphs

- [Slides](https://docs.google.com/presentation/d/1TbsADzwz8fDOATlkhcIyTFu3lakq4wN5vqRLe2HFx_A/edit?usp=sharing)

This repository is a small analysis about *home advantage* and *competitiveness* in football. It uses the [Neo4j](https://neo4j.com) database and its R API wrapper [Neo4r](https://github.com/neo4j-rstats/neo4r).

The *neo4r* package is in experimental phase. That gives us some limits in use, that's why the script has data retrieval and data wrangle but I believe both analysis can be almost entirely done in *neo4j*.

## Data

The data presented in SatRdays was for the La Liga and the Premier League. Another dataset has been aded since the conference, the **"FA Women's Super League"**. The code to import is already in *script.Rmd*, if you execute it in your computer make sure you have the [APOC procedures](https://github.com/neo4j-contrib/neo4j-apoc-procedures) installed.

- [Statsbomb](https://github.com/statsbomb/open-data) for the women futbol.

## Use the docker

You'll find a `dockerfile` in the repository, this docker builds:

- RStudio with the tidyverse, neo4j, visnetwork.

The `docker-compose.yml` runs a neo4j image and the RStudio mentioned before.

## RStudio login
- user: rstudio
- pass: satuRdays

## Neo4j login
- user: neo4j
- pass: neo4j

## Run the docker

*Install [docker](https://docs.docker.com/install/)*

1. First time only to install APOC dependencies in neo4j

```bash
./run.sh
```

2. For eternity

```bash
docker-compose up
```
