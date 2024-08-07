local custom_theme = function()
  local colors = {
    black        = '#282828',
    white        = '#ebdbb2',
    red          = '#fb4934',
    green        = '#b8bb26',
    blue         = '#83a598',
    yellow       = '#fe8019',
    gray         = '#a89984',
    darkgray     = '#3c3836',
    lightgray    = '#504945',
    inactivegray = '#7c6f64',
  }
  return {
    normal = {
      a = {bg = colors.gray, fg = colors.black, gui = 'bold'},
      b = {bg = colors.lightgray, fg = colors.white},
      c = {bg = colors.darkgray, fg = colors.gray}
    },
    insert = {
      a = {bg = colors.blue, fg = colors.black, gui = 'bold'},
      b = {bg = colors.lightgray, fg = colors.white},
      c = {bg = colors.black, fg = colors.white}
    },
    visual = {
      a = {bg = colors.yellow, fg = colors.black, gui = 'bold'},
      b = {bg = colors.lightgray, fg = colors.white},
      c = {bg = colors.black, fg = colors.white}
    },
    replace = {
      a = {bg = colors.red, fg = colors.black, gui = 'bold'},
      b = {bg = colors.lightgray, fg = colors.white},
      c = {bg = colors.black, fg = colors.white}
    },
    command = {
      a = {bg = colors.gray, fg = colors.black, gui = 'bold'},
      b = {bg = colors.lightgray, fg = colors.white},
      c = {bg = colors.darkgray, fg = colors.white}
    },
    inactive = {
      a = {bg = colors.darkgray, fg = colors.gray, gui = 'bold'},
      b = {bg = colors.darkgray, fg = colors.gray},
      c = {bg = colors.darkgray, fg = colors.gray}
    }
  }
end

return {
  'nvim-lualine/lualine.nvim',
  dependencies = {
    'kyazdani42/nvim-web-devicons',
  },

  opts = {
    options = {
      icons_enabled = true,
      theme = custom_theme,
      component_separators = '|',
      section_separators = '',
    },
    sections = {
      lualine_a = {'mode'},
      lualine_b = {'branch'},
      lualine_c = {'filename'},
      lualine_x = {'encoding'},
      lualine_y = {'filetype'},
      lualine_z = {'location'}
    },
  },
}
