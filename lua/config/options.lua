-- [[ OPTIONS ]] =======================================================================================================

-- [ DISABLING BUILT IN PLUGINS ] --------------------------------------------------------------------------------------

-- /usr/share/nvim/runtime/plugin

--[[
local builtin_plugins = {
	'2html_plugin',          -- Found on completion and not on the manual
	-- 'gzip',
	-- 'man',                -- Found on completion and not on the manual
	-- 'matchit',
	-- 'matchparen',
	'netrw',
	'netrwPlugin',
	-- 'remote_plugins',     -- Found on completion and not on the manual
	-- 'shada_plugin',       -- Found on completion and not on the manual
	-- 'spellfile_plugin',   -- Found on completion and not on the manual
	-- 'tar',
	-- 'tarPlugin',
	'tutor_mode_plugin',     -- Found on completion and not on the manual
	-- 'zip',
	-- 'zipPlugin',
}

for i = 1, #builtin_plugins do
	vim.g[ 'loaded_' .. builtin_plugins[i] ] = 1
end

-- vim.g.loaded_clipboard_provider = 0
-- vim.g.loaded_node_provider = 0
-- vim.g.loaded_perl_provider = 0
-- vim.g.loaded_python3_provider = 0
-- vim.g.loaded_ruby_provider = 0
]]--

-- [ CONFIG ] ----------------------------------------------------------------------------------------------------------

-- You don't need to set the colorscheme here, since I made an `autocmd` that
-- remembers the last theme you used. Just use `:colorscheme <your-theme>`, and
-- it will persist automatically without having to change your config every time
-- you change your taste about the current colorscheme :)

vim.o.termguicolors = true          -- Enable 24-bit RGB colors

vim.o.updatetime = 1000             -- Time in ms to trigger CursorHold

vim.g.netrw_banner = 0              -- Hide netrw banner
vim.g.netrw_altv = 1                -- Open splits to the right
vim.g.netrw_alto = 1                -- Open splits to the bottom

vim.opt.path:append("**")           -- Search for files recursively in subdirectories

vim.o.splitbelow = true             -- Open horizontal splits below the current window
vim.o.splitright = true             -- Open vertical splits to the right of the current window

vim.o.spelllang = "en,pt_br"        -- Set spell check languages

vim.o.number = true                 -- Show line numbers
vim.o.relativenumber = true         -- Show relative line numbers

vim.o.cursorline = true             -- Highlight the current line

-- TODO
-- Configure completion behavior
vim.opt.complete:append("kspell")
vim.opt.completeopt = {
	-- "fuzzy",
	-- "longest",
	-- "menu",
	"menuone",
	"noinsert",
	-- "noselect",
	-- "nosort",
	"popup",
	-- "preinsert",
	-- "preview",
}

vim.opt.shortmess:append("mrWasIc") -- Go to `:h shortmess` I don't know how to explain this one

vim.o.pumheight = 10                -- Popup menu height
vim.o.pumblend = 0                  -- Popup menu transparency

vim.o.allowrevins = true            -- Allow <Ctrl-_> in Insert mode (enter reverse mode)

vim.o.wrap = false                  -- Disable line wrapping
vim.o.breakindent = true            -- Wrapped lines will be visually indented

vim.o.scrolloff = 10                -- Keep 10 lines above and below the cursor while scrolling
vim.o.sidescrolloff = 8             -- Keep 08 columns to the side when scrolling horizontally

vim.o.expandtab = false             -- If true, it convert tabs to spaces
vim.o.softtabstop = 0               -- Number of spaces for a tab when editing [0: tabstop, -1: shiftwidth]
vim.o.shiftwidth = 0                -- Number of spaces to use for each step of (auto)indent (>>, <<, ==) [0: tabstop]
vim.o.tabstop = 4                   -- Tab width
vim.o.shiftround = true             -- Round indent to multiple of 'shiftwidth'

vim.o.autoindent = true             -- Enable automatic indentation based on previous line
vim.o.smartindent = true            -- Automatically insert indentation in code blocks
vim.o.cindent = true                -- Enable C/C++ style indentation

vim.o.ignorecase = true             -- Case-insensitive search
vim.o.smartcase = true              -- Case-sensitive if uppercase is used
vim.o.incsearch = true              -- Show matches as you type
vim.o.hlsearch = true               -- Highlight search results

vim.o.showmode = false              -- Hide mode display inside cmdline (e.g., -- INSERT --)

vim.o.mouse = "a"                   -- Enable mouse support ("nvic")

vim.o.laststatus = 3                -- Always show one status line

vim.o.wildmenu = true               -- Enable cmdline completion menu
vim.o.wildignorecase = true         -- Ignore case when doing completion (file and directories)
vim.o.winborder = "rounded"         -- Default border style of floating windows

vim.o.pumblend = 0                  -- Enables pseudo-transparency for the popup-menu
vim.o.winblend = 0                  -- Enables pseudo-transparency for a floating window

vim.o.showbreak = "↪"               -- Character for `wrap` text

-- Characters for the option `:set list`
vim.opt.listchars={
	-- eol = "↲",            -- "↩", "↷", "↴", "¬"
	tab = "│–→",             -- "│ ", "┊ ", "‖ ", "⇤–⇥", "⟭ ", "⇥ ", "⟩ ", "⟫ ", "▷ ", "▶ ", ">" "» ", "→ ", "⇨ "
	-- space = "•",          -- "·", "␣"
	-- multispace = "•",     -- "·", "␣"
	-- lead = "•",           -- "·", "␣"
	leadmultispace = "│   ", -- "│•••"
	trail = "•",             -- "·", "␣", "~"
	extends = "▷",           -- "⇢", "☛", "⇥", "⟩", "⟫", "▶", ">", "»", "→", "⇨", "…"
	precedes = "◁",          -- "⇠", "☚", "⇤", "⟨", "⟪", "◀", "<", "«", "←", "⇦", "…"
	-- conceal = "┊",        -- "│ ", "‖ "
	nbsp = "✕",              -- "×", "+", "␣", "☠"
}

vim.opt.fillchars = {
  foldopen  = "▽", -- "▢", "⋁", "⨈", "▽", "▼", "-"
  foldclose = "⫸", -- "■", ">", "⫸", "▷", "▶", "+"
  foldsep = " ", -- "│", "|"
}

vim.o.signcolumn = "yes"            -- Always show the sign column
vim.o.foldcolumn = "1"              -- Always show the fold column

vim.o.foldmethod = "manual"         -- Fold Method `:h fold-methods`
vim.o.foldlevelstart = 99           -- Fold Level Start `:h foldlevelstart`
vim.o.foldlevel = 99                -- Fold Level `:h foldlevel`

-- I don't know if I need this yet
-- vim.o.diffopt:append("algorithm:patience") -- Diff algorithm `:h diffopt`
-- vim.o.diffopt:append("linematch:60")       -- Diff linemath `:h diffopt`

vim.o.swapfile = false              -- Disable swap files
vim.o.backup = false                -- Disable backup files
vim.o.writebackup = false           -- Disable write backup
vim.o.undofile = true               -- Enable persistent undo
vim.o.undodir = vim.fn.expand("$HOME/.local/state/nvim/undo/") -- Set undo directory

-- vim.opt.fillchars:append("wbr:=") -- Windows title fill char
-- vim.o.winbar = "%m %t" -- Windows title
vim.o.title = true -- Enable updating the terminal/window title
vim.o.titlestring = '%t (%{expand("%:~:h")}) (nvim)' -- Format for the title: filename (dir) (nvim)

vim.cmd("packadd! nohlsearch") -- Automatically execute `:nohlsearch` after 'updatetime' or getting into Insert mode
-- vim.cmd("packadd! justify")

-- I don't use this, but maybe in the future
-- vim.opt.clipboard:append("unnamedplus") -- Use system clipboard
