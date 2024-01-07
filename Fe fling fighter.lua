-- Attach this script to a tool that represents the shotgun

local Tool = script.Parent
local Players = game:GetService("Players")
local Debris = game:GetService("Debris")

local damage = 10 -- Adjust the damage value as needed
local range = 20 -- Adjust the range value as needed

-- Mesh ID for the shotgun handle
local shotgunMeshId = "rbxassetid://7136794244"

local function dealDamage(target)
    if target:IsA("Player") then
        -- Deal damage to players (you can add more conditions or customize the damage logic)
        target:TakeDamage(damage)
    end
end

-- Function to set up the shotgun mesh
local function setupMesh()
    local handle = Tool:WaitForChild("Handle") -- Correctly reference the Handle part
    local mesh = Instance.new("SpecialMesh")
    mesh.MeshType = Enum.MeshType.FileMesh
    mesh.MeshId = shotgunMeshId
    mesh.Parent = handle
end

local function onActivated()
    print("Shotgun activated!")

    local owner = Players:GetPlayerFromCharacter(Tool.Parent)
    if owner then
        local startPos = Tool.Handle.Position -- Reference the Handle part properly
        local direction = Tool.Handle.CFrame.LookVector

        local rayParams = RaycastParams.new()
        rayParams.FilterDescendantsInstances = {owner.Character}
        rayParams.FilterType = Enum.RaycastFilterType.Blacklist

        local rayResult = workspace:Raycast(startPos, direction * range, rayParams)

        if rayResult then
            local hitPart = rayResult.Instance
            local hitPos = rayResult.Position

            print("Hit something!")

            -- Check if the hit part is a player or humanoid
            local humanoid = hitPart.Parent:FindFirstChildOfClass("Humanoid")
            if humanoid then
                dealDamage(humanoid.Parent)
            end

            -- You can add more logic here, such as creating visual effects or sounds

            -- Remove the tool after firing (optional)
            Debris:AddItem(Tool, 1)
        end
    end
end

-- Set up the shotgun mesh when the tool is equipped
setupMesh()

Tool.Activated:Connect(onActivated)
