# LSP Installation

[[_TOC_]]

In order to use Neovim properly you have in install some LSPs!

Here are instructions to install the LSPs which Newquay supports.

## Deno

Supports JS/TS/JSX/TSX, JSON, Markdown.

1. [Install Deno](https://docs.deno.com/runtime/manual/getting_started/installation).

## Go

1. [Install Go](https://go.dev/doc/install), e.g. via

```shell
curl -sL https://janie.page/golang/dl/linux-amd64 | tar xvz --one-top-level=$HOME/.go --strip-components=1 && echo 'now make sure $HOME/.go/bin/ is in your PATH'
```

2. Install gopls:

```shell
go install golang.org/x/tools/gopls@latest
```

## Lua

1. Clone and build.

```shell
sudo dnf install ninja-build libstdc++-static
git clone https://github.com/LuaLS/lua-language-server
./lua-language-server/make.sh
```

2. Now make sure `lua-language-server` is in your PATH.

### Lua Formatter

```shell
cargo install stylua --features lua54
```

Usage

```shell
stylua --call-parentheses None --indent-type Spaces \
  --indent-width 2 --quote-style AutoPreferDouble --collapse-simple-statement Always .
```

## Ruby

1. [Install rbenv](https://github.com/rbenv/rbenv) and
   [ruby-build](https://github.com/rbenv/ruby-build#readme).

2. Within an individual repo:

```shell
bundle init
bundle add solargraph
```

## Rust

1. [Install Rust](https://www.rust-lang.org/learn/get-started).

2. Install rust-analyzer:

```shell
rustup component add rust-src
```
