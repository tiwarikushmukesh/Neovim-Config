-- Auto-install packer if not installed
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({
      "git",
      "clone",
      "--depth", "1",
      "https://github.com/wbthomason/packer.nvim",
      install_path
    })
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

ensure_packer()

-- Plugins
require("packer").startup(function(use)
  use "wbthomason/packer.nvim"

  -- LSP + Autocompletion
  use "neovim/nvim-lspconfig"
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-nvim-lsp"
  use "L3MON4D3/LuaSnip"
  use "saadparwaiz1/cmp_luasnip"
  use "williamboman/mason.nvim"
  use "williamboman/mason-lspconfig.nvim"

  -- Other dev plugins
  use "tpope/vim-fugitive"
  use "nvim-lua/plenary.nvim"
  use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }

  -- Optional UI
  use "nvim-lualine/lualine.nvim"

  use({
    "nvim-tree/nvim-tree.lua",
    requires = { "nvim-tree/nvim-web-devicons" },
  })

  use({
    "nvimtools/none-ls.nvim",
    requires = { "nvim-lua/plenary.nvim" },
  })

  use "windwp/nvim-autopairs"

  use({
    "akinsho/toggleterm.nvim",
    tag = '*',
    config = function()
      require("toggleterm").setup {
        start_in_insert = true,
        direction = "horizontal", -- or "vertical" or "float"
      }
    end
  })
  use { "lewis6991/gitsigns.nvim" }
  use "Mofiqul/vscode.nvim"

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  -- Trouble
  use {
    "folke/trouble.nvim",
    requires = "nvim-tree/nvim-web-devicons"
  }

  -- Debugging (DAP + UI)
  use "mfussenegger/nvim-dap"
  use {
    "rcarriga/nvim-dap-ui",
    requires = "mfussenegger/nvim-dap"
  }

  -- Markdown Preview
  use {
    "iamcco/markdown-preview.nvim",
    run = "cd app && npm install",
    ft = { "markdown" }
  }

  -- Notify
  use "rcarriga/nvim-notify"

  -- Noice
  use {
    "folke/noice.nvim",
    requires = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify"
    }
  }
  -- Auto-install packer if not installed
  local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
    if fn.empty(fn.glob(install_path)) > 0 then
      fn.system({
        "git",
        "clone",
        "--depth", "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path
      })
      vim.cmd [[packadd packer.nvim]]
      return true
    end
    return false
  end

  ensure_packer()

  -- Plugins
  require("packer").startup(function(use)
    use "wbthomason/packer.nvim"

    -- LSP + Autocompletion
    use "neovim/nvim-lspconfig"
    use "hrsh7th/nvim-cmp"
    use "hrsh7th/cmp-nvim-lsp"
    use "hrsh7th/cmp-buffer"  -- NEW: Buffer completions
    use "hrsh7th/cmp-path"    -- NEW: Path completions
    use "hrsh7th/cmp-cmdline" -- NEW: Command line completions
    use "L3MON4D3/LuaSnip"
    use "saadparwaiz1/cmp_luasnip"
    use "rafamadriz/friendly-snippets" -- NEW: VS Code-like snippets
    use "williamboman/mason.nvim"
    use "williamboman/mason-lspconfig.nvim"

    -- Other dev plugins
    use "tpope/vim-fugitive"
    use "nvim-lua/plenary.nvim"
    use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }
    use "nvim-treesitter/nvim-treesitter-textobjects" -- NEW: Better text objects

    -- Optional UI
    use "nvim-lualine/lualine.nvim"

    use({
      "nvim-tree/nvim-tree.lua",
      requires = { "nvim-tree/nvim-web-devicons" },
    })

    use({
      "nvimtools/none-ls.nvim",
      requires = { "nvim-lua/plenary.nvim" },
    })

    use "windwp/nvim-autopairs"

    use({
      "akinsho/toggleterm.nvim",
      tag = '*',
      config = function()
        require("toggleterm").setup {
          start_in_insert = true,
          direction = "horizontal", -- or "vertical" or "float"
        }
      end
    })
    use { "lewis6991/gitsigns.nvim" }
    use "Mofiqul/vscode.nvim"

    -- Telescope
    use {
      'nvim-telescope/telescope.nvim',
      requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use 'nvim-telescope/telescope-fzf-native.nvim' -- NEW: Better telescope performance

    -- Trouble
    use {
      "folke/trouble.nvim",
      requires = "nvim-tree/nvim-web-devicons"
    }

    -- Debugging (DAP + UI)
    use "mfussenegger/nvim-dap"
    use {
      "rcarriga/nvim-dap-ui",
      requires = "mfussenegger/nvim-dap"
    }

    -- Markdown Preview
    use {
      "iamcco/markdown-preview.nvim",
      run = "cd app && npm install",
      ft = { "markdown" }
    }

    -- Notify
    use "rcarriga/nvim-notify"

    -- Noice
    use {
      "folke/noice.nvim",
      requires = {
        "MunifTanjim/nui.nvim",
        "rcarriga/nvim-notify"
      }
    }

    -- ===========================================
    -- NEW VS CODE-LIKE PLUGINS
    -- ===========================================

    -- Buffer tabs (like VS Code tabs)
    use {
      "akinsho/bufferline.nvim",
      requires = "nvim-tree/nvim-web-devicons",
      config = function()
        require("bufferline").setup({
          options = {
            mode = "buffers",
            numbers = "ordinal",
            close_command = "bdelete! %d",
            right_mouse_command = "bdelete! %d",
            left_mouse_command = "buffer %d",
            indicator = {
              icon = "▎",
              style = "icon",
            },
            buffer_close_icon = "",
            modified_icon = "●",
            close_icon = "",
            diagnostics = "nvim_lsp",
            offsets = {
              {
                filetype = "NvimTree",
                text = "File Explorer",
                text_align = "center",
              },
            },
            show_buffer_icons = true,
            show_buffer_close_icons = true,
            show_close_icon = true,
            show_tab_indicators = true,
            separator_style = "thin",
            always_show_bufferline = true,
          },
        })
      end,
    }

    -- Which-key (Command palette-like)
    use {
      "folke/which-key.nvim",
      config = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
        require("which-key").setup({
          window = {
            border = "rounded",
            position = "bottom",
            margin = { 1, 0, 1, 0 },
            padding = { 2, 2, 2, 2 },
          },
          layout = {
            height = { min = 4, max = 25 },
            width = { min = 20, max = 50 },
            spacing = 3,
            align = "left",
          },
        })
      end,
    }

    -- Symbols outline (like VS Code outline)
    use {
      "simrat39/symbols-outline.nvim",
      config = function()
        require("symbols-outline").setup({
          highlight_hovered_item = true,
          show_guides = true,
          auto_preview = false,
          position = "right",
          relative_width = true,
          width = 25,
          show_symbol_details = true,
          keymaps = {
            close = { "<Esc>", "q" },
            goto_location = "<Cr>",
            focus_location = "o",
            hover_symbol = "<C-space>",
            toggle_preview = "K",
            rename_symbol = "r",
            code_actions = "a",
          },
        })
      end,
    }

    -- Indent guides (like VS Code)
    use {
      "lukas-reineke/indent-blankline.nvim",
      config = function()
        require("ibl").setup({
          indent = { char = "│" },
          scope = { enabled = false },
        })
      end,
    }

    -- Better commenting
    use {
      "numToStr/Comment.nvim",
      config = function()
        require('Comment').setup()
      end
    }

    -- Surround text objects
    use {
      "kylechui/nvim-surround",
      tag = "*",
      config = function()
        require("nvim-surround").setup({})
      end
    }

    -- Multiple cursors (like VS Code)
    use {
      "mg979/vim-visual-multi",
      branch = "master"
    }

    -- Better search and replace
    use {
      "nvim-pack/nvim-spectre",
      requires = "nvim-lua/plenary.nvim"
    }

    -- File finder (enhanced)
    use {
      "nvim-telescope/telescope-file-browser.nvim",
      requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
    }

    -- Project management
    use {
      "ahmedkhalf/project.nvim",
      config = function()
        require("project_nvim").setup({
          detection_methods = { "pattern" },
          patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json" },
        })
      end
    }

    -- Better quickfix
    use {
      "kevinhwang91/nvim-bqf",
      ft = "qf"
    }

    -- Highlight colors
    use {
      "norcalli/nvim-colorizer.lua",
      config = function()
        require('colorizer').setup()
      end
    }

    -- Better folding
    use {
      "kevinhwang91/nvim-ufo",
      requires = "kevinhwang91/promise-async",
      config = function()
        require('ufo').setup()
      end
    }

    -- Session management
    use {
      "rmagatti/auto-session",
      config = function()
        require("auto-session").setup({
          log_level = "error",
          auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
        })
      end
    }

    -- Better terminal integration
    use {
      "akinsho/toggleterm.nvim",
      tag = '*',
      config = function()
        require("toggleterm").setup({
          size = 20,
          open_mapping = [[<c-\>]],
          hide_numbers = true,
          shade_terminals = true,
          start_in_insert = true,
          insert_mappings = true,
          persist_size = true,
          direction = "horizontal",
          close_on_exit = true,
          shell = vim.o.shell,
          float_opts = {
            border = "curved",
            winblend = 0,
            highlights = {
              border = "Normal",
              background = "Normal",
            },
          },
        })
      end,
    }

    -- Git integration enhancement
    use {
      "sindrets/diffview.nvim",
      requires = "nvim-lua/plenary.nvim"
    }

    -- Better LSP UI
    use {
      "glepnir/lspsaga.nvim",
      branch = "main",
      config = function()
        require("lspsaga").setup({
          ui = {
            border = "rounded",
            winblend = 0,
            expand = "",
            collapse = "",
            preview = " ",
            code_action = "💡",
            diagnostic = "🐞",
            incoming = " ",
            outgoing = " ",
          },
        })
      end,
    }

    -- Winbar (breadcrumbs like VS Code)
    use {
      "utilyre/barbecue.nvim",
      tag = "*",
      requires = {
        "SmiteshP/nvim-navic",
        "nvim-tree/nvim-web-devicons",
      },
      config = function()
        require("barbecue").setup()
      end,
    }

    -- Better code folding
    use {
      "anuvyklack/pretty-fold.nvim",
      config = function()
        require('pretty-fold').setup()
      end
    }

    -- Smooth scrolling
    use {
      "karb94/neoscroll.nvim",
      config = function()
        require('neoscroll').setup()
      end
    }

    -- Dashboard (like VS Code welcome screen)
    use {
      "glepnir/dashboard-nvim",
      config = function()
        require('dashboard').setup({
          theme = 'hyper',
          config = {
            week_header = {
              enable = true,
            },
            shortcut = {
              { desc = '󰊳 Update', group = '@property', action = 'PackerUpdate', key = 'u' },
              {
                desc = ' Files',
                group = 'Label',
                action = 'Telescope find_files',
                key = 'f',
              },
              {
                desc = ' Projects',
                group = 'Number',
                action = 'Telescope projects',
                key = 'p',
              },
              {
                desc = ' dotfiles',
                group = 'Number',
                action = 'Telescope dotfiles',
                key = 'd',
              },
            },
          },
        })
      end,
    }
  end)
end)
