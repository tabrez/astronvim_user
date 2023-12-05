return {
  'Vigemus/iron.nvim',
  event = "VeryLazy",
  config = function()
    require("iron.core").setup {
      -- repl_open_cmd = "vertical botright 80 split",
      config = {
        repl_open_cmd = require('iron.view').split.vertical.botright("50%"),
        repl_definition = { python = require("iron.fts.python").ipython },
      },
      keymaps = {
        send_motion = "<space>sc",
        visual_send = "<space>sc",
        send_file = "<space>sf",
        send_line = "<space>sl",
        send_until_cursor = "<space>su",
        send_mark = "<space>sm",
        mark_motion = "<space>mc",
        mark_visual = "<space>mc",
        remove_mark = "<space>md",
        cr = "<space>s<cr>",
        interrupt = "<space>s<space>",
        exit = "<space>sq",
        clear = "<space>cl",
      }
    }
  end
}

