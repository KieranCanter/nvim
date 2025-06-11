require("lazy").setup({
    require("plugins/colors"),
    require("plugins/gitsigns"),
    require("plugins/which-key"),
    require("plugins/telescope"),
    require("plugins/lspconfig"),
    require("plugins/conform"),
    require("plugins/blink-cmp"),
    require("plugins/todo-comments"),
    require("plugins/mini"),
    require("plugins/neo-tree"),
    require("plugins/treesitter"),
    require("plugins/indent_line"),
    require("plugins/lint"),
    require("plugins/autopairs"),
    require("plugins/guess-indent"),
    {
        dir = "~/candela.nvim",
        name = "candela",
        enabled = true,
        config = function()
            require("candela").setup()
        end
    },
}, {
    ui = {
        -- If you are using a Nerd Font: set icons to an empty table which will use the
        -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
        icons = vim.g.have_nerd_font and {} or {
            cmd = "⌘",
            config = "🛠",
            event = "📅",
            ft = "📂",
            init = "⚙",
            keys = "🗝",
            plugin = "🔌",
            runtime = "💻",
            require = "🌙",
            source = "📄",
            start = "🚀",
            task = "📌",
            lazy = "💤 ",
        },
    },
})
