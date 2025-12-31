return {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    opts = {
        formatters_by_ft = {
            lua = { "stylua" },
            tex = { "latexindent" },
            python = { "isort", "black" },
            javascript = { "prettier" },
            typescript = { "prettier" },
            javascriptreact = { "prettier" },
            typescriptreact = { "prettier" },
            css = { "prettier" },
            yaml = { "prettier" },
            toml = { "prettier" },
            markdown = { "prettier" },
            sh = { "shfmt" },
            c = { "clang-format" },
            cpp = { "clang-format" },
            json = { "jq" },
        },
        format_on_save = false,
        vim.keymap.set("n", "<leader>f", function()
            require("conform").format({ lsp_fallback = true })
        end, { desc = "Format buffer with Conform" }),
    },
}
