FROM python:3.10.11

RUN apt update && \
    apt install -y \
      ffmpeg \
      && \
    apt clean all

RUN pip install -U openai-whisper
RUN pip install setuptools-rust
