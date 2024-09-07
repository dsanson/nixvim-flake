{ pkgs, ... }:

{
  extraPackages = [ pkgs.vale-ls ];
  extraConfigLua = ''
    local capabilities = vim.lsp.protocol.make_client_capabilities()

    require('lspconfig').vale_ls.setup({
      on_attach = _M.lspOnAttach,
      capabilities = capabilities
    })

  '';
}


