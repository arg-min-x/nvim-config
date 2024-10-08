return {
  'nvimtools/none-ls.nvim',
  config = function()
    local null_ls = require 'null-ls'
    null_ls.setup {
      sources = {
        -- null_ls.builtins.formatting.ruff,
        null_ls.builtins.formatting.stylua,
        -- null_ls.builtins.code_actions.ruff,
        --        null_ls.builtins.diagnostics.ruff,
        null_ls.builtins.code_actions.ruff,
      },
    }

    vim.keymap.set('n', '<leader>gf', vim.lsp.buf.format, {})
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_actions, {})
  end,
}
