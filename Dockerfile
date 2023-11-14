FROM bioconductor/bioconductor_docker:RELEASE_3_17

WORKDIR /home/rstudio

COPY --chown=rstudio:rstudio . /home/rstudio/

ENV R_REMOTES_NO_ERRORS_FROM_WARNINGS=true
ENV CRAN='https://packagemanager.posit.co/cran/__linux__/jammy/latest'

RUN Rscript -e "BiocManager::install(update = TRUE, ask=FALSE, version='3.17')"
RUN Rscript -e "devtools::install(dependencies=TRUE, build_vignettes=TRUE, repos = BiocManager::repositories(version='3.17'))"
