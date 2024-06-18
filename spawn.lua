local TEST_MODEL = `dubsta3`
local spawned = {}

-- See what vehicles look like in the configured positions
RegisterCommand("testvehicles", function()
  CreateThread(function()
    for _, coords in ipairs(calcVehicleCoords()) do
      lib.requestModel(TEST_MODEL)
      spawned[#spawned+1] = CreateVehicle(TEST_MODEL, coords.x, coords.y, coords.z, coords.w, false, false)
    end
  end)
end)

-- Delete test vehicles
RegisterCommand("deletetestvehicles", function()
  for _, vehicle in ipairs(spawned) do
    DeleteEntity(vehicle)
  end
end)