return {
    "OXY2DEV/markview.nvim",
    lazy = false,
    priority = 49,
    dependencies = {
        "saghen/blink.cmp",
    },
    keys = {
      { "<leader>tm", "<cmd>Markview toggle<cr>", desc = "[t]oggle [m]arkview" },
    },
}
