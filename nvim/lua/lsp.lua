require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "ts_ls", "html", "cssls", "pyright" },
})

local lspconfig = require("lspconfig")
local util = require("lspconfig/util")

-- tsserver with root dir
lspconfig.ts_ls.setup({
  root_dir = util.root_pattern("package.json", "tsconfig.json", ".git"),
})

lspconfig.html.setup({})
lspconfig.cssls.setup({})
lspconfig.pyright.setup({})

