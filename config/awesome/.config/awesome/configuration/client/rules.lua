local awful = require('awful')
local gears = require('gears')
local client_keys = require('configuration.client.keys')
local client_buttons = require('configuration.client.buttons')

-- Rules
awful.rules.rules = {
  -- All clients will match this rule.
  {
    rule = {},
    properties = {
      focus = awful.client.focus.filter,
      raise = true,
      keys = client_keys,
      buttons = client_buttons,
      screen = awful.screen.preferred,
      placement = awful.placement.no_offscreen,
      floating = false,
      maximized = false,
      above = false,
      below = false,
      ontop = false,
      sticky = false,
      maximized_horizontal = false,
      maximized_vertical = false
    }
  },
  -- Select tag by name:
  {
    rule_any = {
      class = {'anki'},
      name = {'Anki'},
    },
    properties = {
      tag ='9'
    }
  },
  {
    rule_any = {
      class = {'obsidian'},
      name = {'obsidian'},
    },
    properties = {
      tag ='7'
    }
  },
  
  --[[
  {
    rule_any = {
      class = {'firefox'},
      name = {'firefox'},
    },
    properties = {
      tag ='6'
    }
  },
  ]]
  {
    rule = { class = 'Variety'},
    properties = { kill = true }
  },
  
  {
    rule_any = {name = {'QuakeTerminal'}},
    properties = {skip_decoration = true}
  },
  -- Titlebars
  {
    rule_any = {type = {'dialog'}, class = {'Wicd-client.py', 'calendar.google.com'}},
    properties = {
      placement = awful.placement.centered,
      ontop = true,
      floating = true,
      drawBackdrop = true,
      shape = function()
        return function(cr, w, h)
          gears.shape.rounded_rect(cr, w, h, 8)
        end
      end,
      skip_decoration = true
    }
  }
}
