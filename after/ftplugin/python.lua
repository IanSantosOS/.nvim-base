-- [[ OPTIONS ]] =======================================================================================================

opt.makeprg = "python3 %"

-- [[ KEYMAPS ]] =======================================================================================================

set("n", "<leader>r", ":update<CR>:make<CR>", { desc = "[N] Run `python3 <file>`" })

-- [[ FOLD ]] ==========================================================================================================

-- @rezhaadriantanuharja [nickname: V(im)S Code]

local query = vim.treesitter.query.get("python", "folds")
local tree = vim.treesitter.get_parser():parse()[1]

for _, node, _ in query:iter_captures(tree:root(), 0) do
	local start_line = node:start() + 1
	local end_line = node:end_() + 1
	if end_line > start_line then
		vim.cmd(string.format("%d,%dfold", start_line, end_line))
	end
end
