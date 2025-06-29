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
end)
