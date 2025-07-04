-- Set space as leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- 📁 File operations
vim.api.nvim_set_keymap("n", "<C-s>", ":w<CR>", opts)           -- Save
vim.api.nvim_set_keymap("i", "<C-s>", "<Esc>:w<CR>a", opts)
vim.api.nvim_set_keymap("n", "<C-q>", ":q<CR>", opts)           -- Quit
vim.api.nvim_set_keymap("n", "<leader>r", ":luafile %<CR>", {}) -- Reload current Lua file

-- 🔍 Telescope
keymap("n", "<leader>ff", "<cmd>Telescope find_files<CR>", opts)
keymap("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", opts)
keymap("n", "<leader>fb", "<cmd>Telescope buffers<CR>", opts)

-- 🚨 Trouble (diagnostic list)
keymap("n", "<leader>xx", "<cmd>TroubleToggle document_diagnostics<CR>", opts)

-- 🧠 LSP
keymap("n", "gd", vim.lsp.buf.definition, opts)          -- Go to definition
keymap("n", "gr", vim.lsp.buf.references, opts)          -- Go to references
keymap("n", "gi", vim.lsp.buf.implementation, opts)      -- Go to implementation
keymap("n", "<leader>rn", vim.lsp.buf.rename, opts)      -- Rename symbol
keymap("n", "<leader>ca", vim.lsp.buf.code_action, opts) -- Code actions
keymap("n", "K", vim.lsp.buf.hover, opts)                -- Show docs
keymap("n", "<leader>e", function()
	vim.diagnostic.open_float(nil, { focus = false })
end, opts)

-- 💡 Show diagnostics while typing
keymap("i", "<C-e>", function()
	vim.schedule(function()
		vim.diagnostic.open_float(nil, { focus = false })
	end)
end, opts)

-- 🐛 Debugger (nvim-dap)
keymap("n", "<F5>", function() require("dap").continue() end, opts)
keymap("n", "<F10>", function() require("dap").step_over() end, opts)
keymap("n", "<F11>", function() require("dap").step_into() end, opts)
keymap("n", "<F12>", function() require("dap").step_out() end, opts)
keymap("n", "<leader>b", function() require("dap").toggle_breakpoint() end, opts)
keymap("n", "<leader>dr", function() require("dap").repl.open() end, opts)

-- 💻 Terminal toggle (requires toggleterm)
vim.api.nvim_set_keymap("n", "<C-t>", ":ToggleTerm<CR>", opts)

-- 🧭 CMP popup navigation
keymap("i", "<Down>", "<C-n>", opts)
keymap("i", "<Up>", "<C-p>", opts)

vim.keymap.set("n", "<leader>nd", function()
	local ok, noice = pcall(require, "noice")
	if ok and noice then
		noice.cmd("dismiss")
	end
end, { desc = "Dismiss Noice messages", noremap = true, silent = true })
