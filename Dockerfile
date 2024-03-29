FROM tiangolo/uvicorn-gunicorn-fastapi:python3.8 AS asyncapi
ENV APPDIR /app
WORKDIR ${APPDIR}
# Install Poetry
RUN curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | POETRY_HOME=/opt/poetry python && \
    cd /usr/local/bin && \
    ln -s /opt/poetry/bin/poetry && \
    poetry config virtualenvs.create false
# Copy using poetry.lock* in case it doesn't exist yet
COPY pyproject.toml poetry.lock* ${APPDIR}
# install python lib
RUN poetry install --no-dev --no-root

# init db using aerich
COPY prestart.sh ${APPDIR}

COPY app ${APPDIR}/app
