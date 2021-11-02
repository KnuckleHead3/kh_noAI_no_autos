Citizen.CreateThread(function()
    while true do
      Citzen.Wait(0) --must have every tick 

      -- Traffic and ped density nanagement (these things need to run every tick)
      SetTrafficDensity(0.0) --0.0= none. 1.0 = Max
      SetPedDensity(0.0) ----0.0= none. 1.0 = Max
    end
end)

function SetTrafficDensity(density)
     SetParkedVehicleDensityMultiplierThisFrame(density)
     SetVehicleDensityMultiplierThisFrame(density)
     SetRandomVehicleDensityMultiplierThisFrame(density)
end

function SetPedDensity(density)
     SetPedDensityMultiplierThisFrame(density)
     SetScenarioPedDensityMultiplierThisFrame(density)
end