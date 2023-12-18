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
find -name '*.lua' -exec ~/.lua/bin/lua-format -i --spaces-inside-functioncall-parens --no-use-tab --indent-width=2 --single-quote-to-double-quote --spaces-before-call=1 --spaces-inside-functioncall-parens --spaces-inside-functiondef-parens --align-table-field --spaces-inside-table-braces --break-after-table-lb  --break-before-table-rb {} \;
```

