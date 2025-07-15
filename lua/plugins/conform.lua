-- conform
-- https://github.com/stevearc/conform.nvim

return {
    { -- Autoformat
        "stevearc/conform.nvim",
        event = { "BufWritePre" },
        cmd = { "ConformInfo" },
        keys = {
            {
                "<leader>F",
                function()
                    require("conform").format({ async = true, lsp_format = "fallback" })
                end,
                mode = "",
                desc = "Format buffer",
            },
        },
        opts = {
            formatters_by_ft = {
                lua = { "stylua" },
            },
        },
    },
}
