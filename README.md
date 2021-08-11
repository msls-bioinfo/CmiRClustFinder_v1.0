# *CmiRClustFinder v1.0*
## Overview
Interestingly ~ 25% of annotated human microRNAs (miRNAs) occur as a cluster in intragenic and intergenic regions of the human genome. Each miRNA cluster consists of two or more miRNAs that are transcribed from physically adjacent miRNA genes from a single promoter. These miRNA clusters are proposed to work more efficiently than a single miRNA as it contains multiple miRNA encoding genes. These multiple members of a cluster show high sequence similarity in the seed region and they often have the same targets or target different genes belonging to specific pathways. The expression of miRNA clusters is regulated by several genetic and epigenetic reprogramming. The miRNA genes are most commonly affected by the structural variation when when compared with single nucleotide variation. The critical reason for the structural variation is the clustering of miRNAs at chromosome fragile sites. Here, we have developed a user-friendly pipeline `CmiRClustFinder`, which integrates user-inputted miRNA cluster information with copy number variation (CNV) datasets from TCGA and identifies CNV colocalized miRNA clusters. The primary version of `CmiRClustFinder` is restricted to TCGA CNV datasets, it will be expanded with subsequent updates. <br /><br />
*CmiRClustFinder* utility is developed to identify recurrent copy number variations (RCNV) - colocalized miRNA clusters from TCGA Cancer datasets. This pipeline is not only limited to miRNA clusters, users can also supply any genomic element (eg. any specific region or gene) to check for RCNV associations in specific TCGA cancer types. (Note: please use hg38 genome build coordinates)


## Installation
  *CmiRClustFinder* is designed for Linux operating system. If you wish to use this pipeline, follow the instructions below. <br />
  
### Prerequisite: 
  The following Linux utilities are required to run this pipeline. Please make sure the following are installed and available on your system prior to run `install.sh` from the source directory.<br />
  ```
  1. R = 4.0 (or higher)
  2. git
  3. unzip
  ```
  
  
If above prerequisite are satisfied, you are ready to install dependencies and build the pragram. Note during the building procedure, `install.sh` will attempt to download and install several packages, so an active internet conection is required.
  
To obtain *CmiRClustFinder*, Use: <br />
```
git clone https://github.com/msls-bioinfo/CmiRClustFinder_v1.0.git
cd CmiRClustFinder_v1.0/
```
or 
<br/>
```
wget https://github.com/msls-bioinfo/CmiRClustFinder_v1.0/archive/refs/heads/main.zip
unzip main.zip
cd CmiRClustFinder_v1.0-main/
```
Assuming that you have downloaded the source code and it is in a directory `CmiRClustFinder/`, to install all dependencies follow the procedure: <br />

```
cd CmiRClustFinder/
sh install.sh
```
After the successful execution of `install.sh` you are ready to run the main pipeline script `CmiRClustFinder.r` which is located in `RScript/` directory

## Usage
The pipleline triggered by executing `Rscript CmiRclustFinder.r` which is present in `Rscripts` directory<br />
please navigate into the `Rscripts` directory to start the pipeline

```
Rscript CmiRclustFinder.r <TCGA cohort abbreviation> <BED file specifying user intrested genomic regions>
```
The first argument required to `Rscript` is TCGA cahort abbreviation, You can select from the list below

|Sr. No.| Cohort Abbreviation | Cohort Name |
|------|---------------------|--------------|
|1|TCGA-ACC|Adrenocortical carcinoma|
|2|TCGA-BLCA|Bladder Urothelial Carcinoma|
|3|TCGA-BRCA|Breast invasive carcinoma|
|4|TCGA-CESC|Cervical squamous cell carcinoma and endocervical adenocarcinoma|
|5|TCGA-CHOL|Cholangiocarcinoma|
|6|TCGA-COAD|Colon adenocarcinoma|
|7|TCGA-COADREAD|Colorectal adenocarcinoma|
|8|TCGA-DLBC|Lymphoid Neoplasm Diffuse Large B-cell Lymphoma|
|9|TCGA-ESCA|Esophageal carcinoma|
|10|TCGA-GBM|Glioblastoma multiforme|
|11|TCGA-GBMLGG|Glioma|
|12|TCGA-HNSC|Head and Neck squamous cell carcinoma|
|13|TCGA-KICH|Kidney Chromophobe|
|14|TCGA-KIPAN|Pan-kidney cohort(KICH+KIRC+KIRP)|
|15|TCGA-KIRC|Kidney renal clear cell carcinoma|
|16|TCGA-KIRP|Kidney renal papillary cell carcinoma|
|17|TCGA-LGG|Brain Lower Grade Glioma|
|18|TCGA-LIHC|Liver hepatocellular carcinoma|
|19|TCGA-LUAD|Lung adenocarcinoma|
|20|TCGA-LUSC|Lung squamous cell carcinoma|
|21|TCGA-MESO|Mesothelioma|
|22|TCGA-OV|Ovarian serous cystadenocarcinoma|
|23|TCGA-PAAD|Pancreatic adenocarcinoma|
|24|TCGA-PCPG|Pheochromocytoma and Paraganglioma|
|25|TCGA-PRAD|Prostate adenocarcinoma|
|26|TCGA-READ|Rectum adenocarcinoma|
|27|TCGA-SARC|Sarcoma|
|28|TCGA-SKCM|Skin Cutaneous Melanoma|
|29|TCGA-STAD|Stomach adenocarcinoma|
|30|TCGA-TGCT|Testicular Germ Cell Tumors|
|31|TCGA-THCA|Thyroid carcinoma|
|32|TCGA-THYM|Thymoma|
|33|TCGA-UCEC|Uterine Corpus Endometrial Carcinoma|
|34|TCGA-UCS|Uterine Carcinosarcoma|
|35|TCGA-UVM|Uveal Melanoma|

The second argument required to `Rscript` is BED file which contain the specific genomic regions, to check their co-localization with RCNV. <br />
Below is an example of BED file <br />
NOTE: The table header is for descriptive purposes. The BED file should not have header

|CHROM|START|END|IDENTIFIER|
|-----|-----|---|----------|
|chr19|53666679|53706336|hsa-miR-526a-1/miR-512-1|
|chr14|101022066|101043062|hsa-miR-1185-1/miR-379|
|chr14|100869060|100884783|hsa-miR-136/miR-493|
|chrx|50003148|50014683|hsa-miR-502/miR-532|
|chr9|134849298|134850807|hsa-miR-3689f/miR-3689c|
|chr13|91350605|91351391|hsa-miR-92a-1/miR-17|
|chrx|134169378|134170278|hsa-miR-106a/miR-363|
|chrx|134540185|134546711|hsa-miR-424/miR-450b|
|chrx|145992750|146001131|hsa-miR-891b/miR-892c|
|chr20|63919449|63919939|hsa-miR-941-5/miR-941-1|

Know more about the bed file format : (http://genome.ucsc.edu/FAQ/FAQformat#format1)

## Examples
Sample datasets are included in the Examples folder. <br />
Run CmiRClustFinder on a sample dataset:
```

```


### Requirements
`CmiRClustFinder` requires an segmented somatic copy number altrations (sCNA) data for patients group from TCGA cohort.

## Output files
Results are saved to the run-specific folder inside the `Output` directory 

### Final Results





### Credits:

1. TCGA Workflow: Analyze cancer genomics and epigenomics data using Bioconductor packages (https://f1000research.com/articles/5-1542)
2. TCGAbiolinks R package (https://bioconductor.org/packages/release/bioc/html/TCGAbiolinks.html)
3. BEDTools (https://bedtools.readthedocs.io/en/latest/)
4. UCSC liftOver (https://genome-store.ucsc.edu/)

