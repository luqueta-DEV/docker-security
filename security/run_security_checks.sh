#!/bin/bash
#verificacao de seguranca

echo "Verificando containers em execucao..."
docker ps

echo "verificando regras..."
iptables -L
