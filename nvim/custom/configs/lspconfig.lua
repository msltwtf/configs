local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

lspconfig.gopls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"go", "gomod", "gowork", "gotmpl"},
  root_dir = lspconfig.util.root_pattern("go.work", "go.mod", ".git"),
  settings = {
    gopls = {
      completeUnimported = true,
      usePlaceholders = true,
      analyses = {
        unusedparams = true,
      }
    }
  }
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
lspconfig.pylsp.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})
