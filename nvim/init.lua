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
require("keymaps-config")

require("telescope-setup")

require("noice-setup")

require("config.autocmds")
require("config.commands")
require("config.options")
require("config.statusline")

-- Treesitter for syntax highlighting
require('nvim-treesitter.configs').setup({
  ensure_installed = {
    "lua", "javascript", "typescript", "html", "css", "json",
    "bash", "python", "markdown", "tsx", "vim", "gitignore"
  },
  sync_install = false,
  auto_install = true,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },

  indent = {
    enable = true,
  },

  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "<C-space>",
      node_incremental = "<C-space>",
      scope_incremental = "<C-s>",
      node_decremental = "<C-backspace>",
    },
  },

  textobjects = {
    select = {
      enable = true,
      lookahead = true,
      keymaps = {
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ac"] = "@class.outer",
        ["ic"] = "@class.inner",
      },
    },
  },
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
  timeout = 3000,  -- message disappears after 3 seconds
  background_colour = "#000000"
})
