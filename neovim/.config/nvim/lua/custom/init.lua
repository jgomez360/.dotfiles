local opt = vim.opt -- for conciseness

-- line numbers
opt.relativenumber = true -- show relative line numbers
opt.number = true -- shows absolute line number on cursor line (when relative number is on)

-- tabs & indentation
opt.tabstop = 4 -- 4 spaces for tabs
opt.softtabstop = 4 -- 4 spaces on tab press
opt.shiftwidth = 4 -- 4 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one
opt.smartindent = true -- indent reacts to the syntax/style of the code

opt.wrap = false -- do not wrap to newlines by default

opt.hlsearch = false -- do not highlight all search matches
opt.incsearch = true -- highlight the searching string while typing

opt.termguicolors = true -- emits true (24-bit) colours in the terminal

opt.scrolloff = 8 -- keep number of context lines above and below the cursor
-- vim.opt.signcolumn = "yes"
-- vim.opt.isfname:append("@-@")

-- vim.opt.updatetime = 50 -- write swap file to disk ever X milliseconds (default 4000)

-- opt.colorcolumn = "80" -- display a ruler at a specific line

-- opt.foldmethod = "indent" -- support for files with no braces (python, yaml, etc)
-- opt.foldlevelstart = 20 -- expand all folds on open
