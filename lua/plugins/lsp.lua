return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      opts.servers = opts.servers or {}
      opts.servers.tsserver = {}
      opts.servers.html = {}
      opts.servers.cssls = {}
      opts.servers.omnisharp = {
        enable_import_completion = true,
        organize_imports_on_format = true,
      }
    end,
  },
}
