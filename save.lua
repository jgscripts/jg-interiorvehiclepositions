-- Calculate coords + save to coords.lua
RegisterCommand("calculatepositions", function()
  local file = io.open("resources/[jg]/jg-interiorvehiclepositions/coords.lua", "w+")
  if not file then return end

  local str = "coords = {\n"
  for _, coords in ipairs(calcVehicleCoords()) do
    str = str .. "  " .. coords .. ",\n"
  end
  str = str .. "}"

  file:write(str)
  file:close()

  print("Coords copied into coords.lua")
end)