# Официальный образ python
FROM python:3.10

# Рабочая директория
WORKDIR /code

# Копируем requirements в рабочую директорию
COPY ./requirements.txt /code/requirements.txt

# Устанавливаем зависимости
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

# Копируем весь код в рабочую директорию
COPY ./app /code/app

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]
