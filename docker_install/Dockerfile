# Base image https://hub.docker.com/
FROM rocker/tidyverse

ARG WHEN

## create directories
RUN mkdir -p /test
RUN mkdir -p /test/output

## copy files
COPY /Files/install.R /test/install.R
COPY /Files/Stats_500_HW1.R /test/Stats_500_HW1.R
  
## run the script
RUN Rscript /test/install.R