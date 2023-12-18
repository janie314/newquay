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
find -name '*.lua' -exec ~/.lua/bin/lua-format -i \
  --spaces-inside-functioncall-parens --align-parameter --no-use-tab \
  --indent-width=2 --chop-down-parameter --single-quote-to-double-quote \
  --spaces-inside-functioncall-parens --spaces-inside-functiondef-parens \
  --align-table-field --chop-down-table \
  --chop-down-kv-table --spaces-inside-table-braces {} \;
```

