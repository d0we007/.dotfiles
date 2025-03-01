local filesystem = require('gears.filesystem')
local mat_colors = require('theme.mat-colors')
local theme_dir = filesystem.get_configuration_dir() .. '/theme'
local gears = require('gears')
-- local dpi = require('beautiful').xresources.apply_dpi

local theme_assets = require('beautiful.theme_assets')
local xresources = require('beautiful.xresources')
local dpi = xresources.apply_dpi

local gfs = require('gears.filesystem')
local themes_path = gfs.get_themes_dir()
local theme = {}
theme.icons = theme_dir .. '/icons/'
theme.font = 'Roboto medium 16'

-- Colors Pallets

-- Primary
theme.primary = mat_colors.deep_orange

-- Accent
theme.accent = mat_colors.pink

-- Background
theme.background = mat_colors.grey

local awesome_overrides =
  function(theme)
  theme.dir = os.getenv('HOME') .. '/.config/awesome/theme'
  -- theme.icons = theme.dir .. '/icons/'
  --theme.wallpaper = theme.dir .. '/wallpapers/DarkCyan.png'
  theme.wallpaper = '#e0e0e0'
  theme.font = 'Comic Code Pro 14'
  theme.title_font = 'Roboto medium 18'

  theme.fg_normal = '#ffffffde'

  theme.fg_focus = '#e4e4e4'
  theme.fg_urgent = '#CC9393'
  theme.bat_fg_critical = '#232323'

  theme.bg_normal = theme.background.hue_800
  theme.bg_focus = '#5a5a5a'
  theme.bg_urgent = '#3F3F3F'
  theme.bg_systray = theme.background.hue_800

  -- Borders
--[[
  theme.border_width = dpi(2)
  theme.border_normal = theme.background.hue_800
  theme.border_focus = theme.primary.hue_300
  theme.border_marked = '#39FF14'
  ]]

  theme.border_width = dpi(4)
  theme.border_focus = theme.primary.hue_900
  theme.border_normal = theme.background.hue_900
  theme.border_marked = '#FF0000'
  theme.border_focus = '#00FFF0'
  
  
  -- Menu

  theme.menu_height = dpi(16)
  theme.menu_width = dpi(160)

  -- Tooltips
  theme.tooltip_bg = '#232323'
  --theme.tooltip_border_color = '#232323'
  theme.tooltip_border_width = 0
  theme.tooltip_shape = function(cr, w, h)
    gears.shape.rounded_rect(cr, w, h, dpi(6))
  end

  -- Layout

  theme.layout_max = theme.icons .. 'layouts/arrow-expand-all.png'
  theme.layout_tile = theme.icons .. 'layouts/view-quilt.png'

  -- Taglist

  --[[theme.taglist_bg_empty = theme.background.hue_800
  theme.taglist_bg_occupied = theme.background.hue_800
  theme.taglist_bg_urgent =
    'linear:0,0:' ..
    dpi(40) ..
      ',0:0,' ..
        theme.accent.hue_500 ..
          ':0.08,' .. theme.accent.hue_500 .. ':0.08,' .. theme.background.hue_800 .. ':1,' .. theme.background.hue_800
  theme.taglist_bg_focus =
    'linear:0,0:' ..
    dpi(40) ..
      ',0:0,' ..
        theme.primary.hue_500 ..
          ':0.08,' .. theme.primary.hue_500 .. ':0.08,' .. theme.background.hue_800 .. ':1,' .. theme.background.hue_800
]]--

 -- Generate taglist squares:
 theme.taglist_fg_focus = "#000000"
 theme.taglist_bg_focus = "#00FFFF"
 local taglist_square_size = dpi(6)
 theme.taglist_squares_sel = theme_assets.taglist_squares_sel(
     taglist_square_size, theme.fg_normal
 )
 theme.taglist_squares_unsel = theme_assets.taglist_squares_unsel(
     taglist_square_size, theme.fg_normal
 )

  -- Tasklist

  theme.tasklist_font = 'Lexend 12'
  theme.tasklist_bg_normal = theme.background.hue_800
  theme.tasklist_bg_focus =
    'linear:0,0:0,' ..
    dpi(40) ..
      ':0,' ..
        theme.background.hue_800 ..
          ':0.95,' .. theme.background.hue_800 .. ':0.95,' .. theme.fg_normal .. ':1,' .. theme.fg_normal
  theme.tasklist_bg_urgent = theme.primary.hue_800
  
  theme.tasklist_fg_focus = '#000000'
  theme.tasklist_bg_focus = '#FFC3D6'
  --theme.tasklist_bg_focus = '#FFB7C5'
  theme.tasklist_fg_urgent = theme.fg_normal
  
  theme.tasklist_fg_normal = '#FFC3D6'
  theme.tasklist_bg_normal = '#000000'
  theme.tasklist_fg_minimize  = '#FFFFFF'
  theme.tasklist_bg_minimize  = '#c20d1a'
  
  --theme.taglist_bg_empty = '#FF5733'
  theme.taglist_bg_empty = '#c20d1a'

 theme.icon_theme = 'Papirus-Dark'


end
return {
  theme = theme,
  awesome_overrides = awesome_overrides
}
