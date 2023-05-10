local V = require('v')
local L = love
local G = L.graphics
local l = G.line
local M = math
local s = M.sin
local p = 0
L.draw = function()
  local t = L.timer.getTime()
  local x = 400 + 400 * s(t + 2 * s(t + 3 * s(t)))
  local y = 300 + 300 * s(t + 3 * s(t + 5 * s(t)))
  local X = 400 + 400 * s(t + 4 * s(t + 4 * s(t)))
  local Y = 300 + 300 * s(t + 3 * s(t + 2 * s(t)))
  local o = V(x - X, y - Y)
  o.length = 1e4
  return l(x + o.x, y + o.y, x - o.x, y - o.y)
end
