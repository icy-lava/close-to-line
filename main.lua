local V = require('v')
local L = love
local G = L.graphics
local M = math
local s = M.sin
local p = 0
local T = L.timer
local U = T.getTime
local S = U()
L.window.setTitle('close to line')
G.setNewFont(24)
L.draw = function()
  local t = U()
  G.clear(.3, .1, .2)
  G.setLineWidth(8)
  G.setColor(.1, .5, .7)
  G.print('score: ' .. (p - p % 1))
  if t - S > 15 then
    return 
  end
  local x = 400 + 400 * s(t + 2 * s(t + 3 * s(t)))
  local y = 300 + 300 * s(t + 3 * s(t + 5 * s(t)))
  local X = 400 + 400 * s(t + 4 * s(t + 4 * s(t)))
  local Y = 300 + 300 * s(t + 3 * s(t + 2 * s(t)))
  local o = V(x - X, y - Y)
  o.length = 1e4
  G.line(x + o.x, y + o.y, x - o.x, y - o.y)
  local d = 1e-4 * V(-o.y, o.x)
  p = p + (T.getDelta() * M.max(0, 200 - M.abs(d:dot(V(x, y) - V(L.mouse.getPosition())))))
end
