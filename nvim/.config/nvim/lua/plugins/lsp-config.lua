return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "gopls", "tsserver", "jdtls" },
        automatic_installation = true
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local lspconfig = require('lspconfig')
      lspconfig.lua_ls.setup({})
      lspconfig.tsserver.setup({})
      lspconfig.gopls.setup({
        settings = {
          gopls = {
            analyses = {
              unusedparams = true,
            },
            staticcheck = true,
            gofumpt = true,
          },
        },
      })
      lspconfig.jdtls.setup({})

      vim.keymap.set('n', 'K',  vim.lsp.buf.hover, {})
      vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, {})
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
      vim.keymap.set('n', '<leader>r', vim.lsp.buf.rename, {})
      vim.keymap.set('n', '<leader>ic', vim.lsp.buf.incoming_calls, {})
      vim.keymap.set('n', '<leader>ds', vim.lsp.buf.document_symbol, {})
      vim.keymap.set('n', '<leader>rf', vim.lsp.buf.references, {})
    end
  }
}

