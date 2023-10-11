return {
    "kdheepak/lazygit.nvim",
    -- optional for floating window border decoration
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    config = function()
        -- set keymaps
        local keymap = vim.keymap -- for conciseness
        -- local mark = require("harpoon.mark")
        -- local ui = require("harpoon.ui")

        keymap.set("n", "<leader>G", ":LazyGit<CR>", { desc = "Open lazy git UI" })
    end,
}
