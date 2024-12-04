# Étape 1 : Utiliser une image de base avec Apache
FROM httpd:2.4

# Étape 2 : Copier les fichiers HTML dans le dossier approprié
# Le dossier par défaut pour les fichiers web dans Apache est /usr/local/apache2/htdocs/
COPY ./html/ /usr/local/apache2/htdocs/

# Étape 3 : Exposer le port 80 pour le trafic HTTP
EXPOSE 80

# Étape 4 : Commande par défaut pour démarrer Apache
CMD ["httpd-foreground"]
