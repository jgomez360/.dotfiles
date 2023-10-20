return {
  "stevearc/conform.nvim",
  lazy = true,
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local conform = require("conform")
    local util = require("conform.util")

    conform.setup({
      formatters = {
        prettierd_solidity = {
          meta = {
            url = "https://github.com/prettier-solidity/prettier-plugin-solidity",
            description = "prettier plugin for automatically formatting solidity code",
          },
          command = util.from_node_modules("prettierd --plugin=prettier-plugin-solidity"),
          args = { "$FILENAME" },
          range_args = function(ctx)
            local start_offset, end_offset = util.get_offsets_from_range(ctx.buf, ctx.range)
            return { "$FILENAME", "--range-start=" .. start_offset, "--range-end=" .. end_offset }
          end,
          cwd = util.root_file({
            -- https://prettier.io/docs/en/configuration.html
            ".prettierrc",
            ".prettierrc.json",
            ".prettierrc.yml",
            ".prettierrc.yaml",
            ".prettierrc.json5",
            ".prettierrc.js",
            ".prettierrc.cjs",
            ".prettierrc.toml",
            "prettier.config.js",
            "prettier.config.cjs",
            "package.json",
          }),
        },
      },
      formatters_by_ft = {
        beancount = { "bean_format" },
        json = { "prettierd" },
        yaml = { "prettierd" },
        solidity = { "prettierd_solidity" },
        toml = { "taplo" },
        markdown = { "prettierd" },
        rust = { "rustfmt" },
        lua = { "stylua" },
        python = { "isort", "black" },
      },
      format_on_save = {
        lsp_fallback = true,
        async = false,
        timeout_ms = 1000,
      },
    })

    vim.keymap.set({ "n", "v" }, "<leader>mp", function()
      conform.format({
        lsp_fallback = true,
        async = false,
        timeout_ms = 1000,
      })
    end, { desc = "Format file or range (in visual mode)" })
  end,
}
