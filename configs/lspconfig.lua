local util = require 'lspconfig/util'

local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "html", "tsserver", "prismals", "sqlls", "graphql", "jsonls"}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.angularls.setup {
    root_dir = util.root_pattern('angular.json', 'project.json', 'nx.json')
}

lspconfig.cssls.setup {
    capabilities = capabilities
}
-- 
-- lspconfig.pyright.setup { blabla}
