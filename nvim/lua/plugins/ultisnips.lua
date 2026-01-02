return {
    "SirVer/ultisnips",
    init = function()
        vim.g.UltiSnipsExpandTrigger = "<tab>"
        vim.g.UltiSnipsJumpForwardTrigger = "<tab>"
        vim.g.UltiSnipsJumpBackwardTrigger = "<C-k>"

        vim.g.UltiSnipsSnippetDirectories = {
            -- "UltiSnips",
			"/home/pragyan/.config/nvim/Ultisnips",
            "vim-snippets/UltiSnips",
        }

        vim.g.UltiSnipsEditSplit = "vertical"
    end,
}
