local null_ls = require "null-ls"

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  b.formatting.deno_fmt, -- choosed deno for ts/js files cuz its very fast!
  b.formatting.prettier.with { filetypes = { "html", "markdown", "css", "typescript", "javascript", "typescriptreact", "javacriptreact"} }, -- so prettier works only on these filetypes
  -- print(b.diagnostics.eslint[0]),
  -- b.diagnostics.eslint,
  -- b.formatting.eslint,
  -- Lua
  b.formatting.stylua,

  -- cpp
  b.formatting.clang_format,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
