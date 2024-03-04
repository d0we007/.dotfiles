local awful = require('awful')
local gears = require('gears')
local icons = require('theme.icons')
local apps = require('configuration.apps')

local tags = {
  {
    name = "1. <akira>",
    -- icon = icons.plus,
    type = 'chrome',
    defaultApp = apps.default.editor,
    screen = 1
  },
  {
    name = "2. <orange>",
    -- icon = icons.plus,
    type = 'code',
    defaultApp = apps.default.editor,
    screen = 1
  },
  {
    name = "3. <oreo>",
    -- icon = icons.plus,
    type = 'social',
    defaultApp = apps.default.social,
    screen = 1
  },
  {
    name = "4. <apple>",
    -- icon = icons.plus,
    type = 'game',
    defaultApp = apps.default.game,
    screen = 1
  },

}

awful.layout.layouts = {
  awful.layout.suit.tile,
  awful.layout.suit.max,
  awful.layout.suit.floating
}

awful.screen.connect_for_each_screen(
  function(s)
    for i, tag in pairs(tags) do
      awful.tag.add(
        i,
        {
          name = tag.name,
          icon = tag.icon,
          layout = awful.layout.suit.tile,
          gap_single_client = false,
          gap = 2,
          screen = s,
          defaultApp = tag.defaultApp,
          selected = i == 1
        }
      )
    end
  end
)

_G.tag.connect_signal(
  'property::layout',
  function(t)
    local currentLayout = awful.tag.getproperty(t, 'layout')
    if (currentLayout == awful.layout.suit.max) then
      t.gap = 0
    else
      t.gap = 2
    end
  end
)
