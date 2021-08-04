#!/usr/bin/env Rscript

installdir <- getwd()
setwd(installdir)
setwd('..')
system("./Scripts/welcome.sh")

require(data.table)
args <- commandArgs(trailingOnly = TRUE)

system("mkdir sCNV")
################################################### sCNA Download ###########################################################################################
if (args[1] == "TCGA-ACC")
{
	system("wget -P $PWD/sCNV/ http://slsdb.manipal.edu/cmirclustfinder/sCNA/ACC/ACC.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt")
	sCNV <- read.table(file = "sCNV/ACC.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt", sep="\t", stringsAsFactors=FALSE, header=TRUE)
}
if (args[1] == "TCGA-BLCA")
{
	system("wget -P $PWD/sCNV/ http://slsdb.manipal.edu/cmirclustfinder/sCNA/BLCA/BLCA.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt")
	sCNV <- read.table(file = "sCNV/BLCA.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt", sep="\t", stringsAsFactors=FALSE, header=TRUE)
}
if (args[1] == "TCGA-BRCA")
{
	system("wget -P $PWD/sCNV/ http://slsdb.manipal.edu/cmirclustfinder/sCNA/BRCA/BRCA.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt")
	sCNV <- read.table(file = "sCNV/BRCA.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt", sep="\t", stringsAsFactors=FALSE, header=TRUE)
}
if (args[1] == "TCGA-CESC")
{
	system("wget -P $PWD/sCNV/ http://slsdb.manipal.edu/cmirclustfinder/sCNA/CESC/CESC.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt")
	sCNV <- read.table(file = "sCNV/CESC.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg", sep="\t", stringsAsFactors=FALSE, header=TRUE)
}
if (args[1] == "TCGA-CHOL")
{
	system("wget -P $PWD/sCNV/ http://slsdb.manipal.edu/cmirclustfinder/sCNA/CHOL/CHOL.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt")
	sCNV <- read.table(file = "sCNV/CHOL.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt", sep="\t", stringsAsFactors=FALSE, header=TRUE)
}
if (args[1] == "TCGA-COAD")
{
	system("wget -P $PWD/sCNV/ http://slsdb.manipal.edu/cmirclustfinder/sCNA/COAD/COAD.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt")
	sCNV <- read.table(file = "sCNV/COAD.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt", sep="\t", stringsAsFactors=FALSE, header=TRUE)
}
if (args[1] == "TCGA-COADREAD")
{
	system("wget -P $PWD/sCNV/ http://slsdb.manipal.edu/cmirclustfinder/sCNA/COADREAD/COADREAD.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt")
	sCNV <- read.table(file = "sCNV/COADREAD.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt", sep="\t", stringsAsFactors=FALSE, header=TRUE)
}
if (args[1] == "TCGA-DLBC")
{
	system("wget -P $PWD/sCNV/ http://slsdb.manipal.edu/cmirclustfinder/sCNA/DLBC/DLBC.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt")
	sCNV <- read.table(file = "sCNV/DLBC.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt", sep="\t", stringsAsFactors=FALSE, header=TRUE)
}
if (args[1] == "TCGA-ESCA")
{
	system("wget -P $PWD/sCNV/ http://slsdb.manipal.edu/cmirclustfinder/sCNA/ESCA/ESCA.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt")
	sCNV <- read.table(file = "sCNV/ESCA.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt", sep="\t", stringsAsFactors=FALSE, header=TRUE)
}
if (args[1] == "TCGA-GBM")
{
	system("wget -P $PWD/sCNV/ http://slsdb.manipal.edu/cmirclustfinder/sCNA/GBM/GBM.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt")
	sCNV <- read.table(file = "sCNV/GBM.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt", sep="\t", stringsAsFactors=FALSE, header=TRUE)
}
if (args[1] == "TCGA-GBMLGG")
{
	system("wget -P $PWD/sCNV/ http://slsdb.manipal.edu/cmirclustfinder/sCNA/GBMLGG/GBMLGG.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt")
	sCNV <- read.table(file = "sCNV/GBMLGG.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt", sep="\t", stringsAsFactors=FALSE, header=TRUE)
}
if (args[1] == "TCGA-HNSC")
{
	system("wget -P $PWD/sCNV/ http://slsdb.manipal.edu/cmirclustfinder/sCNA/HNSC/HNSC.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt")
	sCNV <- read.table(file = "$PWD/sCNV/HNSC.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt", sep="\t", stringsAsFactors=FALSE, header=TRUE)
}
if (args[1] == "TCGA-KICH")
{
	system("wget -P $PWD/sCNV/ http://slsdb.manipal.edu/cmirclustfinder/sCNA/KICH/KICH.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt")
	sCNV <- read.table(file = "sCNV/KICH.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt", sep="\t", stringsAsFactors=FALSE, header=TRUE)
}
if (args[1] == "TCGA-KIPAN")
{
	system("wget -P $PWD/sCNV/ http://slsdb.manipal.edu/cmirclustfinder/sCNA/KIPAN/KIPAN.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt")
	sCNV <- read.table(file = "sCNV/KIPAN.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt", sep="\t", stringsAsFactors=FALSE, header=TRUE)
}
if (args[1] == "TCGA-KIRC")
{
	system("wget -P $PWD/sCNV/ http://slsdb.manipal.edu/cmirclustfinder/sCNA/KIRC/KIRC.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt")
	sCNV <- read.table(file = "sCNV/KIRC.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt", sep="\t", stringsAsFactors=FALSE, header=TRUE)
}
if (args[1] == "TCGA-KIRP")
{
	system("wget -P $PWD/sCNV/ http://slsdb.manipal.edu/cmirclustfinder/sCNA/KIRP/KIRP.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt")
	sCNV <- read.table(file = "sCNV/KIRP.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt", sep="\t", stringsAsFactors=FALSE, header=TRUE)
}
if (args[1] == "TCGA-LGG")
{
	system("wget -P $PWD/sCNV/ http://slsdb.manipal.edu/cmirclustfinder/sCNA/LGG/LGG.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt")
	sCNV <- read.table(file = "sCNV/LGG.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt", sep="\t", stringsAsFactors=FALSE, header=TRUE)
}
if (args[1] == "TCGA-LIHC")
{
	system("wget -P $PWD/sCNV/ http://slsdb.manipal.edu/cmirclustfinder/sCNA/LIHC/LIHC.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt")
	sCNV <- read.table(file = "sCNV/LIHC.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt", sep="\t", stringsAsFactors=FALSE, header=TRUE)
}
if (args[1] == "TCGA-LUAD")
{
	system("wget -P $PWD/sCNV/ http://slsdb.manipal.edu/cmirclustfinder/sCNA/LUAD/LUAD.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt")
	sCNV <- read.table(file = "sCNV/LUAD.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt", sep="\t", stringsAsFactors=FALSE, header=TRUE)
}
if (args[1] == "TCGA-LUSC")
{
	system("wget -P $PWD/sCNV/ http://slsdb.manipal.edu/cmirclustfinder/sCNA/LUSC/LUSC.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt")
	sCNV <- read.table(file = "sCNV/LUSC.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt", sep="\t", stringsAsFactors=FALSE, header=TRUE)
}
if (args[1] == "TCGA-MESO")
{
	system("wget -P $PWD/sCNV/ http://slsdb.manipal.edu/cmirclustfinder/sCNA/MESO/MESO.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt")
	sCNV <- read.table(file = "sCNV/MESO.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt", sep="\t", stringsAsFactors=FALSE, header=TRUE)
}
if (args[1] == "TCGA-OV")
{
	system("wget -P $PWD/sCNV/ http://slsdb.manipal.edu/cmirclustfinder/sCNA/OV/OV.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt")
	sCNV <- read.table(file = "sCNV/OV.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt", sep="\t", stringsAsFactors=FALSE, header=TRUE)
}
if (args[1] == "TCGA-OV")
{
	system("wget -P $PWD/sCNV/ http://slsdb.manipal.edu/cmirclustfinder/sCNA/PAAD/PAAD.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt")
	sCNV <- read.table(file = "sCNV/PAAD.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt", sep="\t", stringsAsFactors=FALSE, header=TRUE)
}
if (args[1] == "TCGA-PAAD")
{
	system("wget -P $PWD/sCNV/ http://slsdb.manipal.edu/cmirclustfinder/sCNA/PAAD/PAAD.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt")
	sCNV <- read.table(file = "sCNV/PAAD.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt", sep="\t", stringsAsFactors=FALSE, header=TRUE)
}
if (args[1] == "TCGA-PCPG")
{
	system("wget -P $PWD/sCNV/ http://slsdb.manipal.edu/cmirclustfinder/sCNA/PCPG/PCPG.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt")
	sCNV <- read.table(file = "sCNV/PCPG.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt", sep="\t", stringsAsFactors=FALSE, header=TRUE)
}
if (args[1] == "TCGA-PRAD")
{
	system("wget -P $PWD/sCNV/ http://slsdb.manipal.edu/cmirclustfinder/sCNA/PRAD/PRAD.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt")
	sCNV <- read.table(file = "sCNV/PRAD.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt", sep="\t", stringsAsFactors=FALSE, header=TRUE)
}
if (args[1] == "TCGA-READ")
{
	system("wget -P $PWD/sCNV/ http://slsdb.manipal.edu/cmirclustfinder/sCNA/READ/READ.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt")
	sCNV <- read.table(file = "sCNV/READ.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt", sep="\t", stringsAsFactors=FALSE, header=TRUE)
}
if (args[1] == "TCGA-SARC")
{
	system("wget -P $PWD/sCNV/ http://slsdb.manipal.edu/cmirclustfinder/sCNA/SARC/SARC.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt")
	sCNV <- read.table(file = "sCNV/SARC.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt", sep="\t", stringsAsFactors=FALSE, header=TRUE)
}
if (args[1] == "TCGA-SKCM")
{
	system("wget -P $PWD/sCNV/ http://slsdb.manipal.edu/cmirclustfinder/sCNA/SKCM/SKCM.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt")
	sCNV <- read.table(file = "sCNV/SKCM.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt", sep="\t", stringsAsFactors=FALSE, header=TRUE)
}
if (args[1] == "TCGA-STAD")
{
	system("wget -P $PWD/sCNV/ http://slsdb.manipal.edu/cmirclustfinder/sCNA/STAD/STAD.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt")
	sCNV <- read.table(file = "sCNV/STAD.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt", sep="\t", stringsAsFactors=FALSE, header=TRUE)
}
if (args[1] == "TCGA-STES")
{
	system("wget -P $PWD/sCNV/ http://slsdb.manipal.edu/cmirclustfinder/sCNA/STES/STES.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt")
	sCNV <- read.table(file = "sCNV/STES.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt", sep="\t", stringsAsFactors=FALSE, header=TRUE)
}
if (args[1] == "TCGA-TGCT")
{
	system("wget -P $PWD/sCNV/ http://slsdb.manipal.edu/cmirclustfinder/sCNA/TGCT/TGCT.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt")
	sCNV <- read.table(file = "sCNV/TGCT.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt", sep="\t", stringsAsFactors=FALSE, header=TRUE)
}
if (args[1] == "TCGA-THCA")
{
	system("wget -P $PWD/sCNV/ http://slsdb.manipal.edu/cmirclustfinder/sCNA/THCA/THCA.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt")
	sCNV <- read.table(file = "sCNV/THCA.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt", sep="\t", stringsAsFactors=FALSE, header=TRUE)
}
if (args[1] == "TCGA-THYM")
{
	system("wget -P $PWD/sCNV/ http://slsdb.manipal.edu/cmirclustfinder/sCNA/THYM/THYM.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt")
	sCNV <- read.table(file = "sCNV/THYM.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt", sep="\t", stringsAsFactors=FALSE, header=TRUE)
}
if (args[1] == "TCGA-UCEC")
{
	system("wget -P $PWD/sCNV/ http://slsdb.manipal.edu/cmirclustfinder/sCNA/UCEC/UCEC.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt")
	sCNV <- read.table(file = "sCNV/UCEC.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt", sep="\t", stringsAsFactors=FALSE, header=TRUE)
}
if (args[1] == "TCGA-UCS")
{
	system("wget -P $PWD/sCNV/ http://slsdb.manipal.edu/cmirclustfinder/sCNA/UCS/UCS.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt")
	sCNV <- read.table(file = "sCNV/UCS.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt", sep="\t", stringsAsFactors=FALSE, header=TRUE)
}
if (args[1] == "TCGA-UVM")
{
	system("wget -P $PWD/sCNV/ http://slsdb.manipal.edu/cmirclustfinder/sCNA/UVM/UVM.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt")
	sCNV <- read.table(file = "sCNV/UVM.snp__genome_wide_snp_6__broad_mit_edu__Level_3__segmented_scna_minus_germline_cnv_hg19__seg.seg.txt", sep="\t", stringsAsFactors=FALSE, header=TRUE)
}


    
################################################### RCNV Identification ###########################################################################################
CN <- sCNV
types <- gsub("TCGA-[A-Z0-9]*-[A-Z0-9]*-", "", (gsub("-[0-9A-Z]*-[0-9A-Z]*-01$", "", CN[,1])))
matched.normal <- c("10A", "10B", "11A", "11B")
tumor <- c("01A", "01B", "06A")
tumor.indices <- which(types %in% tumor)
matched.normal.indices <- which(types %in% matched.normal)
CN.tumor <- CN[tumor.indices,]
CN.matched.normal <- CN[matched.normal.indices,]
CN.tumor[,1] <- gsub("-[0-9A-Z]*-[0-9A-Z]*-[0-9A-Z]*-01$", "", CN.tumor[,1])
CN.matched.normal[,1] <- gsub("-[0-9A-Z]*-[0-9A-Z]*-[0-9A-Z]*-01$", "", CN.matched.normal[,1])

require(gaia)
markersMatrix <- read.delim(paste0("data/genome-info/genome.info.6.0_hg19.na31_minus_frequent_nan_probes_sorted_2.1.txt"), as.is=TRUE, header=FALSE)
colnames(markersMatrix) <- c("Probe.Name", "Chromosome", "Start")

unique(markersMatrix$Chromosome)
markersMatrix[which(markersMatrix$Chromosome=="X"),"Chromosome"] <- 23
markersMatrix[which(markersMatrix$Chromosome=="Y"),"Chromosome"] <- 24
markersMatrix$Chromosome <- sapply(markersMatrix$Chromosome, as.integer)


markerID <- apply(markersMatrix, 1, function(x) paste0(x[2], ":", x[3]))


markersMatrix <- markersMatrix[-which(duplicated(markerID)),]

markerID <- apply(markersMatrix, 1, function(x) paste0(x[2], ":", x[3]))
commonCNV <- read.delim(paste0("data/genome-info/CNV.hg19.bypos.111213.txt"), as.is=TRUE)
commonCNV[,2] <- sapply(commonCNV[,2], as.integer)
commonCNV[,3] <- sapply(commonCNV[,3], as.integer)
commonID <- apply(commonCNV, 1, function(x) paste0(x[2], ":", x[3]))
table(commonID %in% markerID)
table(markerID %in% commonID)
markersMatrix_fil <- markersMatrix[!markerID %in% commonID,]

markers_obj <- load_markers(markersMatrix_fil)
cnvMatrix <- CN.tumor

cnvMatrix <- cbind(cnvMatrix, Label=NA)
cnvMatrix[cnvMatrix$Segment_Mean < -0.3,"Label"] <- 0
cnvMatrix[cnvMatrix$Segment_Mean > 0.3,"Label"] <- 1
cnvMatrix <- cnvMatrix[!is.na(cnvMatrix$Label),]

cnvMatrix <- cnvMatrix[,-6]
colnames(cnvMatrix) <- c("Sample.Name", "Chromosome", "Start", "End", "Num.of.Markers", "Aberration")


xidx <- which(cnvMatrix$Chromosome=="X")
yidx <- which(cnvMatrix$Chromosome=="Y")
cnvMatrix[xidx,"Chromosome"] <- 23
cnvMatrix[yidx,"Chromosome"] <- 24
cnvMatrix$Chromosome <- sapply(cnvMatrix$Chromosome, as.integer)

n <- length(unique(cnvMatrix[,1]))
cnv_obj <- load_cnv(cnvMatrix, markers_obj, n)

system("mkdir Output")

results.all <- runGAIA(cnv_obj, markers_obj, output_file_name="Output/Tumor.All.txt", aberrations=-1, chromosomes=-1, num_iterations=10, threshold=0.15)

################################################### Creating BED ###########################################################################################

system("Scripts/toBed.sh")

################################################### DEmiR Analysis #########################################################################################
#require(TCGAbiolinks)

##CancerProject <- args[1]
#CancerProject <- "TCGA-CESC"
#DataDirectory <- paste0("Output/",gsub("-","_",CancerProject))
#FileNameData <- paste0(DataDirectory, "_","miRNA_quantification",".rda")

#query.miR <- GDCquery(project = CancerProject, 
#                  data.category = "Transcriptome Profiling",
#                  data.type = "miRNA Expression Quantification",
#                  file.type = "mirbase21.mirnas",
#                  legacy = FALSE)

#samplesDown.miR <- getResults(query.miR,cols=c("cases"))

#dataSmTP.miR <- TCGAquery_SampleTypes(barcode = samplesDown.miR,
#                                  typesample = "TP")

#dataSmNT.miR <- TCGAquery_SampleTypes(barcode = samplesDown.miR,
#                                  typesample = "NT")

#queryDown.miR <- GDCquery(project = CancerProject, 
#                      data.category = "Transcriptome Profiling",
#                      data.type = "miRNA Expression Quantification",
#                      file.type = "mirbase21.mirnas",
#                      legacy = FALSE,
#                      barcode = c(dataSmTP.miR, dataSmNT.miR))

#GDCdownload(query = queryDown.miR,
#            directory = DataDirectory)

#dataAssy.miR <- GDCprepare(query = queryDown.miR, 
                           ##save = TRUE, 
                           ##save.filename = FileNameData, 
#                           summarizedExperiment = TRUE,
#                           directory =DataDirectory )
#rownames(dataAssy.miR) <- dataAssy.miR$miRNA_ID

#read_countData <-  colnames(dataAssy.miR)[grep("count", colnames(dataAssy.miR))]
#dataAssy.miR <- dataAssy.miR[,read_countData]
#colnames(dataAssy.miR) <- gsub("read_count_","", colnames(dataAssy.miR))

#dataFilt <- TCGAanalyze_Filtering(tabDF = dataAssy.miR,
#                                  method = "quantile", 
#                                  qnt.cut =  0.25)   

#dataDEGs <- TCGAanalyze_DEA(mat1 = dataFilt[,dataSmNT.miR],
#                            mat2 = dataFilt[,dataSmTP.miR],
#                            Cond1type = "Normal",
#                            Cond2type = "Tumor",
#                            fdr.cut = 0.01 ,
#                            logFC.cut = 1,
#                            method = "glmLRT")  

#write.table(dataDEGs, file = "DEmiRs.txt", sep = "\t")

#write.table(dataDEGs, paste0(arg[1],"_DEmiRs.txt"), sep = "\t")

#system("mv MANIFEST.txt Output/Process/")

################################################### Cluster Input ###########################################################################################

system("mkdir input")
clusterfile <- read.table(args[2],header=TRUE,fill=TRUE,stringsAsFactor=FALSE)
write.table(clusterfile, file="input/cluster.bed", sep="\t", row.names = FALSE, col.names=FALSE)

################################################### Intersect Analysis #######################################################################################

system("Scripts/bedtools.sh")
system("Scripts/trim.sh")

################################################### Plotting Results #########################################################################################

						 ## Genomic Representation ## 


library(circlize)

file = read.table(file = "Output/Process/genetic_elements_for_circos.bed", sep="\t", header=FALSE)
l.cnv <- file[,c(1,2,3,4)]
xidx <- which(l.cnv$Chromosome==23)
yidx <- which(l.cnv$Chromosome==24)
l.cnv[xidx,"Chromosome"] <- "X"
l.cnv[yidx,"Chromosome"] <- "Y"
Chromosome <- sapply(l.cnv[,1],function(x) paste0("chr",x))
l.cnv <- cbind(Chromosome, l.cnv[,-1])
l.cnv[,1] <- as.character(l.cnv[,1])
l.cnv[,4] <- as.character(l.cnv[,4])
l.cnv <- cbind(l.cnv,CNV=1)
colnames(l.cnv) <- c("Chromosome","Start_position","End_position","Identifier")

png("Output/Genomic_Representation.png",width=1000,height=1000)
par(mar=c(1,1,1,1), cex=1)
circos.initializeWithIdeogram()
circos.par(points.overflow.warning=FALSE)
circos.par(track.margin=c(0,0))
colors <- c("forestgreen","firebrick")	
names(colors)  <- c(0,1)

circos.genomicLabels(l.cnv, labels.column = 4, side = "inside", col = as.numeric(factor(l.cnv[[1]])), line_col = as.numeric(factor(l.cnv[[1]])))

circos.clear()
  
dev.off()

						 ## RCNV Colocalization ## 

file = read.table(file = "Output/Process/RCNV_for_circos.bed", sep="\t", header=TRUE)
s.cnv <- file[,c(1,3,4,2)]
xidx <- which(s.cnv$Chromosome==23)
yidx <- which(s.cnv$Chromosome==24)
s.cnv[xidx,"Chromosome"] <- "X"
s.cnv[yidx,"Chromosome"] <- "Y"
Chromosome <- sapply(s.cnv[,1],function(x) paste0("chr",x))
s.cnv <- cbind(Chromosome, s.cnv[,-1])
s.cnv[,1] <- as.character(s.cnv[,1])
s.cnv[,4] <- as.character(s.cnv[,4])
s.cnv <- cbind(s.cnv,CNV=1)
colnames(s.cnv) <- c("Chromosome","Start_position","End_position","Aberration_Kind","CNV")


file = read.table(file = "Output/Process/genetic_elements_for_circos.bed", sep="\t", header=FALSE)
l.cnv <- file[,c(1,2,3,4)]
xidx <- which(l.cnv$Chromosome==23)
yidx <- which(l.cnv$Chromosome==24)
l.cnv[xidx,"Chromosome"] <- "X"
l.cnv[yidx,"Chromosome"] <- "Y"
Chromosome <- sapply(l.cnv[,1],function(x) paste0("chr",x))
l.cnv <- cbind(Chromosome, l.cnv[,-1])
l.cnv[,1] <- as.character(l.cnv[,1])
l.cnv[,4] <- as.character(l.cnv[,4])
l.cnv <- cbind(l.cnv,CNV=1)
colnames(l.cnv) <- c("Chromosome","Start_position","End_position","Identifier")

pdf("Output/CircosPlot.pdf",width=15,height=15)
par(mar=c(1,1,1,1), cex=1)
circos.initializeWithIdeogram()
circos.par(points.overflow.warning=FALSE)
circos.par(track.margin=c(0,0))
colors <- c("forestgreen","firebrick")	
names(colors)  <- c(0,1)

circos.genomicTrackPlotRegion(s.cnv,  ylim = c(0,1.2),
panel.fun = function(region, value, ...) {
circos.genomicRect(region, value, ytop.column = 2, ybottom = 0,
col = colors[value[[1]]],
border="white")
cell.xlim = get.cell.meta.data("cell.xlim")
circos.lines(cell.xlim, c(0, 0), lty = 2, col = "#00000040")

})

legend(0, 0.2, bty="n", y.intersp=1, c("Amplification","Deletion"), pch=15, col=c("firebrick","forestgreen"),title="CNVs", text.font=3, cex=1.3, title.adj=0)

circos.genomicLabels(l.cnv, labels.column = 4, side = "inside", col = as.numeric(factor(l.cnv[[1]])), line_col = as.numeric(factor(l.cnv[[1]])))
	
circos.clear()
  
dev.off()

