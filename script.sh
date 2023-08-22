#!/bin/bash

echo "Criando Diretórios..."

sudo mkdir /publico
sudo mkdir /adm
sudo mkdir /ven
sudo mkdir /sec

echo "Criando Grupos..."

sudo groupadd GRP_ADM
sudo groupadd GRP_VEN
sudo groupadd GRP_SEC

echo "Criando Usuários..."

sudo useradd carlos -c "Carlos" -s /bin/bash -p $(openssl passwd 123) -G GRP_ADM
sudo useradd maria -c "Maria" -s /bin/bash -p $(openssl passwd 123) -G GRP_ADM
sudo useradd joao -c "João" -s /bin/bash -p $(openssl passwd 123) -G GRP_ADM
sudo useradd debora -c "Debora" -s /bin/bash -p $(openssl passwd 123) -G GRP_VEN
sudo useradd sebastiana -c "Sebastiana" -s /bin/bash -p $(openssl passwd 123) -G GRP_VEN
sudo useradd roberto -c "Roberto" -s /bin/bash -p $(openssl passwd 123) -G GRP_VEN
sudo useradd josefina -c "Josefina" -s /bin/bash -p $(openssl passwd 123) -G GRP_SEC
sudo useradd Amanda -c "Amanda" -s /bin/bash -p $(openssl passwd 123) -G GRP_SEC