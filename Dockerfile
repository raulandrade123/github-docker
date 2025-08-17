# Usamos una imagen ligera de Python
FROM python:3.11-slim

# Establecemos el directorio de trabajo
WORKDIR /app

# Copiamos el requirements.txt e instalamos dependencias
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copiamos el resto de la app
COPY . .

# Exponemos el puerto donde correrá Flask
EXPOSE 5000

# Comando para ejecutar la app
CMD ["python", "app.py"]
