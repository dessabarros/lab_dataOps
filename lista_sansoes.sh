#!/bin/bash
# laboratorio DataOps
# Andressa Barros [andbar.oliveira@gmail.com]
echo -e "\e[1;34mLocalizando base CEIS em portal de transparencia\e[0m"

# DATE FORMAT
_dfile=$(date "+%Y%m%d")

wget -q -o /dev/null --spider https://portaldatransparencia.gov.br/download-de-dados/ceis/$_dfile && \
echo -e Baixando Bases CEIS de $_dfile $(wget -r -nH \
              --cut-dirs=2 --no-parent  \
              --reject="index.html*" \
              -O "base_CEIS.zip" https://portaldatransparencia.gov.br/download-de-dados/ceis/$_dfile -q --show-progress) \
              || echo Base CEIS nao Localizada em $_dfile, data import cancelado

echo -e
echo -e "Finalizando Task ...$(sleep 3;ls -lrht)"
echo -e