require('conform').setup {
  notify_on_error = true,
  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
  formatters_by_ft = {
    lua = { 'stylua' },
    rust = { 'rust_analyzer' },
    python = { 'black' },
  },
}
