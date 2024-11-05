FROM cosimichele/jupyter-datascience:3.6.3-rstudio

USER root

#### USE STATEMENTS (RUN, COPY) TO BUILD YOUR OWN DOCKERFILE ####


#### DO NOT MODIFY LINES BELOW ##################################

USER jovyan
WORKDIR /home/jovyan

EXPOSE 8888

COPY entry.sh /bin
RUN mkdir -p /home/jovyan/.irods

ENTRYPOINT ["bash", "/bin/entry.sh"]
