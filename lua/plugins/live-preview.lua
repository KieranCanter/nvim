vim.api.nvim_set_keymap("n", "<leader>ls", "", {
    desc = "Start live-preview server",
    callback = function()
        vim.api.nvim_exec2("LivePreview start", {})
    end,
})
vim.api.nvim_set_keymap("n", "<leader>lc", "", {
    desc = "Close live-preview server",
    callback = function()
        vim.api.nvim_exec2("LivePreview close", {})
    end,
})
vim.api.nvim_set_keymap("n", "<leader>lp", "", {
    desc = "Open live-preview picker",
    callback = function()
        vim.api.nvim_exec2("LivePreview pick", {})
    end,
})

return {
    "brianhuster/live-preview.nvim",
    opts = {
        dynamic_root = true,
    },
    dependencies = {
        --"folke/snacks.nvim",
        "echasnovski/mini.pick",
    },
}
