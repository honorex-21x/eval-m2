# Utiliser l'image Python 3.9-slim
FROM python:3.9-slim

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier le fichier requirements.txt dans le conteneur
COPY requirements.txt .

# Installer les dépendances Python
RUN pip install --no-cache-dir -r requirements.txt

# Copier tous les fichiers dans le conteneur
COPY . .

# Exposer le port 8000
EXPOSE 8000

# Lancer l'application FastAPI avec Uvicorn
CMD ["uvicorn", "mini-groq:app", "--host", "0.0.0.0", "--port", "8000"]

