-- [[ COMMANDS ]] ======================================================================================================

-- `:W` that print the git blame for the current line
command("W", function()
	vim.cmd("write !sudo tee % > /dev/null")
	vim.cmd("edit!")
end, { desc = "[C] Force write (sudo)" })

-- `:GitBlameLine` Print the git blame for the current line
command('GitBlameLine', function()
	local line_number = vim.fn.line('.')
	local filename = vim.api.nvim_buf_get_name(0)
	print(vim.fn.system({ 'git', 'blame', '-L', line_number .. ',+1', filename }))
end, { desc = '[C] Print the git blame for the current line' })
