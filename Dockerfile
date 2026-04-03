FROM rust:trixie

RUN apt-get update && apt-get install -y libpipewire-0.3-dev pkg-config clang

WORKDIR /src
COPY . .

RUN cargo install --path .

