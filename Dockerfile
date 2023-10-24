# Utilisez une image Node.js pour construire votre application React
FROM node:14

# Définissez le répertoire de travail
WORKDIR /app

# Copiez le package.json et le package-lock.json pour installer les dépendances
COPY package*.json ./

# Installez les dépendances
RUN npm install

# Copiez le reste de l'application
COPY . .

# Exposez le port 3000 pour l'application React
EXPOSE 3000

# Commande pour démarrer l'application
CMD ["npm", "start"]
