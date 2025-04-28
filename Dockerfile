FROM php:8.3-fpm

# Instala dependências do PHP e ferramentas básicas
RUN apt-get update && apt-get install -y \
    unzip \
    curl \
    zip \
    git \
    libonig-dev \
    libzip-dev \
    libpng-dev \
    libxml2-dev \
    libsqlite3-dev \
    libicu-dev \
    && docker-php-ext-install pdo pdo_sqlite zip intl

# Instala o Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Instala Node.js e npm
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash - \
    && apt-get install -y nodejs

# Define o diretório de trabalho
WORKDIR /var/www

# Corrige permissões para diretórios usados pelo Laravel
RUN mkdir -p /var/www/storage /var/www/bootstrap/cache \
    && chown -R www-data:www-data /var/www/storage /var/www/bootstrap/cache \
    && chmod -R 775 /var/www/storage /var/www/bootstrap/cache

# Exibe versões para depuração
RUN php -v && composer --version && node -v && npm -v