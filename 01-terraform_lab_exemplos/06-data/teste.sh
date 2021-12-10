#!/bin/bash
#set -x

Count=5
echo "ainda nao esta pronto para conexão, tentativas restantes: ${Count}"

while Count=>1;
do
  sleep 1
  echo "ainda nao esta pronto para conexão, tentativas restantes: ${Count}"
  Count=Count-1
done

