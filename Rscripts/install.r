#!/usr/bin/env Rscript

if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

BiocManager::install("gaia", dependencies = TRUE)
BiocManager::install("DESeq2", dependencies = TRUE)
BiocManager::install("edgeR", dependencies = TRUE)
BiocManager::install("TCGAbiolinks", dependencies = TRUE)
install.packages("circlize")
