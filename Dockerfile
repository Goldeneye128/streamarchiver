FROM alpine:3.18

WORKDIR /app

COPY . .

RUN apk add --no-cache python3
RUN apk add --no-cache py3-pip
RUN apk add --no-cache ffmpeg
RUN apk add --no-cache yt-dlp
RUN python3 -m pip install --user pipx
RUN python3 -m pipx ensurepath
RUN pipx install streamlink
RUN pipx install twitch-dl

CMD ["echo", "Hello world"]
