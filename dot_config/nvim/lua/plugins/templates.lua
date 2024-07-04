return {
  'Futarimiti/spooky.nvim',
  config = function()
    require('spooky').setup { directory = vim.fn.stdpath('config') .. '/skeletons'
      , case_sensitive = false
      , auto_use_only = true
      , ui = { select = 'builtin'
        , select_full_path = false
        , show_no_template = true
        , prompt = 'Select template'
        , previewer_prompt = 'Preview'
        , preview_normalised = true
        , highlight_preview = true
        , no_template = '<No template>'
        , telescope_opts = {}
      }
    }
  end,
}
