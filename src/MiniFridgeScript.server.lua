-- Mini Fridge Script

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local SnackEntryEvent = Instance.new("RemoteEvent")
SnackEntryEvent.Name = "SnackEntryEvent"
SnackEntryEvent.Parent = ReplicatedStorage

local function onSnackEntry()
    -- Check if there are any units blocking the snack entry
    local units = workspace:GetChildren()
    local isBlocked = false

    for _, unit in ipairs(units) do
        if unit:IsA("Model") and unit:GetAttribute("IsUnit") then
            isBlocked = true
            break
        end
    end

    if not isBlocked then
        -- Allow the snack to enter the fridge
        -- Add your logic here
    else
        -- Block the snack from entering the fridge
        -- Add your logic here
    end
end

SnackEntryEvent.OnServerEvent:Connect(onSnackEntry)
