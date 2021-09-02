FROM python:3.8
WORKDIR /app

# copy source
COPY webapp webapp 
COPY poetry.lock .
COPY pyproject.toml .

# install poetry
RUN pip install poetry

# install dependencies
RUN poetry install 

EXPOSE 8000:8000
