local null_ls = require("null-ls")

null_ls.setup({
  sources = {
    -- JavaScript / TypeScript / HTML / CSS
    null_ls.builtins.formatting.prettier,

    -- Python
    null_ls.builtins.formatting.black,
  },
})


vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = { "*.js", "*.ts", "*.html", "*.css", "*.py" },
  callback = function()
    vim.lsp.buf.format({ async = false })
  end,
})

