#!/bin/bash
# ==============================================================================
# Script: server_health_check.sh
# Descrição: Exibe um relatório rápido de uso de recursos do servidor Linux.
# ==============================================================================

echo "============================================="
echo "   📊 Relatório de Saúde do Servidor   "
echo "   Data: $(date '+%d/%m/%Y %H:%M:%S')  "
echo "============================================="

echo -e "\n[1] TEMPO ATIVO E CARGA DO SISTEMA (UPTIME):"
uptime

echo -e "\n[2] USO DE MEMÓRIA RAM:"
free -h

echo -e "\n[3] USO DE DISCO (Partições Principais):"
df -h | grep -E '^/dev/|^Filesystem'

echo -e "\n[4] TOP 5 PROCESSOS CONSUMINDO MAIS CPU:"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 6

echo -e "\n============================================="
echo "             Fim do Relatório                "
echo "============================================="