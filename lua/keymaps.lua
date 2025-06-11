-- File explorer
vim.keymap.set("n", "<leader>ex", vim.cmd.Ex, { desc = "File [E]xplorer" })

-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Make ctrl+backspace function like delete in insert mode
vim.keymap.set("i", "<C-BS>", "<Del>")

-- Swap lines up/down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move up" })

-- Vertically center cursor after page up/down and search
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Disable arrow keys in normal mode
vim.keymap.set("n", "<left>", '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set("n", "<right>", '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set("n", "<up>", '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set("n", "<down>", '<cmd>echo "Use j to move!!"<CR>')

-- Horizontal scroll
vim.keymap.set("n", "<C-S-d>", "20zh")
vim.keymap.set("n", "<C-S-u>", "20zl")

-- Keybinds to make split navigation easier.
-- Use CTRL+<hjkl> to switch between splits
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left split" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right split" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower split" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper split" })

-- Use CTRL+SHIFT+<hjkl> to move splits
-- vim.keymap.set("n", "<C-S-h>", "<C-w>H", { desc = "Move split to the left" })
vim.keymap.set("n", "<C-S-h>", "<C-w>H", { desc = "Move split to the left" })
vim.keymap.set("n", "<C-S-l>", "<C-w>L", { desc = "Move split to the right" })
vim.keymap.set("n", "<C-S-j>", "<C-w>J", { desc = "Move split to the lower" })
vim.keymap.set("n", "<C-S-k>", "<C-w>K", { desc = "Move split to the upper" })

-- Use CTRL+ALT+<hjkl> to adjust split sizes
vim.keymap.set("n", "<C-M-h>", ":vertical resize -3<CR>", { desc = "Vertical split size -3" })
vim.keymap.set("n", "<C-M-l>", ":vertical resize +3<CR>", { desc = "Vertical split size +3" })
vim.keymap.set("n", "<C-M-j>", ":resize -3<CR>", { desc = "Horizontal split size -3" })
vim.keymap.set("n", "<C-M-k>", ":resize +3<CR>", { desc = "Horizontal split size +3" })

-- Buffers
vim.keymap.set("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
vim.keymap.set("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next Buffer" })
vim.keymap.set("n", "<leader>bb", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })
vim.keymap.set("n", "<leader>bD", "<cmd>:bd<cr>", { desc = "Delete Buffer and Window" })

-- Tabs
vim.keymap.set("n", "<leader><tab><S-l>", "<cmd>tablast<cr>", { desc = "Last Tab" })
vim.keymap.set("n", "<leader><tab>o", "<cmd>tabonly<cr>", { desc = "Close Other Tabs" })
vim.keymap.set("n", "<leader><tab><S-h>", "<cmd>tabfirst<cr>", { desc = "First Tab" })
vim.keymap.set("n", "<leader><tab><tab>", "<cmd>tabnew<cr>", { desc = "New Tab" })
vim.keymap.set("n", "<leader><tab>l", "<cmd>tabnext<cr>", { desc = "Next Tab" })
vim.keymap.set("n", "<leader><tab>c", "<cmd>tabclose<cr>", { desc = "Close Tab" })
vim.keymap.set("n", "<leader><tab>h", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })

-- Move line below to the end of current line
vim.keymap.set("n", "J", "mzJ`z")

-- Delete/paste without overwriting clipboard register
vim.keymap.set({ "n", "v" }, "<leader>d", '"_d', { desc = "Delete without overwriting clipboard register" })
vim.keymap.set(
	"x",
	"<leader>p",
	[["_dP]],
	{ desc = "Delete selection and paste without overwriting clipboard register" }
)

-- Copy to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Copy selection to system clipboard" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "Copy rest of line to system clipboard" })

-- Diagnostic keymaps
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })
vim.keymap.set("n", "<M-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<M-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz", { desc = "Go to next local quickfix location" })
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz", { desc = "Go to previous local quickfix location" })

-- Start search and replace command for current word
vim.keymap.set(
	"n",
	"<leader>sb",
	[[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
	{ desc = "[S]earch and replace current word in [B]uffer" }
)

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- NOTE: Dev purposes
P = function(v)
	print(vim.inspect(v))
	return v
end
