-- Plugins
require("plugins")

-- Git signs
require("gitsigns-config")

-- LSP Config
require("lsp")

-- Autocompletion & Snippets
require("cmp-config")

-- Formatting
require("formatters")

-- File Explorer
require("explorer")
vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

-- Keymaps
require("keymaps")


-- Treesitter for syntax highlighting
require("nvim-treesitter.configs").setup {
  ensure_installed = { "javascript", "lua", "python", "html", "css" },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}

-- Autopair
require("nvim-autopairs").setup()

vim.o.cursorline = true
vim.o.number = true
vim.o.relativenumber = true

