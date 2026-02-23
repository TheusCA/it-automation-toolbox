#!/bin/bash
# ==============================================================================
# Script: auto_db_backup.sh
# Descrição: Realiza backup de arquivos/bancos e faz a rotação (apaga antigos).
# ==============================================================================

# Variáveis de configuração
SOURCE_DIR="/var/www/meus_projetos" # Diretório ou arquivo a ser salvo
BACKUP_DIR="/backup/diario"         # Onde o backup será salvo
RETENTION_DAYS=7                    # Quantos dias manter o backup
DATE=$(date +'%Y-%m-%d_%H-%M')
BACKUP_NAME="backup_app_${DATE}.tar.gz"

echo "[*] Iniciando rotina de backup..."

# Cria o diretório de backup caso não exista
mkdir -p "$BACKUP_DIR"

# Compacta os arquivos
tar -czf "${BACKUP_DIR}/${BACKUP_NAME}" "$SOURCE_DIR" 2>/dev/null

if [ $? -eq 0 ]; then
    echo "[+] Backup criado com sucesso: ${BACKUP_NAME}"
else
    echo "[-] Erro ao criar o backup!"
    exit 1
fi

# Rotina de limpeza: apaga arquivos mais velhos que RETENTION_DAYS
echo "[*] Limpando backups mais antigos que $RETENTION_DAYS dias..."
find "$BACKUP_DIR" -type f -name "*.tar.gz" -mtime +$RETENTION_DAYS -exec rm {} \;

echo "[+] Rotina finalizada!"