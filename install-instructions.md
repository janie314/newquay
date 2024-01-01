# LSP Installation

In order to use Neovim properly you have in install some LSPs!

Here are instructions to install the LSPs which Newquay supports.

## Lua

```shell
sudo dnf install ninja-build libstdc++-static
cd ~
git clone https://github.com/LuaLS/lua-language-server
./lua-language-server/make.sh
```

## Ruby

1. Install rbenv.
1. `gem install solargraph`
