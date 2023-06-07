local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

lspconfig.gopls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})
lspconfig.ansiblels.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})
lspconfig.terraformls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})
lspconfig.tsserver.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})
lspconfig.bashls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})
