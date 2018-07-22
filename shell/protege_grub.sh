#!/bin/bash

echo "Para proteger somente o arquivo grub, digite: \"A1\""
echo "Para proteger somente o arquivo 00_header, digite: \"A2\""
echo "Para proteger somente o arquivo 10_linux, digite: \"A3\""
echo "Para proteger todos os arquivos, digite \"todos\""

read opcao

case $opcao in
A1)
	chattr +i /boot/grub/grub.cfg
;;
A2)
	chattr +i /etc/grub.d/00_header
;;
A3)
	chattr +i /etc/grub.d/10_linux
;;
todos)
	chattr +i /boot/grub/grub.cfg
	chattr +i /etc/grub.d/00_header
	chattr +i /etc/grub.d/10_linux
;;
*)
	echo "opção inválida"
	exit 0;
esac

echo "Arquivo(s) protegido(s)"
exit 0;
