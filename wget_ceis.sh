#!/bin/bash
#
echo -e "baixando base do portal"
wget -r -np -R "index.html*" --cut-d//portaldatransparencia.gov.br/download-de-dados/ceis/$(date "+%Y%m%d") -O 'ceis.zip'
