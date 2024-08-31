local normal_colors = vim.api.nvim_get_hl_by_name('Normal', true)
local transparent_theme = {
  ['N'] = { fg = normal_colors.fg, bg = normal_colors.bg },
  ['I'] = { fg = normal_colors.fg, bg = normal_colors.bg },
  ['V'] = { fg = normal_colors.fg, bg = normal_colors.bg },
  ['C'] = { fg = normal_colors.fg, bg = normal_colors.bg },
  ['T'] = { fg = normal_colors.fg, bg = normal_colors.bg },
  ['S'] = { fg = normal_colors.fg, bg = normal_colors.bg },
  ['File'] = { fg = normal_colors.fg, bg = normal_colors.bg },
  ['Filetype'] = { fg = normal_colors.fg, bg = normal_colors.bg },
  ['GitDiffDeletion'] = { fg = normal_colors.fg, bg = normal_colors.bg },
  ['GitDiffInsertion'] = { fg = normal_colors.fg, bg = normal_colors.bg },
}
local oxocarbon_theme = {
  ['N'] = { fg = '#dde1e6', bg = '#83c092' },
  ['I'] = { fg = '#dde1e6', bg = '#7fbbb3' },
  ['V'] = { fg = '#dde1e6', bg = '#dbbc7f' },
  ['C'] = { fg = '#dde1e6', bg = '#d699b6' },
  ['T'] = { fg = '#dde1e6', bg = '#a7c080' },
  ['S'] = { fg = '#dde1e6', bg = '#e67e80' },
  ['File'] = { fg = '#d3c6aa', bg = '#343f44' },
  ['Filetype'] = { fg = '#d3c6aa', bg = '#272e33' },
  ['GitDiffDeletion'] = { fg = '#e67e80', bg = '#232a2e' },
  ['GitDiffInsertion'] = { fg = '#a7c080', bg = '#232a2e' },
}

local ___ = Stat.___
require('stat').setup {
  winbar = {
    ___,
    Stat.mod.file(),
  },
  statusline = {
    ___,
    Stat.mod.mode,
    Stat.mod.filetype,
    Stat.mod.git_diff,
  },
  theme = oxocarbon_theme,
}
