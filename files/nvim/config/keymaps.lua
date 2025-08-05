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

-- select all
map("n", "<C-a>", "gg<S-v>G", { desc = "select all" })
-- Do things without affecting the registers
map("n", "x", '"_x')
map("n", "<Leader>d", '"_d')
map("v", "<Leader>d", '"_d')
map("n", "<Leader>D", '"_D')
map("v", "<Leader>D", '"_D')
-- focus
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "<leader>sz", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "local find & replace" })
map("x", "<leader>p", [["_dP]], { desc = "smart paste" })
map("n", "<C-p>", "<cmd>silent !tmux neww tmux-sessionizer<CR>", { desc = "open project" })
map("n", "*", "*zz")
map("n", "#", "#zz")
map("n", "#", "#zz")
-- copy files metadata
map("n", "<leader>fcf", ':let @+=expand("%")<CR>', { desc = "copy relative path" })
map("n", "<leader>fcF", ':let @+=expand("%:p")<CR>', { desc = "copy absolute path" })
map("n", "<leader>fcn", ':let @+=expand("%:t")<CR>', { desc = "copy filename" })
map("n", "<leader>fcd", ':let @+=expand("%:p:h")<CR>', { desc = "copy directory name" })
-- replace under cursor
map("n", "<leader>j", "*``cgn", { desc = "replace under cursor. Use '.' to repeat last command" })
-- Easier access to beginning and end of lines
map("n", "<A-h>", "^", {
	desc = "Go to start of line",
	silent = true,
})
map("n", "<A-l>", "$", {
	desc = "Go to end of line",
	silent = true,
})
