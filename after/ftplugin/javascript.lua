-- [[ OPTIONS ]] =======================================================================================================

set("n", "<leader>rr", function()
	vim.cmd.update()
	opt.makeprg = "node %"
	vim.cmd.make()
end, { desc = "[N] Run `node <file>`" })

set("n", "<leader>rd", function()
	vim.cmd.update()
	opt.makeprg = "node run dev"
	vim.cmd.make()
end, { desc = "[N] Run `npm run dev`" })

set("n", "<leader>rs", function()
	vim.cmd.update()
	opt.makeprg = "node start"
	vim.cmd.make()
end, { desc = "[N] Run `npm start`"   })
