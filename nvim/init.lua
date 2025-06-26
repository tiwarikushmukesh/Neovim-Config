-- Load plugins
require("plugins")

-- Load LSP config
require("lsp")

-- Load keymaps
require("keymaps")

require("cmp-config")
require("formatters")
require("explorer")
vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>", { noremap = true, silent = true })



require'nvim-treesitter.configs'.setup {
  ensure_installed = { "javascript", "lua", "python", "html", "css" },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}

