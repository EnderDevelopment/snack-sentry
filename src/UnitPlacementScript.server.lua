-- Unit Placement Script

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local UnitPlacementEvent = Instance.new("RemoteEvent")
UnitPlacementEvent.Name = "UnitPlacementEvent"
UnitPlacementEvent.Parent = ReplicatedStorage

local function onUnitPlacement(player, unitType, position)
    local unit = ReplicatedStorage:FindFirstChild(unitType):Clone()
    unit.Position = position
    unit.Parent = workspace

    -- Add any additional logic for unit placement here
end

UnitPlacementEvent.OnServerEvent:Connect(onUnitPlacement)
