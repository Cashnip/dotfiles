return {
  "neovim/nvim-lspconfig",
  dependencies = {
    'saghen/blink.cmp',
    {
      "folke/lazydev.nvim",
      ft = "lua", -- only load on lua files
      opts = {
        library = {
          { path = "${3rd}/luv/library", words = { "vim%.uv" } },
        },
      },
    },
  },
  config = function()
    local capabilities = require('blink.cmp').get_lsp_capabilities()
    vim.lsp.config('*', {capabilities=capabilities});
    vim.lsp.config.pyright = ({
      settings = {
        pyright = {
          disableOrganizeImports = true, -- Ruff handles import organization
        },
        python = {
          analysis = {
            ignore = { '*' }, -- Use Ruff for linting
          },
        },
      },
      filetypes = { 'py' },
    })

    -- require("lspconfig").pyright.setup {
    --   settings = {
    --     pyright = {
    --       disableOrganizeImports = true, -- Ruff handles import organization
    --     },
    --     python = {
    --       analysis = {
    --         ignore = { '*' }, -- Use Ruff for linting
    --       },
    --     },
    --   },
    --   capabilities = capabilities,
    -- }

    -- require("lspconfig").ruff.setup{}
    vim.lsp.config.ruff = ({})
    vim.api.nvim_create_autocmd("LspAttach", {
      group = vim.api.nvim_create_augroup('lsp_attach_disable_ruff_hover', { clear = true }),
      callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        if not client then return end

        if client.name == 'ruff' then
          -- Disable hover in favor of Pyright
          client.server_capabilities.hoverProvider = false
        end
      end,
      desc = 'LSP: Disable hover capability from Ruff',
    })
  end,
}
