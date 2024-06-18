local VEHICLE_POSITIONS = {
  -- Can create as many aribtrary "rows" in here as you would like
  left = {
    x = 223.6,
    y = {min = -979.0, max = -1002},
    z = -99.41,
    w = 235.2,
    count = 6
  },
  right = {
    x = 233.0,
    y = {min = -984.0, max = -1002},
    z = -99.41,
    w = 118.0,
    count = 5
  },
}

---Calculate coord positions based on VEHICLE_POSITIONS config
---@return vector4[] coords
function calcVehicleCoords()
  local coords = {}
  
  for _, pos in pairs(VEHICLE_POSITIONS) do
    local between = (pos.y.max - pos.y.min) / (pos.count - 1)

    for i = 0, pos.count - 1 do
      coords[#coords+1] = vector4(pos.x, pos.y.min + (between * i), pos.z, pos.w)
    end
  end
  
  return coords
end