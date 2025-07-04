local function augroup(name)
	return vim.api.nvim_create_augroup("vscode_" .. name, { clear = true })
end

-- Auto-save on focus lost (like VS Code)
vim.api.nvim_create_autocmd({ "FocusLost", "BufLeave" }, {
	group = augroup("autosave"),
	callback = function()
		if vim.bo.modified and not vim.bo.readonly and vim.fn.expand("%") ~= "" and vim.bo.buftype == "" then
			vim.api.nvim_command("silent update")
		end
	end,
})

-- Auto-format on save (like VS Code)
vim.api.nvim_create_autocmd("BufWritePre", {
	group = augroup("autoformat"),
	callback = function()
		if vim.lsp.buf.server_ready() then
			vim.lsp.buf.format({ async = false })
		end
	end,
})

-- Highlight on yank (like VS Code copy highlight)
vim.api.nvim_create_autocmd("TextYankPost", {
	group = augroup("highlight_yank"),
	callback = function()
		vim.highlight.on_yank({ higroup = "IncSearch", timeout = 200 })
	end,
})

-- Auto-close brackets and quotes (enhanced)
vim.api.nvim_create_autocmd("FileType", {
	group = augroup("auto_pairs"),
	pattern = { "javascript", "typescript", "python", "lua", "json", "html", "css" },
	callback = function()
		vim.opt_local.formatoptions:remove({ "c", "r", "o" })
	end,
})

-- Remember cursor position (like VS Code)
vim.api.nvim_create_autocmd("BufReadPost", {
	group = augroup("restore_cursor"),
	callback = function()
		local mark = vim.api.nvim_buf_get_mark(0, '"')
		local lcount = vim.api.nvim_buf_line_count(0)
		if mark[1] > 0 and mark[1] <= lcount then
			pcall(vim.api.nvim_win_set_cursor, 0, mark)
		end
	end,
})
