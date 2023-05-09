#!/bin/bash

echo "Configurando Ambiente..."
echo "Criando diretórios..."

mkdir /publico /adm /ven /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Configurando permissões..."

chown root:GRP_ADM /adm/
chown root:GRP_VEN /ven/
chown root:GRP_SEC /sec/

chmod 777 /publico/
chmod 770 /adm/
chmod 770 /ven/
chmod 770 /sec/

echo "Criando usuários..."

useradd carlos -c "Carlos Antônio" -m -s /bin/bash -p $(openssl passwd -6 123456) -G GRP_ADM
passwd carlos -e

useradd maria -c "Maria Aparecida" -m -s /bin/bash -p $(openssl passwd -6 123456) -G GRP_ADM
passwd maria -e

useradd joao -c "João Medeiros" -m -s /bin/bash -p $(openssl passwd -6 123456) -G GRP_ADM
passwd joao -e

useradd debora -c "Débora Nascimento" -m -s /bin/bash -p $(openssl passwd -6 123456) -G GRP_VEN
passwd debora -e

useradd sebastiana -c "Sebastiana das Dores" -m -s /bin/bash -p $(openssl passwd -6 123456) -G GRP_VEN
passwd sebastiana -e

useradd roberto -c "Roberto Lopes" -m -s /bin/bash -p $(openssl passwd -6 123456) -G GRP_VEN
passwd roberto -e

useradd josefina -c "Josefina Lagos" -m -s /bin/bash -p $(openssl passwd -6 123456) -G GRP_SEC
passwd josefina -e

useradd amanda -c "Amanda Farias" -m -s /bin/bash -p $(openssl passwd -6 123456) -G GRP_SEC
passwd amanda -e

useradd rogerio -c "Rogério Dias" -m -s /bin/bash -p $(openssl passwd -6 123456) -G GRP_SEC
passwd rogerio -e

echo "Ambiente pronto!"
