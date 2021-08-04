#!/bin/bash


mkdir $PWD/Output/Process
awk '{print $1}' $PWD/Output/Tumor.All.txt | sed 's/\</chr/g' >> $PWD/Output/Process/1st.bed
awk '{print $2}' $PWD/Output/Tumor.All.txt | sed 's/0/Del/g' | sed 's/1/Amp/g' >> $PWD/Output/Process/2nd.bed
awk '{print $3, $4}' $PWD/Output/Tumor.All.txt >> $PWD/Output/Process/3rd.bed
awk '{print $5, $6}' $PWD/Output/Tumor.All.txt >> $PWD/Output/Process/4th.bed

paste $PWD/Output/Process/1st.bed $PWD/Output/Process/3rd.bed $PWD/Output/Process/2nd.bed $PWD/Output/Process/4th.bed > $PWD/Output/Process/RCNV_1.bed
sed '1d' $PWD/Output/Process/RCNV_1.bed > $PWD/Output/Process/RCNV_2.bed
sed -e 's/ /\t/g' $PWD/Output/Process/RCNV_2.bed > $PWD/Output/Process/RCNV.bed

rm $PWD/Output/Process/RCNV_1.bed
rm $PWD/Output/Process/RCNV_2.bed
rm $PWD/Output/Process/1st.bed
rm $PWD/Output/Process/2nd.bed
rm $PWD/Output/Process/3rd.bed
rm $PWD/Output/Process/4th.bed


################################## Uplift ############################################

cd $PWD/tools/liftover/
./liftOver ../../Output/Process/RCNV.bed hg19ToHg38.over.chain.gz ../../Output/Process/RCNV_hg38.bed ../../Output/Process/unMapped
