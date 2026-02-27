FROM python:3.10-slim

RUN apt-get update && apt-get install -y git \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /TheMovieProviderBot

COPY . .

RUN chmod +x start.sh

RUN pip install --upgrade pip \
    && pip install -r requirements.txt

CMD ["bash", "start.sh"]
