require("mason").setup()
require("mason-lspconfig").setup{
  ensure_installed = { "lua_ls", "cssls", "dockerls", "docker_compose_language_service", "eslint", "gradle_ls", "groovyls", "html", "jsonls", "jdtls", "quick_lint_js", "marksman", "pyre", "sqlls" }
}

local on_attach = function(_, _)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
  vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").lua_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}     

require("lspconfig").cssls.setup {
  on_attach = on_attach,
  capabilities = capabilieties
}

require("lspconfig").dockerls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}     

require("lspconfig").docker_compose_language_service.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}     
require("lspconfig").jdtls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}     

