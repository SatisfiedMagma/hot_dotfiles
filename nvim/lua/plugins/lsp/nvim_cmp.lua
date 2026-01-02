-- =========================
-- nvim-cmp toggle
-- =========================
vim.g.cmp_enabled = true

vim.keymap.set("n", "<leader>tc", function()
    vim.g.cmp_enabled = not vim.g.cmp_enabled
    if vim.g.cmp_enabled then
        vim.notify("nvim-cmp enabled")
    else
        vim.notify("nvim-cmp disabled")
    end
end)

return {
    "hrsh7th/nvim-cmp",
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",

        -- snippets
        "SirVer/ultisnips",
        "quangnguyen30192/cmp-nvim-ultisnips",
        "honza/vim-snippets",
    },
    config = function()
        local cmp = require("cmp")

        cmp.setup({
            enabled = function()
                return vim.g.cmp_enabled
            end,

            snippet = {
                expand = function(args)
                    vim.fn["UltiSnips#Anon"](args.body)
                end,
            },

            mapping = cmp.mapping.preset.insert({
                ["<CR>"] = cmp.mapping.confirm({ select = true }),

                -- Tab mapping: only active when cmp is enabled
                ["<Tab>"] = cmp.mapping(function(fallback)
                    if not vim.g.cmp_enabled then
                        return fallback()
                    end

                    if cmp.visible() then
                        cmp.select_next_item()
                    elseif vim.fn["UltiSnips#CanExpandSnippet"]() == 1 then
                        vim.api.nvim_feedkeys(
                            vim.api.nvim_replace_termcodes("<Plug>(ultisnips_expand)", true, true, true),
                            "",
                            true
                        )
                    elseif vim.fn["UltiSnips#CanJumpForwards"]() == 1 then
                        vim.api.nvim_feedkeys(
                            vim.api.nvim_replace_termcodes("<Plug>(ultisnips_jump_forward)", true, true, true),
                            "",
                            true
                        )
                    else
                        fallback()
                    end
                end, { "i", "s" }),

                -- Shift-Tab mapping: only active when cmp is enabled
                ["<S-Tab>"] = cmp.mapping(function(fallback)
                    if not vim.g.cmp_enabled then
                        return fallback()
                    end

                    if vim.fn["UltiSnips#CanJumpBackwards"]() == 1 then
                        vim.api.nvim_feedkeys(
                            vim.api.nvim_replace_termcodes("<Plug>(ultisnips_jump_backward)", true, true, true),
                            "",
                            true
                        )
                    else
                        fallback()
                    end
                end, { "i", "s" }),
            }),

            sources = {
                { name = "ultisnips" },
                { name = "nvim_lsp" },
                { name = "buffer" },
                { name = "path" },
            },
        })
    end,
}
