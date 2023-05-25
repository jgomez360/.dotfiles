local null_ls = require "null-ls"

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics

local sources = {
    formatting.rustfmt,
    formatting.stylua,

    lint.mypy,
    lint.shellcheck,
    lint.solhint,
}

null_ls.setup {
    debug = true,
    sources = sources,
}
