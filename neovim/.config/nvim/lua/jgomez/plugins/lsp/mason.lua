return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    -- import mason
    local mason = require("mason")

    -- import mason-lspconfig
    local mason_lspconfig = require("mason-lspconfig")

    -- import mason-tool-installer
    local mason_tool_installer = require("mason-tool-installer")

    -- enable mason and configure icons
    mason.setup({
      PATH = "append",
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    mason_lspconfig.setup({
      -- list of servers for mason to install
      ensure_installed = {
        "gopls",
        "lua_ls",
        "pyright",
        "robotframework_ls",
        "ruff_lsp",
        "rust_analyzer",
        "yamlls",
      },
      -- auto-install configured servers (with lspconfig)
      automatic_installation = true, -- not the same as ensure_installed
    })

    mason_tool_installer.setup({
      ensure_installed = {
        "gofumpt", -- go formatter
        "goimports-reviser", -- go imports formatter
        "prettierd", -- prettier formatter
        "nomicfoundation-solidity-language-server", -- solidity formatter
        "stylua", -- lua formatter
        "ruff", -- python formatter
        "taplo", -- toml formatter
      },
    })
  end,
}
