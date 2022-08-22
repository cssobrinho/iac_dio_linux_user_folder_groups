#!/bin/bash

echo "Criando diterários ..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos dos usuários ..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários ..."

userad carlos -m -s /bin/bash - $(openssl passwd -crypt Senha123) -GRP_ADM
userad maria -m -s /bin/bash - $(openssl passwd -crypt Senha123) -GRP_ADM
userad joao -m -s /bin/bash - $(openssl passwd -crypt Senha123) -GRP_ADM

userad debora -m -s /bin/bash - $(openssl passwd -crypt Senha123) -GRP_VEN
userad sebastiana -m -s /bin/bash - $(openssl passwd -crypt Senha123) -GRP_VEN
userad roberto -m -s /bin/bash - $(openssl passwd -crypt Senha123) -GRP_VEN

userad josefina -m -s /bin/bash - $(openssl passwd -crypt Senha123) -GRP_SEC
userad amanda -m -s /bin/bash - $(openssl passwd -crypt Senha123) -GRP_SEC
userad reogerio -m -s /bin/bash - $(openssl passwd -crypt Senha123) -GRP_SEC

echo "Permissionamento de acesso aos diretórios ..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim!" 