local function FindInstance(Parent, ClassName, Name)
	for _, Instance in pairs(Parent:GetChildren()) do
		if Instance:IsA(ClassName) and Instance.Name == Name then
			return Instance
		end
	end
end

local function WaitForClass(Parent, ClassName)
	local Instance = Parent:FindFirstChildOfClass(ClassName)

	while not Instance and Parent do
		Parent.ChildAdded:Wait()
		Instance = Parent:FindFirstChildOfClass(ClassName)
	end

	return Instance
end

local function WaitForClassOfName(Parent, ...)
	local Instance = FindInstance(Parent, ...)

	while not Instance and Parent do
		Parent.ChildAdded:Wait()
		Instance = FindInstance(Parent, ...)
	end

	return Instance
end

local Fling = { }
local Aligns = { }
local Blacklist = { }
local Accessories = { }
local Attachments = { }

local Instancenew = Instance.new

local taskwait = task.wait
local taskspawn = task.spawn
local taskdefer = task.defer

local mathabs = math.abs
local mathcos = math.cos
local mathrandom = math.random

local stringmatch = string.match

local osclock = os.clock

local tableinsert = table.insert
local tableclear = table.clear
local tablefind = table.find

local CFramenew = CFrame.new
local CFrameAngles = CFrame.Angles
local CFrameidentity = CFrame.identity

local Vector3new = Vector3.new
local Vector3zero = Vector3.zero

local Sleep = CFrameidentity
local Velocity = Vector3new(0, 16384, 0)
local Angular = 0
local Linear = 0

local Workspace = game:FindFirstChildOfClass("Workspace")
local CurrentCamera = Workspace.CurrentCamera

local Players = game:FindFirstChildOfClass("Players")

local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()

local PostSimulation = game:FindFirstChildOfClass("RunService").PostSimulation

local Character = LocalPlayer.Character
local CharacterClone = Instancenew("Model")
 
local StarterGui = game:FindFirstChildOfClass("StarterGui")
local BindableEvent = Instancenew("BindableEvent")

local UserInputService = game:FindFirstChildOfClass("UserInputService")
local UserInputType = Enum.UserInputType

local MouseButton1 = UserInputType.MouseButton1
local Touch = UserInputType.Touch

local InputBegan = UserInputService.InputBegan:Connect(function(Input, GameProcessed)
	local Type = Input.UserInputType
	
	if not GameProcessed and ( Type == MouseButton1 or Type == Touch ) then
		local Target = Mouse.Target
		if Target and not Target.Anchored and not Target:IsDescendantOf(CharacterClone) and not Target:IsDescendantOf(Character) and not tablefind(Fling, Target) then
			local Parent = Target.Parent

			if Parent:IsA("Model") and Parent ~= Character and Parent:FindFirstChildOfClass("Humanoid") then
				local HumanoidRootPart = FindInstance(Parent, "BasePart", "HumanoidRootPart") or FindInstance(Parent, "BasePart", "Torso") or FindInstance(Parent, "BasePart", "Head")

				if HumanoidRootPart and not tablefind(Fling, HumanoidRootPart) then
					tableinsert(Fling, HumanoidRootPart)
					return
				end
			end

			tableinsert(Fling, Target)
		end
	end
end)
