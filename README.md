````markdown
# 💻 Neovim Config by Kush Tiwari

This is my personal Neovim setup tailored for full-stack web development, optimized for productivity and ease of use. It includes LSP support, autocompletion, snippets, format-on-save, and a file explorer — designed to provide a VS Code-like experience inside Neovim.

---

## 🚀 Features

- 🔧 LSP support (JavaScript, Python, HTML, CSS)
- 🧠 Autocompletion with `nvim-cmp`
- ✨ Snippets with `LuaSnip`
- 💅 Format-on-save with `none-ls.nvim`
- 🗂️ File explorer using `nvim-tree`
- 📄 Git integration via `vim-fugitive`
- 🌳 Syntax highlighting with `treesitter`

---

## 📦 Plugins Used

| Plugin | Purpose |
|--------|---------|
| `nvim-lspconfig` | Language Server Protocol support |
| `mason.nvim` & `mason-lspconfig.nvim` | Easy LSP server management |
| `nvim-cmp`, `cmp-nvim-lsp` | Autocompletion |
| `LuaSnip`, `cmp_luasnip` | Snippet engine and integration |
| `none-ls.nvim` | Code formatting (Prettier, Black, etc.) |
| `nvim-tree.lua` | File explorer |
| `vim-fugitive` | Git integration |
| `nvim-treesitter` | Better syntax highlighting |
| `plenary.nvim` | Lua utility functions (dependency) |
| `lualine.nvim` | Status line (optional UI) |

---

## 🛠️ Installation

### 1. Clone the repo

```bash
git clone https://github.com/tiwarikushmukesh/Neovim-Config.git
cd Neovim-Config
````

### 2. Run the setup script

This will copy the config to the right location:

```bash
bash setup.sh
```

> Make sure `nvim` is already installed on your machine.

### 3. Install Plugins

Open Neovim and run:

```vim
:PackerSync
```

### 4. Install LSP servers

In Neovim, run:

```vim
:Mason
```

Then use `<i>` to install:

* `typescript-language-server`
* `pyright`
* `vscode-html-language-server`
* `vscode-css-language-server`

---

## ✅ Recommended Fonts

To see icons correctly, install [JetBrains Mono Nerd Font](https://www.nerdfonts.com/font-downloads):

```bash
brew tap homebrew/cask-fonts
brew install --cask font-jetbrains-mono-nerd-font
```

Then set it in your terminal preferences.

---

## 🧪 Test Your Setup

* Open any `.js`, `.py`, `.html`, or `.css` file
* Try autocompletion
* Make a change and save (auto-format should trigger)
* Toggle file explorer: `Ctrl + n`

---

## 💡 Pro Tips

* Want to restore config on a new machine? Just clone and run `setup.sh`.
* Keep `.gitignore` to avoid storing temporary files like swap files.
* Update plugins regularly using `:PackerSync`.

---

## 📄 License

This project is licensed under the [MIT License](./LICENSE).
