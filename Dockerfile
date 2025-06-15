# Use official WordPress image (multi-arch, supports ARM)
FROM wordpress:6.5.3-php8.2-apache

# Copy custom .htaccess if needed (uncomment if you want to overwrite)
# COPY .htaccess /var/www/html/.htaccess

# Set recommended PHP settings (optional)
# RUN docker-php-ext-install mysqli

# Expose port 80
EXPOSE 80

# Healthcheck (optional)
HEALTHCHECK --interval=30s --timeout=10s --start-period=30s --retries=3 \
  CMD curl -f http://localhost/ || exit 1 