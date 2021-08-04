#!/bin/bash


sed '1d' $PWD/Output/RCNV_Cluster_Colocalization.tsv > $PWD/Output/Process/head_trim.bed
awk '{print $1}' $PWD/Output/Process/head_trim.bed | sed 's/chr//g' >> $PWD/Output/Process/5th.bed
awk '{print $2,$3,$4}' $PWD/Output/Process/head_trim.bed >> $PWD/Output/Process/6th.bed
paste $PWD/Output/Process/5th.bed $PWD/Output/Process/6th.bed > $PWD/Output/Process/genetic_elements_1.bed
sed -e 's/ /\t/g' $PWD/Output/Process/genetic_elements_1.bed > $PWD/Output/Process/genetic_elements_for_circos.bed

awk '{print $1}' $PWD/Output/Process/RCNV_hg38.bed | sed 's/chr//g' >> $PWD/Output/Process/7th.bed
awk '{print $4}' $PWD/Output/Process/RCNV_hg38.bed | sed 's/Del/0/g' | sed 's/Amp/1/g' >> $PWD/Output/Process/8th.bed

awk '{print $2,$3,$5,$6}' $PWD/Output/Process/RCNV_hg38.bed >> $PWD/Output/Process/9th.bed
paste $PWD/Output/Process/7th.bed $PWD/Output/Process/8th.bed $PWD/Output/Process/9th.bed > $PWD/Output/Process/RCNV_for_circos_1.bed
sed -e 's/ /\t/g' $PWD/Output/Process/RCNV_for_circos_1.bed > $PWD/Output/Process/RCNV_for_circos_2.bed

echo -e "Chromosome\tAberration Kind\tRegion Start [bp]\tRegion End [bp]\tRegion Size [bp]\tq-value" | cat - $PWD/Output/Process/RCNV_for_circos_2.bed > $PWD/Output/Process/RCNV_for_circos.bed


rm $PWD/Output/Process/head_trim.bed
rm $PWD/Output/Process/5th.bed
rm $PWD/Output/Process/6th.bed
rm $PWD/Output/Process/genetic_elements_1.bed
rm $PWD/Output/Process/7th.bed
rm $PWD/Output/Process/8th.bed
rm $PWD/Output/Process/9th.bed
rm $PWD/Output/Process/RCNV_for_circos_1.bed
rm $PWD/Output/Process/RCNV_for_circos_2.bed
