return {
  "nvimtools/none-ls.nvim",
  opts = function(_, opts)
    local nls = require("null-ls")
    opts.sources = opts.sources or {}

    table.insert(
      opts.sources,
      nls.builtins.formatting.csharpier.with({
        command = "dotnet",
        args = { "csharpier", "--write-stdout", "$FILENAME" },
        filetypes = { "cs", "razor" },
      })
    )
  end,
}
