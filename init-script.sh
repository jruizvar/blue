#!/bin/bash

sudo apt-get update && apt-get install -y \
    build-essential \
    software-properties-common

curl -sSL https://install.python-poetry.org | POETRY_HOME=/etc/poetry python3 -

/etc/poetry/bin/poetry new /home/admin/app && cd /home/admin/app
/etc/poetry/bin/poetry add streamlit

echo "${streamlit_app}" | base64 --decode > streamlit_app.py 

/etc/poetry/bin/poetry run streamlit run streamlit_app.py --server.port 80