# Getting Lua

- Install cmake
- Extract/build Lua in: `~/.lua/lua-5.4.6/src/`
- Symlink `~/.local/bin/lua ~/.lua/lua-5.4.6/src/lua`
- Extract `luarocks-3.9.2` to a temp directory.
- `cd luarocks-3.9.2.`
- `./configure --with-lua-include=$(realpath ~/.lua/lua-5.4.6/src) --prefix=$(realpath ~/.lua)`
- Symlink `~/.local/bin/luarocks -> ~/.lua/bin/luarocks`

# Lua Formatter

```shell
cargo install stylua --features lua54
```

Usage

```shell
stylua --call-parentheses None --indent-type Spaces \
  --quote-style AutoPreferDouble --collapse-simple-statement Always .
```

