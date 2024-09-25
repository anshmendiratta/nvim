vim.opt.termguicolors = true
vim.cmd [[
  " let g:lightline = { 'colorscheme': 'blue-moon' }
  color blue-moon
  set laststatus=2
  highlight StatusLine   cterm=none ctermfg=white ctermbg=black guibg=#1C1E2B
  highlight StatusLineNC cterm=none ctermfg=white ctermbg=black guibg=#1C1E2B
]]
