#!/bin/bash

# usado para criar uma barra de loading
bar() 
{
	bar='####################'
	for i in {1..20}; do
	    echo -ne "\r$1... ${bar:0:$i}"
	    sleep .05                 
	done
}

# limpa a tela e pergunta o nome
clear
echo "Bom dia! Qual o seu nome?"

# ler o nome
read name
clear

# se for a senhora dá um 'oi' diferente
if [ $name = Daniella ] || [ $name = daniella ]; then
	echo "Olá, professora!"
else
	echo "Olá, $name!"
fi

# ler as notas
echo "Quantas notas? "
read n_notas

soma=0

for (( i=1; i<=n_notas; i++ )) do
	echo "Digite a nota $i:"
	read nota
	soma=$((soma + nota))
done

# calcular a média
media=$(bc <<< "scale=0; $soma / $n_notas")

# mostra a barra de carregamento
echo ""
bar Calculando
echo ""

echo "A média entre as notas é: $media"

echo ""
echo ""

if [ $media -lt 40 ]; then
	# informar que o aluno está reprovado caso a média seja menor que 40
	echo "Você está Reprovado. Não têm direito a final."
elif [ $media -lt 70 ]; then

	# calculo de quanto precisa na final
	v1=$((500 - (6 * $media)))
	v2=`echo "scale=1;$v1/4" | bc`
	v3=`echo "$v2+0.5" | bc`
	precisa=`echo -n ${v3:0:2}`

	# mostrar na tela o resultado
	echo "Você têm direito à Avaliação Final, precisando de $precisa pontos!"

else
	# dizer que está aprovado
	echo "Você está Aprovado!"
fi

# parabenizar se o aluno conseguir nota 100
if [ $media -eq 100 ]; then
	echo "Parabéns!"
fi

exit 0
