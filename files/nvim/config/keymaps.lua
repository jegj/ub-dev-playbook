-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local function map(mode, lhs, rhs, opts)
	local keys = require("lazy.core.handler").handlers.keys
	---@cast keys LazyKeysHandler
	-- do not create the keymap if a lazy keys handler exists
	if not keys.active[keys.parse({ lhs, mode = mode }).id] then
		opts = opts or {}
		opts.silent = opts.silent ~= false
		if opts.remap and not vim.g.vscode then
			opts.remap = nil
		end
		vim.keymap.set(mode, lhs, rhs, opts)
	end
end

map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "<leader>sz", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "local find & replace" })
map("x", "<leader>p", [["_dP]], { desc = "smart paste" })
map("n", "<C-p>", "<cmd>silent !tmux neww tmux-sessionizer<CR>", { desc = "open project" })
map("n", "*", "*zz")
map("n", "#", "#zz")
map("n", "<leader>fcf", ':let @+=expand("%")<CR>', { desc = "copy relative path" })
map("n", "<leader>fcF", ':let @+=expand("%:p")<CR>', { desc = "copy absolute path" })
map("n", "<leader>fcn", ':let @+=expand("%:t")<CR>', { desc = "copy filename" })
map("n", "<leader>fcd", ':let @+=expand("%:p:h")<CR>', { desc = "copy directory name" })
