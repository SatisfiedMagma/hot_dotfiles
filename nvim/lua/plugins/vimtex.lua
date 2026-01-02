return {
    "lervag/vimtex",
    -- lazy = false,
    init = function()
        vim.g.vimtex_view_method = "zathura"
        vim.g.vimtex_quickfix_open_on_warning = 0

        vim.g.vimtex_syntax_custom_envs = {
            {
                name = "tikzcd",
                math = 1,
            },
            {
                name = "asy",
                region = "texCodeZone",
                nested = "asy",
            },
            {
                name = "asydef",
                region = "texCodeZone",
                nested = "asy",
            },
            {
                name = "lstlisting",
                region = "texCodeZone",
                nested = {
                    bash = "language=[Bb]ash",
                    c = "language=C",
                    git = "language=git",
                    make = "language=[Mm]ake",
                    python = "language=[Pp]ython",
                    rust = "language=[Rr]ust",
                    sql = "language=SQL",
                },
            },
        }

        -- LaTeX-only editor settings
        vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
            pattern = "*.tex",
            callback = function()
                vim.opt_local.textwidth = 62
            end,
        })
    end,
}
