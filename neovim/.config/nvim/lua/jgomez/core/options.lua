local opt = vim.opt -- for conciseness

-- Use virtual env just for NeoVim
vim.g.loaded_node_provider = nil
vim.g.loaded_python3_provider = nil
vim.g.python3_host_prog = vim.env.HOME .. "/envs/neovim/bin/python3"

-- Disable unused remote providers
vim.g.loaded_perl_provider = 0
vim.g.loaded_python_provider = 0
vim.g.loaded_ruby_provider = 0

-- line numbers
opt.relativenumber = true -- show relative line numbers
opt.number = true -- shows absolute line number on cursor line (when relative number is on)

-- tabs & indentation
-- opt.tabstop = 4 -- 4 spaces for tabs
opt.softtabstop = 4 -- 4 spaces on tab press
opt.shiftwidth = 4 -- 4 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one
opt.smartindent = true -- indent reacts to the syntax/style of the code

-- line wrapping
opt.wrap = false -- disable line wrapping

-- go to previous/next line with h,l,left arrow and right arrow
-- when cursor reaches end/beginning of line
opt.whichwrap:append("<>[]hl")

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive
-- opt.hlsearch = false -- do not highlight all search matches
opt.incsearch = true -- highlight the searching string while typing

-- cursor line
opt.cursorline = true -- highlight the current cursor line

-- command line auto completion
opt.wildmenu = true
opt.wildmode = "longest,list,full"

-- appearance

opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

-- Have some context around the current line always on screen
opt.scrolloff = 8
opt.sidescrolloff = 5

-- show trailing whitespace as -, tabs as >-
vim.o.listchars = "tab:>-,trail:-"
vim.o.list = true

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- turn off swapfile
opt.swapfile = false
