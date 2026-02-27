FROM python:3.10-slim

RUN apt-get update && apt-get install -y git \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /TheMovieProviderBot

COPY requirements.txt .

RUN pip install --upgrade pip \
    && pip install -r requirements.txt

COPY . .

RUN chmod +x /start.sh

CMD ["/bin/bash", "/start.sh"]
