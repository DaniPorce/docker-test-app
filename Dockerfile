# Usa un'immagine base Python
FROM python:3.8-slim

# Imposta la directory di lavoro
WORKDIR /app

# Copia il file requirements.txt e installa le dipendenze
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copia il resto dell'applicazione
COPY . .

# Espone la porta su cui Flask gira
EXPOSE 5000

# Comando per avviare l'app Flask
CMD ["python", "app.py"]
