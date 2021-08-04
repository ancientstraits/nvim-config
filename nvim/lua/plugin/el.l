local builtin = require('el.builtin')
local extensions = require('el.extensions')
local log = require('el.log')
local meta = require('el.meta')
local processor = require('el.processor')
local sections = require('el.sections')
local subscribe = require('el.subscribe')

local generator = function(win_id)
  return {
    extensions.mode,
    sections.split,
    builtin.file,
    sections.collapse_builtin {
      ' ',
      builtin.modified_flag
    },
    sections.split,
    --lsp_statusline.segment,
    --lsp_statusline.current_function,
    subscribe.buf_autocmd(
      "el_git_status",
      "BufWritePost",
      function(window, buffer)
        return extensions.git_changes(window, buffer)
      end
    ),
    -- helper.async_buf_setter(
    --   win_id,
    --   'el_git_stat',
    --   extensions.git_changes,
    --   5000
    -- ),
    '[', builtin.line, ' : ',  builtin.column, ']',
    sections.collapse_builtin{
      '[',
      builtin.help_list,
      builtin.readonly_list,
      ']',
    },
    builtin.filetype,
  }
end

-- And then when you're all done, just call
require('el').setup { generator = generator }

