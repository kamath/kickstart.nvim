-- This file tests if diagnostics are working
-- Add this to your init.lua temporarily to debug

vim.defer_fn(function()
  -- Force enable all diagnostic features
  vim.diagnostic.config({
    underline = true,
    virtual_text = true,
    signs = true,
    float = {
      source = true,
      border = 'rounded',
    },
    severity_sort = true,
  })
  
  -- Try different underline styles
  vim.api.nvim_set_hl(0, 'DiagnosticUnderlineError', { 
    underline = true, 
    bg = '#3f0000',  -- Add subtle background
    fg = '#ff0000'   -- Make text red too
  })
  
  print("Diagnostics config updated. Underlines should be visible now.")
  print("Terminal: " .. vim.env.TERM)
  print("GUI running: " .. tostring(vim.fn.has('gui_running')))
  print("Underline supported: " .. tostring(vim.fn.has('underline')))
end, 1000)