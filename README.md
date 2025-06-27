<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
</head>
<body>
  <h1>🔥 Neovim Config (Cross-Platform)</h1>
  <p>This is my personal Neovim setup optimized for full stack development using JavaScript, Python, HTML, and CSS.</p>

  <h2>📦 Features</h2>
  <ul>
    <li>LSP support (with <code>mason.nvim</code> and <code>lspconfig</code>)</li>
    <li>Autocompletion with <code>nvim-cmp</code></li>
    <li>Snippets support via <code>LuaSnip</code></li>
    <li>Syntax highlighting via <code>treesitter</code></li>
    <li>File explorer using <code>nvim-tree</code></li>
    <li>Git integration with <code>vim-fugitive</code></li>
    <li>Code formatting using <code>none-ls</code> (e.g. Prettier, Black)</li>
  </ul>

  <h2>🛠️ Plugins Used</h2>
  <ul>
    <li><code>neovim/nvim-lspconfig</code></li>
    <li><code>hrsh7th/nvim-cmp</code></li>
    <li><code>hrsh7th/cmp-nvim-lsp</code></li>
    <li><code>L3MON4D3/LuaSnip</code></li>
    <li><code>saadparwaiz1/cmp_luasnip</code></li>
    <li><code>williamboman/mason.nvim</code></li>
    <li><code>williamboman/mason-lspconfig.nvim</code></li>
    <li><code>nvim-lua/plenary.nvim</code></li>
    <li><code>nvim-treesitter/nvim-treesitter</code></li>
    <li><code>nvim-tree/nvim-tree.lua</code></li>
    <li><code>nvim-tree/nvim-web-devicons</code></li>
    <li><code>tpope/vim-fugitive</code></li>
    <li><code>nvimtools/none-ls.nvim</code></li>
  </ul>

  <h2>🚀 Setup Instructions</h2>
  <pre><code>git clone https://github.com/tiwarikushmukesh/Neovim-Config.git
cd Neovim-Config
sh setup.sh   # Make sure this script links config to ~/.config/nvim
</code></pre>

  <h2>💻 Compatible With</h2>
  <ul>
    <li>Termux (Android)</li>
    <li>macOS</li>
    <li>Linux</li>
  </ul>

  <h2>📁 Directory Structure</h2>
  <pre><code>Neovim-Config/
├── init.lua
├── lua/
│   ├── plugins.lua
│   ├── lsp.lua
│   ├── cmp-config.lua
│   ├── keymaps.lua
│   ├── formatters.lua
│   └── explorer.lua
├── setup.sh
└── .gitignore
</code></pre>

  <h2>📄 License</h2>
  <p>This project is licensed under the <strong>MIT License</strong>.</p>

  <p>Made with ❤️ by <strong>Kush Mukesh Tiwari</strong></p>
</body>
</html>
