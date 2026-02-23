# ⚙️ IT Automation Toolbox

Este repositório é uma coleção de scripts de automação criados para simplificar tarefas diárias de infraestrutura, suporte e cultura DevOps. Contém ferramentas desenvolvidas tanto para ambientes Windows como para servidores Linux.

## 🚀 O que vai encontrar aqui

### 🪟 Windows (`/windows`)
- **`windows_debloat.bat`**: Script automatizado para otimização extrema e limpeza de ambientes Windows 10/11. Desativa telemetria, remove bloatwares nativos, ajusta a privacidade e aplica o plano de energia de alta performance.

### 🐧 Linux & DevOps (`/linux`)
- **`server_health_check.sh`**: Gera um relatório rápido de consumo de CPU, RAM e Disco, além de listar os processos mais pesados do servidor.
- **`auto_db_backup.sh`**: Rotina de backup com compactação que inclui política de retenção (exclui automaticamente backups com mais de 7 dias).
- **`docker_cleanup.sh`**: Script de faxina para ambientes Docker, removendo containers parados, imagens órfãs e volumes não utilizados para libertação de disco.

---

## ⚙️ Como executar os scripts

### No Windows (Ficheiros `.bat` / `.ps1`)
Para garantir que os scripts de otimização conseguem alterar chaves de registo e serviços do sistema, é obrigatório executá-los com privilégios elevados.
1. Faça o download ou clone o repositório.
2. Navegue até à pasta `/windows`.
3. Clique com o botão direito do rato sobre o ficheiro desejado (ex: `windows_debloat.bat`).
4. Selecione **"Executar como Administrador"**.

### No Linux (Ficheiros `.sh`)
No Linux, os ficheiros precisam de permissão explícita para serem executados como programas.
1. Abra o terminal e navegue até à pasta `/linux`:
   ```bash
   cd linux
chmod +x nome_do_script.sh

./nome_do_script.sh
# ou
sudo ./nome_do_script.sh
