return {
  "f-person/git-blame.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local gitblame = require("gitblame")

    gitblame.setup({
      enabled = true,
      date_format = "%c",
      message_template = "  <author> • <date> • <summary>",
      message_when_not_committed = "  Not Committed Yet",
      highlight_group = "Comment",
      set_extmark_options = {},
      display_virtual_text = false, -- displayed via lualine
      ignored_filetypes = {},
      delay = 0,
      virtual_text_column = nil,
      use_blame_commit_file_urls = false,
    })
  end,
}
