require('gruber-darker').setup {
  italic = {
    strings = false,
    comments = false,
    operators = false,
    folds = false,
  },
}

vim.cmd.colorscheme 'gruber-darker'
vim.api.nvim_set_hl(0, 'EndOfBuffer', { fg = '#181818', bg = '#181818' })
vim.cmd 'set laststatus=0'
