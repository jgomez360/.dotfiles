-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps -------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- navigate buffers
keymap.set("n", "<TAB>", ":bnext<CR>", { desc = "Go to next buffer" }) --  go to next buffer
keymap.set("n", "<S-TAB>", ":bprevious<CR>", { desc = "Go to previous buffer" }) --  go to previous buffer
keymap.set("n", "<leader>x", ":Bdelete<CR>", { desc = "Close the current buffer" }) --  close current buffer

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

keymap.set("n", "n", "nzzzv", { desc = "Keep search items in middle of screen" })
keymap.set("n", "N", "Nzzzv", { desc = "Keep search items in middle of screen" })

keymap.set(
    "n",
    "<leader>s",
    [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
    { desc = "Edit all instances of word under cursor" }
)

keymap.set("n", "<leader>y", '"+y', { desc = "Yank to system clipboard" })
keymap.set("n", "<leader>Y", '"+Y', { desc = "Yank to system clipboard" })
keymap.set("v", "<leader>Y", '"+Y', { desc = "Yank to system clipboard" })

keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move highlighted text down" })
keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move highlighted text up" })

keymap.set("x", "<leader>p", '"_dP', { desc = "Paste without losing buffer" })
