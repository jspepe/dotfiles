vim.lsp.config("*", {
  capabilities = require("cmp_nvim_lsp").default_capabilities(),
})

vim.lsp.enable({
  "html",
  "cssls",
  "jsonls",
  "ts_ls",
  "lua_ls",
  "emmet_ls",
})
