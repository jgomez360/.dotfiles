local plugins = {
 	{ 'alexghergh/nvim-tmux-navigation', lazy = false, config = function()
		local nvim_tmux_nav = require('nvim-tmux-navigation')

		nvim_tmux_nav.setup {
			disable_when_zoomed = true -- defaults to false
		}

		vim.keymap.set('n', "<C-h>", nvim_tmux_nav.NvimTmuxNavigateLeft)
		vim.keymap.set('n', "<C-j>", nvim_tmux_nav.NvimTmuxNavigateDown)
		vim.keymap.set('n', "<C-k>", nvim_tmux_nav.NvimTmuxNavigateUp)
		vim.keymap.set('n', "<C-l>", nvim_tmux_nav.NvimTmuxNavigateRight)
		vim.keymap.set('n', "<C-\\>", nvim_tmux_nav.NvimTmuxNavigateLastActive)
		vim.keymap.set('n', "<C-Space>", nvim_tmux_nav.NvimTmuxNavigateNext)

	    end,
    },
    {
        "neovim/nvim-lspconfig",

         dependencies = {
             "jose-elias-alvarez/null-ls.nvim",
             config = function()
                 require "custom.configs.null-ls"
             end,
         },

         config = function()
            require "plugins.configs.lspconfig"
            require "custom.configs.lspconfig"
         end,
    },
    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
          ensure_installed = {
              -- defaults 
              "vim",
              "lua",

              -- web3
              "solidity",

              -- high level
              "python",

             -- low level
              "rust",
          },
        },
    },
    {
        "rust-lang/rust.vim",
        ft = "rust",
        init = function()
            vim.g.rustfmt_autosave = 1
        end
    },
    {
        "saecki/crates.nvim",
        ft = {"rust", "toml"},
        config = function(_, opts)
            local crates = require("crates")
            crates.setup(opts)
            crates.show()
        end,
    },
    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "lua-language-server",
                "mypy",
                "nomicfoundation-solidity-language-server",
                "pyright",
                "rust-analyzer",
                "rustfmt",
            },
        },
    }
}

return plugins
