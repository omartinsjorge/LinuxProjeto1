#!/bin/bash

echo "Criando diretórios linux..."
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos..."
groupadd ADM
groupadd VEN
groupadd SEC

echo "Criando usuários.."
useradd carlos -m -s /bin/bash -p $(openssl passwd Senha123) -G ADM
useradd maria -m -s /bin/bash -p $(openssl passwd Senha123) -G ADM
useradd joao -m -s /bin/bash -p $(openssl passwd Senha123) -G ADM

useradd debora -m -s /bin/bash -p $(openssl passwd Senha123) -G VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd Senha123) -G VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd Senha123) -G VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd Senha123) -G SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd Senha123) -G SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd Senha123) -G SEC

echo "Especificando permissões dos diretórios.."

chown root:ADM /adm
chown root:VEN /ven
chown root:SEC /sec
