return {
    "akinsho/bufferline.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    version = "*",
    opts = { -- require(bufferline).setup(opts)
        options = {
            -- mode = "tabs",
            offsets = { { filetype = "NvimTree", text = "", padding = 1 } },
            separator_style = "slant",
        },
    },
}
