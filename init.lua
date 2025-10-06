package.preload["neogen.templates.doxygen"] = function()
  local i = require("neogen.types.template").item
  return {
    { nil, "/**", { no_results = true, type = { "func", "file", "class" } } },
    { nil, " * \\file", { no_results = true, type = { "file" } } },
    { nil, " * \\brief $1", { no_results = true, type = { "func", "file", "class" } } },
    { nil, " */", { no_results = true, type = { "func", "file", "class" } } },
    { nil, "", { no_results = true, type = { "file" } } },

    { nil, "/**", { type = { "func", "type", "class" } } },
    { i.ClassName, " * \\class %s", { type = { "class" } } },
    { i.Type, " * \\typedef %s", { type = { "type" } } },
    { nil, " * \\brief $1", { type = { "func", "type", "class" } } },
    { nil, " *", { type = { "func", "type", "class" } } },
    { i.Tparam, " * \\tparam %s $1" },
    { i.Parameter, " * \\param %s $1" },
    { i.Return, " * \\return $1" },
    { nil, " */", { type = { "func", "type", "class" } } },
  }
end
-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.diagnostic.config({ virtual_text = true })

require("lspconfig").clangd.setup({
  cmd = { "clangd-15", "--background-index", "--compile-commands-dir", "~/auv/MGC/workspace/CtrlManager/build/" },
  filetypes = { "c", "cpp", "css", "cc" },
  root_dir = function()
    vim.fn.getcwd()
  end,
  settings = {
    ["fallbackFlags"] = { "-std=c++20" },
  },
})

