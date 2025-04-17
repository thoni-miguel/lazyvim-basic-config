-- bootstrap lazy.nvim, LazyVim and your plugins
vim.filetype.add({
  extension = {
    razor = "razor",
  },
})
require("config.lazy")
