-- Settings
require("settings")

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

require("telescope-setup")

require("noice-setup")

-- Treesitter for syntax highlighting
require("nvim-treesitter.configs").setup({
	ensure_installed = { "javascript", "lua", "python", "css", "html" }, -- add more if needed
	highlight = { enable = true },
})

-- Autopair
require("nvim-autopairs").setup()

vim.o.cursorline = true
vim.o.number = true
vim.o.relativenumber = true

--Theme Setup
vim.o.termguicolors = true
vim.o.background = "dark"

-- Optional: setup vscode.nvim if needed
require("vscode").setup({
	-- Enable transparent background
	transparent = false,
	italic_comments = true,
})

vim.cmd("colorscheme vscode")

-- Notification
vim.notify = require("notify")
require("notify").setup({
	stages = "fade", -- optional: slide/fade
	timeout = 3000, -- message disappears after 3 seconds
	background_colour = "#000000"
})
