set number
set relativenumber
set tabstop=4 softtabstop=4
set shiftwidth=4
set smartindent
set colorcolumn=80
set scrolloff=8
set updatetime=200

call plug#begin(stdpath('config') . '/plugged')

Plug 'morhetz/gruvbox' " Color scheme
Plug 'dense-analysis/ale' " ale: Lint
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Coc: Autocomplete
Plug 'mbbill/undotree' " Undotree: Undo history

Plug 'nvim-lua/plenary.nvim' " Required by telescope

Plug 'preservim/nerdtree' " File explorer
Plug 'Xuyuanp/nerdtree-git-plugin' " Show git status


Plug 'nvim-telescope/telescope.nvim'  " Search for files

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " Highlight text


Plug 'kyazdani42/nvim-web-devicons' " for file icons (required by tree)
Plug 'kyazdani42/nvim-tree.lua' " File explorer

Plug 'pwntester/octo.nvim' " GitHUB issue and PR

" Lualine
Plug 'nvim-lualine/lualine.nvim'
" If you want to have icons in your statusline choose one of these
Plug 'kyazdani42/nvim-web-devicons'

call plug#end()



" CONFIGURATION

" MY CONFIGURATION COMMANDS
" Switch between same tab view with ALT
tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l
inoremap <A-h> <C-\><C-N><C-w>h
inoremap <A-j> <C-\><C-N><C-w>j
inoremap <A-k> <C-\><C-N><C-w>k
inoremap <A-l> <C-\><C-N><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
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




" NERDTrecopeFuzzyCommandSearch) Configuration
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Telescope bindings
nnoremap <leader>ff <cmd>Telescope find_files<cr>
" For find_files and live_grep is needed a sudo apt stuff
" sudo apt install fd-find
" Download ripgrep
nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>


" Lualine Configuration
lua << END
require('lualine').setup()
END
