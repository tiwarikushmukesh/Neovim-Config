-- Diagnostic signs
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

-- Diagnostic display config (both virtual and float, de-duplicated)
vim.diagnostic.config({
	virtual_text = false, -- ❌ no inline errors in insert mode
	signs = true,      -- ✅ gutter icons
	underline = true,
	update_in_insert = false, -- ✅ don’t update while typing
	severity_sort = true,
	float = {
		source = "if_many",
		border = "rounded",
		format = function(d) return d.message:match("^[^\n]+") end,
	},
})

-- Show popup on cursor hold (for hover-based diagnostics)
vim.o.updatetime = 500
vim.cmd([[autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focus = false })]])

-- Mason and LSP setup
require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "ts_ls", "html", "cssls", "pyright", "lua_ls" },
})

local lspconfig = require("lspconfig")
local util = require("lspconfig/util")

-- TypeScript (ts_ls)
lspconfig.ts_ls.setup({
	root_dir = util.root_pattern("package.json", "tsconfig.json", ".git"),
	on_attach = function(client)
		client.server_capabilities.documentFormattingProvider = false
	end,
	settings = {
		typescript = {
			inlayHints = {
				includeInlayParameterNameHints = "all",
				includeInlayVariableTypeHints = true,
				includeInlayFunctionLikeReturnTypeHints = true,
				includeInlayPropertyDeclarationTypeHints = true,
			},
		},
		javascript = {
			inlayHints = {
				includeInlayParameterNameHints = "all",
				includeInlayVariableTypeHints = true,
				includeInlayFunctionLikeReturnTypeHints = true,
				includeInlayPropertyDeclarationTypeHints = true,
			},
		},
	},
})

-- HTML
lspconfig.html.setup({})

-- CSS
lspconfig.cssls.setup({})

-- Python
lspconfig.pyright.setup({})

-- Lua for Neovim config
lspconfig.lua_ls.setup({
	settings = {
		Lua = {
			runtime = { version = "LuaJIT" },
			diagnostics = {
				globals = { "vim" },
			},
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true),
				checkThirdParty = false,
			},
			telemetry = { enable = false },
		},
	},
})
-- NEW FINAL FIX: Real de-duplication at buffer level
vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(args)
		local client_id = args.data.client_id
		local bufnr = args.buf
		local client = vim.lsp.get_client_by_id(client_id)

		if not client then return end

		vim.lsp.handlers["textDocument/publishDiagnostics"] = function(_, result, ctx, config)
			local diagnostics = result.diagnostics
			local seen = {}
			local unique = {}

			for _, d in ipairs(diagnostics) do
				local key = string.format("%s:%d:%d", d.message, d.range.start.line,
					d.range.start.character)
				if not seen[key] then
					seen[key] = true
					table.insert(unique, d)
				end
			end

			result.diagnostics = unique
			vim.lsp.diagnostic.on_publish_diagnostics(_, result, ctx, config)
		end
	end,
})
