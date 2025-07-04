local options = {
	-- VS Code-like behavior
	mouse = "a",   -- Enable mouse support
	mousemodel = "popup", -- Right-click context menu

	-- File handling
	autoread = true, -- Auto-reload files changed outside
	autowrite = true, -- Auto-write files when switching
	confirm = true, -- Confirm before closing unsaved files

	-- Search behavior (like VS Code)
	ignorecase = true, -- Case insensitive search
	smartcase = true, -- Smart case search
	hlsearch = true, -- Highlight search results
	incsearch = true, -- Incremental search

	-- Indentation (like VS Code)
	tabstop = 2, -- Tab width
	softtabstop = 2, -- Soft tab width
	shiftwidth = 2, -- Indent width
	expandtab = true, -- Use spaces instead of tabs
	smartindent = true, -- Smart indentation

	-- Line numbers (like VS Code)
	number = true,  -- Show line numbers
	relativenumber = true, -- Show relative line numbers

	-- Visual enhancements
	cursorline = true, -- Highlight current line
	colorcolumn = "80,120", -- Show column guides
	signcolumn = "yes", -- Always show sign column
	showmode = false, -- Don't show mode (statusline shows it)

	-- Folding (like VS Code)
	foldmethod = "expr", -- Use treesitter for folding
	foldexpr = "nvim_treesitter#foldexpr()",
	foldlevel = 99, -- Start with all folds open

	-- Completion behavior
	completeopt = { "menuone", "noselect" }, -- Better completion experience
	pumheight = 10,                   -- Popup menu height

	-- Splits (like VS Code)
	splitbelow = true, -- Horizontal splits below
	splitright = true, -- Vertical splits to the right

	-- Scrolling
	scrolloff = 8, -- Keep 8 lines above/below cursor
	sidescrolloff = 8, -- Keep 8 columns left/right of cursor

	-- Performance
	updatetime = 300, -- Faster completion
	timeoutlen = 300, -- Faster key sequence completion

	-- Clipboard (like VS Code)
	clipboard = "unnamedplus", -- Use system clipboard

	-- File encoding
	encoding = "utf-8", -- Default encoding
	fileencoding = "utf-8", -- File encoding

	-- Backup and swap
	backup = false, -- Don't create backup files
	writebackup = false, -- Don't create backup before writing
	swapfile = false, -- Don't create swap files

	-- Terminal colors
	termguicolors = true, -- True color support
}

-- Apply options
for k, v in pairs(options) do
	vim.opt[k] = v
end
