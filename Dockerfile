FROM python:3.8

WORKDIR /usr/src/app

# copy source 
COPY poetry.lock .
COPY pyproject.toml .
COPY ./webapp ./webapp

# install poetry
RUN pip install poetry==1.1.7

# install dependencies
RUN poetry install

# run server
CMD ["/usr/local/bin/poetry", "run", "start"]

EXPOSE 8000

