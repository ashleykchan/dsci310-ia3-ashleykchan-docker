FROM rocker/rstudio:4.4.2

RUN Rscript -e 'install.packages("remotes")'

RUN Rscript -e 'remotes::install_version("cowsay")'

RUN echo 'library(cowsay)\nsay("Hello")' > /home/rstudio/test_cowsay.R

EXPOSE 8787