# Loterias (LotoAtlas) — Guia UmbrelOS (Local)

Aplicação web moderna (React + TypeScript + Vite) para construção, auditoria matemática e conferência local de carteiras de apostas da **Lotofácil** e **Mega-Sena**.

Configurada para rodar **100% localmente no seu servidor Umbrel** através do Portainer ou Docker Compose.

---

## 🚀 Como Funciona no Umbrel

O sistema roda em um container Nginx ultraleve:
- **loterias_web:** Servidor Nginx servindo o frontend estático compilado, consumindo menos de 20 MB de RAM e 0% de GPU.
- **Porta:** `8090`
- **Privacidade total:** Toda a matemática e os dados de carteiras salvas rodam no navegador (IndexedDB local), sem enviar dados para a internet.

---

## 🌐 Endereços de Acesso

- **Na rede local (mesmo Wi-Fi do Umbrel):**
  - `http://umbrel.local:8090` ou `http://192.168.15.9:8090`
- **Fora de casa (via Tailscale):**
  - `http://100.123.132.62:8090`

---

## 📦 Como Subir no Portainer (Passo a Passo)

1. Abra o Portainer no seu navegador:
   👉 **http://192.168.15.9:9000**
2. Faça login com seu usuário e senha.
3. Clique no ambiente **local** (ou Primary).
4. No menu lateral esquerdo, clique em **Stacks** -> **Add stack**.
5. Dê o nome para a Stack: `loterias`.
6. Escolha o método:
   - **Opção A (Git Repository - Recomendado):**
     - Repository URL: `https://github.com/julianomasottialmeida/loterias.git`
     - Repository reference: `refs/heads/main`
     - Automatic updates: ative o polling para atualizar automaticamente quando der git push.
   - **Opção B (Web editor):**
     Cole o conteúdo do `docker-compose.yml` e clique em **Deploy the stack**.
7. Clique no botão **Deploy the stack**.
8. O Portainer fará o build do container e iniciará o sistema na porta 8090.
