-- SETUP FOR LSPZERO HERE
local lsp_zero = require('lsp-zero')
local lsp_config = require('lspconfig')

lsp_config.clangd.setup({})
lsp_config.luals.setup({})

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup(
{
  ensure_installed = {'clangd', 'lua_ls'},
  handlers =
  {
    function(server_name)
      require('lspconfig')[server_name].setup({})
    end,
    lua_ls = function()
        local lua_opts = lsp_zero.nvim_lua_ls()
        lsp_config.lua_ls.setup(lua_opts)
    end,
  }
})

