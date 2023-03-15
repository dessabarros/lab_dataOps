# lab_dataOps
# Overview task lab

TODO : Criar rotina automatizada para baixar base .zip do dia

No link [base sansoes](https://portaldatransparencia.gov.br/download-de-dados/ceis/20230313)

# Soluções proposta
- Criar rotinas em Shell e Python e verificar qual a melhor.

# Rotina com Shell
> Shell
- Usando wget para checar se existe a base no local e baixar ela
```
#!/bin/bash
# Baixando base CEIS em folder portaldatransparencia
echo -e "baixando base do portal"
wget -r -np -R "index.html*" --cut-d//portaldatransparencia.gov.br/download-de-dados/ceis/$(date "+%Y%m%d") -O 'ceis.zip'

```
