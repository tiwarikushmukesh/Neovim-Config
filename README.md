# ⚡️ Neovim IDE Setup

A blazing fast, VSCode-style Neovim configuration with LSP, debugging, fuzzy finding, diagnostics, Git tools, and modern UI — optimized for keyboard productivity.

---

## 🚀 Features

- ⚙️ Full LSP support via `mason.nvim` and `lspconfig`
- 🧠 Autocompletion with `nvim-cmp`, `LuaSnip`, and `autopairs`
- 🧾 Snippets with context-aware tabbing (`LuaSnip`)
- 🌲 Treesitter syntax highlighting and parsing
- 🗂️ File explorer using `nvim-tree` and devicons
- 💡 Inlay hints, hover documentation, and signature help
- 🚨 Inline and floating diagnostics with deduplication
- 🔍 Fuzzy finder and live grep with `telescope.nvim`
- 🐛 Debugging with `nvim-dap` and `dap-ui`
- 📄 Markdown live preview in browser
- 📌 Problems panel with `trouble.nvim`
- 🔔 Modern notifications using `nvim-notify`
- 💬 Command and message UI via `noice.nvim`
- 🖥️ Toggle terminal with `Ctrl + t`
- 🏁 VSCode-style start screen with `alpha-nvim`
- 🧼 Autoformatting with `none-ls.nvim`
- 🧾 Git integration via `gitsigns.nvim` and `vim-fugitive`
- 🎨 Beautiful VSCode-like theme with `vscode.nvim`

---

## ⌨️ Keyboard Shortcuts

| Shortcut   | Action                              |
| ---------- | ----------------------------------- |
| `Space ff` | Find files via Telescope            |
| `Space fg` | Live grep (search text)             |
| `Space fb` | Switch buffers                      |
| `Space rn` | Rename variable/function            |
| `Space ca` | Show code actions                   |
| `gd`       | Go to definition                    |
| `gr`       | Find references                     |
| `gi`       | Go to implementation                |
| `K`        | Hover documentation                 |
| `Space e`  | Show diagnostic message popup       |
| `Ctrl + e` | Show error message (insert mode)    |
| `Space xx` | Toggle Problems panel (via Trouble) |
| `F5`       | Start/continue debugging (DAP)      |
| `F10`      | Step over (DAP)                     |
| `F11`      | Step into (DAP)                     |
| `F12`      | Step out (DAP)                      |
| `Space b`  | Toggle breakpoint                   |
| `Space dr` | Open debug REPL                     |
| `Ctrl + s` | Save file                           |
| `Ctrl + q` | Quit file                           |
| `Space r`  | Reload current Lua file             |
| `Ctrl + t` | Toggle terminal                     |
| `Space nd` | Dismiss Noice messages              |
| `Space nt` | Toggle notifications on/off         |

---

## 📦 Plugin Stack

- [`nvim-lspconfig`](https://github.com/neovim/nvim-lspconfig)
- [`mason.nvim`](https://github.com/williamboman/mason.nvim)
- [`nvim-cmp`](https://github.com/hrsh7th/nvim-cmp)
- [`LuaSnip`](https://github.com/L3MON4D3/LuaSnip)
- [`nvim-autopairs`](https://github.com/windwp/nvim-autopairs)
- [`nvim-tree.lua`](https://github.com/nvim-tree/nvim-tree.lua)
- [`nvim-treesitter`](https://github.com/nvim-treesitter/nvim-treesitter)
- [`telescope.nvim`](https://github.com/nvim-telescope/telescope.nvim)
- [`trouble.nvim`](https://github.com/folke/trouble.nvim)
- [`nvim-dap`](https://github.com/mfussenegger/nvim-dap)
- [`dap-ui`](https://github.com/rcarriga/nvim-dap-ui)
- [`markdown-preview.nvim`](https://github.com/iamcco/markdown-preview.nvim)
- [`nvim-notify`](https://github.com/rcarriga/nvim-notify)
- [`noice.nvim`](https://github.com/folke/noice.nvim)
- [`gitsigns.nvim`](https://github.com/lewis6991/gitsigns.nvim)
- [`vim-fugitive`](https://github.com/tpope/vim-fugitive)
- [`none-ls.nvim`](https://github.com/nvimtools/none-ls.nvim)
- [`alpha-nvim`](https://github.com/goolord/alpha-nvim)
- [`vscode.nvim`](https://github.com/Mofiqul/vscode.nvim)

---

## 📸 Screenshots _(optional)_

> Add screenshots or GIFs of your Neovim dashboard, autocomplete, diagnostics, etc.

---

## 📄 License

MIT  
Author: [Kush Tiwari](mailto:kushtiwari.dev@gmail.com)
