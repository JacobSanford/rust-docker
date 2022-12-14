FROM rust:1.63.0 AS chef
RUN cargo install cargo-chef
WORKDIR app

FROM chef AS planner
COPY . .
RUN cargo chef prepare --recipe-path recipe.json

FROM chef AS builder
COPY --from=planner /app/recipe.json recipe.json
RUN cargo chef cook --release --recipe-path recipe.json
COPY . .
RUN cargo build --release --bin rust-docker

FROM gcr.io/distroless/cc
COPY --from=builder /app/target/release/rust-docker /
CMD ["./rust-docker"]
