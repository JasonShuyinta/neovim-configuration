require("mason").setup()
require("mason-lspconfig").setup{
  ensure_installed = { "lua_ls", "cssls", "dockerls", "docker_compose_language_service", "eslint", "gradle_ls", "groovyls", "html", "jsonls", "jdtls", "quick_lint_js", "marksman", "pyre", "sqlls" }
}

local on_attach = function(_, bufnr)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})


