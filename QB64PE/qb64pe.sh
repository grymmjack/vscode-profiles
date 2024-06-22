#!/usr/bin/env bash
bin="/home/grymmjack/git/QB64pe/qb64pe"
extension="${3##*.}"
if [[ "${extension}" != "BAS" || "${extension}" != "bas" ]]; then
    echo -e "\033[91;101;1;37m ***  WARNING: YOU ARE TRYING TO COMPILE A NON .BAS FILE! *** \033[0m"
fi
"${bin}" "${@}"