-- conform
-- https://github.com/mbbill/undotree

return {
    {
        "mbbill/undotree",
        keys = {
            {
                "\\",
                vim.cmd.UndotreeToggle,
                mode = "n",
                desc = "Show undotree",
            },
        },
    },
}
