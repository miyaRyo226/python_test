FROM python:3.9-slim-buster
RUN apt-get update && apt-get install -y curl gcc \
    && curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain stable
ENV PATH="/root/.cargo/bin:$PATH"
RUN  pip install kuzukiri