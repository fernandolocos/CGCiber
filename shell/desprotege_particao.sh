#!/bin/bash

echo "Para desproteger somente a /home, digite: \"A1\""
echo "Para desproteger somente a /var, digite: \"A2\""
echo "Para desproteger somente a /usr, digite: \"A3\""
echo "Para desproteger todos as partições, digite \"todas\""

read opcao

case $opcao in
A1)
	mount -o remount,exec,suid /home
;;
A2)
	mount -o remount,exec,suid /var
;;
A3)
	mount -o remount,rw /usr
;;
todas)
	mount -o remount,exec,suid /home
	mount -o remount,exec,suid /var
	mount -o remount,rw /usr
;;
*)
	echo "opção inválida"
	exit 0;
esac

echo "Partição(ões) desprotegida(s)"
exit 0;
