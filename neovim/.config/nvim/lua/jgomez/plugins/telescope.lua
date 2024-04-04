return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-fzy-native.nvim",
    "nvim-tree/nvim-web-devicons",
    "ThePrimeagen/git-worktree.nvim",
    "davvid/telescope-git-grep.nvim",
  },
  config = function()
    local git_worktree = require("git-worktree")
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    git_worktree.setup()
    telescope.setup({
      defaults = {
        file_ignore_patterns = { "^.git/", "node_modules" },
        path_display = { "truncate " },
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous, -- move to prev result
            ["<C-j>"] = actions.move_selection_next, -- move to next result
            ["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
          },
        },
        vimgrep_arguments = {
          "rg",
          "--color=never",
          "--no-heading",
          "--with-filename",
          "--line-number",
          "--column",
          "--hidden",
          "--smart-case",
          "-u",
        },
      },
      pickers = {
        find_files = {
          hidden = true,
        },
      },
    })

    telescope.load_extension("fzy_native")
    telescope.load_extension("git_grep")
    telescope.load_extension("git_worktree")

    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
    keymap.set(
      "n",
      "<leader>fa",
      "<cmd>Telescope find_files follow=true no_ignore=true hidden=true<cr>",
      { desc = "Fuzzy find files in cwd" }
    )
    keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
    keymap.set("n", "<leader>fg", "<cmd>Telescope git_files<cr>", { desc = "Fuzzy find git files" })
    keymap.set(
      "n",
      "<leader>fs",
      "<cmd>Telescope git_grep live_grep cwd=./ use_git_root=false<cr>",
      { desc = "Find string in cwd git files" }
    )
    keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
    keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Find todos" })
    keymap.set(
      "n",
      "<leader>fb",
      "<cmd>lua require('telescope').extensions.git_worktree.git_worktrees()<cr>",
      { desc = "Find branch in git worktree" }
    )
    keymap.set(
      "n",
      "<leader>fB",
      "<cmd>lua require('telescope').extensions.git_worktree.create_git_worktree()<cr>",
      { desc = "Create branch in git worktree" }
    )
  end,
}
