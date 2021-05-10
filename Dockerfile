FROM tiangolo/uvicorn-gunicorn-fastapi:python3.8 AS asyncapi
ENV APPDIR /app
WORKDIR ${APPDIR}
# Install Poetry
RUN curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | POETRY_HOME=/opt/poetry python && \
    cd /usr/local/bin && \
    ln -s /opt/poetry/bin/poetry && \
    poetry config virtualenvs.create false
COPY . ${APPDIR}
RUN poetry install --no-dev --no-root
