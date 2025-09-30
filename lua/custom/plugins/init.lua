-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- {
  --   'ribru17/bamboo.nvim',
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     require('bamboo').setup {
  --       -- optional configuration here
  --     }
  --     require('bamboo').load()
  --     vim.cmd.colorscheme 'bamboo'
  --     
  --     -- Force diagnostic underlines to be visible after colorscheme loads
  --     vim.defer_fn(function()
  --       vim.api.nvim_set_hl(0, 'DiagnosticUnderlineError', { underline = true, fg = '#ff0000' })
  --       vim.api.nvim_set_hl(0, 'DiagnosticUnderlineWarn', { underline = true, fg = '#ffaa00' })
  --       vim.api.nvim_set_hl(0, 'DiagnosticUnderlineInfo', { underline = true, fg = '#00ffff' })
  --       vim.api.nvim_set_hl(0, 'DiagnosticUnderlineHint', { underline = true, fg = '#00ff00' })
  --     end, 100)
  --   end,
  -- },
  {
    'github/copilot.vim',
    lazy = false,
  },
}