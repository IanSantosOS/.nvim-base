# IanSantosOS' Base Config

Neovim Repository: <https://github.com/neovim/neovim>

This is my base config, what does it mean you ask? Well... sometimes I will need
to redo my main configuration and doing it from scratch is time consuming, so
this serves to me as a starting point.

## TODO

**Normal:**

- Create commands for `listchars`
  - `:ListCharsDefault`
  - `:ListCharsToggle`
  - `:ListCharsChange`
- AutoCMD for automatically update the leadmultispace listchar based on tabstop
- Organize the highlights in the `autocmd.lua`
- Folds
- Completeopt - `options.lua`
- LSP
- Treesitter
- Completions

**Recreate Plugins:**

- Harpoon       - https://github.com/ThePrimeagen/harpoon/tree/harpoon2
- Vim Pencil    - https://github.com/preservim/vim-pencil
- Bullets       - https://github.com/bullets-vim/bullets.vim
- Stay centered - https://github.com/arnamak/stay-centered.nvim
- Inc Rename    - https://github.com/smjonas/inc-rename.nvim
- Vimwiki       - https://github.com/vimwiki/vimwiki
- ToggleTerm    - https://github.com/akinsho/toggleterm.nvim
                - https://github.com/stevenctl/dotfiles/blob/master/config/vim/nvim/lua/user/terminals.lua

- No Neck Pain  - https://github.com/shortcuts/no-neck-pain.nvim
- Zen Mode      - https://github.com/folke/zen-mode.nvim

**Files:**

- `:h $NVIM_APPNAME`
  - change .bashrc
  - put this config on `nvim-base`
  - redo the `## Dir Structure` in this file

## Setup

**Clone the repository into your Neovim configuration directory:**

```sh
git clone https://github.com/IanSantosOS/.nvim-base.git $HOME/.config/nvim
```

You can also use the `$NVIM_APPNAME` environment variable if you want to keep
this configuration separate from your main one.

For more details, check `:h $NVIM_APPNAME` inside Neovim.

**Example:**

```sh
git clone https://github.com/IanSantosOS/.nvim-base.git $HOME/.config/nvim-base
echo 'alias nvim-base="NVIM_APPNAME=nvim-base nvim"' >> $HOME/.bashrc
source $HOME/.bashrc
```

## Dir Structure

```
nvim-base/
├── after/
│   └── ftplugin/
├── ftplugin/
├── lua/
│   ├── config/
│   │   ├── autocmds.lua
│   │   ├── commands.lua
│   │   ├── keymaps.lua
│   │   └── options.lua
│   ├── plugins/
│   └── utils/
└── init.lua
```

## References

### Find Plugins

- [Dotfyle](https://dotfyle.com/)
- [nvim.app](https://nvim.app/)
- [nvim.sh](https://nvim.sh/)
- [Awesome Neovim](https://github.com/rockerBOO/awesome-neovim)

### Tutorials

- Vim Tutor `:Tutor`
- Vim User Manual `:help usr`
- Nvim Quickstart `:help nvim-quickstart`
- Nvim Lua Guide `:help lua-guide`
- [vim.how](https://vim.how/)
- [neovim.io](https://neovim.io/doc/)
- [Learning Vim in 2014](https://benmccormick.org/learning-vim-in-2014/)
- [Vimcasts](http://vimcasts.org/)
- [Learn Vimscript the Hard Way](https://learnvimscriptthehardway.stevelosh.com/)
- [vim-galore](https://github.com/mhinz/vim-galore)
