vim.opt.termguicolors = true

require('evergarden').setup {
  transparent_background = false,
  contrast_dark = 'hard', -- 'hard'|'medium'|'soft'
  override_terminal = true,
  style = {
    tabline = { reverse = true, color = 'green' },
    search = { reverse = false, inc_reverse = true },
    types = { italic = true },
    keyword = { italic = true },
    comment = { italic = false },
  },
}

vim.cmd.colorscheme 'evergarden'
vim.cmd 'set laststatus=0'
vim.api.nvim_set_hl(0, 'Normal', { bg = '#151B1F' })
vim.api.nvim_set_hl(0, 'EndOfBuffer', { fg = '#151B1F' })
