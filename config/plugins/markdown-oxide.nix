{ pkgs, ... }:

{
  extraPackages = [ pkgs.markdown-oxide ];
  extraConfigLua = ''
    local capabilities = vim.lsp.protocol.make_client_capabilities()

    require('lspconfig').markdown_oxide.setup({
      on_attach = _M.lspOnAttach,
      capabilities = vim.tbl_deep_extend( 'force', capabilities or {}, { workspace = { didChangeWatchedFiles = { dynamicRegistration = true, }, }, })
    })

    capabilities.workspace = {
        didChangeWatchedFiles = {
          dynamicRegistration = true,
        },
    }
  '';
}

# See https://github.com/Feel-ix-343/markdown-oxide

