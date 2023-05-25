local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities
local lspconfig = require "lspconfig"

lspconfig.pyright.setup({
    on_attach = on_attach,
    settings = {
        pyright = {
            autoImportCompletion = true,
        },
        python = {
            analysis = {
                autoImportCompletion = true,
                autoSearchPaths = true,
                diagnosticMode = 'openFilesOnly',
                useLibraryCodeForTypes = true,
                typeCheckingMode = 'basic',
            }
        }
    }
})

lspconfig.rust_analyzer.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {"rust"},
    root_dir = lspconfig.util.root_pattern("Cargo.toml"),
    settings = {
        ['rust-analyzer'] = {
            cargo = {
                allFeatures = true,
            },
        },
    },
})

lspconfig.solc.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {"solidity"},
    root_dir = lspconfig.util.root_pattern("foundry.toml"),
})

lspconfig.solidity.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    cmd = {'nomicfoundation-solidity-language-server', '--stdio'},
    filetypes = {"solidity"},
    root_dir = lspconfig.util.root_pattern("foundry.toml"),
    single_file_support = true,
})
