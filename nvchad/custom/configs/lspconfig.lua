local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")
local util = require "lspconfig/util"

local servers = { "yamlls", "bashls", "pyright", "html", "cssls", "jsonls", "dockerls", "terraformls", "ansiblels", "tsserver", "emmet_ls" }

lspconfig.gopls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = {"gopls"},
  filetypes = { "go", "gomod", "gowork", "gotmpl" },
  root_dir = util.root_pattern("go.work", "go.mod", ".git"),
  settings = {
    gopls = {
      completeUnimported = true,
      usePlaceholders = true,
      analyses = {
        unusedparams = true,
      },
    },
  },
}

-- lspconfig.terraformls.setup{
--   on_attach = on_attach,
--   capabilities = capabilities,
--   cmd = {"terraform-ls", "serve"},
--   filetypes = {"terraform", "tf", "hcl", "terraform-vars"},
-- }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
