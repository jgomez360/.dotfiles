local M = {}

-- In order to disable a default keymap, use
M.disabled = {
    n = {
        -- allow nvim-tmux-navigation to switch between windows
        ["<C-h>"] = "",
        ["<C-l>"] = "",
        ["<C-j>"] = "",
        ["<C-k>"] = "",
    }
}

-- Your custom mappings
M.abc = {
    n = {
         -- ["<C-n>"] = {"<cmd> Telescope <CR>", "Telescope"},
         -- ["<C-s>"] = {":Telescope Files <CR>", "Telescope Files"},
        ["n"] = { "nzzzv", "Keep search items in middle of screen" },
        ["N"] = { "Nzzzv", "Keep search items in middle of screen" },
        ["<leader>y"] = { "\"+y", "yank to system clipboard" },
        ["<leader>Y"] = { "\"+Y", "yank to system clipboard" },
        ["<leader>s"] = { [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], "edit all instances of word under cursor" },
    },

    i = {
        ["jk"] = { "<ESC>", "escape insert mode" , opts = { nowait = true } },
        -- ...
    },

    v = {
        ["J"] = { ":m '>+1<CR>gv=gv", "move highlighted text down" },
        ["K"] = { ":m '<-2<CR>gv=gv", "move highlighted text up" },
        ["<leader>y"] = { "\"+y", "yank to system clipboard" },
    },

    x = {
        ["<leader>p"] = { "\"_dP", "paste without losing buffer" }
    }
}

return M
