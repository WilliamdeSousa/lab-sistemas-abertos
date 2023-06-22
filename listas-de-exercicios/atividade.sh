#!/bin/bash

# criando os diretórios
mkdir diretorio01/diretorio01_1 -pv
mkdir diretorio01/diretorio01_2 -v
mkdir diretorio02/diretorio02_1 -pv
mkdir diretorio02/diretorio02_2 -v
mkdir diretorio02/diretorio02_2/diretorio02_2_1 -pv
mkdir diretorio02/diretorio02_2/diretorio02_2_2 -v
mkdir diretorio02/diretorio02_2/diretorio02_2_3 -v
exa -T diretorio0*

# movendo-se nos diretórios
cd diretorio01 
cd diretorio01_1 
cd ../diretorio01_2/ 
cd ../../diretorio02/ 
cd diretorio02_1/ 
cd ../diretorio02_2/ 
cd diretorio02_2_1/
cd ../diretorio02_2_2/
cd ../diretorio02_2_3/
cd ../
cd ../../diretorio01/
cd ../diretorio02/diretorio02_2/diretorio02_2_3/
cd ~
