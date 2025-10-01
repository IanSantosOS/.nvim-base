vim.o.makeprg = "%"
vim.keymap.set("n", "<leader>r", ":update<CR>:make<CR>", { desc = "[N] Run the bash file" })
