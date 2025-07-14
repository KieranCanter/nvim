-- Snacks conglomeration of plugins
-- https://github.com/folke/snacks.nvim

return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    picker = { enabled = true },
  },
  keys = {
    { "<leader>:", function() Snacks.picker.command_history() end, desc = "Command History" },
    -- find
    { "<leader>fs", function() Snacks.picker.smart() end, desc = "Find Files Smart" },
    { "<leader>fb", function() Snacks.picker.buffers() end, desc = "Find Buffers" },
    { "<leader>fc", function() Snacks.picker.files({ cwd = vim.fn.stdpath("config") }) end, desc = "Find Files Config" },
    { "<leader>ff", function() Snacks.picker.files() end, desc = "Find Files cwd" },
    { "<leader>fg", function() Snacks.picker.git_files() end, desc = "Find Git Files" },
    { "<leader>fr", function() Snacks.picker.recent() end, desc = "Find Files Recent" },
    { "<leader>fl", function() Snacks.picker.lines() end, desc = "Fuzzy Lines in Buffer" },
    -- grep
    { "<leader>sB", function() Snacks.picker.grep_buffers() end, desc = "Grep Open Buffers" },
    { "<leader>ss", function() Snacks.picker.grep() end, desc = "Grep cwd" },
    { "<leader>sg", function() Snacks.picker.git_grep() end, desc = "Grep Git Files" },
    { "<leader>sw", function() Snacks.picker.grep_word() end, desc = "Search with Visual Selection or Word", mode = { "n", "x" } },
    -- search
    { "<leader>sr", function() Snacks.picker.resume() end, desc = "Search Resume" },
    { "<leader>sh", function() Snacks.picker.help() end, desc = "Search Help Pages" },
    { "<leader>sC", function() Snacks.picker.commands() end, desc = "Search Commands" },
    { "<leader>sd", function() Snacks.picker.diagnostics_buffer() end, desc = "Search Diagnostics in Buffer" },
    { "<leader>sD", function() Snacks.picker.diagnostics() end, desc = "Search Diagnostics" },
    { "<leader>sj", function() Snacks.picker.jumps() end, desc = "Search Jumps" },
    { "<leader>sk", function() Snacks.picker.keymaps() end, desc = "Search Keymaps" },
    { "<leader>sl", function() Snacks.picker.loclist() end, desc = "Search Location List" },
    { "<leader>sq", function() Snacks.picker.qflist() end, desc = "Search Quickfix List" },
    { "<leader>sM", function() Snacks.picker.man() end, desc = "Search Man Pages" },
    { "<leader>su", function() Snacks.picker.undo() end, desc = "Search Undo History" },
    -- LSP
    { "gld", function() Snacks.picker.lsp_definitions() end, desc = "Goto LSP Definition" },
    { "glD", function() Snacks.picker.lsp_declarations() end, desc = "Goto LSP Declaration" },
    { "glr", function() Snacks.picker.lsp_references() end, nowait = true, desc = "Goto LSP References" },
    { "gli", function() Snacks.picker.lsp_implementations() end, desc = "Goto LSP Implementation" },
    { "glt", function() Snacks.picker.lsp_type_definitions() end, desc = "Goto LSP Type Definition" },
    { "gls", function() Snacks.picker.lsp_symbols() end, desc = "LSP Symbols" },
    { "glS", function() Snacks.picker.lsp_workspace_symbols() end, desc = "LSP Workspace Symbols" },
    -- Helpful for dev
    { "<leader>sH", function() Snacks.picker.highlights() end, desc = "Search Highlights" },
    { "<leader>si", function() Snacks.picker.icons() end, desc = "Search Icons" },
    { "<leader>.",  function() Snacks.scratch() end, desc = "Toggle Scratch Buffer" },
  }
}
