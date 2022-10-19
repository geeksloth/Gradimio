FROM ubuntu:latest
RUN apt-get update
RUN apt-get install -y \
    python3 \
    python3-pip \
    git
RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install \
    gradio
WORKDIR /
RUN git clone https://github.com/geeksloth/gradimio.git
WORKDIR /gradimio
CMD ["python3", "main.py"]