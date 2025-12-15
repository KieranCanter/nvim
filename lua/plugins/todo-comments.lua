vim.api.nvim_set_keymap("n", "<leader>lt", "", {
    desc = "Open todo-comments in quickfix list",
    callback = function()
        vim.api.nvim_exec2("TodoQuickFix", {})
    end,
})

return {
    {
        "folke/todo-comments.nvim",
        event = "VimEnter",
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = {},
    },
}
