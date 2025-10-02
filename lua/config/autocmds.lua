-- [[ AUTOCMDS ]] ======================================================================================================

-- EJS equals to html filetype
autocmd({ "BufRead", "BufNewFile" }, {
	pattern = "*.ejs",
	callback = function()
		vim.bo.filetype = "html"
	end,
})

-- Highlight when yanking (copying) text
autocmd('TextYankPost', {
	desc = '[A] Highlight when yanking (copying) text',
	callback = function()
		vim.hl.on_yank()
	end,
})

-- Highlight trailing space
autocmd({ "BufWinEnter", "WinEnter" }, {
	pattern = "*",
	callback = function()
		if vim.w.created then return end
		vim.fn.matchadd("ErrorMsg", [[\s\+$]])
		vim.w.created = 1
	end,
})

-- autocmd("Syntax", {
-- 	pattern = "*",
-- 	callback = function()
-- 		vim.api.nvim_set_hl(0, "LeadingTab",   { ctermbg = "blue",      bg = "blue" })
-- 		vim.api.nvim_set_hl(0, "LeadingSpace", { ctermbg = "darkgreen", bg = "darkgreen" })
-- 		vim.api.nvim_set_hl(0, "EvilSpace",    { ctermbg = "darkred",   bg = "darkred" })
-- 		vim.cmd([[syntax match LeadingTab /^\t\+/]])
-- 		vim.cmd([[syntax match LeadingSpace /^\ \+/]])
-- 		vim.cmd([[syntax match EvilSpace /\(^\t*\)\@<!\t\+/]]) -- Tabs not preceeded by tabs
-- 		vim.cmd([[syntax match EvilSpace /[ \t]\+$/]])         -- Trailing space
-- 	end,
-- })

-- highlight LeadingTab ctermbg=blue guibg=blue
-- highlight LeadingSpace cterm=darkgreen guibg=darkgreen
-- highlight EvilSpace ctermbg=darkred guibg=darkred
-- au Syntax * syntax match LeadingTab /^\t\+/
-- au Syntax * syntax match LeadingSpace /^\ \+/
-- au Syntax * syntax match EvilSpace /\(^\t*\)\@<!\t\+/
-- au Syntax * syntax match EvilSpace /[ \t]\+$/

-- Restore cursor to last position
autocmd('BufReadPost', {
	group = augroup("RestoreCursor", {}),
	callback = function()
		local mark = vim.api.nvim_buf_get_mark(0, '"')
		local lcount = vim.api.nvim_buf_line_count(0)
		if mark[1] > 0 and mark[1] <= lcount then
			pcall(vim.api.nvim_win_set_cursor, 0, mark)
		end
	end,
})

-- Auto-resize window/splits when the terminal is resized
autocmd("VimResized", {
	group = augroup("Resize", {}),
	callback = function()
		vim.cmd("tabdo wincmd =")
	end,
})

-- Persist and restore the last used colorscheme:
autocmd("ColorScheme", {
	callback = function()
		vim.g.COLORSCHEME = vim.g.colors_name
	end
})
autocmd("VimEnter", {
	callback = function()
		if vim.g.COLORSCHEME == nil then
			vim.g.COLORSCHEME = "retrobox"
		end
		vim.cmd("colorscheme " .. vim.g.COLORSCHEME)
	end
})

-- Set background transparency (regardless of color scheme)
autocmd({ "ColorScheme", "VimEnter" }, {
	callback = function()
		if vim.g.BG_TRANSPARENT then
			vim.api.nvim_set_hl(0, "Normal",      { bg = "none" })
			vim.api.nvim_set_hl(0, "NormalNC",    { bg = "none" })
			vim.api.nvim_set_hl(0, "SignColumn",  { bg = "none" })
			vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })
		end
	end,
})
-- I don't know were to put this list but here we go
-- DARK colorschemes:
-- retrobox   -- Need to alter some colors
-- habamax    -- Need to alter some colors
-- sorbet     -- Need to alter some colors
-- unokai     -- Need to alter some colors
-- slate      -- Need to alter some colors
-- evening    -- Need to alter some colors
-- zaibatsu   -- Need to alter some colors
-- darkblue   -- Need to alter some colors
-- ALTER ONE OF THOSE:
  -- lunaperche
  -- wildcharm
  -- torte
  -- koehler
  -- elflord
  -- industry
-- LIGHT colorschemes:
-- peachpuff -- Need to alter some colors
-- retrobox  -- Need to alter some colors
-- morning   -- Need to alter some colors
-- zellner   -- Need to alter some colors
-- default   -- Need to alter some colors
