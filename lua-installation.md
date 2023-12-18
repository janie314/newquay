Getting Lua

- Extract/build Lua in: `~/.lua/lua-5.4.6/src/`
- Symlink `~/.local/bin/lua ~/.lua/lua-5.4.6/src/lua`
- Extract `luarocks-3.9.2` to a temp directory.
- `cd luarocks-3.9.2.`
- `./configure --with-lua-include=$(realpath ~/.lua/lua-5.4.6/src) --prefix=$(realpath ~/.lua)`
- Symlink `~/.local/bin/luarocks -> ~/.lua/bin/luarocks`