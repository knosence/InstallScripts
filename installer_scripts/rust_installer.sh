#! /bin/bash

curl https://sh.rustup.rs -sSf | sh

source $HOME/.cargo/env

rustup component add rust-src
rustup component add rust-docs

rustup update

rustup toolchain install nightly

rustup default nightly

rustup override set nightly


