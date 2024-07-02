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
        ensure_installed = { "lua_ls", "gopls", "tsserver", "jdtls", "ruby_lsp" },
        automatic_installation = true
      })
    end
  },
  {
    'hrsh7th/cmp-nvim-lsp',
  },
  {
    'L3MON4D3/LuaSnip',
  },
  {
    'hrsh7th/nvim-cmp',
    config = function()
      local cmp = require('cmp')
      local luasnip = require('luasnip')

      luasnip.config.setup {}

      cmp.setup({
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end
        },
        sources = cmp.config.sources({
          { name = 'nvim_lsp' },
          { name = 'luasnip' },
        }, {
          { name = 'buffer' },
        }),
        preselect = 'item',
        completion = {
          completeopt = 'menu,menuone,noinsert'
        },
        mapping = cmp.mapping.preset.insert({
          ['<CR>'] = cmp.mapping.confirm({select = false}),
        }),
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require('lspconfig')

      local on_attach = function(_, bufnr)
        local attach_opts = { silent = true, buffer = bufnr }
        vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, attach_opts)
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, attach_opts)
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, attach_opts)
        vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, attach_opts)
        vim.keymap.set('n', '<C-s>', vim.lsp.buf.signature_help, attach_opts)
        vim.keymap.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, attach_opts)
        vim.keymap.set('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, attach_opts)
        vim.keymap.set('n', '<leader>wl', function() print(vim.inspect(vim.lsp.buf.list_workspace_folders())) end, attach_opts)
        vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, attach_opts)
        vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, attach_opts)
        vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, attach_opts)
        vim.keymap.set('n', 'so', require('telescope.builtin').lsp_references, attach_opts)
      end

      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

      local servers = { 'gopls', 'lua_ls', 'tsserver', 'jdtls', 'ruby_lsp' }
      for _, lsp in ipairs(servers) do
        lspconfig[lsp].setup {
          on_attach = on_attach,
          capabilities = capabilities,
        }
      end
    end
  }
}

