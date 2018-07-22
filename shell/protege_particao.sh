#!/bin/bash

echo "Para proteger somente a /home, digite: \"A1\""
echo "Para proteger somente a /var, digite: \"A2\""
echo "Para proteger somente a /usr, digite: \"A3\""
echo "Para proteger todos as partições, digite \"todas\""

read opcao

case $opcao in
A1)
	mount -o remount,noexec,nosuid /home
;;
A2)
	mount -o remount,noexec,nosuid /var
;;
A3)
	mount -o remount,ro /usr
;;
todas)
	mount -o remount,noexec,nosuid /home
	mount -o remount,noexec,nosuid /var
	mount -o remount,ro /usr
;;
*)
	echo "opção inválida"
	exit 0;
esac

echo "Partição(ões) protegida(s)"
exit 0;
