function SetColorScheme(color)
    color = color or "catppuccin"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
    {
        "folke/tokyonight.nvim",
        name = "tokyonight",
        priority = 1000,
        config = function()
            require("tokyonight").setup({
                style = "night",
                transparent = true,
                terminal_colors = true,
                styles = {
                    comments = { italic = false },
                    keywords = { italic = false },
                    sidebars = "dark",
                    floats = "dark",
                },
            })
        end,
    },
    {
        "rose-pine/neovim",
        name = "rose-pine",
        priority = 1000,
        config = function()
            require("rose-pine").setup({
                disable_background = true,
                styles = {
                    italic = false,
                },
            })
        end,
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                flavour = "auto", -- latte, frappe, macchiato, mocha
                background = {
                    light = "latte",
                    dark = "mocha",
                },
                transparent_background = true,
                styles = {
                    comments = {},
                    conditionals = {},
                },
                custom_highlights = function(colors)
                    return {
                        LineNr = { bg = colors.base },
                        CursorLineNr = { bg = colors.base },
                        SignColumn = { bg = colors.base },
                        Visual = { bg = colors.surface0 },
                    }
                end,
                float = {
                    transparent = true,
                    solid = false,
                }
            })

            SetColorScheme();
        end,
    },
}
