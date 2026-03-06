FROM rocker/shiny-verse:4.5.2

RUN apt-get clean all && \
    apt-get update && \
    apt-get install -y git

RUN git clone https://github.com/bchoi-qwe/IRShinyApp.git /srv/shiny-server/IRShinyApp
RUN Rscript /srv/shiny-server/IRShinyApp/requirements.R

EXPOSE 3838

CMD ["R", "-e", "shiny::runApp('/srv/shiny-server/IRShinyApp/app', host = '0.0.0.0', port = 3838)"]