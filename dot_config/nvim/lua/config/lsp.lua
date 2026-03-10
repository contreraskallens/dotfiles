-- Configurations for lsp

vim.lsp.config["ruff"] = {
  on_attach = function(client, bufnr)
    require("workspace-diagnostics").populate_workspace_diagnostics(client, bufnr)
  end,
  init_options = {
    settings = {
      organizeImports = true,
      showSyntaxErrors = true,
      codeAction = {
        disableRuleComment = { enable = true },
        fixViolation = { enable = true },
      },
      format = {
        preview = false,
      },
      lint = {
        enable = false,
      },
    },
  },
}
vim.lsp.config["ty"] = {
  on_attach = function(client, bufnr)
    require("workspace-diagnostics").populate_workspace_diagnostics(client, bufnr)
  end,
}

-- Enable
vim.lsp.enable("ruff")
vim.lsp.enable("ty")
vim.lsp.enable("hyprls")
vim.lsp.enable("tinymist")
vim.lsp.enable("r_language_server")
vim.lsp.enable("lua_ls")
