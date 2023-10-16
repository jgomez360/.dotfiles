return {
    "vimwiki/vimwiki",
    event = "BufEnter *.md",
    keys = { "<leader>ww", "<leader>wt" },
    init = function()
        vim.g.vimwiki_list = {
            {
                path = "~/vimwiki/",
                syntax = "markdown",
                ext = ".md",
            },
            -- {
            --     path = "~/vimwiki2/",
            --     syntax = "markdown",
            --     ext = ".md",
            -- },
        }
        vim.g.vimwiki_ext2syntax = {
            [".md"] = "markdown",
            [".markdown"] = "markdown",
            [".mdown"] = "markdown",
        }

        -- use markdown format only for files in path
        vim.g.vimwiki_global_ext = 0

        -- vim.g.vimwiki_listsyms = "✗○◐●✓"
        vim.g.vimwiki_listsyms = " ○◐●✓"
    end,
}
