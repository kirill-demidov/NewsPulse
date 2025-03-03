FROM python:3.12-slim

# Создание рабочей директории
WORKDIR /app

# Копирование файлов зависимостей
COPY requirements.txt .

# Установка зависимостей Python
RUN pip install --no-cache-dir -r requirements.txt

# Копирование исходного кода
COPY . .

# Переменные окружения
ENV FLASK_APP=app.py
ENV FLASK_DEBUG=False

# Cloud Run будет использовать переменную PORT
ENV PORT 8080

# Открытие порта
EXPOSE 8080

# Запуск приложения
CMD exec gunicorn --bind :$PORT app:app --workers 1 --threads 8 --timeout 0
