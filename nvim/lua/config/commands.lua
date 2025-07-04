-- Command palette style commands
vim.api.nvim_create_user_command("Format", function()
	vim.lsp.buf.format({ async = true })
end, { desc = "Format current buffer" })

vim.api.nvim_create_user_command("Rename", function()
	vim.lsp.buf.rename()
end, { desc = "Rename symbol" })

vim.api.nvim_create_user_command("CodeAction", function()
	vim.lsp.buf.code_action()
end, { desc = "Show code actions" })

vim.api.nvim_create_user_command("References", function()
	vim.lsp.buf.references()
end, { desc = "Show references" })

vim.api.nvim_create_user_command("Definition", function()
	vim.lsp.buf.definition()
end, { desc = "Go to definition" })

vim.api.nvim_create_user_command("Implementation", function()
	vim.lsp.buf.implementation()
end, { desc = "Go to implementation" })

vim.api.nvim_create_user_command("Hover", function()
	vim.lsp.buf.hover()
end, { desc = "Show hover information" })

-- File operations
vim.api.nvim_create_user_command("Save", function()
	vim.cmd("write")
end, { desc = "Save current file" })

vim.api.nvim_create_user_command("SaveAll", function()
	vim.cmd("wall")
end, { desc = "Save all files" })

vim.api.nvim_create_user_command("CloseBuffer", function()
	vim.cmd("bdelete")
end, { desc = "Close current buffer" })

vim.api.nvim_create_user_command("NewFile", function()
	vim.cmd("enew")
end, { desc = "Create new file" })

-- Git commands
vim.api.nvim_create_user_command("GitStatus", function()
	vim.cmd("Git")
end, { desc = "Show git status" })

vim.api.nvim_create_user_command("GitBlame", function()
	vim.cmd("Git blame")
end, { desc = "Show git blame" })

vim.api.nvim_create_user_command("GitLog", function()
	vim.cmd("Git log")
end, { desc = "Show git log" })
