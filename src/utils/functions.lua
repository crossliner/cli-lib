-- functions table for exploit comp
local console = {
  create = consolecreate or function() end,
  print = rconsoleprint
}

return { console };