-- Candela log analyzer/regex filter
-- https://github.com/kierancanter/candela.nvim
local candela_keymaps = {
    {
        lhs = "<leader>cds",
        rhs = "<Plug>CandelaUI",
        desc = "[Candela] toggle UI window",
    },
    {
        lhs = "<leader>cda",
        rhs = "<Plug>CandelaAdd",
        desc = "[Candela] add pattern in UI",
    },
    {
        lhs = "<leader>cdR",
        rhs = "<Plug>CandelaRefresh",
        desc = "[Candela] refresh patterns in current buffer",
    },
    {
        lhs = "<leader>cdD",
        rhs = "<Plug>CandelaClear",
        desc = "[Candela] clear all patterns",
    },
    {
        lhs = "<leader>cdM",
        rhs = "<Plug>CandelaMatchAll",
        desc = "[Candela] vim match all patterns",
    },
    {
        lhs = "<leader>cdF",
        rhs = "<Plug>CandelaFindAll",
        desc = "[Candela] find all patterns and send to location list",
    },
    {
        lhs = "<leader>cdL",
        rhs = "<Plug>CandelaLightbox",
        desc = "[Candela] toggle lightbox window",
    },
    {
        lhs = "<leader>cd?",
        rhs = "<Plug>CandelaHelp",
        desc = "[Candela] open help menu",
    },
}

for _, keymap in ipairs(candela_keymaps) do
    vim.api.nvim_set_keymap("n", keymap.lhs, keymap.rhs, { desc = keymap.desc })
end

return {
    {
        "KieranCanter/candela.nvim",
        opts = {},
    },
}
