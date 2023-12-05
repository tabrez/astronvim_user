return {
  {
    "neovim/nvim-lspconfig",
    event = "BufEnter *.py",

    config = function()
      require'lspconfig'.ruff_lsp.setup {
        init_options = {
          settings = {
            run = "onSave"
          }
        } 
      }
    end,
  },
  {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    cmd = { "ConformInfo" },
    opts = {
      formatters_by_ft = {
        python = { "ruff_format" }
      },
      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = false
      },
    },
  },
}

