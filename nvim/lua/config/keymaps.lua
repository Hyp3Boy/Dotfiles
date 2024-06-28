-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = LazyVim.safe_keymap_set
local nvim_tmux_nav = require("nvim-tmux-navigation")

map("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

--toggleterm
-- map("n", "<leader>ñl", "<cmd>ToggleTerm size=10 dir=. direction=horizontal<cr>", { desc = "Open horizontal term" })
-- map("n", "<leader>ñp", "<cmd>ToggleTerm size=40 dir=. direction=vertical<cr>", { desc = "Open vertical term" })
-- map({ "t", "n" }, "<leader>ñk", "<cmd>ToggleTerm<cr>", { desc = "Toggle terminal" })

-- window management
map("n", "<leader>|", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
map("n", "<leader>-", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
map("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
map("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

-- map("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
-- map("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
-- map("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
-- map("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
-- map("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab
--
-- nvim-tmux-navigation

map("n", "<C-h>", nvim_tmux_nav.NvimTmuxNavigateLeft)
map("n", "<C-j>", nvim_tmux_nav.NvimTmuxNavigateDown)
map("n", "<C-k>", nvim_tmux_nav.NvimTmuxNavigateUp)
map("n", "<C-l>", nvim_tmux_nav.NvimTmuxNavigateRight)
map("n", "<C-\\>", nvim_tmux_nav.NvimTmuxNavigateLastActive)
map("n", "<C-Space>", nvim_tmux_nav.NvimTmuxNavigateNext)
