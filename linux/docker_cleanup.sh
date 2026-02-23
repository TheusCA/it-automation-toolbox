#!/bin/bash
# ==============================================================================
# Script: docker_cleanup.sh
# Descrição: Limpa containers parados, imagens sem uso e volumes órfãos.
# ==============================================================================

echo "🐳 Iniciando limpeza profunda do ambiente Docker..."

# Remove containers que não estão rodando
echo "-> Removendo containers parados..."
docker container prune -f

# Remove imagens "dangling" (sem tag/órfãs) e não utilizadas
echo "-> Removendo imagens não utilizadas..."
docker image prune -a -f

# Remove volumes que não estão atrelados a nenhum container
echo "-> Removendo volumes órfãos..."
docker volume prune -f

# Remove redes não utilizadas
echo "-> Removendo redes não utilizadas..."
docker network prune -f

echo "✅ Limpeza do Docker concluída com sucesso!"
docker system df