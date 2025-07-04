local function get_git_branch()
	local branch = vim.fn.system("git branch --show-current 2>/dev/null | tr -d '\n'")
	if branch ~= "" then
		return " " .. branch
	else
		return ""
	end
end

local function get_lsp_status()
	local clients = vim.lsp.get_active_clients()
	if next(clients) == nil then
		return ""
	end

	local client_names = {}
	for _, client in pairs(clients) do
		table.insert(client_names, client.name)
	end

	return " LSP: " .. table.concat(client_names, ", ")
end

local function get_diagnostic_count()
	local diagnostics = vim.diagnostic.get(0)
	local count = {
		errors = 0,
		warnings = 0,
		info = 0,
		hints = 0
	}

	for _, diagnostic in pairs(diagnostics) do
		if diagnostic.severity == vim.diagnostic.severity.ERROR then
			count.errors = count.errors + 1
		elseif diagnostic.severity == vim.diagnostic.severity.WARN then
			count.warnings = count.warnings + 1
		elseif diagnostic.severity == vim.diagnostic.severity.INFO then
			count.info = count.info + 1
		elseif diagnostic.severity == vim.diagnostic.severity.HINT then
			count.hints = count.hints + 1
		end
	end

	local parts = {}
	if count.errors > 0 then
		table.insert(parts, "E:" .. count.errors)
	end
	if count.warnings > 0 then
		table.insert(parts, "W:" .. count.warnings)
	end

	return #parts > 0 and " " .. table.concat(parts, " ") or ""
end

function _G.custom_statusline()
	local file_name = vim.fn.expand('%:t')
	local file_path = vim.fn.expand('%:h')
	local modified = vim.bo.modified and ' [+]' or ''
	local readonly = vim.bo.readonly and ' [RO]' or ''
	local filetype = vim.bo.filetype
	local line_info = string.format('%d:%d', vim.fn.line('.'), vim.fn.col('.'))
	local total_lines = vim.fn.line('$')

	return string.format(
		'%s%s%s %s%s%s %%=%s %s %s/%s',
		file_name,
		modified,
		readonly,
		file_path,
		get_git_branch(),
		get_diagnostic_count(),
		get_lsp_status(),
		filetype,
		line_info,
		total_lines
	)
end

-- Set the statusline
vim.o.statusline = '%!v:lua.custom_statusline()'
