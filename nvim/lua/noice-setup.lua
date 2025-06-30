require("noice").setup({
	-- LSP-related config (hover, signature help, etc.)
	lsp = {
		progress = {
			enabled = true,
			format = "lsp_progress",
			throttle = 1000 / 30,
			view = "mini", -- minimal progress view
		},
		hover = {
			enabled = true,
			silent = false,
			view = "hover", -- small popup for hover
		},
		signature = {
			enabled = true,
			view = "mini", -- use mini view for signature help
		},
	},

	-- View settings for different message types
	views = {
		hover = {
			border = {
				style = "rounded",
			},
			win_options = {
				winblend = 10,
				winhighlight = "Normal:Normal,FloatBorder:FloatBorder",
			},
			size = {
				max_width = 60,
				max_height = 15,
			},
		},
		mini = {
			timeout = 3000,
			win_options = {
				winblend = 10,
			},
		},
	},

	-- Messages and how they appear
	messages = {
		view = "mini", -- default messages
		view_error = "mini", -- error messages
		view_warn = "mini", -- warning messages
		view_history = "split",
		view_search = "virtualtext",
	},

	-- Use command palette and doc border
	presets = {
		command_palette = true,
		lsp_doc_border = true,
		long_message_to_split = true,
	},

	-- Enable popup menu backend for cmp or commands
	popupmenu = {
		enabled = true,
		backend = "nui",
	},
})
