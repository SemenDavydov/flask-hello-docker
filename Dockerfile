#Базовый образ
FROM python:3.10-slim

#Установка рабочей директории
WORKDIR /app

#Копируем файлы проекта
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY app.py .

#Указываем порт
EXPOSE 5000

#Команда для запуска
CMD ["python", "app.py"]