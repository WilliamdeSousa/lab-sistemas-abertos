#!/bin/bash

echo "Bom dia, qual o seu nome?"
read name
if [ $name==Daniella ]; then
	echo "Oi, professora!"
fi
echo "Qual foi sua média?"
read media
for i in `seq 1 10`
do
	clear
	echo "Carregando $i/10"
done
clear
echo "A situação do aluno $nome com média de $media é"
if [ media -lt 40 ]; then
	echo "Reprovado"
elif [ media -lt 70 ]; then
	echo "Recuperação"
else
	echo "Aprovado"
fi
if [ media -eq 100 ]; then
	echo "Parabéns!"
fi
