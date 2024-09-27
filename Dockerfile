# Utiliser une image Python légère
FROM python:3.9-slim

# Définir le répertoire de travail
WORKDIR /app

# Copier les dépendances et les installer
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copier tout le code de l'application
COPY . .

# Exposer le port 8000
EXPOSE 8000

# Démarrer l'application avec Uvicorn
CMD ["uvicorn", "mini-groq:app", "--host", "0.0.0.0", "--port", "8000"]

