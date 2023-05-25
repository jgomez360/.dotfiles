local null_ls = require "null-ls"

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics

local sources = {
    formatting.rustfmt,
    formatting.prettier.with({
        extra_filetypes = { "solidity" },
    }),
    formatting.stylua,

    lint.mypy,
    lint.shellcheck,
}

null_ls.setup {
    debug = true,
    sources = sources,
}
