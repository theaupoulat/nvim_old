require('neodev').setup({})
local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(_client, bufnr)
  lsp.default_keymaps({buffer = bufnr, preserve_mappings = false})
end)

lsp.ensure_installed({
  'tsserver',
  'eslint',
  'rust_analyzer',
  'ruby_ls',
  'lua_ls'
})

lsp.setup()

local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
  mapping = {
    -- `Enter` key to confirm completion
    ['<CR>'] = cmp.mapping.confirm({select = false}),
    -- Ctrl+Space to trigger completion menu
    ['<C-Space>'] = cmp.mapping.complete(),

  }
})

