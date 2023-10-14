--EZZ
--this was made by N1k0fr join the discord for more scripts 
--JOIN THE DISCORD https://discord.gg/yuNxzByhaw

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextBox = Instance.new("TextBox")
local TextButton = Instance.new("TextButton")
local Toggle = Instance.new("TextButton")



ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(20, 140, 1)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 5
Frame.Position = UDim2.new(0.584580839, 0, 0.620308518, 0)
Frame.Size = UDim2.new(0, 518, 0, 203)
Frame.Visible = false

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 2
TextLabel.Size = UDim2.new(0, 518, 0, 28)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "FE fling | by n1k0fr"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 21.000
TextLabel.TextWrapped = true

TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.fromRGB(0, 198, 0)
TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0.100386098, 0, 0.374384224, 0)
TextBox.Size = UDim2.new(0, 413, 0, 50)
TextBox.Font = Enum.Font.SourceSans
TextBox.Text = "Player User"
TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
TextBox.TextSize = 39.000
TextBox.TextWrapped = true

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(0, 198, 40)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.305019319, 0, 0.724137902, 0)
TextButton.Size = UDim2.new(0, 200, 0, 50)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Fling"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

Toggle.Name = "Toggle"
Toggle.Parent = ScreenGui
Toggle.BackgroundColor3 = Color3.fromRGB(17, 124, 0)
Toggle.Position = UDim2.new(0.00729927002, 0, 0.387323946, 0)
Toggle.Size = UDim2.new(0.182481751, 0, 0.0880281702, 0)
Toggle.Font = Enum.Font.GothamBold
Toggle.Text = "Open fling gui"
Toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
Toggle.TextScaled = true
Toggle.TextSize = 14.000
Toggle.TextWrapped = true



local function OKDUE_fake_script() 
	local script = Instance.new('LocalScript', TextButton)

	local lp = game:FindService("Players").LocalPlayer
	
	local function gplr(String)
		local Found = {}
		local strl = String:lower()
		if strl == "all" then
			for i,v in pairs(game:FindService("Players"):GetPlayers()) do
				table.insert(Found,v)
			end
		elseif strl == "others" then
			for i,v in pairs(game:FindService("Players"):GetPlayers()) do
				if v.Name ~= lp.Name then
					table.insert(Found,v)
				end
			end
		elseif strl == "me" then
			for i,v in pairs(game:FindService("Players"):GetPlayers()) do
				if v.Name == lp.Name then
					table.insert(Found,v)
				end
			end
		else
			for i,v in pairs(game:FindService("Players"):GetPlayers()) do
				if v.Name:lower():sub(1, #String) == String:lower() then
					table.insert(Found,v)
				end
			end
		end
		return Found
	end
	
	local function notif(str,duv)
		game:FindService("StarterGui"):SetCore("SendNotification",{
			Title = "Yeet gui"
		})
	end
	
	local TextButton = script.Parent
	local TextBox = script.Parent.Parent.TextBox
	
	TextButton.MouseButton1Click:Connect(function()
		local Target = gplr(TextBox.Text)
		if Target[1] then
			Target = Target[1]
	
			local Thrust = Instance.new('BodyThrust',lp.Character.HumanoidRootPart)
			Thrust.Force = Vector3.new(9999,9999,9999)
			Thrust.Name = "YeetForce"
			repeat
				lp.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame
				Thrust.Location = Target.Character.HumanoidRootPart.Position
				game:FindService("RunService").Heartbeat:Wait()
			until not Target.Character:FindFirstChild("Head")
		else
			notif("Player is not in game")
		end
	end)
	
	--jgagilvjalijvloijxlivjzloijvlz--
	notif("Loaded")
end
coroutine.wrap(OKDUE_fake_script)()
local function YWTBH_fake_script() 
	local script = Instance.new('Script', Frame)

	script.Parent.Selectable = true
	script.Parent.Active = true
	script.Parent.Draggable = true
end
coroutine.wrap(YWTBH_fake_script)()
local function XEXYB_fake_script() 
	local script = Instance.new('LocalScript', Toggle)

	local Frame = script.Parent.Parent.Frame
	
	script.Parent.MouseButton1Click:Connect(function()
		Frame.Visible = not Frame.Visible
	end)
end
coroutine.wrap(XEXYB_fake_script)()
