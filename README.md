# Personal Budget Wallet 💼

Bem-vindo ao **Personal Budget Wallet**! Este é um projeto pessoal desenvolvido para ajudar no gerenciamento eficiente de **recebimentos**, **pagamentos** e **empréstimos**. A aplicação foi projetada para ser leve, moderna e fácil de usar.

## 🌟 Objetivo

O objetivo principal do **Personal Budget Wallet** é fornecer uma ferramenta confiável para o gerenciamento de recursos financeiros, com foco em simplicidade e funcionalidade. Com ele, você pode acompanhar suas transações, gerar relatórios e organizar suas finanças de forma prática.

---

## 🧰 Tecnologias Utilizadas

- **Backend**:
  - [PHP](https://www.php.net/) com [Filament](https://filamentphp.com/) para criação de painéis administrativos.
  - Banco de dados [SQLite](https://www.sqlite.org/index.html) para uma solução leve e portátil.
- **Frontend**:
  - [React](https://react.dev/) para a construção de interfaces modernas e dinâmicas.
- **Infraestrutura**:
  - [Node.js](https://nodejs.org/) para suporte a funcionalidades adicionais no frontend.
  - **Docker** para containerização e execução consistente em qualquer ambiente.

---

## 🚀 Funcionalidades

- **Gerenciamento de recursos financeiros**:
  - Registro de **recebimentos**, **pagamentos** e **empréstimos**.
  - Controle de saldos e histórico de transações.
- **Interface administrativa**:
  - Painel administrativo criado com [Filament](https://filamentphp.com/), facilitando o gerenciamento de dados.
- **Relatórios detalhados**:
  - Visualização de relatórios financeiros claros e objetivos.
- **Responsividade**:
  - Interface otimizada para dispositivos móveis e desktops.

---

## 🛠️ Configuração e Execução

### Pré-requisitos

- [Docker](https://www.docker.com/) instalado na máquina.

### Passos para rodar o projeto

1. Clone o repositório:
   ```bash
   git clone https://github.com/seu-usuario/personal-budget-wallet.git
   cd personal-budget-wallet
   ```

2. Suba os containers com o Docker:
   ```bash
   docker-compose up -d
   ```

3. Acesse o painel administrativo no navegador em:
   ```
   http://localhost:8000
   ```

4. O frontend estará disponível em:
   ```
   http://localhost:3000
   ```

---

## 📸 Capturas de Tela

| **Dashboard**             | **Relatórios de Transações**  |
|---------------------------|-------------------------------|
| ![Dashboard](docs/dashboard.png) | ![Relatórios](docs/reports.png) |

---

## 🤝 Contribuição

Contribuições são bem-vindas! Se você deseja melhorar o projeto, siga os passos abaixo:

1. Faça um fork do repositório.
2. Crie um branch para sua feature ou correção:
   ```bash
   git checkout -b minha-feature
   ```
3. Envie um pull request explicando suas alterações.

---

## 📄 Licença

Este projeto está licenciado sob a Licença MIT. Consulte o arquivo [LICENSE](LICENSE) para mais informações.

---

### 🌟 Dicas Visuais para README.md

Para deixar seu `README.md` mais atrativo, utilize ícones e badges:
- **Ícones**: Explore bibliotecas como [Icons8](https://icons8.com/), [Flaticon](https://www.flaticon.com/) ou [Twemoji](https://github.com/twitter/twemoji).
- **Badges**: Gere etiquetas personalizadas com [Shields.io](https://shields.io/).

Exemplo de badge:
```markdown
![Docker](https://img.shields.io/badge/docker-enabled-blue) ![PHP](https://img.shields.io/badge/PHP-8.1%2B-blue) ![React](https://img.shields.io/badge/React-18.0%2B-blue)
```

Resultado:
![Docker](https://img.shields.io/badge/docker-enabled-blue) ![PHP](https://img.shields.io/badge/PHP-8.1%2B-blue) ![React](https://img.shields.io/badge/React-18.0%2B-blue)