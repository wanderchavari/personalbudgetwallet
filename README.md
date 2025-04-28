# 🧱 Projeto Base - Laravel + Filament + Docker

Este é um projeto base para aplicações em Laravel com painel administrativo utilizando [Filament PHP](https://filamentphp.com/), totalmente containerizado com Docker.

---

## 🚀 Tecnologias Utilizadas

- PHP 8.3 (via Docker)
- Laravel 11
- Filament v3
- MySQL 8.0
- Docker + Docker Compose
- Nginx

---

## 📦 Requisitos

- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)
- Conta no [GitHub](https://github.com/) (opcional)

---

## ⚙️ Como usar

### 1. Clone o projeto

```bash
git clone https://github.com/seu-usuario/personalbudgetwallet.git
cd personalbudgetwallet
```

### 2. Configure o ambiente

Copie o arquivo `.env.example` para criar seu arquivo de ambiente `.env`:

```bash
cp .env.example .env
```

Se estiver usando Docker pela primeira vez, também pode ser necessário configurar as permissões de pastas:

```bash
chmod -R 775 storage bootstrap/cache
```

### 3. Suba os containers com Docker

Execute o comando abaixo para iniciar os containers do projeto:

```bash
docker-compose up -d --build
```
Esse comando irá:

- Construir a imagem do PHP com todas as dependências necessárias
- Iniciar os serviços: PHP, MySQL e Nginx
- Disponibilizar a aplicação Laravel em: [http://localhost:8000](http://localhost:8000)

> 💡 Certifique-se de que as portas `8000` (Laravel) e `3306` (MySQL) estejam livres no seu sistema.

### 4. Acesse o container PHP

Execute o seguinte comando para abrir um terminal dentro do container da aplicação PHP:

```bash
docker exec -it php_app bash
```
Esse comando irá:

- Abrir um terminal interativo (`bash`) dentro do container chamado `php_app`
- Permitir que você execute comandos internos da aplicação, como `composer`, `php artisan`, entre outros

### 5. Instale dependências e configure o Laravel

Com o terminal aberto dentro do container `php_app`, execute os seguintes comandos:

```bash
composer install
php artisan key:generate
php artisan migrate
php artisan filament:install --panels
php artisan make:filament-user
```
Esses comandos irão:

- Instalar todas as dependências do projeto definidas no `composer.json`
- Gerar a chave de criptografia da aplicação Laravel (`APP_KEY`)
- Criar as tabelas padrão do banco de dados com as migrações
- Instalar o Filament Admin Panel no projeto
- Criar um usuário administrador para acesso ao painel `/admin`

## 🌐 Acessos

Após subir os containers e configurar o Laravel, acesse:

- Aplicação Laravel: [http://localhost:8000](http://localhost:8000)
- Painel Admin Filament: [http://localhost:8000/admin](http://localhost:8000/admin)

## 🔐 Usuário Admin

Durante o comando:

```bash
php artisan make:filament-user
```
Você deverá informar:

- **Nome**
- **E-mail**
- **Senha**

Essas credenciais serão usadas para fazer login no painel administrativo em:  
[http://localhost:8000/admin](http://localhost:8000/admin)

## 📁 Estrutura de Diretórios

Abaixo está a estrutura básica do projeto `personalbudgetwallet`:

```text
personalbudgetwallet/
├── app/                    # Código da aplicação (controllers, models, policies etc.)
├── bootstrap/              # Arquivos de inicialização do Laravel
├── config/                 # Arquivos de configuração da aplicação
├── database/               # Migrations, seeders e factories
├── docker/                 # Configurações específicas para Docker (ex: nginx.conf)
├── public/                 # Pasta pública (index.php, assets)
├── resources/              # Views Blade, arquivos Vue/JS e SCSS
├── routes/                 # Arquivos de rotas web, api, console
├── storage/                # Arquivos gerados (logs, cache, uploads)
├── tests/                  # Testes automatizados (PHPUnit)
├── .env.example            # Arquivo de exemplo para variáveis de ambiente
├── composer.json           # Dependências PHP
├── Dockerfile              # Definição do container PHP
├── docker-compose.yml      # Orquestração dos containers
└── README.md               # Documentação do projeto
```

## 🛠️ Comandos Úteis

Alguns comandos comuns para gerenciar o projeto:

```bash
docker-compose up -d         # Iniciar os containers
docker-compose down          # Parar os containers
docker exec -it php_app bash # Acessar o container PHP
php artisan migrate          # Rodar as migrações do banco de dados
php artisan db:seed          # Rodar os seeders (se houver)
php artisan config:clear     # Limpar o cache de configuração
```

## 📝 Licença

Este projeto está licenciado sob a licença [MIT](LICENSE).

Você é livre para usar, copiar, modificar, mesclar, publicar, distribuir, sublicenciar e/ou vender cópias do projeto, desde que preserve o aviso de copyright original.

