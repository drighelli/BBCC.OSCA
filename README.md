# BBCC 2023: Orchestrating Large-Scale Single-Cell Analysis with Bioconductor

[Tutorial homepage](https://drighelli.github.io/BBCC.OSCA/)

## Speakers

* Annamaria Carissimo, Institute for Applied Mathematics "M. Picone", IAC-CNR, Naples, Italy
* Dario Righelli, Department of Statistical Sciences, University of Padova, Italy
* Francesco Cecere, Department of Environmental Biological and Pharmaceutical Sciences and Technologies (DiSTABiF), Università degli Studi della Campania “Luigi Vanvitelli”, Caserta, Italy

## Description

In the last few years, the profiling of a large number of genome-wide features
in individual cells has become routine. Consequently, a plethora of tools for
the analysis of single-cell data has been developed, making it hard to understand
the critical steps in the analysis workflow and the best methods for each objective
of one’s study.

This tutorial aims to provide a solid foundation in using Bioconductor tools
for single-cell RNA-seq analysis by walking through various steps of typical
workflows using example datasets.

This tutorial uses as a "text-book" the online book "Orchestrating Single-Cell
Analysis with Bioconductor"
([OSCA](https://bioconductor.org/books/release/OSCA/)), 
started in 2018 and continuously updated by many contributors from the Bioconductor
community. Like the book, this tutorial strives to be of interest to the
experimental biologists wanting to analyze their data and to the bioinformaticians
approaching single-cell data.

## Learning objectives

Attendees will learn how to analyze multi-condition single-cell RNA-seq from
raw data to statistical analyses and result interpretation. Students will learn
where the critical steps and methods choices are and will be able to leverage
large-data resources to analyze datasets comprising millions of cells.

In particular, participants will learn:

* How to perform data exploration, normalization, and dimensionality reduction.
* How to identify cell types/states and marker genes.
* How to correct for batch effects and integrate multiple samples. (TBD)
* How to perform differential expression and differential abundance analysis between conditions. (TBD)

## Time outline

| Activity                     | Time |
|------------------------------|------|
| Introduction and Setup                                          | 9:00-9:30    |
| Introduction to Bioconductor and the SingleCellExperiment class | 9:30-10:00   |
| Exploratory Data Analysis and Quality Control (EDA/QC)          | 10:00-10:45  |
| Coffee break                                                    | 10:45-11:00  |
| Clustering and cell type annotation                             | 11:00-12:00  |
| Multi-sample analyses (TBD)                                     | 12:00-13:30  |
| Lunch                                                           | 13:30        |

## Docker container

To locally run this tutorial in a
[Docker container](ghcr.io/drighelli/bbcc.osca:latest),
pull the Docker image via

```
docker pull ghcr.io/drighelli/bbcc.osca:latest
``` 

and then run the image via

```
docker run -e PASSWORD=bioc -p 8787:8787 ghcr.io/drighelli/bbcc.osca
```

Once running, navigate to http://localhost:8787/ in your browser and login with
username `rstudio` and password `bioc`.

## Local installation

This tutorial can be installed like an ordinary R package via:

```
if (!require("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

if (!require("remotes", quietly = TRUE))
    install.packages("remotes")

BiocManager::install("Bioconductor/BBCC.OSCA",
                     dependencies = TRUE,
                     build_vignettes = TRUE)
```
