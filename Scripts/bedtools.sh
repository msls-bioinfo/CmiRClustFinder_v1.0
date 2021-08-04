#!/bin/bash

sed -e 's/"//g' $PWD/input/cluster.bed > $PWD/input/cluster_input.bed
rm $PWD/input/cluster.bed
$PWD/tools/bedtools2/bin/intersectBed -a $PWD/input/cluster_input.bed -b $PWD/Output/Process/RCNV_hg38.bed > $PWD/Output/RCNV_Cluster_Colocalization.bed -wao

mv $PWD/Output/TCGA_BLCA_miRNA_gene_quantification.rda $PWD/Output/Process/
mv $PWD/Output/Tumor.All.txt $PWD/Output/Process/
mv $PWD/Output/Tumor.All.txt.igv.gistic $PWD/Output/Process/

grep Amp $PWD/Output/RCNV_Cluster_Colocalization.bed >> $PWD/Output/Cluster_RCNV_Colocalized.bed
grep Del $PWD/Output/RCNV_Cluster_Colocalization.bed >> $PWD/Output/Cluster_RCNV_Colocalized.bed

rm $PWD/Output/RCNV_Cluster_Colocalization.bed

echo -e "Chromosome\tClusterStart\tClusterEnd\tmiRNACluster\tChromosome\tCNVStart\tCNVEnd\tCNVtype\tCNVRegionSize\tQ-Val\tOverlap" | cat - $PWD/Output/Cluster_RCNV_Colocalized.bed > $PWD/Output/RCNV_Cluster_Colocalization.tsv

rm $PWD/Output/Cluster_RCNV_Colocalized.bed

