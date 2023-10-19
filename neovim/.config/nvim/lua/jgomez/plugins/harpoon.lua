return {
  "ThePrimeagen/harpoon",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    -- set keymaps
    local keymap = vim.keymap -- for conciseness
    local mark = require("harpoon.mark")
    local ui = require("harpoon.ui")

    keymap.set("n", "<leader>a", mark.add_file, { desc = "Mark file with harpoon" })
    keymap.set("n", "<C-e>", ui.toggle_quick_menu, { desc = "Toggle harpoon quick menu" })
    -- keymap.set("n", "<C-h>", function()
    --     ui.nav_file(1)
    -- end)
    -- keymap.set("n", "<C-t>", function()
    --     ui.nav_file(2)
    -- end)
    -- keymap.set("n", "<C-n>", function()
    --     ui.nav_file(3)
    -- end)
    -- keymap.set("n", "<C-s>", function()
    --     ui.nav_file(4)
    -- end)
    keymap.set("n", "<leader>hn", ui.nav_next, { desc = "Go to next harpoon mark" })
    keymap.set("n", "<leader>hp", ui.nav_prev, { desc = "Go to previous harpoon mark" })
  end,
}
