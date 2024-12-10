-- Plugin to costumize the colors of the IDE
return {
  'folke/tokyonight.nvim',
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    -- Serika Dark custom palette
    local bg = '#2C2E31' -- primary background
    local fg = '#E1B723' -- foreground, cursor, and selection background
    local bg_dark = '#1F2023' -- darker background for panels
    local bg_highlight = '#373A3D' -- highlight background
    local bg_search = '#E1B723' -- dark yellow for search highlights
    local bg_visual = '#424548' -- gray for visual selection
    local fg_dark = '#A8A8A8' -- softer gray for secondary text
    local fg_gutter = '#7D7D7D' -- muted gray for line numbers and gutter
    local border = '#E1B723' -- dark yellow for borders

    require('tokyonight').setup {
      style = 'night',
      on_colors = function(colors)
        colors.bg = bg
        colors.bg_dark = bg_dark
        colors.bg_float = bg_dark
        colors.bg_highlight = bg_highlight
        colors.bg_popup = bg_dark
        colors.bg_search = bg_search
        colors.bg_sidebar = bg_dark
        colors.bg_statusline = bg_dark
        colors.bg_visual = bg_visual
        colors.border = border
        colors.fg = fg
        colors.fg_dark = fg_dark
        colors.fg_float = fg
        colors.fg_gutter = fg_gutter
        colors.fg_sidebar = fg_dark
      end,
    }
    -- load the colorscheme here
    vim.cmd [[colorscheme tokyonight]]
  end,
}
