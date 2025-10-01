vim.keymap.set("n", "<leader>rr", function()
	vim.cmd.update()
	vim.o.makeprg = "node %"
	vim.cmd.make()
end, { desc = "[N] Run `node <file>`" })

vim.keymap.set("n", "<leader>rd", function()
	vim.cmd.update()
	vim.o.makeprg = "node run dev"
	vim.cmd.make()
end, { desc = "[N] Run `npm run dev`" })

vim.keymap.set("n", "<leader>rs", function()
	vim.cmd.update()
	vim.o.makeprg = "node start"
	vim.cmd.make()
end, { desc = "[N] Run `npm start`"   })
