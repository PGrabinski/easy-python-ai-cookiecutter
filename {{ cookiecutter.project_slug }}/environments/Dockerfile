FROM python:3.12.5-slim-bookworm

RUN apt-get -y update && \
    apt-get -y install git && \
    apt-get -y install pipx && \
    pipx ensurepath

ENV PYTHONFAULTHANDLER=1 \
  PYTHONUNBUFFERED=1 \
  PYTHONHASHSEED=random \
  PATH="$PATH:/root/.local/bin" \
  PIPX_DEFAULT_PYTHON=python3.12 \
  # Poetry's configuration:
  POETRY_NO_INTERACTION=1 \
  POETRY_VIRTUALENVS_CREATE=false \
  POETRY_CACHE_DIR='/var/cache/pypoetry' \
  POETRY_HOME='/usr/local'

RUN pipx install poetry

# After first poetry install, uncomment the following lines
# COPY pyproject.toml poetry.lock ./

# RUN poetry install --with=dev
