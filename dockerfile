FROM python:3

COPY requirements.txt .
RUN pip3 install --upgrade pip && \
    pip3 install -r requirements.txt && \
    pip install jupyterlab && \
    rm requirements.txt

WORKDIR /src
COPY /src /src