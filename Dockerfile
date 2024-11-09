# Usa una imagen base de Python
FROM python:3.9-slim

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia los archivos del proyecto al contenedor
COPY . /app

# Instala Flask
RUN pip install --no-cache-dir -r requirements.txt

# Expone el puerto 5000 para que la aplicación sea accesible
EXPOSE 5000

# Define el comando para ejecutar la aplicación
CMD ["python", "app.py"]
