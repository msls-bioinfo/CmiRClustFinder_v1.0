# *CmiRClustFinder v1.0*
## Overview
Intrestingly, ~ 25% of annotated human microRNAs (miRNAs) occur as a cluster in intragenic and intergenic regions of human genome. Each miRNA cluster consists of two or more miRNAs that are transcribed from physically adjecent miRNA genes from single promoter. These miRNA clusters are proposed to work more efficiantly than a single miRNA as it contains multiple miRNA encoding genes. These multiple members of a cluster show high sequence similarity in the seed region and they often have the same targets or targets diffrent genes belonging to specific pathways. The expression of miRNA clusters is regulated by several genetic and epigenetic reprogramming. The miRNA genes are most commonly affected by the structural variation than the single nucleotide variation. The critical reason for the structural variation is the clustering of miRNAs at chromosome fragile sites. Here, we have developed a user-friendly pipeline `CmiRClustFinder`, which integrates user inputted miRNA cluster information with copy number variation (CNV) datasets from TCGA and identifies CNV colocalized miRNA clusters. The primary version of `CmiRClustFinder` restricted to TCGA CNV datasets, it will be expanded with subsequent updates. <br /><br />
*CmiRClustFinder* utility is developed to identify recurrant copy number variations (RCNV) - colocalized miRNA clusters from TCGA Cancer datasets. This pipeline is not only limited to miRNA clusters, users can also supply any genomic element (eg. any specific region or gene) to check for RCNV associations in specific TCGA cancer types. (Note: please use hg38 genome build coordinates)


## Installation
  *CmiRClustFinder* is designed for Linux operating system. If you wish to use this pipeline, follow the instructions below. <br />
  
### Prerequisite: 
  The following Linux utilities are requred to run this pipeline. Please make sure the following are installed and available on your system prior to run `install.sh` from source directory.<br />
  ```
  1. R = 4.0 (or higher)
  2. git
  3. unzip
  ```
  
  
If above prerequisite are satisfied, you are ready to install dependencies and build the pragram. Note during the building procedure, `install.sh` will attempt to download and install several packages, so an active internet conection is required.
  
To obtain *CmiRClustFinder*, Use: <br />
```
https://github.com/msls-bioinfo/CmiRClustFinder_v1.0.git
```
or 
<br/>
```
wget https://github.com/msls-bioinfo/CmiRClustFinder_v1.0/archive/refs/heads/main.zip
```
Assuming that you have downloaded the source code and it is in a directory `CmiRClustFinder/`, to install all dependencies follow the procedure: <br />

```
cd CmiRClustFinder/
sh install.sh
```
After the successful execution of `install.sh` you are ready to run the main pipeline script `CmiRClustFinder.r` which is located in `RScript/` directory

## Usage
The pipleline triggered by executing `Rscript`: 

```
Rscript CmiRclustFinder.r <TCGA cohort abbreviation> <BED file specifying user intrested genomic regions>
```



### Requirements
`CmiRClustFinder` requires an segmented somatic copy number altrations (sCNA) data for patients group from TCGA cohort.




### Credits:

1. TCGA Workflow: Analyze cancer genomics and epigenomics data using Bioconductor packages (https://f1000research.com/articles/5-1542)
2. TCGAbiolinks R package (https://bioconductor.org/packages/release/bioc/html/TCGAbiolinks.html)
3. BEDTools (https://bedtools.readthedocs.io/en/latest/)
4. UCSC liftOver (https://genome-store.ucsc.edu/)

