-- Editor Options
vim.opt.wrap = true			-- Allows long lines to wrap instead of running off the screen.
vim.opt.linebreak = true		-- Makes wrapping break at words, not in the middle of a word.
-- vim.opt.showmatch = true		
vim.opt.number = true			-- Shows absolute line numbers on the left side
vim.opt.relativenumber = true		-- Shows relative line numbers for faster movement with j/k
vim.opt.scrolloff = 8 			-- Keeps 8 lines visible above/below cursor when scrolling
-- Exit from :terminal with Esc button 
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]])
