FROM rocker/shiny-verse:latest

# install R packages required
RUN Rscript -e "install.packages('shiny', repos='http://cran.rstudio.com/')"

# copy the app directory into the image
COPY . /srv/shiny-server/

USER shiny

EXPOSE 3838

CMD ["/usr/bin/shiny-server"]
