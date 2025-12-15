return {
    {
        "lewis6991/gitsigns.nvim",
        opts = {
            signs = {
                add = { text = "+" },
                change = { text = "~" },
                delete = { text = "_" },
                topdelete = { text = "‾" },
                changedelete = { text = "~" },
            },
            on_attach = function(bufnr)
                local gitsigns = require("gitsigns")

                local function map(mode, keys, func, desc)
                    vim.keymap.set(mode, keys, func, { buffer = bufnr, desc = "[g]it: " .. desc })
                end

                -- Navigation
                vim.keymap.set("n", "]g", function()
                    if vim.wo.diff then
                        vim.cmd.normal({ "]g", bang = true })
                    else
                        gitsigns.nav_hunk("next")
                    end
                end, { desc = "Jump to next [g]it hunk" })

                vim.keymap.set("n", "[g", function()
                    if vim.wo.diff then
                        vim.cmd.normal({ "[g", bang = true })
                    else
                        gitsigns.nav_hunk("prev")
                    end
                end, { desc = "Jump to previous [g]it hunk" })

                -- Actions --

                -- visual mode
                map("v", "<leader>gs", function()
                    gitsigns.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
                end, "[s]tage hunk")
                map("v", "<leader>gr", function()
                    gitsigns.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
                end, "[r]eset hunk")

                -- normal mode
                map("n", "<leader>gs", gitsigns.stage_hunk, "[s]tage hunk")
                map("n", "<leader>gr", gitsigns.reset_hunk, "[r]eset hunk")
                map("n", "<leader>gS", gitsigns.stage_buffer, "[S]tage buffer")
                map("n", "<leader>gu", gitsigns.stage_hunk, "[u]ndo stage hunk")
                map("n", "<leader>gR", gitsigns.reset_buffer, "[R]eset buffer")
                map("n", "<leader>gp", gitsigns.preview_hunk, "[p]review hunk")
                map("n", "<leader>gb", gitsigns.blame_line, "[b]lame line")
                map("n", "<leader>gd", gitsigns.diffthis, "[d]iff against index")
                map("n", "<leader>gD", function()
                    gitsigns.diffthis("@")
                end, "[D]iff against last commit")
                map("n", "<leader>g1", function()
                    gitsigns.diffthis("~1")
                end, "[D]iff against @~1")
                map("n", "<leader>gQ", function()
                    gitsigns.setqflist('all')
                end, "set [Q]uickfix list for all files")
                map("n", "<leader>gq", gitsigns.setqflist, "set [q]uickfix list for current file")

                -- Toggles
                vim.keymap.set("n", "<leader>tgb", gitsigns.blame, { desc = "[t]oggle [g]it [b]lame" })
                vim.keymap.set("n", "<leader>tgw", gitsigns.toggle_word_diff, { desc = "[t]oggle [g]it [w]ord diff" })
                vim.keymap.set("n", "<leader>tgd", gitsigns.preview_hunk_inline, { desc = "[t]oggle [g]it show [d]eleted" })
            end,
        },
    },
}
