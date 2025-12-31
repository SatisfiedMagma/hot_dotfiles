return {
    {
        "williamboman/mason-lspconfig.nvim",
        opts = {
            ensure_installed = {
                "ts_ls",
                "html",
                "cssls",
                "tailwindcss",
                "svelte",
                "lua_ls",
                "graphql",
                "emmet_ls",
                "prismals",
                "pyright",
                "eslint",
            },
        },
        dependencies = {
            {
                "williamboman/mason.nvim",
                opts = {
                    ui = {
                        icons = {
                            package_installed = "✓",
                            package_pending = "➜",
                            package_uninstalled = "✗",
                        },
                    },
                },
            },
            {
                "neovim/nvim-lspconfig",
                dependencies = {
                    {
                        "folke/lazydev.nvim",
                        ft = "lua",
                        opts = {
                            library = {
                                { path = "${3rd}/luv/library", words = { "vim%.uv" } },
                            },
                        },
                    },
                },
                config = function()
                    vim.keymap.set("n", "<leader>d", function()
                        local cfg = vim.diagnostic.config()
                        vim.diagnostic.config({
                            virtual_text = not cfg.virtual_text,
                        })
                    end, { desc = "Toggle diagnostics virtual text" })
                end,
            },
        },
    },
    {
        "WhoIsSethDaniel/mason-tool-installer.nvim",
        opts = {
            ensure_installed = {
                "prettier",
                "stylua",
                "isort",
                "black",
                "pylint",
                "eslint_d",
            },
        },
        dependencies = {
            "williamboman/mason.nvim",
        },
    },
}

