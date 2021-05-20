#!/bin/bash

echo -e "ARQUIVOS EXISTENTES:\n"; ls

read -p "qual arquivo você gostaria de alterar as permissoes?" op

if [ -f $op ]; then 
	echo $op
	echo -e "leitura\nescrita\nexecutação"
	read -p "você gostaria de alterar que permissoes?" op1

	[ $op1 == "leitura" ] && chmod +r $op 
	[ $op1 == "escrita" ] && chmod +w $op 
	[ $op1 == "executação" ] && chmod +x $op
	


	
else

	echo "arquivo não encontrado!"
fi
