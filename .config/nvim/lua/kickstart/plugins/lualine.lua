return {
  -- Set lualine as statusline
  'nvim-lualine/lualine.nvim',
  priority = 1000,
  -- lazy = false,
  opts = function()
    -- show macro recording status
    local function macro_recording()
      local mode = require("noice").api.statusline.mode.get()
      if mode then
        return string.match(mode, "^recording @.*") or ""
      end
      return ""
    end

    return {
      options = {
        theme = 'codedark',
        icons_enabled = false,
        component_separators = '|',
        section_separators = '',
      },
      sections = {
        lualine_c = { macro_recording },
      }
    }
  end,
}
