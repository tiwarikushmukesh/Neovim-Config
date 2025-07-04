# ⚡ Neovim IDE Setup (VS Code Style)

A fast and modern Neovim IDE setup with full LSP support, VS Code-like UI, debugging, file explorer, diagnostics, fuzzy finding, command palette, and a beautiful theme — all optimized for keyboard-driven development.

---

## 🚀 Features

- 🔧 **LSP Ready** via `mason.nvim` and `lspconfig`
- 🧠 **IntelliSense**-style autocompletion with `nvim-cmp` + `LuaSnip`
- 📚 Snippets with context-aware tabbing
- 🌈 Advanced syntax highlighting via `nvim-treesitter`
- 🗂️ VS Code-like file explorer using `nvim-tree`
- 🧾 Git signs and blame with `gitsigns.nvim`
- 🔍 Fuzzy finder, buffer switcher, and live grep via `telescope.nvim`
- 🧩 Inlay hints, diagnostics, and floating help popups
- ⚠️ Problems panel like VS Code using `trouble.nvim`
- 🐞 Debugging with `nvim-dap` + `nvim-dap-ui`
- 🎯 Command palette and keybinding help with `which-key.nvim`
- 🪄 Command bar and notifications with `noice.nvim` + `nvim-notify`
- 📊 Buffer tabs using `bufferline.nvim`
- 📁 Outline view using `symbols-outline.nvim`
- 📄 Markdown live preview in browser
- 💡 Autoformatting via `none-ls.nvim`
- 🎨 Clean and soft `vscode.nvim` theme
- ⌨️ Terminal toggle with `toggleterm.nvim`

---

## ⌨️ Keybindings (Lazy-style)

| Shortcut    | Action                          |
| ----------- | ------------------------------- |
| `<Space>ff` | Find files (Telescope)          |
| `<Space>fg` | Live grep                       |
| `<Space>fb` | Switch buffers                  |
| `<Space>e`  | Show diagnostics popup          |
| `<Space>rn` | Rename symbol (LSP)             |
| `<Space>ca` | Code actions (LSP)              |
| `<Space>b`  | Toggle breakpoint               |
| `<Space>xx` | Toggle Problems panel (Trouble) |
| `<Space>r`  | Reload Lua config file          |
| `<Space>nd` | Dismiss Noice messages          |
| `<Space>nt` | Toggle notifications            |
| `<Space>so` | Toggle Symbols Outline          |
| `gd`        | Go to definition (LSP)          |
| `gr`        | References (LSP)                |
| `gi`        | Go to implementation (LSP)      |
| `K`         | Hover docs (LSP)                |
| `<F5>`      | Start/continue debug            |
| `<F10>`     | Step over                       |
| `<F11>`     | Step into                       |
| `<F12>`     | Step out                        |
| `Ctrl+s`    | Save file                       |
| `Ctrl+q`    | Quit file                       |
| `Ctrl+t`    | Toggle terminal                 |

---

## 📦 Plugin Stack

### 🌐 Core

- [`nvim-lspconfig`](https://github.com/neovim/nvim-lspconfig)
- [`mason.nvim`](https://github.com/williamboman/mason.nvim)
- [`mason-lspconfig.nvim`](https://github.com/williamboman/mason-lspconfig.nvim)

### 🔤 Autocompletion

- [`nvim-cmp`](https://github.com/hrsh7th/nvim-cmp)
- [`cmp-nvim-lsp`](https://github.com/hrsh7th/cmp-nvim-lsp)
- [`LuaSnip`](https://github.com/L3MON4D3/LuaSnip)
- [`cmp_luasnip`](https://github.com/saadparwaiz1/cmp_luasnip)

### 🌲 UI Enhancements

- [`nvim-treesitter`](https://github.com/nvim-treesitter/nvim-treesitter)
- [`nvim-tree.lua`](https://github.com/nvim-tree/nvim-tree.lua)
- [`bufferline.nvim`](https://github.com/akinsho/bufferline.nvim)
- [`lualine.nvim`](https://github.com/nvim-lualine/lualine.nvim)
- [`which-key.nvim`](https://github.com/folke/which-key.nvim)
- [`symbols-outline.nvim`](https://github.com/simrat39/symbols-outline.nvim)
- [`vscode.nvim`](https://github.com/Mofiqul/vscode.nvim)

### 🔍 Productivity

- [`telescope.nvim`](https://github.com/nvim-telescope/telescope.nvim)
- [`trouble.nvim`](https://github.com/folke/trouble.nvim)
- [`toggleterm.nvim`](https://github.com/akinsho/toggleterm.nvim)
- [`Comment.nvim`](https://github.com/numToStr/Comment.nvim)

### 🐛 Debugging

- [`nvim-dap`](https://github.com/mfussenegger/nvim-dap)
- [`nvim-dap-ui`](https://github.com/rcarriga/nvim-dap-ui)

### 📄 Extras

- [`markdown-preview.nvim`](https://github.com/iamcco/markdown-preview.nvim)
- [`none-ls.nvim`](https://github.com/nvimtools/none-ls.nvim)
- [`nvim-notify`](https://github.com/rcarriga/nvim-notify)
- [`noice.nvim`](https://github.com/folke/noice.nvim)
- [`gitsigns.nvim`](https://github.com/lewis6991/gitsigns.nvim)

---

## 🧠 Requirements

- Neovim `v0.9+`
- `node`, `npm` (for markdown preview)
- `ripgrep`, `fd` (for Telescope)
- `nerd-font` (for icons)

---

## 🧾 License

MIT  
Author: [Kush Tiwari](mailto:kushtiwari.dev@gmail.com)
