#!/bin/bash
set -e
cd /home/umbrel/loterias
git fetch origin main >/dev/null 2>&1
LOCAL=$(git rev-parse HEAD)
REMOTE=$(git rev-parse origin/main)

if [ "$LOCAL" != "$REMOTE" ]; then
    echo "[$(date)] Nova atualizacao detectada no GitHub ($REMOTE). Atualizando..."
    git pull origin main
    npm install
    npm run build
    systemctl --user restart loterias.service
    echo "[$(date)] Atualizacao concluida com sucesso!"
fi
