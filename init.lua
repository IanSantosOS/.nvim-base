-- [[ GLOBALS ]] ===============================================================

opt = vim.opt_local
set = vim.keymap.set
command = vim.api.nvim_create_user_command
autocmd = vim.api.nvim_create_autocmd

augroup = function(group, opts)
	return vim.api.nvim_create_augroup("CUSTOM_".. group, opts)
end

-- Should these be on `config.options`? Probably.
-- but this is my config and I will put it here
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- [[ IMPORTS ]] ===============================================================

require("config.options")
require("config.keymaps")
require("config.commands")
require("config.autocmds")
