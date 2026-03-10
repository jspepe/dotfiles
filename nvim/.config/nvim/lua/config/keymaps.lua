-- easier split navigation
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")


-- Use prettier to format html you can run prettier manually with :%! prettier --parser html
vim.keymap.set("n", "<leader>f", ":%!prettier --stdin-filepath %<CR>")
