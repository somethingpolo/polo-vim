return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.clangd.setup({
        init_options = {
          fallbackFlags = { "--std=c++20" },
        },
      })
    end,
  },
}
