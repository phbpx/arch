local nvim_lsp = require'nvim_lsp'
local diagnostic = require'diagnostic'
local completion = require'completion'

-- function to attach completion and diagnostics when setting up lsp
local on_attach_commom = function(client)
    completion.on_attach(client)
    diagnostic.on_attach(client)
end

local servers = { 'gopls', 'elixirls', 'dockerls', 'pyls', 'rust_analyzer' }

for _, lsp in ipairs(servers) do
    nvim_lsp[lsp].setup({ on_attach=on_attach_common })
end
