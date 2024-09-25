require('github-theme').setup {
  palettes = {
    all = {
      bg1 = '#24292F',
    },
  },
}

vim.cmd 'colorscheme github_dark_dimmed'

vim.api.nvim_set_hl(0, 'EndOfBuffer', { fg = '#24292F' })
