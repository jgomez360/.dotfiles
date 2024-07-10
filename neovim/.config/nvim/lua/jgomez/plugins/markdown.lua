return {
  "OXY2DEV/markview.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons", -- Used by the code bloxks
  },

  config = function()
    require("markview").setup()

    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "<leader>mt", "<cmd>Markview toggleAll<cr>", { desc = "Toggle Markdown Preview" })
  end,
}
