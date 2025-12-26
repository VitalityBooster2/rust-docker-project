FROM rust:1.75-slim
WORKDIR /usr/src/rust-ci-demo
COPY . .

RUN cargo check


RUN cargo build --release
RUN cargo test --verbose
CMD ["./target/release/main"]
