return {
  cmd = {'ruff-lsp'},
  filetypes = {'python'},
  config = function()
    local capabilities = require('blink.cmp').get_lsp_capabilities()
    require('lspconfig').ruff_lsp.setup{capabilities = capabilities}
  end,
}
