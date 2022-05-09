:set number
:set relativenumber


call plug#begin(stdpath('config') . '/plugged')

Plug 'morhetz/gruvbox' " Color scheme
Plug 'dense-analysis/ale' " Ale: Lint
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Coc: Autocomplete
Plug 'vim-airline/vim-airline' " Airline: bar below
Plug 'mbbill/undotree' " Undotree: Undo history

Plug 'nvim-lua/plenary.nvim' " Required by telescope
Plug 'nvim-telescope/telescope.nvim'  " Search for files

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " Highlight text


Plug 'kyazdani42/nvim-web-devicons' " for file icons (required by tree)
Plug 'kyazdani42/nvim-tree.lua' " File explorer

Plug 'pwntester/octo.nvim' " GitHUB issue and PR

call plug#end()



" CONFIGURATION



" GRUVBOX]
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif
