#!/bin/bash

mkdir $PWD/tools/
wget -P $PWD/tools/ https://github.com/arq5x/bedtools2/releases/download/v2.29.1/bedtools-2.29.1.tar.gz
tar -zxvf $PWD/tools/bedtools-2.29.1.tar.gz -C $PWD/tools/
cd $PWD/tools/bedtools2/
make
cd ../../
rm -rf $PWD/tools/bedtools-2.29.1.tar.gz

wget -P $PWD/tools/ http://slsdb.manipal.edu/cmirclustfinder/liftover.zip
unzip $PWD/tools/liftover.zip -d $PWD/tools/
rm -rf $PWD/tools/liftover.zip

mkdir $PWD/data/
wget -P $PWD/data/ http://slsdb.manipal.edu/cmirclustfinder/genome-info.zip
unzip $PWD/data/genome-info.zip -d $PWD/data/
rm -rf $PWD/data/genome-info.zip

Rscript Rscripts/install.r







