-- [[ KEYMAPS ]] =======================================================================================================

-- [ VARIABLES ] -------------------------------------------------------------------------------------------------------

vim.g.mapleader = " "
vim.g.maplocalleader = " "
local set = vim.keymap.set

-- [ CONFIG ] ----------------------------------------------------------------------------------------------------------

set("n", "<leader>o", ":update<CR>:source %<CR>", { desc = "[N] Source the entire file (lua)" })
set("n", "<leader>l", "<CMD>.lua<CR>",            { desc = "[N] Execute the current line in lua" })
set("v", "<leader>l", ":lua<CR>",                 { desc = "[N] Execute the selected code in lua" })

-- ABBREVIATIONS - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

set("ia", "#!", "#!/usr/bin/env bash", { desc = "[A] Shebang Bash" })

-- SINGLE KEYMAPS  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

set("i", "<C-r><C-v>", [[<C-r>. = <C-r>"]], { desc = "[N] Create a variable with the text you replaced" })

set("i", "jk", "<ESC>", { desc = "[N] Leaves insert mode" })

set("n", "J", "mzJ`z", { desc = "[N] Join lines while keeping the cursor in the same position" })

set({ "n", "v" }, "<leader>/", "<CMD>let @/=''<CR>", { desc = "[N] Clears the search highlight" })

set("n", "<leader>h", ":vert h ", { desc = "[N] Search help" })

set({ "n", "v" }, "<leader>a", "<ESC>govG$", { desc = "[N] Select all text" })

set("n", "<leader>x", function()
	if vim.o.filetype == "" then
		vim.cmd.update()
		vim.cmd("!chmod +x %")
		vim.cmd.filetype("detect")
	end
end, { desc = "[N] Make the current bash file executable" })

-- ABNT PROBLEM  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

-- ABNT2 doesn't recognize CTRL-]
-- If you are not brazillian you can ignore this
set({ "n", "v" }, "", "<C-]>", { desc = "[N] Jump to a tag"})
set({ "i", "c" }, "", "<C-]>", { desc = "[N] Abbreviation"})

-- TOGGLE COLORS - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

set("n", "<leader>tb", "<CMD>lua ToggleTransparentBackground()<CR>", { desc = "[N] Toggle transparent background" })

set({ "n", "v" }, "<leader>t8", '<CMD>lua ToggleColorColumn("81")<CR>',  { desc = "[N] Toggle highlight column 81"  })
set({ "n", "v" }, "<leader>t2", '<CMD>lua ToggleColorColumn("121")<CR>', { desc = "[N] Toggle highlight column 121" })

-- MOVE LINES  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

-- I want to use alt/meta key for all of these, but for some reason it isn't working, so for now
-- I will use the <leader> and Uppercase letters

set("n", "<leader>j", ":m .+1<CR>==", { silent = true, desc = "[N] Move the current line down" })
set("n", "<leader>k", ":m .-2<CR>==", { silent = true, desc = "[N] Move the current line up" })
set("v", "K", ":m '<-2<CR>gv=gv", { silent = true, desc = "[N] Move the current selection up" })
set("v", "J", ":m '>+1<CR>gv=gv", { silent = true, desc = "[N] Move the current selection down" })

-- FILE RELATED  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

set("n", "<leader>fp", ":find ",           { desc = "[N] Search file" })
set("n", "<leader>e", "<CMD>Explore!<CR>", { desc = "[N] Open Netrw"  })

set("n", "<leader>bb", ":buffer ",         { desc = "[N] Search buffer" })
set("n", "<leader>bd", "<CMD>bdelete<CR>", { desc = "[N] Deletes current buffer" })

set("n", "<leader>q", "<CMD>quit<CR>",   { desc = "[N] Quit" })
set("n", "<leader>Q", "<CMD>q!<CR>",     { desc = "[N] Force quit" })
set("n", "<leader>w", "<CMD>update<CR>", { desc = "[N] Saves the current buffer" })
set("n", "<leader>W", "<CMD>wa<CR>",     { desc = "[N] Write all changed buffers" })

-- SEARCH AND REPLACE  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

set("n", "<leader>ss", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
	{ desc = "[N] Search and replace the word under the cursor globally (Case Insensitive)" })

set("n", "<leader>sS", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/g<Left><Left>]],
	{ desc = "[N] Search and replace the word under the cursor globally (Case Sensitive)" })

-- AUTO CLOSE  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

set("i", "(<CR>",  "(<CR>)<C-o>O")
set("i", "(<C-j>", "(<CR>)<C-o>O")

set("i", "[<CR>",  "[<CR>]<C-o>O")
set("i", "[<C-j>", "[<CR>]<C-o>O")

set("i", "{<CR>",  "{<CR>}<C-o>O")
set("i", "{<C-j>", "{<CR>}<C-o>O")

-- BETTER MOVEMENT - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

-- Better up/down (`gj` in case I use `:set wrap` and `zz` to center the cursor)
set({ "n", "v" }, "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
set({ "n", "v" }, "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

-- Better scroll
set({ "n", "v" }, "<C-u>", "<C-u>zz")
set({ "n", "v" }, "<C-d>", "<C-d>zz")
set({ "n", "v" }, "<C-f>", "<C-f>zz")
set({ "n", "v" }, "<C-b>", "<C-b>zz")

-- Better next/previous search (with unfolding when necessary)
set({ "n", "v" }, "n", "nzzzv")
set({ "n", "v" }, "N", "Nzzzv")

-- INDENTING RELATED - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

-- Better indenting
set("v", "<", "<gv")
set("v", ">", ">gv")

set("n", "<leader>iw", function()
	if vim.o.syntax == "whitespace" then
		vim.o.syntax = ""
	else
		vim.o.syntax = "whitespace"
	end
end, { desc = "[N] Toggle syntax whitespace" })

set("n", "<leader>it", function()
	vim.o.list = not vim.o.list
end, { desc = "[N] Toggle list (from listchars)" })

-- LSP - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

-- Maybe this should be in the `keys_plugins.lua` file.
set("n", "<leader>ff", vim.lsp.buf.format,      { desc = "[N] Format the current buffer using LSP" })
set("n", "<leader>dh", vim.lsp.buf.hover,       { desc = "[N] Show hover information for the symbol under the cursor" })
set("n", "<leader>df", vim.lsp.buf.definition,  { desc = "[N] Go to the definition of the symbol under the cursor" })
set("n", "<leader>dr", vim.lsp.buf.references,  { desc = "[N] Show all references to the symbol under the cursor" })
set("n", "<leader>ca", vim.lsp.buf.code_action,
    { desc = "[N] Show available code actions for the current line or selection" })

-- CLIPBOARD - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

set({ "n", "v" }, "<leader>P",  [["+p]],  { desc = "[N] Paste from the system clipboard"     })
set("n",          ",p",         [["0p]],  { desc = "[N] Paste last thing yanked, not deleted"})
set("n",          ",P",         [["0P]],  { desc = "[N] Paste last thing yanked, not deleted"})
set("v",          "<leader>p",  [["_dP]], { desc = "[N] Paste over selection without losing the yank" })

set("n",          "<leader>Y",  [["+y$]], { desc = "[N] Yank the current line into the system clipboard" })
set({ "n", "v" }, "<leader>y",  [["+y]],  { desc = "[N] Yank selected text into the system clipboard" })

set({ "n", "v" }, "<leader>dd",  [["_d]],  { desc = "[N] Delete without yanking" })

-- TAB - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

set("n", "<leader>tn", "<CMD>tabnew<CR>",      { desc = "[N] Creates new tab"       })
set("n", "<leader>tx", "<CMD>tabclose<CR>",    { desc = "[N] Closes current tab"    })
set("n", "<leader>to", "<CMD>tabonly<CR>",     { desc = "[N] Closes other tabs"     })
set("n", "<leader>tm", ":tabmove ",            { desc = "[N] Moves current tab"     })
set("n", "<leader>pt", "<CMD>tabprevious<CR>", { desc = "[N] Moves to next tab"     })
set("n", "<leader>nt", "<CMD>tabnext<CR>",     { desc = "[N] Moves to previous tab" })
set("n", "<leader>te", ':tabedit <C-r>=escape(expand("%:p:h"), " ")<CR>/<CR>',
    { desc = "[N] Opens a new tab with the current buffer's path" })

-- WINDOW/PANEL  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

set("n", "<C-k>", "<CMD>wincmd k<CR>", { desc = "[N] Move to the top panel"    })
set("n", "<C-j>", "<CMD>wincmd j<CR>", { desc = "[N] Move to the bottom panel" })
set("n", "<C-h>", "<CMD>wincmd h<CR>", { desc = "[N] Move to the left panel"   })
set("n", "<C-l>", "<CMD>wincmd l<CR>", { desc = "[N] Move to the right panel"  })

set("n", "<C-Up>",    "<CMD>wincmd k<CR>", { desc = "[N] Move to the top panel"    })
set("n", "<C-Down>",  "<CMD>wincmd j<CR>", { desc = "[N] Move to the bottom panel" })
set("n", "<C-Left>",  "<CMD>wincmd h<CR>", { desc = "[N] Move to the left panel"   })
set("n", "<C-Right>", "<CMD>wincmd l<CR>", { desc = "[N] Move to the right panel"  })

set("n", "<C-M-k>", "<CMD>resize +5<CR>", { desc = "[N] Resize top/bottom +5" })
set("n", "<C-M-j>", "<CMD>resize -5<CR>", { desc = "[N] Resize top/bottom -5" })
set("n", "<C-M-h>", "<CMD>vertical resize -10<CR>", { desc = "[N] Resize left/right -10" })
set("n", "<C-M-l>", "<CMD>vertical resize +10<CR>", { desc = "[N] Resize left/right +10" })

set("n", "<Up>",    "<CMD>resize +5<CR>", { desc = "[N] Resize top/bottom +5" })
set("n", "<Down>",  "<CMD>resize -5<CR>", { desc = "[N] Resize top/bottom -5" })
set("n", "<Left>",  "<CMD>vertical resize -10<CR>", { desc = "[N] Resize left/right -10" })
set("n", "<Right>", "<CMD>vertical resize +10<CR>", { desc = "[N] Resize left/right +10" })

-- [ FUNCTIONS ] -------------------------------------------------------------------------------------------------------

function ToggleColorColumn(num)
	if vim.wo.colorcolumn == num then
		vim.wo.colorcolumn = "0"
	else
		vim.wo.colorcolumn = num
	end
end

function ToggleTransparentBackground()
	vim.g.BG_TRANSPARENT = not vim.g.BG_TRANSPARENT
	if vim.g.BG_TRANSPARENT then
		vim.api.nvim_set_hl(0, "Normal",      { bg = "none" })
		vim.api.nvim_set_hl(0, "NormalNC",    { bg = "none" })
		vim.api.nvim_set_hl(0, "SignColumn",  { bg = "none" })
		vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })
	else
		vim.cmd("colorscheme " .. vim.g.colors_name)
	end
end
