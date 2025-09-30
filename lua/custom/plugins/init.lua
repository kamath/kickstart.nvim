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
  {
    'folke/sidekick.nvim',
    lazy = false,
    opts = {
      -- add any options here
      cli = {
        mux = {
          backend = 'zellij',
          enabled = false,
        },
      },
    },
    keys = {
      {
        '<tab>',
        function()
          -- if there is a next edit, jump to it, otherwise apply it if any
          if not require('sidekick').nes_jump_or_apply() then
            return '<Tab>' -- fallback to normal tab
          end
        end,
        expr = true,
        desc = 'Goto/Apply Next Edit Suggestion',
      },
      {
        '<c-.>',
        function()
          require('sidekick.cli').focus()
        end,
        mode = { 'n', 'x', 'i', 't' },
        desc = 'Sidekick Switch Focus',
      },
      {
        '<leader>aa',
        function()
          require('sidekick.cli').toggle({ focus = true })
        end,
        desc = 'Sidekick Toggle CLI',
        mode = { 'n', 'v' },
      },
      {
        '<leader>ac',
        function()
          require('sidekick.cli').toggle({ name = 'claude', focus = true })
        end,
        desc = 'Sidekick Claude Toggle',
        mode = { 'n', 'v' },
      },
      {
        '<leader>ag',
        function()
          require('sidekick.cli').toggle({ name = 'grok', focus = true })
        end,
        desc = 'Sidekick Grok Toggle',
        mode = { 'n', 'v' },
      },
      {
        '<leader>ap',
        function()
          require('sidekick.cli').select_prompt()
        end,
        desc = 'Sidekick Ask Prompt',
        mode = { 'n', 'v' },
      },
    },
  },
}