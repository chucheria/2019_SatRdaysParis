FROM rocker/tidyverse

RUN apt-get install -y libudunits2-dev

RUN R -e 'install.packages("remotes")' && R -e 'remotes::install_github("neo4j-rstats/neo4r")' && R -e 'install.packages("ggraph")' && R -e 'install.packages("visNetwork")'

RUN mkdir /home/rstudio/2019_SatRdaysParis

COPY ./ /home/rstudio/2019_SatRdaysParis

EXPOSE 8787
