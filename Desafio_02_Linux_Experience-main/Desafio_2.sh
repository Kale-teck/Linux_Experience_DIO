#!/bin/bash

echo "Criando diretórios...."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd carlos -m -s /bin/bash
passwd carlos
usermod carlos -G GRP_ADM

useradd maria -m -s /bin/bash
passwd maria 
usermod maria -G GRP_ADM

useradd joao -m -s /bin/bash
passwd joao
usermod joao -G GRP_ADM

useradd debora -m -s /bin/bash
passwd debora
usermod debora -G GRP_VEN

useradd sebastiana -m -s /bin/bash
passwd sebastiana 
usermod sebastiana -G GRP_VEN

useradd roberto -m -s /bin/bash
passwdd roberto
usermod roberto -G GRP_VEN

useradd josefina -m -s /bin/bash
passwd josefina 
usermod josefina -G GRP_SEC

useradd amanda -m -s /bin/bash
passwd amanda
usermod amanda -G GRP_SEC

useradd rogerio -m -s /bin/bash
passwd rogerio
usermod rogerio -G GRP_SEC

echo  "Especificando acessos dos diretórios"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Prontinho..."

