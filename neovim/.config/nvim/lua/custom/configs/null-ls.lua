local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics

local sources = {
	formatting.black.with({
		extra_args = { "--line-length=120" },
	}),
	formatting.gofmt,
	formatting.goimports,
	formatting.rustfmt,
	formatting.prettier.with({
		filetypes = { "json", "yaml" },
		extra_filetypes = { "solidity" },
	}),
	formatting.stylua,

	lint.mypy,
	lint.ruff.with({
		extra_args = { "line-length=120" },
	}),
	lint.shellcheck,
}

null_ls.setup({
	debug = true,
	sources = sources,
	-- format on save
	on_attach = function(client, bufnr)
		if client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({
				group = augroup,
				buffer = bufnr,
			})
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augroup,
				buffer = bufnr,
				callback = function()
					vim.lsp.buf.format({ bufnr = bufnr })
				end,
			})
		end
	end,
})
