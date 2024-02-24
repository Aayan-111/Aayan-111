
local script = game:GetObjects("rbxassetid://8403394444")[1]
wait(0.2)
game:GetService("RunService").RenderStepped:Wait()
wait(0.111111156)
MRANDOM = math.random
CF = CFrame.new
ANGLES = CFrame.Angles
angles = CFrame.Angles
RAD = math.rad
SIN = math.sin
COS = math.cos
C3 = Color3.new
Sin = math.sin
cf = CFrame.new
IT = Instance.new
Rad = math.rad
BRICKC = BrickColor.new
Euler = CFrame.fromEulerAnglesXYZ
EULER = CFrame.fromEulerAnglesXYZ
BRICKCRNDM = BrickColor.Random
Cos = math.cos
Cf = CFrame.new
VT = Vector3.new
FuckItImOverTheBeef = table.insert
Cam = workspace.CurrentCamera
game.Lighting.TimeOfDay = "00:00:00"
Player = game:GetService("Players").LocalPlayer
PlayerGui = Player.PlayerGui
Cam = workspace.CurrentCamera
Backpack = Player.Backpack
Character = Player.Character
Humanoid = Character.Humanoid
Mouse = Player:GetMouse()
RootPart = Character["HumanoidRootPart"]
Torso = Character["Torso"]
Head = Character["Head"]
RightArm = Character["Right Arm"]
LeftArm = Character["Left Arm"]
RightLeg = Character["Right Leg"]
LeftLeg = Character["Left Leg"]
RootJoint = RootPart["RootJoint"]
Neck = Torso["Neck"]
RightShoulder = Torso["Right Shoulder"]
LeftShoulder = Torso["Left Shoulder"]
RightHip = Torso["Right Hip"]
LeftHip = Torso["Left Hip"]
Humanoid:SetStateEnabled(Enum.HumanoidStateType.Dead, false)
local Effects = IT("Folder", Character)
Effects.Name = "Effects"
local shade = Color3.new(248, 0, 0)
local suc = Color3.new(0, 0, 0)
local alreadyfixing = false
local pp = false
local TPOS = Instance.new("StringValue", Character)
TPOS.Name = "tpos"
TPOS.Value = "0"
local eeeblock = Instance.new("Part")
eeeblock.CanCollide = false
eeeblock.Anchored = true
eeeblock.Transparency = 1
eeeblock.CFrame = Torso.CFrame
eeeblock.Parent = workspace
local eee = Instance.new("Sound",eeeblock)
local sick = Instance.new("Sound", Character)
sick.Volume = 10
sick.PlaybackSpeed = 0.75
sick.Pitch = 0.95
sick.Name = "wrecked"
sick.Looped = true
sick:Play()
local ANIMATOR = Humanoid.Animator
local ANIMATE = Character:FindFirstChild("Animate")

for i,v in pairs(Character:GetChildren()) do
	if v:IsA("BasePart") then
		local shield = Instance.new("Model")
		shield.Archivable = false
		local shieldpart = Instance.new("Part")
		shieldpart.Name = "HumanoidRootPart"
		shieldpart.Size = v.Size + Vector3.new(.4,.4,.4)
		shieldpart.Transparency = 1
		shield:GetPropertyChangedSignal("Archivable"):Connect(function()
			if pp then wait(math.huge) end
			shieldpart.Transparency = 0
		end)
		shieldpart.Color = v.Color
		shieldpart.CanCollide = false
		shieldpart.Massless = true
		shieldpart.Parent = shield
		local shieldweld = Instance.new("Weld")
		shieldweld.Part0 = v
		shieldweld.Part1 = shieldpart
		shieldweld.Parent = shield
		shield.Parent = v
	end
end

print([[ 

]])
--//=================================\\
--||    USEFUL VALUES/FUNCTIONS
--\\=================================//

local attack = false
local ANIM = "Idle"
local attacktype = 1
local delays = false
local play = true
local Torsovelocity = (RootPart.Velocity * Vector3.new(1,0,1)).magnitude 
local sine = 0
local change = 1
local doe = 0
local SINE = 5
local ATTACK = false
local HOLD = true
local Rooted = false
local plr = Player
local UNANCHOR = true
local YoureFucked = false
local MODE = "Snake God"
local Reason = "f a t"
local Hue = 0
local TOBANISH = {}
local RunService = game:GetService("RunService")
LIGHT = game.Lighting
local laughs = {2011349649,2011349983,2011351501,2011352223,2011355991,2011356475} 
local laugh = #laughs
local LINES = {"sigh..","Understand the power and bow to it.","Try not to be such a fucking idiot next time.","Your sins have been rewritten","I have set you free","Be careful Next Time","this is your last chance."}
local TAUNTS = {907329532,907330011,907331307,907331178,907331443,907331784,907331575,907332040,907332235,907332525,907332670,907332856,907332997,907333294,907333406,907329669,907329293,907331038}
local rc0 = CFrame.new() * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180))
local nc0 = CFrame.new(0,1,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180))
local rscp = CFrame.new(-.5,0,0) * CFrame.Angles(math.rad(0),math.rad(90),math.rad(0))
local lscp = CFrame.new(.5,0,0) * CFrame.Angles(math.rad(0),math.rad(-90),math.rad(0))
local ROOTC0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(180))
local NECKC0 = CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(180))
local RIGHTSHOULDERC0 = CFrame.new(-0.5, 0, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0))
local LEFTSHOULDERC0 = CFrame.new(0.5, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0))
local S = setmetatable({},{__index = function(s,i) return game:service(i) end})
local Plrs = S.Players
local DAMAGEMULTIPLIER = 1
Animation_Speed = 2
Animation_Speed2 = 4
SIZE = 1

--//=================================\\
--|| 	      SOME FUNCTIONS
--\\=================================//

Debris = game:GetService("Debris")

function MakeForm(PART,TYPE)
	if TYPE == "Cyl" then
		local MSH = IT("CylinderMesh",PART)
	elseif TYPE == "Ball" then
		local MSH = IT("SpecialMesh",PART)
		MSH.MeshType = "Sphere"
	elseif TYPE == "Wedge" then
		local MSH = IT("SpecialMesh",PART)
		MSH.MeshType = "Wedge"
	end
end


NewInstance = function(instance,parent,properties)
	local inst = Instance.new(instance)
	inst.Parent = parent
	if(properties)then
		for i,v in next, properties do
			pcall(function() inst[i] = v end)
		end
	end
	return inst;
end

function CreatePart(FORMFACTOR, PARENT, MATERIAL, REFLECTANCE, TRANSPARENCY, BRICKCOLOR, NAME, SIZE, ANCHOR)
	local NEWPART = IT("Part")
	NEWPART.formFactor = FORMFACTOR
	NEWPART.Reflectance = REFLECTANCE
	NEWPART.Transparency = TRANSPARENCY
	NEWPART.CanCollide = false
	NEWPART.Locked = true
	NEWPART.Anchored = true
	if ANCHOR == false then
		NEWPART.Anchored = false
	end
	NEWPART.BrickColor = BRICKC(tostring(BRICKCOLOR))
	NEWPART.Name = NAME
	NEWPART.Size = SIZE
	NEWPART.Position = Torso.Position
	NEWPART.Material = MATERIAL
	NEWPART:BreakJoints()
	NEWPART.Parent = PARENT
	return NEWPART
end

function Hellify(name)
	while RunService.Stepped:Wait() do
		for hue = 0, 1, 0.06 do
			name.Color = Color3.fromRGB(math.random(0,255),0,0)
			wait(0.001)
		end
	end
end

function Hellifytext(name)
	while RunService.Stepped:Wait() do
		for hue = 0, 1, 0.06 do
			name.TextColor3 = Color3.fromRGB(math.random(0,255),0,0)
			name.TextStrokeColor3 = Color3.fromRGB(math.random(0,255),0,0)
			wait(0.0005)
		end
	end
end

function WACKYEFFECTs(Table)
	local TYPE = (Table.EffectType or "Sphere")
	local SIZE = (Table.Size or VT(1,1,1))
	local ENDSIZE = (Table.Size2 or VT(0,0,0))
	local TRANSPARENCY = (Table.Transparency or 0)
	local ENDTRANSPARENCY = (Table.Transparency2 or 1)
	local CFRAME = (Table.CFrame or Torso.CFrame)
	local MOVEDIRECTION = (Table.MoveToPos or nil)
	local ROTATION1 = (Table.RotationX or 0)
	local ROTATION2 = (Table.RotationY or 0)
	local ROTATION3 = (Table.RotationZ or 0)
	local MATERIAL = (Table.Material or "Neon")
	local COLOR = (Table.Color or C3(1,1,1))
	local TIME = (Table.Time or 45)
	local SOUNDID = (Table.SoundID or nil)
	local SOUNDPITCH = (Table.SoundPitch or nil)
	local SOUNDVOLUME = (Table.SoundVolume or nil)
	local USEBOOMERANGMATH = (Table.UseBoomerangMath or false)
	local BOOMERANG = (Table.Boomerang or 0)
	local SIZEBOOMERANG = (Table.SizeBoomerang or 0)
	coroutine.resume(coroutine.create(function()
		local PLAYSSOUND = false
		local SOUND = nil
		local EFFECT = CreatePart(3, Effects, MATERIAL, 0, TRANSPARENCY, BRICKC("Pearl"), "Effect", VT(1,1,1), true)
		if SOUNDID ~= nil and SOUNDPITCH ~= nil and SOUNDVOLUME ~= nil then
			PLAYSSOUND = true
			SOUND = CreateSound(SOUNDID, EFFECT, SOUNDVOLUME, SOUNDPITCH, false)
		end
		EFFECT.Color = COLOR
		local MSH = nil
		if TYPE == "Sphere" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "Sphere", "", "", SIZE, VT(0,0,0))
		elseif TYPE == "Block" or TYPE == "Box" then
			MSH = IT("BlockMesh",EFFECT)
			MSH.Scale = SIZE
		elseif TYPE == "Wave" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "20329976", "", SIZE, VT(0,0,-SIZE.X/8))
		elseif TYPE == "Ring" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "559831844", "", VT(SIZE.X,SIZE.X,0.1), VT(0,0,0))
		elseif TYPE == "Slash" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "662586858", "", VT(SIZE.X/10,0,SIZE.X/10), VT(0,0,0))
		elseif TYPE == "Round Slash" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "662585058", "", VT(SIZE.X/10,0,SIZE.X/10), VT(0,0,0))
		elseif TYPE == "Swirl" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "168892432", "", SIZE, VT(0,0,0))
		elseif TYPE == "Skull" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "4770583", "", SIZE, VT(0,0,0))
		elseif TYPE == "Crystal" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "9756362", "", SIZE, VT(0,0,0))
		end
		if MSH ~= nil then
			local BOOMR1 = 1+BOOMERANG/50
			local BOOMR2 = 1+SIZEBOOMERANG/50
			local MOVESPEED = nil
			if MOVEDIRECTION ~= nil then
				if USEBOOMERANGMATH == true then
					MOVESPEED = ((CFRAME.p - MOVEDIRECTION).Magnitude/TIME)*BOOMR1
				else
					MOVESPEED = ((CFRAME.p - MOVEDIRECTION).Magnitude/TIME)
				end
			end
			local GROWTH = nil
			if USEBOOMERANGMATH == true then
				GROWTH = (SIZE - ENDSIZE)*(BOOMR2+1)
			else
				GROWTH = (SIZE - ENDSIZE)
			end
			local TRANS = TRANSPARENCY - ENDTRANSPARENCY
			if TYPE == "Block" then
				EFFECT.CFrame = CFRAME*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))
			else
				EFFECT.CFrame = CFRAME
			end
			if USEBOOMERANGMATH == true then
				for LOOP = 1, TIME+1 do
					Swait()
					MSH.Scale = MSH.Scale - (VT((GROWTH.X)*((1 - (LOOP/TIME)*BOOMR2)),(GROWTH.Y)*((1 - (LOOP/TIME)*BOOMR2)),(GROWTH.Z)*((1 - (LOOP/TIME)*BOOMR2)))*BOOMR2)/TIME
					if TYPE == "Wave" then
						MSH.Offset = VT(0,0,-MSH.Scale.Z/8)
					end
					EFFECT.Transparency = EFFECT.Transparency - TRANS/TIME
					if TYPE == "Block" then
						EFFECT.CFrame = CFRAME*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))
					else
						EFFECT.CFrame = EFFECT.CFrame*ANGLES(RAD(ROTATION1),RAD(ROTATION2),RAD(ROTATION3))
					end
					if MOVEDIRECTION ~= nil then
						local ORI = EFFECT.Orientation
						EFFECT.CFrame = CF(EFFECT.Position,MOVEDIRECTION)*CF(0,0,-(MOVESPEED)*((1 - (LOOP/TIME)*BOOMR1)))
						EFFECT.CFrame = CF(EFFECT.Position)*ANGLES(RAD(ORI.X),RAD(ORI.Y),RAD(ORI.Z))
					end
				end
			else
				for LOOP = 1, TIME+1 do
					Swait()
					MSH.Scale = MSH.Scale - GROWTH/TIME
					if TYPE == "Wave" then
						MSH.Offset = VT(0,0,-MSH.Scale.Z/8)
					end
					EFFECT.Transparency = EFFECT.Transparency - TRANS/TIME
					if TYPE == "Block" then
						EFFECT.CFrame = CFRAME*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))
					else
						EFFECT.CFrame = EFFECT.CFrame*ANGLES(RAD(ROTATION1),RAD(ROTATION2),RAD(ROTATION3))
					end
					if MOVEDIRECTION ~= nil then
						local ORI = EFFECT.Orientation
						EFFECT.CFrame = CF(EFFECT.Position,MOVEDIRECTION)*CF(0,0,-MOVESPEED)
						EFFECT.CFrame = CF(EFFECT.Position)*ANGLES(RAD(ORI.X),RAD(ORI.Y),RAD(ORI.Z))
					end
				end
			end
			EFFECT.Transparency = 1
			if PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat Swait() until EFFECT:FindFirstChildOfClass("Sound") == nil
				EFFECT:remove()
			end
		else
			if PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat Swait() until EFFECT:FindFirstChildOfClass("Sound") == nil
				EFFECT:remove()
			end
		end
	end))
end

function yourfucked(LOC,AIMTO,OUCH)
	WACKYEFFECTs({Time = 25, EffectType = "Block", Size = VT(0,0,0), Size2 = VT(1.4,1.4,1.4), Transparency = 0, Transparency2 = 1, CFrame = CF(LOC), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = BRICKC"New Yeller".Color, SoundID = 419268760, SoundPitch = MRANDOM(8,12)/13, SoundVolume = 7})
	for i = 1, 2 do
		local POS1 = CF(LOC,AIMTO)*CF(0,0,-45).p
		local AIMPOS = CF(LOC,POS1) * CF(0,0,-45) * ANGLES(RAD(MRANDOM(0,360)), RAD(MRANDOM(0,360)), RAD(MRANDOM(0,360)))*CF(0,0,MRANDOM(5,75)/10).p
		local HIT,POS = CastProperRay(LOC,AIMPOS,1000,Character)
		local DISTANCE = (POS - LOC).Magnitude
		if HIT then
			local HUM = nil
			if HIT.Parent:FindFirstChildOfClass("Humanoid") then
				HUM = HIT.Parent:FindFirstChildOfClass("Humanoid")
			elseif HIT.Parent.Parent:FindFirstChildOfClass("Humanoid") then
				HUM = HIT.Parent.Parent:FindFirstChildOfClass("Humanoid")
			end
			if HUM then
				ApplyDamage(HUM,OUCH+MRANDOM(-3,3))
			end
		end
		WACKYEFFECTs({Time = 20, EffectType = "Block", Size = VT(0,0,0), Size2 = VT(1,1,1), Transparency = 0, Transparency2 = 1, CFrame = CF(POS), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = BRICKC"New Yeller".Color, SoundID = nil, SoundPitch = 1, SoundVolume = 4})
		WACKYEFFECTs({Time = 20, EffectType = "Box", Size = VT(0,0,DISTANCE), Size2 = VT(0.7,0.7,DISTANCE), Transparency = 0.6, Transparency2 = 1, CFrame = CF(LOC,POS)*CF(0,0,-DISTANCE/2), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = BRICKC"New Yeller".Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
	end
end

function PuddleOfBlood(Position,MaxDrop,Model,MaxSize)
	local HITFLOOR, HITPOS, NORMAL = Raycast(Position, (CF(Position, Position + VT(0, -1, 0))).lookVector, MaxDrop, Model)
	if HITFLOOR ~= nil then
		if HITFLOOR.Parent ~= fat and HITFLOOR.Parent ~= Character then
			if HITFLOOR.Name == "BloodPuddle" then
				local DIST = (Position - HITFLOOR.Position).Magnitude
				if (HITFLOOR.Size.Z <= 5 and HITFLOOR.Size.Z < MaxSize) or (HITFLOOR.Size.Z > 5 and HITFLOOR.Size.Z < MaxSize and DIST < HITFLOOR.Size.Z/3) then
					HITFLOOR.Size = HITFLOOR.Size + VT(0.1,0,0.1)
				end
			else
				if HITFLOOR.Anchored == true then
					local BLOOD = CreatePart(3, Effects, "Glass", 0, 0, "Maroon", "BloodPuddle", VT(2,0,2))
					BLOOD.CFrame = CF(HITPOS,HITPOS+NORMAL)*ANGLES(RAD(90),RAD(0),RAD(0))
					MakeForm(BLOOD,"Cyl")
					coroutine.resume(coroutine.create(function()
						Swait(75)
						while true do
							Swait()
							BLOOD.Size = BLOOD.Size - VT(0.02,0,0.02)
							if BLOOD.Size.Z < 0.051 then
								BLOOD:remove()
								break
							end
						end
					end))
				end
			end
		end
	end
end

function SprayBlood(POSITION,DIRECTION,BloodSize)
	local BLOOD = CreatePart(3, Effects, "Glass", 0, 0, "Maroon", "BloodPuddle", VT(0.3,0.3,0.3),false)
	BLOOD.CFrame = CF(POSITION)
	MakeForm(BLOOD,"Ball")
	local bv = Instance.new("BodyVelocity",BLOOD) 
	bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
	bv.velocity = CF(POSITION,DIRECTION+VT(MRANDOM(-3,3)/30,MRANDOM(-3,3)/30,MRANDOM(-3,3)/30)).lookVector*75
	bv.Name = "MOVE"
	Debris:AddItem(bv,0.05)
	coroutine.resume(coroutine.create(function()
		local HASTOUCHEDGROUND = false
		local HIT = BLOOD.Touched:Connect(function(hit)
			if hit.Anchored == true then
				HASTOUCHEDGROUND = true
				PuddleOfBlood(BLOOD.Position+VT(0,1,0),2,BLOOD,BloodSize)
			end
		end)
		wait(5)
		if HASTOUCHEDGROUND == false then
			BLOOD:remove()
		end
	end))
end

function Epicshake(SHAKE,TIMER)
	coroutine.resume(coroutine.create(function()
		local FADER = SHAKE/TIMER
		for i = 1, TIMER do
			wait()
			Humanoid.CameraOffset = VT(MRANDOM(-(SHAKE-(FADER*i)),(SHAKE-(FADER*i)))/10,MRANDOM(-(SHAKE-(FADER*i)),(SHAKE-(FADER*i)))/10,MRANDOM(-(SHAKE-(FADER*i)),(SHAKE-(FADER*i)))/10)
		end
		Humanoid.CameraOffset = VT(0,0,0)
	end))
end

function SpawnTrail(FROM,TO,BIG)
	local TRAIL = CreatePart(3, Effects, "Neon", 0, 0.5, "Really red", "Trail", Vector3.new(0,0,0))
	MakeForm(TRAIL,"Cyl")
	local DIST = (FROM - TO).Magnitude
	if BIG == true then
		TRAIL.Size = Vector3.new(0.5,DIST,0.5)
	else
		TRAIL.Size = Vector3.new(0.25,DIST,0.25)
	end
	TRAIL.CFrame = CFrame.new(FROM, TO) * CFrame.new(0, 0, -DIST/2) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(0))
	coroutine.resume(coroutine.create(function()
		for i = 1, 5 do
			Swait()
			TRAIL.Transparency = TRAIL.Transparency + 0.1
		end
		TRAIL:remove()
	end))
end

function CastProperRay(StartPos, EndPos, Distance, Ignore)
	local DIRECTION = CF(StartPos,EndPos).lookVector
	return Raycast(StartPos, DIRECTION, Distance, Ignore)
end

function CreateRing(SIZE,DOESROT,ROT,WAIT,CFRAME,COLOR,GROW)
	local wave = CreatePart(3, Effects, "Neon", 0, 0.5, BRICKC(COLOR), "Effect", VT(0,0,0))
	local mesh = IT("SpecialMesh",wave)
	mesh.MeshType = "FileMesh"
	mesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
	mesh.Scale = SIZE
	mesh.Offset = VT(0,0,0)
	wave.CFrame = CFRAME
	coroutine.resume(coroutine.create(function(PART)
		for i = 1, WAIT do
			Swait()
			mesh.Scale = mesh.Scale + GROW
			if DOESROT == true then
				wave.CFrame = wave.CFrame * CFrame.fromEulerAnglesXYZ(0,ROT,0)
			end
			wave.Transparency = wave.Transparency + (0.5/WAIT)
			if wave.Transparency > 0.99 then
				wave:remove()
			end
		end
	end))
end

local blockedguis = {"sup","AllahGui","polishtoilet","nooties","IY_GUI","IY_JumpScare"}
function checkgui(v) 
	if v:IsA("ScreenGui") then
		for i = 1,#blockedguis do
			if v.Name == blockedguis[i] then
				v.Enabled = false
				game:GetService("Debris"):AddItem(v,.01)
				chatfunc("Begone \""..blockedguis[i].."\"")
			end
		end
	elseif v:IsA("LocalScript") and string.sub(v.Name,string.len(v.Name)-15) == "'s Sound Stopper" then
		v.Disabled = true
		if v:FindFirstChild("Char") then
			v.Char.Value = eeeblock
			v.Disabled = false
		end
	end
end

for i,v in pairs( Player:FindFirstChildOfClass("PlayerGui"):GetChildren()) do
	checkgui(v)
end

Player:FindFirstChildOfClass("PlayerGui").ChildAdded:Connect(function(v)
	if pp then wait(math.huge) end
	checkgui(v)
end)

function SpawnTrail2(FROM,TO,BIG)
	local TRAIL = CreatePart(3, Effects, "Neon", 0, 0, BrickColor.Random(), "Trail", VT(45,45,45))           
	MakeForm(TRAIL,"Cyl")
	local DIST = (FROM - TO).Magnitude
	if BIG == true then
		TRAIL.Size = VT(2,DIST,5)
	else
		TRAIL.Size = VT(2,DIST,5)
	end
	TRAIL.CFrame = CFrame.new(FROM, TO) * CFrame.new(0, 0, -DIST/2) * ANGLES(RAD(90),RAD(0),RAD(0))
	coroutine.resume(coroutine.create(function()
		for i = 1, 55 do
			Swait()
			TRAIL.Transparency = TRAIL.Transparency + 0.03
		end
		TRAIL:remove()
	end))
end

function RifleTrail(FROM,TO,BIG)
	local loudness = sick.PlaybackLoudness
	local TRAIL = CreatePart(3, Effects, "Neon", 0, 0, "Really black", "Trail", VT(45,45,45))           
	MakeForm(TRAIL,"Cyl")
	local DIST = (FROM - TO).Magnitude
	if BIG == true then
		TRAIL.Size = VT(2,DIST,5)
	else
		TRAIL.Size = VT(2,DIST,5)
	end
	TRAIL.CFrame = CFrame.new(FROM, TO) * CFrame.new(0, 0, -DIST/2) * ANGLES(RAD(90),RAD(0),RAD(0))
	coroutine.resume(coroutine.create(function()
		for i = 1, 55 do
			Swait()
			TRAIL.Transparency = TRAIL.Transparency + 0.03
			TRAIL.Color = Color3.fromRGB(0+178*loudness/100,0,0)
		end
		TRAIL:remove()
	end))
end

function SpawnTrail3(FROM,TO,BIG)
	local TRAIL = CreatePart(3, Effects, "Neon", 0, 0, "Really black", "Trail", VT(45,45,45))           
	MakeForm(TRAIL,"Cyl")
	local DIST = (FROM - TO).Magnitude
	if BIG == true then
		TRAIL.Size = VT(2,DIST,5)
	else
		TRAIL.Size = VT(2,DIST,5)
	end
	TRAIL.CFrame = CFrame.new(FROM, TO) * CFrame.new(0, 0, -DIST/2) * ANGLES(RAD(90),RAD(0),RAD(0))
	coroutine.resume(coroutine.create(function()
		for i = 1, 55 do
			Swait()
			TRAIL.Transparency = TRAIL.Transparency + 0.03
			TRAIL.Color = BrickColor.Random().Color
		end
		TRAIL:remove()
	end))
end

function KillChildren(v)
	v:BreakJoints()
	for _, c in pairs(v:GetChildren()) do
		if c:IsA("BasePart") then
			if c.Transparency < 1 then
				if c:FindFirstChildOfClass("Decal") then
					c:FindFirstChildOfClass("Decal"):remove()
				end
				for _, c in pairs(v:GetChildren()) do
					if c:IsA("Part") then
						if c.Transparency < 1 then
							c.Anchored = true
							c.Position = c.Position + Vector3.new(0 + MRANDOM(-11,11) * math.cos(SINE/12),0 + 6 * math.cos(SINE/12),0 + MRANDOM(-11,11) * math.cos(SINE/12))
						end
					end
					c.Parent = Effects
					coroutine.resume(coroutine.create(function()
						for i = 1, 222 do
							Swait()
							--c.Transparency = c.Transparency + 1/60
						end
						Debris:AddItem(c,2)
					end))
				end
			end
		end
	end
end

function Death(POSITION,RANGE)
	local CHILDREN = workspace:GetDescendants()
	for index, CHILD in pairs(CHILDREN) do
		if CHILD.ClassName == "Model" and CHILD ~= Character then
			local HUM = CHILD:FindFirstChildOfClass("Humanoid")
			if HUM then
				local TORSO = CHILD:FindFirstChild("Torso") or CHILD:FindFirstChild("UpperTorso")
				if TORSO then
					if (TORSO.Position - POSITION).Magnitude <= RANGE+TORSO.Size.Magnitude then
						KillChildren(CHILD)
					end
				end
			end
		end
	end 
end

function spawnwave(POS)
	local HITFLOOR,HITPOS = Raycast(POS+VT(0,1,0), (CF(POS, POS + VT(0, -1, 0))).lookVector, 100, Character)
	local EMITPOS = HITPOS
	if HITFLOOR ~= nil then
		if HITFLOOR.Parent:FindFirstChildOfClass("Humanoid") then
			HITFLOOR,HITPOS = Raycast(POS+VT(0,1,0), (CF(POS, POS + VT(0, -1, 0))).lookVector, 100, HITFLOOR.Parent)
			EMITPOS = HITPOS
		elseif HITFLOOR.Parent.Parent:FindFirstChildOfClass("Humanoid") then
			HITFLOOR,HITPOS = Raycast(POS+VT(0,1,0), (CF(POS, POS + VT(0, -1, 0))).lookVector, 100, HITFLOOR.Parent.Parent)
			EMITPOS = HITPOS
		end
	end
	if HITFLOOR ~= nil then
		Death(EMITPOS,55)
		WACKYEFFECT({EffectType = "Sphere", Size = VT(55,100000,55), Size2 = VT(0,100000,0), Transparency = 0, Transparency2 = 1, CFrame = CF(EMITPOS) * ANGLES(RAD(MRANDOM(-15,15)), RAD(0), RAD(MRANDOM(-15,15))), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(0, 0, 0), SoundID = nil, SoundPitch = 1, SoundVolume = 5})
		WACKYEFFECT({TIME = MRANDOM(0,44), EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(77 + 7 * COS(SINE/4),2 + 6 * COS(SINE/4),77 + 4 * COS(SINE/4)), Transparency = 0, Transparency2 = 1, CFrame = CF(EMITPOS), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-22,22), RotationZ = 0, Material = "ForceField", Color = Color3.fromRGB(0, 0, 0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		for i = 1, 5 do
			local TOPOS = CF(EMITPOS)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))*CF(0,0,12)
			WACKYEFFECT({TIME = MRANDOM(0,44), EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(77 + 7 * COS(SINE/4),2 + 6 * COS(SINE/4),77 + 4 * COS(SINE/4)), Transparency = 0, Transparency2 = 1, CFrame = CF(EMITPOS,TOPOS.p), MoveToPos = TOPOS.p, RotationX = 0, RotationY = MRANDOM(-22,22), RotationZ = 0, Material = "ForceField", Color = Color3.fromRGB(0, 0, 0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		end
	end
end

function DISEMBOWELray(MODEL)
	local loudness = sick.PlaybackLoudness
	local HUM = MODEL:FindFirstChildOfClass("Humanoid")
	MODEL:BreakJoints()
	if HUM then
		for index, CHILD in pairs(MODEL:GetChildren()) do
			if CHILD:IsA("BasePart") then
				if CHILD.Name == "Head" then
					WACKYEFFECT699({Time = MRANDOM(10,30)*5, EffectType = "Box", Size = VT(CHILD.Size.Z,CHILD.Size.Y,CHILD.Size.Z)/3, Size2 = (VT(CHILD.Size.Z,CHILD.Size.Y,CHILD.Size.Z)/3)*MRANDOM(7,14)/10, Transparency = CHILD.Transparency, Transparency2 = 1, CFrame = CHILD.CFrame, MoveToPos = CHILD.Position+VT(0,MRANDOM(5,8)/1.5,0), RotationX = MRANDOM(-25,25)/35, RotationY = MRANDOM(-25,25)/35, RotationZ = MRANDOM(-25,25)/35, Material = "Granite", Color = Color3.fromRGB(0+178*loudness/100,0,0), SoundID = 206082273, SoundPitch = .8, SoundVolume = 4, UseBoomerangMath = true, Boomerang = 100, SizeBoomerang = 3})
					WACKYEFFECT699({Time = MRANDOM(10,30)*5, EffectType = "Box", Size = VT(CHILD.Size.Z,CHILD.Size.Y,CHILD.Size.Z)/2, Size2 = (VT(CHILD.Size.Z,CHILD.Size.Y,CHILD.Size.Z)/2)*MRANDOM(7,14)/10, Transparency = CHILD.Transparency, Transparency2 = 1, CFrame = CHILD.CFrame, MoveToPos = CHILD.Position+VT(0,MRANDOM(5,8)/1.5,0), RotationX = MRANDOM(-25,25)/35, RotationY = MRANDOM(-25,25)/35, RotationZ = MRANDOM(-25,25)/35, Material = "Granite", Color = Color3.fromRGB(0+178*loudness/100,0,0), SoundID = 206082273, SoundPitch = .7, SoundVolume = 6, UseBoomerangMath = true, Boomerang = 100, SizeBoomerang = 3})
					WACKYEFFECT699({Time = MRANDOM(10,30)*12, EffectType = "Box", Size = VT(CHILD.Size.Z,CHILD.Size.Y,CHILD.Size.Z), Size2 = VT(CHILD.Size.Z,CHILD.Size.Y,CHILD.Size.Z), Transparency = CHILD.Transparency, Transparency2 = 1, CFrame = CHILD.CFrame, MoveToPos = CHILD.Position+VT(MRANDOM(-360,360)/1.5,MRANDOM(-360,360)/1.5,0), MRANDOM(-360,360)/35, RotationX = MRANDOM(-360,360)/35, RotationY = MRANDOM(-360,360)/35, RotationZ = MRANDOM(-360,360)/35, Material = "Granite", Color3.fromRGB(0+178*loudness/100,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, SizeBoomerang = 0, Boomerang = 50})
				elseif CHILD.Name ~= "HumanoidRootPart" then
					WACKYEFFECT699({Time = MRANDOM(10,30)*5, EffectType = "Box", Size = VT(CHILD.Size.Z,CHILD.Size.Y,CHILD.Size.Z)/3, Size2 = (VT(CHILD.Size.Z,CHILD.Size.Y,CHILD.Size.Z)/3)*MRANDOM(7,14)/10, Transparency = CHILD.Transparency, Transparency2 = 1, CFrame = CHILD.CFrame, MoveToPos = CHILD.Position+VT(0,MRANDOM(5,8)/1.5,0), RotationX = MRANDOM(-25,25)/35, RotationY = MRANDOM(-25,25)/35, RotationZ = MRANDOM(-25,25)/35, Material = "Granite", Color = Color3.fromRGB(0+178*loudness/100,0,0), SoundID = 206082273, SoundPitch = .8, SoundVolume = 4, UseBoomerangMath = true, Boomerang = 100, SizeBoomerang = 3})
					WACKYEFFECT699({Time = MRANDOM(10,30)*5, EffectType = "Box", Size = VT(CHILD.Size.Z,CHILD.Size.Y,CHILD.Size.Z)/2, Size2 = (VT(CHILD.Size.Z,CHILD.Size.Y,CHILD.Size.Z)/2)*MRANDOM(7,14)/10, Transparency = CHILD.Transparency, Transparency2 = 1, CFrame = CHILD.CFrame, MoveToPos = CHILD.Position+VT(0,MRANDOM(5,8)/1.5,0), RotationX = MRANDOM(-25,25)/35, RotationY = MRANDOM(-25,25)/35, RotationZ = MRANDOM(-25,25)/35, Material = "Granite", Color = Color3.fromRGB(0+178*loudness/100,0,0), SoundID = 206082273, SoundPitch = .7, SoundVolume = 6, UseBoomerangMath = true, Boomerang = 100, SizeBoomerang = 3})
					WACKYEFFECT699({Time = MRANDOM(10,30)*6, EffectType = "Box", Size = CHILD.Size, Size2 = CHILD.Size, Transparency = CHILD.Transparency, Transparency2 = 1, CFrame = CHILD.CFrame, MoveToPos = CHILD.Position+VT(MRANDOM(-50,100)/1.5,MRANDOM(-50,100)/35,MRANDOM(-50,100)/35), MRANDOM(-50,100)/35, RotationX = MRANDOM(-50,100)/35, RotationY = MRANDOM(-50,100)/35, RotationZ = MRANDOM(-50,100)/35, Material = "Granite", Color = Color3.fromRGB(0+178*loudness/100,0,0), SoundID = 206082273, SoundPitch = .7, SoundVolume = 6, UseBoomerangMath = true, SizeBoomerang = 100, Boomerang = 35})
				end
				if CHILD.Name == "Torso" or CHILD.Name == "UpperTorso" then
					WACKYEFFECT699({Time = MRANDOM(10,30)*5, EffectType = "Box", Size = VT(CHILD.Size.Z,CHILD.Size.Y,CHILD.Size.Z)/3, Size2 = (VT(CHILD.Size.Z,CHILD.Size.Y,CHILD.Size.Z)/3)*MRANDOM(7,14)/10, Transparency = CHILD.Transparency, Transparency2 = 1, CFrame = CHILD.CFrame, MoveToPos = CHILD.Position+VT(0,MRANDOM(5,8)/1.5,0), RotationX = MRANDOM(-25,25)/35, RotationY = MRANDOM(-25,25)/35, RotationZ = MRANDOM(-25,25)/35, Material = "Granite", Color = Color3.fromRGB(0+178*loudness/100,0,0), SoundID = 206082273, SoundPitch = .8, SoundVolume = 4, UseBoomerangMath = true, Boomerang = 100, SizeBoomerang = 3})
					WACKYEFFECT699({Time = MRANDOM(10,30)*5, EffectType = "Box", Size = VT(CHILD.Size.Z,CHILD.Size.Y,CHILD.Size.Z)/2, Size2 = (VT(CHILD.Size.Z,CHILD.Size.Y,CHILD.Size.Z)/2)*MRANDOM(7,14)/10, Transparency = CHILD.Transparency, Transparency2 = 1, CFrame = CHILD.CFrame, MoveToPos = CHILD.Position+VT(0,MRANDOM(5,8)/1.5,0), RotationX = MRANDOM(-25,25)/35, RotationY = MRANDOM(-25,25)/35, RotationZ = MRANDOM(-25,25)/35, Material = "Granite", Color = Color3.fromRGB(0+178*loudness/100,0,0), SoundID = 206082273, SoundPitch = .7, SoundVolume = 6, UseBoomerangMath = true, Boomerang = 100, SizeBoomerang = 3})
					WACKYEFFECT699({Time = 50, EffectType = "Box", Size = VT(0.2,0.2,0.2)*CHILD.Size.Magnitude * 3, Size2 = VT(5,5,5)*CHILD.Size.Magnitude, Transparency = 0.8, Transparency2 = 1, CFrame = CF(CHILD.Position), MoveToPos = CHILD.Position+VT(MRANDOM(-50,100)/35,MRANDOM(-50,100)/35,MRANDOM(-50,100)/35), MRANDOM(-50,100)/35, RotationX = MRANDOM(-50,100)/35, RotationY = MRANDOM(-50,100)/35, RotationZ = MRANDOM(-50,100)/35, Material = "Granite", Color = Color3.fromRGB(0+178*loudness/100,0,0), SoundID = 206082273, SoundPitch = .7, SoundVolume = 6, UseBoomerangMath = true, Boomerang = 100, SizeBoomerang = 35})
				end
				CHILD:Destroy()
				CHILD:Destroy()
				CHILD:Destroy()
			end
		end
		HUM.Health = 0
	end
	MODEL:remove()
	MODEL:remove()
	MODEL:remove()
	MODEL:remove()
	MODEL:remove()
	MODEL:Destroy()
	MODEL:Destroy()
	MODEL:Destroy()
	MODEL:Destroy()
	MODEL:Destroy()
end

function DISEMBOWEL(MODEL)
	local HUM = MODEL:FindFirstChildOfClass("Humanoid")
	MODEL:BreakJoints()
	if HUM then
		for index, CHILD in pairs(MODEL:GetChildren()) do
			if CHILD:IsA("BasePart") then
				if CHILD.Name == "Head" then
					WACKYEFFECT6({Time = MRANDOM(10,30)*5, EffectType = "Box", Size = VT(CHILD.Size.Z,CHILD.Size.Y,CHILD.Size.Z)/3, Size2 = (VT(CHILD.Size.Z,CHILD.Size.Y,CHILD.Size.Z)/3)*MRANDOM(7,14)/10, Transparency = CHILD.Transparency, Transparency2 = 1, CFrame = CHILD.CFrame, MoveToPos = CHILD.Position+VT(0,MRANDOM(5,8)/1.5,0), RotationX = MRANDOM(-25,25)/35, RotationY = MRANDOM(-25,25)/35, RotationZ = MRANDOM(-25,25)/35, Material = "Granite", Color = C3(.75,0,0), SoundID = 206082273, SoundPitch = .8, SoundVolume = 4, UseBoomerangMath = true, Boomerang = 100, SizeBoomerang = 3})
					WACKYEFFECT6({Time = MRANDOM(10,30)*5, EffectType = "Box", Size = VT(CHILD.Size.Z,CHILD.Size.Y,CHILD.Size.Z)/2, Size2 = (VT(CHILD.Size.Z,CHILD.Size.Y,CHILD.Size.Z)/2)*MRANDOM(7,14)/10, Transparency = CHILD.Transparency, Transparency2 = 1, CFrame = CHILD.CFrame, MoveToPos = CHILD.Position+VT(0,MRANDOM(5,8)/1.5,0), RotationX = MRANDOM(-25,25)/35, RotationY = MRANDOM(-25,25)/35, RotationZ = MRANDOM(-25,25)/35, Material = "Granite", Color = C3(.5,0,0), SoundID = 206082273, SoundPitch = .7, SoundVolume = 6, UseBoomerangMath = true, Boomerang = 100, SizeBoomerang = 3})
					WACKYEFFECT6({Time = MRANDOM(10,30)*12, EffectType = "Box", Size = VT(CHILD.Size.Z,CHILD.Size.Y,CHILD.Size.Z), Size2 = VT(CHILD.Size.Z,CHILD.Size.Y,CHILD.Size.Z), Transparency = CHILD.Transparency, Transparency2 = 1, CFrame = CHILD.CFrame, MoveToPos = CHILD.Position+VT(MRANDOM(-360,360)/1.5,MRANDOM(-360,360)/1.5,0), MRANDOM(-360,360)/35, RotationX = MRANDOM(-360,360)/35, RotationY = MRANDOM(-360,360)/35, RotationZ = MRANDOM(-360,360)/35, Material = "Granite", Color = C3(.35,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, SizeBoomerang = 0, Boomerang = 50})
				elseif CHILD.Name ~= "HumanoidRootPart" then
					WACKYEFFECT6({Time = MRANDOM(10,30)*5, EffectType = "Box", Size = VT(CHILD.Size.Z,CHILD.Size.Y,CHILD.Size.Z)/3, Size2 = (VT(CHILD.Size.Z,CHILD.Size.Y,CHILD.Size.Z)/3)*MRANDOM(7,14)/10, Transparency = CHILD.Transparency, Transparency2 = 1, CFrame = CHILD.CFrame, MoveToPos = CHILD.Position+VT(0,MRANDOM(5,8)/1.5,0), RotationX = MRANDOM(-25,25)/35, RotationY = MRANDOM(-25,25)/35, RotationZ = MRANDOM(-25,25)/35, Material = "Granite", Color = C3(.75,0,0), SoundID = 206082273, SoundPitch = .8, SoundVolume = 4, UseBoomerangMath = true, Boomerang = 100, SizeBoomerang = 3})
					WACKYEFFECT6({Time = MRANDOM(10,30)*5, EffectType = "Box", Size = VT(CHILD.Size.Z,CHILD.Size.Y,CHILD.Size.Z)/2, Size2 = (VT(CHILD.Size.Z,CHILD.Size.Y,CHILD.Size.Z)/2)*MRANDOM(7,14)/10, Transparency = CHILD.Transparency, Transparency2 = 1, CFrame = CHILD.CFrame, MoveToPos = CHILD.Position+VT(0,MRANDOM(5,8)/1.5,0), RotationX = MRANDOM(-25,25)/35, RotationY = MRANDOM(-25,25)/35, RotationZ = MRANDOM(-25,25)/35, Material = "Granite", Color = C3(.5,0,0), SoundID = 206082273, SoundPitch = .7, SoundVolume = 6, UseBoomerangMath = true, Boomerang = 100, SizeBoomerang = 3})
					WACKYEFFECT6({Time = MRANDOM(10,30)*6, EffectType = "Box", Size = CHILD.Size, Size2 = CHILD.Size, Transparency = CHILD.Transparency, Transparency2 = 1, CFrame = CHILD.CFrame, MoveToPos = CHILD.Position+VT(MRANDOM(-50,100)/1.5,MRANDOM(-50,100)/35,MRANDOM(-50,100)/35), MRANDOM(-50,100)/35, RotationX = MRANDOM(-50,100)/35, RotationY = MRANDOM(-50,100)/35, RotationZ = MRANDOM(-50,100)/35, Material = "Granite", Color = C3(.35,0,0), SoundID = 206082273, SoundPitch = .7, SoundVolume = 6, UseBoomerangMath = true, SizeBoomerang = 100, Boomerang = 35})
				end
				if CHILD.Name == "Torso" or CHILD.Name == "UpperTorso" then
					WACKYEFFECT6({Time = MRANDOM(10,30)*5, EffectType = "Box", Size = VT(CHILD.Size.Z,CHILD.Size.Y,CHILD.Size.Z)/3, Size2 = (VT(CHILD.Size.Z,CHILD.Size.Y,CHILD.Size.Z)/3)*MRANDOM(7,14)/10, Transparency = CHILD.Transparency, Transparency2 = 1, CFrame = CHILD.CFrame, MoveToPos = CHILD.Position+VT(0,MRANDOM(5,8)/1.5,0), RotationX = MRANDOM(-25,25)/35, RotationY = MRANDOM(-25,25)/35, RotationZ = MRANDOM(-25,25)/35, Material = "Granite", Color = C3(.75,0,0), SoundID = 206082273, SoundPitch = .8, SoundVolume = 4, UseBoomerangMath = true, Boomerang = 100, SizeBoomerang = 3})
					WACKYEFFECT6({Time = MRANDOM(10,30)*5, EffectType = "Box", Size = VT(CHILD.Size.Z,CHILD.Size.Y,CHILD.Size.Z)/2, Size2 = (VT(CHILD.Size.Z,CHILD.Size.Y,CHILD.Size.Z)/2)*MRANDOM(7,14)/10, Transparency = CHILD.Transparency, Transparency2 = 1, CFrame = CHILD.CFrame, MoveToPos = CHILD.Position+VT(0,MRANDOM(5,8)/1.5,0), RotationX = MRANDOM(-25,25)/35, RotationY = MRANDOM(-25,25)/35, RotationZ = MRANDOM(-25,25)/35, Material = "Granite", Color = C3(.5,0,0), SoundID = 206082273, SoundPitch = .7, SoundVolume = 6, UseBoomerangMath = true, Boomerang = 100, SizeBoomerang = 3})
					WACKYEFFECT6({Time = 50, EffectType = "Box", Size = VT(0.2,0.2,0.2)*CHILD.Size.Magnitude * 3, Size2 = VT(5,5,5)*CHILD.Size.Magnitude, Transparency = 0.8, Transparency2 = 1, CFrame = CF(CHILD.Position), MoveToPos = CHILD.Position+VT(MRANDOM(-50,100)/35,MRANDOM(-50,100)/35,MRANDOM(-50,100)/35), MRANDOM(-50,100)/35, RotationX = MRANDOM(-50,100)/35, RotationY = MRANDOM(-50,100)/35, RotationZ = MRANDOM(-50,100)/35, Material = "Granite", Color = C3(.35,0,0), SoundID = 206082273, SoundPitch = .7, SoundVolume = 6, UseBoomerangMath = true, Boomerang = 100, SizeBoomerang = 35})
				end
				CHILD:Destroy()
				CHILD:Destroy()
				CHILD:Destroy()
			end
		end
		HUM.Health = 0
	end
	MODEL:remove()
	MODEL:remove()
	MODEL:remove()
	MODEL:remove()
	MODEL:remove()
	MODEL:Destroy()
	MODEL:Destroy()
	MODEL:Destroy()
	MODEL:Destroy()
	MODEL:Destroy()
end

function WACKYEFFECT6(Table)
	local TYPE = Table.EffectType or "Sphere"
	local SIZE = Table.Size or VT(1, 1, 1)
	local ENDSIZE = Table.Size2 or VT(0, 0, 0)
	local TRANSPARENCY = Table.Transparency or 0
	local ENDTRANSPARENCY = Table.Transparency2 or 1
	local CFRAME = Table.CFrame or Torso.CFrame
	local MOVEDIRECTION = Table.MoveToPos or nil
	local ROTATION1 = Table.RotationX or 0
	local ROTATION2 = Table.RotationY or 0
	local ROTATION3 = Table.RotationZ or 0
	local MATERIAL = Table.Material --or "Neon"
	local COLOR = Table.Color or C3(1, .7, 0)
	local TIME = Table.Time or 45
	local SOUNDID = Table.SoundID or nil
	local SOUNDPITCH = Table.SoundPitch or nil
	local SOUNDVOLUME = Table.SoundVolume or nil
	local USEBOOMERANGMATH = Table.UseBoomerangMath or false
	local BOOMERANG = Table.Boomerang or 0
	local SIZEBOOMERANG = Table.SizeBoomerang or 0
	coroutine.resume(coroutine.create(function()
		local PLAYSSOUND = false
		local SOUND
		local EFFECT = CreatePart(3, Effects, "Neon", 0, TRANSPARENCY, BRICKC("Pearl"), "Effect", VT(1, 1, 1), true)
		EFFECT.Color = BrickColor.Random().Color
		if SOUNDID ~= nil and SOUNDPITCH ~= nil and SOUNDVOLUME ~= nil then
			PLAYSSOUND = true
			SOUND = CreateSound(SOUNDID, EFFECT, SOUNDVOLUME, SOUNDPITCH, false)
		end
		local MSH
		if TYPE == "Sphere" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "Sphere", "", "", SIZE, VT(0, 0, 0))
		elseif TYPE == "Block" or TYPE == "Box" then
			MSH = IT("BlockMesh", EFFECT)
			MSH.Scale = SIZE
		elseif TYPE == "Wave" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "FileMesh", "20329976", "", SIZE, VT(0, 0, -SIZE.X / 8))
		elseif TYPE == "Ring" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "FileMesh", "559831844", "", VT(SIZE.X, SIZE.X, 0.1), VT(0, 0, 0))
		elseif TYPE == "Slash" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "FileMesh", "662586858", "", VT(SIZE.X / 10, 0, SIZE.X / 10), VT(0, 0, 0))
		elseif TYPE == "Round Slash" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "FileMesh", "662585058", "", VT(SIZE.X / 10, 0, SIZE.X / 10), VT(0, 0, 0))
		elseif TYPE == "Swirl" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "FileMesh", "168892432", "", SIZE, VT(0, 0, 0))
		elseif TYPE == "Skull" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "FileMesh", "4770583", "", SIZE, VT(0, 0, 0))
		elseif TYPE == "Star" then 
			MSH = CreateMesh2("SpecialMesh", EFFECT, "FileMesh", "2760116123", "", SIZE, VT(0,0,0))   	
		elseif TYPE == "Crystal" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "FileMesh", "450656451", "", SIZE, VT(0, 0, 0))
		end
		coroutine.resume(coroutine.create(function()
			if MSH ~= nil then
				local BOOMR1 = 1 + BOOMERANG / 50
				local BOOMR2 = 1 + SIZEBOOMERANG / 50
				local MOVESPEED = nil
				if MOVEDIRECTION ~= nil then
					MOVESPEED = (CFRAME.p - MOVEDIRECTION).Magnitude/TIME
				end
				local GROWTH
				if USEBOOMERANGMATH == true then
					GROWTH = (SIZE - ENDSIZE) * (BOOMR2 + 1)
				else
					GROWTH = SIZE - ENDSIZE
				end
				local TRANS = TRANSPARENCY - ENDTRANSPARENCY
				if TYPE == "Block" then
					EFFECT.CFrame = CFRAME * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)))
				else
					EFFECT.CFrame = CFRAME
				end
				if USEBOOMERANGMATH == true then
					for LOOP = 1, TIME + 1 do
						Swait()
						MSH.Scale = MSH.Scale - VT(GROWTH.X * (1 - LOOP / TIME * BOOMR2), GROWTH.Y * (1 - LOOP / TIME * BOOMR2), GROWTH.Z * (1 - LOOP / TIME * BOOMR2)) * BOOMR2 / TIME
						if TYPE == "Wave" then
							MSH.Offset = VT(0, 0, -MSH.Scale.Z / 8)
						end
						EFFECT.Transparency = EFFECT.Transparency - TRANS / TIME
						if TYPE == "Block" then
							EFFECT.CFrame = CFRAME * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)))
						else
							EFFECT.CFrame = EFFECT.CFrame * ANGLES(RAD(ROTATION1), RAD(ROTATION2), RAD(ROTATION3))
						end
						if MOVEDIRECTION ~= nil then
							local ORI = EFFECT.Orientation
							EFFECT.CFrame = CF(EFFECT.Position, MOVEDIRECTION) * CF(0, 0, -MOVESPEED * (1 - LOOP / TIME * BOOMR1))
							EFFECT.Orientation = ORI
						end
					end
				else
					for LOOP = 1, TIME + 1 do
						Swait()
						MSH.Scale = MSH.Scale - GROWTH / TIME
						if TYPE == "Wave" then
							MSH.Offset = VT(0, 0, -MSH.Scale.Z / 8)
						end
						EFFECT.Transparency = EFFECT.Transparency - TRANS / TIME
						if TYPE == "Block" then
							EFFECT.CFrame = CFRAME * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)))
						else
							EFFECT.CFrame = EFFECT.CFrame * ANGLES(RAD(ROTATION1), RAD(ROTATION2), RAD(ROTATION3))
						end
						if MOVEDIRECTION ~= nil then
							local ORI = EFFECT.Orientation
							EFFECT.CFrame = CF(EFFECT.Position,MOVEDIRECTION)*CF(0,0,-MOVESPEED)
							EFFECT.Orientation = ORI
						end
					end
				end
				EFFECT.Transparency = 1
				if PLAYSSOUND == false then
					EFFECT:remove()
				else
					repeat
						Swait()
					until EFFECT:FindFirstChildOfClass("Sound") == nil
					EFFECT:remove()
				end
			elseif PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat
					Swait()
				until EFFECT:FindFirstChildOfClass("Sound") == nil
				EFFECT:remove()
			end
		end))
		return EFFECT
	end))
end   


function WACKYEFFECT699(Table)
	local TYPE = Table.EffectType or "Sphere"
	local SIZE = Table.Size or VT(1, 1, 1)
	local loudness = sick.PlaybackLoudness
	local ENDSIZE = Table.Size2 or VT(0, 0, 0)
	local TRANSPARENCY = Table.Transparency or 0
	local ENDTRANSPARENCY = Table.Transparency2 or 1
	local CFRAME = Table.CFrame or Torso.CFrame
	local MOVEDIRECTION = Table.MoveToPos or nil
	local ROTATION1 = Table.RotationX or 0
	local ROTATION2 = Table.RotationY or 0
	local ROTATION3 = Table.RotationZ or 0
	local MATERIAL = Table.Material --or "Neon"
	local COLOR = Table.Color or C3(1, .7, 0)
	local TIME = Table.Time or 45
	local SOUNDID = Table.SoundID or nil
	local SOUNDPITCH = Table.SoundPitch or nil
	local SOUNDVOLUME = Table.SoundVolume or nil
	local USEBOOMERANGMATH = Table.UseBoomerangMath or false
	local BOOMERANG = Table.Boomerang or 0
	local SIZEBOOMERANG = Table.SizeBoomerang or 0
	coroutine.resume(coroutine.create(function()
		local PLAYSSOUND = false
		local SOUND
		local EFFECT = CreatePart(3, Effects, "Neon", 0, TRANSPARENCY, BRICKC("Pearl"), "Effect", VT(1, 1, 1), true)
		EFFECT.Color = Color3.fromRGB(0+178*loudness/100,0,0)
		if SOUNDID ~= nil and SOUNDPITCH ~= nil and SOUNDVOLUME ~= nil then
			PLAYSSOUND = true
			SOUND = CreateSound(SOUNDID, EFFECT, SOUNDVOLUME, SOUNDPITCH, false)
		end
		local MSH
		if TYPE == "Sphere" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "Sphere", "", "", SIZE, VT(0, 0, 0))
		elseif TYPE == "Block" or TYPE == "Box" then
			MSH = IT("BlockMesh", EFFECT)
			MSH.Scale = SIZE
		elseif TYPE == "Wave" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "FileMesh", "20329976", "", SIZE, VT(0, 0, -SIZE.X / 8))
		elseif TYPE == "Ring" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "FileMesh", "559831844", "", VT(SIZE.X, SIZE.X, 0.1), VT(0, 0, 0))
		elseif TYPE == "Slash" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "FileMesh", "662586858", "", VT(SIZE.X / 10, 0, SIZE.X / 10), VT(0, 0, 0))
		elseif TYPE == "Round Slash" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "FileMesh", "662585058", "", VT(SIZE.X / 10, 0, SIZE.X / 10), VT(0, 0, 0))
		elseif TYPE == "Swirl" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "FileMesh", "168892432", "", SIZE, VT(0, 0, 0))
		elseif TYPE == "Skull" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "FileMesh", "4770583", "", SIZE, VT(0, 0, 0))
		elseif TYPE == "Star" then 
			MSH = CreateMesh2("SpecialMesh", EFFECT, "FileMesh", "2760116123", "", SIZE, VT(0,0,0))   	
		elseif TYPE == "Crystal" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "FileMesh", "450656451", "", SIZE, VT(0, 0, 0))
		end
		coroutine.resume(coroutine.create(function()
			if MSH ~= nil then
				local BOOMR1 = 1 + BOOMERANG / 50
				local BOOMR2 = 1 + SIZEBOOMERANG / 50
				local MOVESPEED = nil
				if MOVEDIRECTION ~= nil then
					MOVESPEED = (CFRAME.p - MOVEDIRECTION).Magnitude/TIME
				end
				local GROWTH
				if USEBOOMERANGMATH == true then
					GROWTH = (SIZE - ENDSIZE) * (BOOMR2 + 1)
				else
					GROWTH = SIZE - ENDSIZE
				end
				local TRANS = TRANSPARENCY - ENDTRANSPARENCY
				if TYPE == "Block" then
					EFFECT.CFrame = CFRAME * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)))
				else
					EFFECT.CFrame = CFRAME
				end
				if USEBOOMERANGMATH == true then
					for LOOP = 1, TIME + 1 do
						Swait()
						MSH.Scale = MSH.Scale - VT(GROWTH.X * (1 - LOOP / TIME * BOOMR2), GROWTH.Y * (1 - LOOP / TIME * BOOMR2), GROWTH.Z * (1 - LOOP / TIME * BOOMR2)) * BOOMR2 / TIME
						if TYPE == "Wave" then
							MSH.Offset = VT(0, 0, -MSH.Scale.Z / 8)
						end
						EFFECT.Transparency = EFFECT.Transparency - TRANS / TIME
						if TYPE == "Block" then
							EFFECT.CFrame = CFRAME * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)))
						else
							EFFECT.CFrame = EFFECT.CFrame * ANGLES(RAD(ROTATION1), RAD(ROTATION2), RAD(ROTATION3))
						end
						if MOVEDIRECTION ~= nil then
							local ORI = EFFECT.Orientation
							EFFECT.CFrame = CF(EFFECT.Position, MOVEDIRECTION) * CF(0, 0, -MOVESPEED * (1 - LOOP / TIME * BOOMR1))
							EFFECT.Orientation = ORI
						end
					end
				else
					for LOOP = 1, TIME + 1 do
						Swait()
						MSH.Scale = MSH.Scale - GROWTH / TIME
						if TYPE == "Wave" then
							MSH.Offset = VT(0, 0, -MSH.Scale.Z / 8)
						end
						EFFECT.Transparency = EFFECT.Transparency - TRANS / TIME
						if TYPE == "Block" then
							EFFECT.CFrame = CFRAME * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)))
						else
							EFFECT.CFrame = EFFECT.CFrame * ANGLES(RAD(ROTATION1), RAD(ROTATION2), RAD(ROTATION3))
						end
						if MOVEDIRECTION ~= nil then
							local ORI = EFFECT.Orientation
							EFFECT.CFrame = CF(EFFECT.Position,MOVEDIRECTION)*CF(0,0,-MOVESPEED)
							EFFECT.Orientation = ORI
						end
					end
				end
				EFFECT.Transparency = 1
				if PLAYSSOUND == false then
					EFFECT:remove()
				else
					repeat
						Swait()
					until EFFECT:FindFirstChildOfClass("Sound") == nil
					EFFECT:remove()
				end
			elseif PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat
					Swait()
				until EFFECT:FindFirstChildOfClass("Sound") == nil
				EFFECT:remove()
			end
		end))
		return EFFECT
	end))
end   

function AOETime2(POSITION,RANGE)
	for index, CHILD in pairs(workspace:GetDescendants()) do
		if CHILD.ClassName == "Model" and CHILD ~= Character then
			local HUM = CHILD:FindFirstChildOfClass("Humanoid")
			if HUM then
				local TORSO = CHILD:FindFirstChild("Torso") or CHILD:FindFirstChild("UpperTorso")
				if TORSO then
					if (TORSO.Position - POSITION).Magnitude <= RANGE then
						DISEMBOWEL(CHILD)
					end
				end
			end
		end
	end
end

function AOETimeRay(POSITION,RANGE)
	for index, CHILD in pairs(workspace:GetDescendants()) do
		if CHILD.ClassName == "Model" and CHILD ~= Character then
			local HUM = CHILD:FindFirstChildOfClass("Humanoid")
			if HUM then
				local TORSO = CHILD:FindFirstChild("Torso") or CHILD:FindFirstChild("UpperTorso")
				if TORSO then
					if (TORSO.Position - POSITION).Magnitude <= RANGE then
						DISEMBOWELray(CHILD)
					end
				end
			end
		end
	end
end

local DECAL = IT("Decal")
function MagicRing()
	local RING = CreatePart(3, Effects, "Granite", 0, 1, "Maroon", "MagicRing", VT(0,0,0),true)
	local MESH = IT("BlockMesh",RING)
	local BOTTOMTEXTURE = DECAL:Clone()
	BOTTOMTEXTURE.Parent = RING
	BOTTOMTEXTURE.Face = "Bottom"
	BOTTOMTEXTURE.Name = "BottomTexture"
	local TOPTEXTURE = DECAL:Clone()
	TOPTEXTURE.Parent = RING
	TOPTEXTURE.Face = "Top"
	TOPTEXTURE.Name = "TopTexture"
	BOTTOMTEXTURE.Texture = "http://www.roblox.com/asset/?id=1208118228"
	TOPTEXTURE.Texture = "http://www.roblox.com/asset/?id=1208118228"
	BOTTOMTEXTURE.Color3 = Color3.new(0,0,0)
	TOPTEXTURE.Color3 = Color3.new(0,0,0)
	return RING,MESH,TOPTEXTURE,BOTTOMTEXTURE
end

function MakeRing()
	local RING = CreatePart(3, Effects, "Neon", 0, 1, BRICKC("Pearl"), "MagicRing", VT(0, 0, 0), true)
	local MSH = IT("BlockMesh", RING)
	local TOP = DECAL:Clone()
	local BOTTOM = DECAL:Clone()
	TOP.Parent = RING
	BOTTOM.Parent = RING
	TOP.Face = "Top"
	BOTTOM.Face = "Bottom"
	TOP.Texture = "http://www.roblox.com/asset/?id=121028264"
	BOTTOM.Texture = "http://www.roblox.com/asset/?id=121028264"
	local function REMOVE()
		coroutine.resume(coroutine.create(function()
			local SIZE = MSH.Scale.X
			for i = 1, 35 do
				Swait()
				MSH.Scale = MSH.Scale - VT(SIZE, 0, SIZE) / 60
				TOP.Transparency = TOP.Transparency + 0.02857142857142857
				BOTTOM.Transparency = BOTTOM.Transparency + 0.02857142857142857
				RING.CFrame = RING.CFrame * ANGLES(RAD(0), RAD(-5), RAD(0))
			end
			RING:remove()
		end))
	end
	return RING, MSH, REMOVE
end

function ApplyAoE5(POSITION,RANGE,MINDMG,MAXDMG,FLING,INSTAKILL)
	local CHILDREN = workspace:GetDescendants()
	for index, CHILD in pairs(CHILDREN) do
		if CHILD.ClassName == "Model" and CHILD ~= Character and CHILD.Parent ~= Effects then
			local HUM = CHILD:FindFirstChildOfClass("Humanoid")
			if HUM then
				local TORSO = CHILD:FindFirstChild("Torso") or CHILD:FindFirstChild("UpperTorso")
				if TORSO then
					if (TORSO.Position - POSITION).Magnitude <= RANGE then
						if INSTAKILL == true then
							CHILD:BreakJoints()
						else
							local DMG = MRANDOM(MINDMG,MAXDMG)
							ApplyDamage(HUM,DMG,TORSO)
						end
						if FLING > 0 then
							for _, c in pairs(CHILD:GetChildren()) do
								if c:IsA("BasePart") then
									local bv = Instance.new("BodyVelocity") 
									bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
									bv.velocity = CFrame.new(POSITION,TORSO.Position).lookVector*FLING
									bv.Parent = c
									Debris:AddItem(bv,0.05)
								end
							end
						end
					end
				end
			end
		end
	end
end

function ApplyDamage(Humanoid,Damage,OneShot)
	Damage = Damage * DAMAGEMULTIPLIER
	local DEAD = false
	if Humanoid.Health < 2000 and OneShot == false then
		if Humanoid.Health - Damage > 0 then
			Humanoid.Health = Humanoid.Health - Damage
		else
			Humanoid.Parent:BreakJoints()
			DEAD = true
		end
	else
		DEAD = true
		Humanoid.Parent:BreakJoints()
	end
	if DEAD == true then
		local PARTS = {}
		for index, CHILD in pairs(Humanoid.Parent:GetChildren()) do
			if CHILD:IsA("BasePart") then
				table.insert(PARTS,CHILD)
			end
		end
		coroutine.resume(coroutine.create(function()
			wait(2)
			repeat
				Swait()
				local PIECE = nil
				if MRANDOM(1,5) == 1 then
					for E = 1, #PARTS do
						if MRANDOM(1,5) == 1 then
							PIECE = PARTS[E]
							table.remove(PARTS,E)
							break
						end
					end
				end
				if PIECE ~= nil then
					if PIECE.Name == "Head" then
						WACKYEFFECT({Time = MRANDOM(10,30)*5, EffectType = "Box", Size = VT(PIECE.Size.Z,PIECE.Size.Y,PIECE.Size.Z), Size2 = (VT(PIECE.Size.Z,PIECE.Size.Y,PIECE.Size.Z))*MRANDOM(7,14)/10, Transparency = PIECE.Transparency, Transparency2 = 1, CFrame = PIECE.CFrame, MoveToPos = PIECE.Position+VT(0,MRANDOM(5,8)/1.5,0), RotationX = MRANDOM(-25,25)/35, RotationY = MRANDOM(-25,25)/35, RotationZ = MRANDOM(-25,25)/35, Material = "Neon", Color = Color3.new(0.4,0,0), SoundID = 3264923, SoundPitch = MRANDOM(12,16)/10, SoundVolume = 2})
					else
						WACKYEFFECT({Time = MRANDOM(10,30)*5, EffectType = "Box", Size = PIECE.Size, Size2 = PIECE.Size*MRANDOM(7,14)/10, Transparency = PIECE.Transparency, Transparency2 = 1, CFrame = PIECE.CFrame, MoveToPos = PIECE.Position+VT(0,MRANDOM(5,8)/1.5,0), MRANDOM(-25,25)/35, RotationY = MRANDOM(-25,25)/35, RotationZ = MRANDOM(-25,25)/35, Material = "Neon", Color = Color3.new(0.4,0,0), SoundID = 3264923, SoundPitch = MRANDOM(12,16)/10, SoundVolume = 2})
					end
					PIECE:remove()
				end
			until #PARTS == 0
		end))
	end
end

function WACKYEFFECT5(Table)
	local TYPE = (Table.EffectType or "Sphere")
	local SIZE = (Table.Size or VT(1,1,1))
	local ENDSIZE = (Table.Size2 or VT(0,0,0))
	local TRANSPARENCY = (Table.Transparency or 0)
	local ENDTRANSPARENCY = (Table.Transparency2 or 1)
	local CFRAME = (Table.CFrame or Torso.CFrame)
	local MOVEDIRECTION = (Table.MoveToPos or nil)
	local ROTATION1 = (Table.RotationX or 0)
	local ROTATION2 = (Table.RotationY or 0)
	local ROTATION3 = (Table.RotationZ or 0)
	local MATERIAL = (Table.Material or "Neon")
	local COLOR = (Table.Color or BrickColor.Random().Color)
	local TIME = (Table.Time or 45)
	local SOUNDID = (Table.SoundID or nil)
	local SOUNDPITCH = (Table.SoundPitch or nil)
	local SOUNDVOLUME = (Table.SoundVolume or nil)
	coroutine.resume(coroutine.create(function()
		local PLAYSSOUND = false
		local SOUND = nil
		local EFFECT = CreatePart(3, Effects, "Neon", 0, 0, BRICKC("Pearl"), "Effect", VT(1,1,1), true)
		EFFECT.Color = BrickColor.Random().Color
		if SOUNDID ~= nil and SOUNDPITCH ~= nil and SOUNDVOLUME ~= nil then
			PLAYSSOUND = true
			SOUND = CreateSound(SOUNDID, EFFECT, SOUNDVOLUME, SOUNDPITCH, false)
		end
		local MSH = nil
		if TYPE == "Sphere" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "Sphere", "", "", SIZE, VT(0,0,0))
		elseif TYPE == "Block" then
			MSH = IT("BlockMesh",EFFECT)
			MSH.Scale = VT(SIZE.X,SIZE.X,SIZE.X)
		elseif TYPE == "Wave" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "FileMesh", "20329976", "", SIZE, VT(0,0,-SIZE.X/8))
		elseif TYPE == "Ring" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "FileMesh", "559831844", "", VT(SIZE.X,SIZE.X,0.1), VT(0,0,0))
		elseif TYPE == "Slash" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "FileMesh", "662586858", "", VT(SIZE.X/10,0,SIZE.X/10), VT(0,0,0))
		elseif TYPE == "Round Slash" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "FileMesh", "662585058", "", VT(SIZE.X/10,0,SIZE.X/10), VT(0,0,0))
		elseif TYPE == "Swirl" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "FileMesh", "1051557", "", SIZE, VT(0,0,0))
		elseif TYPE == "Skull" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "FileMesh", "4770583", "", SIZE, VT(0,0,0))
		elseif TYPE == "Crystal" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "FileMesh", "9756362", "", SIZE, VT(0,0,0))
		end
		if MSH ~= nil then
			local MOVESPEED = nil
			if MOVEDIRECTION ~= nil then
				MOVESPEED = (CFRAME.p - MOVEDIRECTION).Magnitude/TIME
			end
			local GROWTH = SIZE - ENDSIZE
			local TRANS = TRANSPARENCY - ENDTRANSPARENCY
			if TYPE == "Block" then
				EFFECT.CFrame = CFRAME*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))
			else
				EFFECT.CFrame = CFRAME
			end
			for LOOP = 1, TIME+1 do
				Swait()
				MSH.Scale = MSH.Scale - GROWTH/TIME
				if TYPE == "Wave" then
					MSH.Offset = VT(0,0,-MSH.Scale.X/8)
				end
				EFFECT.Transparency = EFFECT.Transparency - TRANS/TIME
				if TYPE == "Block" then
					EFFECT.CFrame = CFRAME*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))
				else
					EFFECT.CFrame = EFFECT.CFrame*ANGLES(RAD(ROTATION1),RAD(ROTATION2),RAD(ROTATION3))
				end
				if MOVEDIRECTION ~= nil then
					local ORI = EFFECT.Orientation
					EFFECT.CFrame = CF(EFFECT.Position,MOVEDIRECTION)*CF(0,0,-MOVESPEED)
					EFFECT.Orientation = ORI
				end
			end
			if PLAYSSOUND == false then
				EFFECT:remove()
			else
				SOUND.Stopped:Connect(function()
					EFFECT:remove()
				end)
			end
		else
			if PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat Swait() until SOUND.Playing == false
				EFFECT:remove()
			end
		end
	end))
end

function block(bonuspeed,type,pos,scale,value,value2,value3,color,color3)
	local type = type
	local rng = Instance.new("Part", Effects)
	rng.Anchored = true
	rng.BrickColor = color
	rng.Color = color3
	rng.CanCollide = false
	rng.FormFactor = 3
	rng.Name = "Ring"
	rng.Material = "Neon"
	rng.Size = Vector3.new(1, 1, 1)
	rng.Transparency = 0
	rng.TopSurface = 0
	rng.BottomSurface = 0
	rng.CFrame = pos
	local rngm = Instance.new("SpecialMesh", rng)
	rngm.MeshType = "Brick"
	rngm.Scale = scale
	local scaler2 = 1
	local scaler2b = 1
	local scaler2c = 1
	if type == "Add" then
		scaler2 = 1*value
		scaler2b = 1*value2
		scaler2c = 1*value3
	elseif type == "Divide" then
		scaler2 = 1/value
		scaler2b = 1/value2
		scaler2c = 1/value3
	end
	coroutine.resume(coroutine.create(function()
		for i = 0,10/bonuspeed,0.1 do
			Swait()
			if type == "Add" then
				scaler2 = scaler2 - 0.01*value/bonuspeed
				scaler2b = scaler2b - 0.01*value/bonuspeed
				scaler2c = scaler2c - 0.01*value/bonuspeed
			elseif type == "Divide" then
				scaler2 = scaler2 - 0.01/value*bonuspeed
				scaler2b = scaler2b - 0.01/value*bonuspeed
				scaler2c = scaler2c - 0.01/value*bonuspeed
			end
			rng.CFrame = rng.CFrame*CFrame.Angles(math.rad(MRANDOM(-360,360)),math.rad(MRANDOM(-360,360)),math.rad(MRANDOM(-360,360)))
			rng.Transparency = rng.Transparency + 0.01*bonuspeed
			rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed, scaler2b*bonuspeed, scaler2c*bonuspeed)
		end
		rng:Destroy()
	end))
end

function WACKYEFFECT2(Table)
	local TYPE = Table.EffectType or "Sphere"
	local SIZE = Table.Size or Vector3.new(1, 1, 1)
	local ENDSIZE = Table.Size2 or Vector3.new(0, 0, 0)
	local TRANSPARENCY = Table.Transparency or 0
	local ENDTRANSPARENCY = Table.Transparency2 or 1
	local CFRAME = Table.CFrame or Torso.CFrame
	local MOVEDIRECTION = Table.MoveToPos or nil
	local ROTATION1 = Table.RotationX or 0
	local ROTATION2 = Table.RotationY or 0
	local ROTATION3 = Table.RotationZ or 0
	local MATERIAL = Table.Material --or "Neon"
	local COLOR = Table.Color or Color3.new(1, 1, 1)
	local TIME = Table.Time or 45
	local SOUNDID = Table.SoundID or nil
	local SOUNDPITCH = Table.SoundPitch or nil
	local SOUNDVOLUME = Table.SoundVolume or nil
	local USEBOOMERANGMATH = Table.UseBoomerangMath or false
	local BOOMERANG = Table.Boomerang or 0
	local SIZEBOOMERANG = Table.SizeBoomerang or 0
	coroutine.resume(coroutine.create(function()
		local PLAYSSOUND = false
		local SOUND
		local EFFECT = CreatePart(3, Effects, MATERIAL, 0, TRANSPARENCY, BRICKC("Pearl"), "Effect", Vector3.new(1, 1, 1), true)
		if SOUNDID ~= nil and SOUNDPITCH ~= nil and SOUNDVOLUME ~= nil then
			PLAYSSOUND = true
			SOUND = CreateSound(SOUNDID, EFFECT, SOUNDVOLUME, SOUNDPITCH, false)
		end
		EFFECT.Color = COLOR
		local MSH
		if TYPE == "Sphere" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "Sphere", "", "", SIZE, Vector3.new(0, 0, 0))
		elseif TYPE == "Block" or TYPE == "Box" then
			MSH = IT("BlockMesh", EFFECT)
			MSH.Scale = SIZE
		elseif TYPE == "Wave" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "FileMesh", "20329976", "", SIZE, Vector3.new(0, 0, -SIZE.X / 8))
		elseif TYPE == "Ring" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "FileMesh", "559831844", "", Vector3.new(SIZE.X, SIZE.X, 0.1), Vector3.new(0, 0, 0))
		elseif TYPE == "Slash" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "FileMesh", "662586858", "", Vector3.new(SIZE.X / 10, 0, SIZE.X / 10), Vector3.new(0, 0, 0))
		elseif TYPE == "Round Slash" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "FileMesh", "662585058", "", Vector3.new(SIZE.X / 10, 0, SIZE.X / 10), Vector3.new(0, 0, 0))
		elseif TYPE == "Swirl" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "FileMesh", "168892432", "", SIZE, Vector3.new(0, 0, 0))
		elseif TYPE == "Skull" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "FileMesh", "4770583", "", SIZE, Vector3.new(0, 0, 0))
		elseif TYPE == "Star" then 
			MSH = CreateMesh2("SpecialMesh", EFFECT, "FileMesh", "2760116123", "", SIZE, Vector3.new(0,0,0))   	
		elseif TYPE == "Crystal" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "FileMesh", "450656451", "", SIZE, Vector3.new(0, 0, 0))
		end
		coroutine.resume(coroutine.create(function()
			if MSH ~= nil then
				local BOOMR1 = 1 + BOOMERANG / 50
				local BOOMR2 = 1 + SIZEBOOMERANG / 50
				local MOVESPEED = nil
				if MOVEDIRECTION ~= nil then
					MOVESPEED = (CFRAME.p - MOVEDIRECTION).Magnitude/TIME
				end
				local GROWTH
				if USEBOOMERANGMATH == true then
					GROWTH = (SIZE - ENDSIZE) * (BOOMR2 + 1)
				else
					GROWTH = SIZE - ENDSIZE
				end
				local TRANS = TRANSPARENCY - ENDTRANSPARENCY
				if TYPE == "Block" then
					EFFECT.CFrame = CFRAME * CFrame.Angles(math.rad(MRANDOM(0, 360)), math.rad(MRANDOM(0, 360)), math.rad(MRANDOM(0, 360)))
				else
					EFFECT.CFrame = CFRAME
				end
				if USEBOOMERANGMATH == true then
					for LOOP = 1, TIME + 1 do
						Swait()
						MSH.Scale = MSH.Scale - Vector3.new(GROWTH.X * (1 - LOOP / TIME * BOOMR2), GROWTH.Y * (1 - LOOP / TIME * BOOMR2), GROWTH.Z * (1 - LOOP / TIME * BOOMR2)) * BOOMR2 / TIME
						if TYPE == "Wave" then
							MSH.Offset = Vector3.new(0, 0, -MSH.Scale.Z / 8)
						end
						EFFECT.Transparency = EFFECT.Transparency - TRANS / TIME
						if TYPE == "Block" then
							EFFECT.CFrame = CFRAME * CFrame.Angles(math.rad(MRANDOM(0, 360)), math.rad(MRANDOM(0, 360)), math.rad(MRANDOM(0, 360)))
						else
							EFFECT.CFrame = EFFECT.CFrame * CFrame.Angles(math.rad(ROTATION1), math.rad(ROTATION2), math.rad(ROTATION3))
						end
						if MOVEDIRECTION ~= nil then
							local ORI = EFFECT.Orientation
							EFFECT.CFrame = CFrame.new(EFFECT.Position, MOVEDIRECTION) * CFrame.new(0, 0, -MOVESPEED * (1 - LOOP / TIME * BOOMR1))
							EFFECT.Orientation = ORI
						end
					end
				else
					for LOOP = 1, TIME + 1 do
						Swait()
						MSH.Scale = MSH.Scale - GROWTH / TIME
						if TYPE == "Wave" then
							MSH.Offset = Vector3.new(0, 0, -MSH.Scale.Z / 8)
						end
						EFFECT.Transparency = EFFECT.Transparency - TRANS / TIME
						if TYPE == "Block" then
							EFFECT.CFrame = CFRAME * CFrame.Angles(math.rad(MRANDOM(0, 360)), math.rad(MRANDOM(0, 360)), math.rad(MRANDOM(0, 360)))
						else
							EFFECT.CFrame = EFFECT.CFrame * CFrame.Angles(math.rad(ROTATION1), math.rad(ROTATION2), math.rad(ROTATION3))
						end
						if MOVEDIRECTION ~= nil then
							local ORI = EFFECT.Orientation
							EFFECT.CFrame = CFrame.new(EFFECT.Position,MOVEDIRECTION)*CFrame.new(0,0,-MOVESPEED)
							EFFECT.Orientation = ORI
						end
					end
				end
				EFFECT.Transparency = 1
				if PLAYSSOUND == false then
					EFFECT:remove()
				else
					repeat
						Swait()
					until EFFECT:FindFirstChildOfClass("Sound") == nil
					EFFECT:remove()
				end
			elseif PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat
					Swait()
				until EFFECT:FindFirstChildOfClass("Sound") == nil
				EFFECT:remove()
			end
		end))
		return EFFECT
	end))
end      

function Kill(Char)
	local NewCharacter = IT("Model",Effects)
	NewCharacter.Name = "I've been raped"
	for _, c in pairs(Char:GetDescendants()) do
		if c:IsA("BasePart") and c.Transparency == 0 then
			c:BreakJoints()
			c.Material = "Glass"
			c.Color = Color3.new(1,0,0)
			c.CanCollide = true
			c.Transparency = 0.3
			if c:FindFirstChildOfClass("SpecialMesh") then
				c:FindFirstChildOfClass("SpecialMesh").TextureId = ""
			end
			if c.Name == "Head" then
				c:ClearAllChildren()
				c.Size = Vector3.new(c.Size.Y,c.Size.Y,c.Size.Y)
			end
			if c.ClassName == "MeshPart" then
				c.TextureID = ""
			end
			if c:FindFirstChildOfClass("BodyPosition") then
				c:FindFirstChildOfClass("BodyPosition"):remove()
			end
			if c:FindFirstChildOfClass("ParticleEmitter") then
				c:FindFirstChildOfClass("ParticleEmitter"):remove()
			end
			c.Parent = NewCharacter
			c.Name = "DeadPart"
			c.Velocity = Vector3.new(MRANDOM(-45,45),MRANDOM(-45,45),MRANDOM(-45,45))/15
			c.RotVelocity = Vector3.new(MRANDOM(-45,45),MRANDOM(-15,85),MRANDOM(-45,45))
		end
	end
	Char:remove()
	Debris:AddItem(NewCharacter,5)
end


function CharacterFade(COLOR,TIMER)
	coroutine.resume(coroutine.create(function()
		local FADE = IT("Model",Effects)
		FADE.Name = "FadingEffect"
		for _, c in pairs(Character:GetChildren()) do
			if c.ClassName == "Part" and c ~= RootPart then
				local FADER = c:Clone()
				FADER.Color = COLOR
				FADER.CFrame = c.CFrame
				FADER.Parent = FADE
				FADER.Anchored = true
				FADER.Transparency = 0.25+c.Transparency
				FADER:BreakJoints()
				FADER.Material = "Neon"
				if FADER.Name == "Head" then
					FADER:ClearAllChildren()
					FADER.Size = Vector3.new(1,1,1)
				end
				FADER.CanCollide = false
			end
		end
		local TRANS = 0.75/TIMER
		for i = 1, TIMER do
			Swait()
			for _, c in pairs(FADE:GetChildren()) do
				if c.ClassName == "Part" then
					c.Transparency = c.Transparency + TRANS
				end
			end
		end
		FADE:remove()
	end))
end

function Sloice(KIND, SIZE, WAIT, CFRAME, COLOR, GROW)
	local wave = CreatePart(3, Effects, "Neon", 0, 0.5, BRICKC(COLOR), "Effect", Vector3.new(1, 1, 1), true)
	local mesh
	if KIND == "Base" then
		mesh = CreateMesh2("SpecialMesh", wave, "FileMesh", "448386996", "", Vector3.new(0, SIZE / 10, SIZE / 10), Vector3.new(0, 0, 0))
	elseif KIND == "Thin" then
		mesh = CreateMesh2("SpecialMesh", wave, "FileMesh", "662586858", "", Vector3.new(SIZE / 10, 0, SIZE / 10), Vector3.new(0, 0, 0))
	elseif KIND == "Round" then
		mesh = CreateMesh2("SpecialMesh", wave, "FileMesh", "662585058", "", Vector3.new(SIZE / 10, 0, SIZE / 10), Vector3.new(0, 0, 0))
	end
	wave.CFrame = CFRAME
	coroutine.resume(coroutine.create(function(PART)
		for i = 1, WAIT do
			Swait()
			mesh.Scale = mesh.Scale + GROW / 10
			wave.Transparency = wave.Transparency + 0.5 / WAIT
			if wave.Transparency > 0.99 then
				wave:remove()
			end
		end
	end))
end


function AddChildrenToTable(FROM, PARENT, DIST, TABLE)
	for _, c in pairs(PARENT:GetChildren()) do
		if c.ClassName == "Model" then
			if c ~= Character and c:FindFirstChildOfClass("Humanoid") and (c:FindFirstChild("Torso") or c:FindFirstChild("UpperTorso")) then
				local HUMANOID = c:FindFirstChildOfClass("Humanoid")
				local TORSO = c:FindFirstChild("Torso") or c:FindFirstChild("UpperTorso")
				if DIST > (TORSO.Position - FROM).Magnitude then
					table.insert(TABLE, c)
				end
				AddChildrenToTable(FROM, c, DIST, TABLE)
			elseif c.ClassName == "Folder" then
				AddChildrenToTable(FROM, c, DIST, TABLE)
			end
		end
	end
end

function FireArc(Part, ToLocation, AmountOfTime, Height, DoesCourontine)
	if DoesCourontine == false then
		local Direction = CFrame.new(Part.Position, ToLocation)
		local Distance = (Part.Position - ToLocation).magnitude
		for i = 1, AmountOfTime do
			Swait()
			Part.CFrame = Direction * CFrame.new(0, AmountOfTime / 200 + (AmountOfTime / Height - i * 2 / Height), -Distance / AmountOfTime)
			Direction = Part.CFrame
		end
		Part:remove()
	elseif DoesCourontine == true then
		coroutine.resume(coroutine.create(function()
			local Direction = CFrame.new(Part.Position, ToLocation)
			local Distance = (Part.Position - ToLocation).magnitude
			for i = 1, AmountOfTime do
				Swait()
				Part.CFrame = Direction * CFrame.new(0, AmountOfTime / 200 + (AmountOfTime / Height - i * 2 / Height), -Distance / AmountOfTime)
				Direction = Part.CFrame
			end
			Part:remove()
		end))
	end
end

function Slice2(KIND, SIZE, WAIT, CFRAME, COLOR, GROW)
	local wave = CreatePart(3, Effects, "Neon", 0, 0.5, BrickColor.new(COLOR), "Effect", Vector3.new(1, 1, 1), true)
	local mesh
	if KIND == "Base" then
		mesh = CreateMesh2("SpecialMesh", wave, "FileMesh", "448386996", "", Vector3.new(0, SIZE / 10, SIZE / 10), Vector3.new(0, 0, 0))
	elseif KIND == "Thin" then
		mesh = CreateMesh2("SpecialMesh", wave, "FileMesh", "662586858", "", Vector3.new(SIZE / 10, 0, SIZE / 10), Vector3.new(0, 0, 0))
	elseif KIND == "Round" then
		mesh = CreateMesh2("SpecialMesh", wave, "FileMesh", "662585058", "", Vector3.new(SIZE / 10, 0, SIZE / 10), Vector3.new(0, 0, 0))
	end
	wave.CFrame = CFRAME
	coroutine.resume(coroutine.create(function(PART)
		for i = 1, WAIT do
			Swait()
			mesh.Scale = mesh.Scale + GROW / 10
			wave.Transparency = wave.Transparency + 0.5 / WAIT
			if wave.Transparency > 0.99 then
				wave:remove()
			end
		end
	end))
end

function CreateWave(SIZE, WAIT, CFRAME, DOESROT, ROT, COLOR, GROW)
	local wave = CreatePart(3, Effects, "Neon", 0, 0.5, BrickColor.new(COLOR), "Effect", Vector3.new(0, 0, 0))
	local mesh = CreateMesh2("SpecialMesh", wave, "FileMesh", "20329976", "", SIZE, Vector3.new(0, 0, -SIZE.X / 8))
	wave.CFrame = CFRAME
	coroutine.resume(coroutine.create(function(PART)
		for i = 1, WAIT do
			Swait()
			mesh.Scale = mesh.Scale + GROW
			mesh.Offset = Vector3.new(0, 0, -(mesh.Scale.X / 8))
			if DOESROT == true then
				wave.CFrame = wave.CFrame * CFrame.fromEulerAnglesXYZ(0, ROT, 0)
			end
			wave.Transparency = wave.Transparency + 0.5 / WAIT
			if wave.Transparency > 0.99 then
				wave:remove()
			end
		end
	end))
end

function CreateWeldOrSnapOrMotor(TYPE, PARENT, PART0, PART1, C0, C1)
	local NEWWELD = IT(TYPE)
	NEWWELD.Part0 = PART0
	NEWWELD.Part1 = PART1
	NEWWELD.C0 = C0
	NEWWELD.C1 = C1
	NEWWELD.Parent = PARENT
	return NEWWELD
end

aa = false


local lightningArm = Instance.new("ParticleEmitter",RightArm)
lightningArm.Texture = "http://www.roblox.com/asset/?id=348321827"
lightningArm.LightEmission = 0
lightningArm.Color = ColorSequence.new(Color3.new(0,0,0),Color3.new(1,0,0))
lightningArm.LockedToPart = true
lightningArm.Rate = 200
lightningArm.Lifetime = NumberRange.new(0.1,0.10)
lightningArm.Rotation = NumberRange.new(0,360)
lightningArm.Size = NumberSequence.new(1,1,1)
lightningArm.Transparency = NumberSequence.new(0,0)
lightningArm.Speed = NumberRange.new(0,0)
lightningArm.RotSpeed = NumberRange.new(0,0)
lightningArm.ZOffset = 5.5
lightningArm.Enabled = false

local refec = Instance.new("ParticleEmitter",RightArm)
refec.Texture = "rbxassetid://249270319"
refec.LightEmission = 3
refec.Color = ColorSequence.new(Color3.new(0,0,0),Color3.new(1,0,0))
refec.Rate = 50000
refec.Lifetime = NumberRange.new(0.5)
refec.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,0.5,0),NumberSequenceKeypoint.new(0.5,0.75,0),NumberSequenceKeypoint.new(1,0.1,0)})
refec.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.5,0.25,0),NumberSequenceKeypoint.new(1,1,0)})
refec.Speed = NumberRange.new(0,2)
refec.Drag = 5
refec.LockedToPart = true
refec.Rotation = NumberRange.new(-500,500)
refec.VelocitySpread = 9000
refec.RotSpeed = NumberRange.new(-500,500)

local eeeffecto = Instance.new("ParticleEmitter",Torso)
eeeffecto.Texture = "http://www.roblox.com/asset/?id=305943367"
eeeffecto.LightEmission = 0
eeeffecto.Color = ColorSequence.new(Color3.new(0,0,0),Color3.new(1,0,0))
eeeffecto.LockedToPart = true
eeeffecto.Rate = 120
eeeffecto.Lifetime = NumberRange.new(0.1,0.1)
eeeffecto.Rotation = NumberRange.new(0,0)
eeeffecto.Size = NumberSequence.new(9,9,9)
eeeffecto.Transparency = NumberSequence.new(0,0)
eeeffecto.Speed = NumberRange.new(0,0)
eeeffecto.RotSpeed = NumberRange.new(0,0)
eeeffecto.Parent = Character.Torso
eeeffecto.Enabled = false
eeeffecto.Enabled = false


local Sniper = script.Sniper:Clone()
local SniperWeld = Sniper.RightArm:WaitForChild'REF'
for i,v in pairs(Sniper.RightArm:GetChildren()) do
	v.Anchored = false
end
local SRightAWeld = IT("Weld")
SRightAWeld.Parent = RightArm
SRightAWeld.Part0 = RightArm
SRightAWeld.Part1 = SniperWeld
SRightAWeld.Name = "Sniper"
SRightAWeld.C1 = CF(0, 0, 0) * angles(0, 0, 0)
local SniperGun = Sniper
local SniperHole = SniperGun.Weapon.Hole
SniperGun.Parent = nil

local AK = script.AK:Clone()
local AKWeld = AK.RightArm:WaitForChild'REF'
for i,v in pairs(AK.RightArm:GetChildren()) do
	v.Anchored = false
end
local SRightAWeld = IT("Weld")
SRightAWeld.Parent = RightArm
SRightAWeld.Part0 = RightArm
SRightAWeld.Part1 = AKWeld
SRightAWeld.Name = "AK47"
SRightAWeld.C1 = CF(0, 0, 0) * angles(0, 0, 0)
local BanishGun = AK
local HoleAK = BanishGun.Weapon.Hole
BanishGun.Parent = nil

local Katana = script.Katana:Clone()
local KatanaWeld = Katana.RightArm:WaitForChild'REF'
for i,v in pairs(Katana.RightArm:GetChildren()) do
	v.Anchored = false
end
local KATSRightAWeld = IT("Weld")
KATSRightAWeld.Parent = RightArm
KATSRightAWeld.Part0 = RightArm
KATSRightAWeld.Part1 = KatanaWeld
KATSRightAWeld.Name = "Katana"
KATSRightAWeld.C1 = CF(0, 0, 0) * angles(0, 0, 0)
local Katana = Katana
local KatanaHit = Katana.Weapon.Hitbox
Katana.Parent = nil

local WeaponPenis = IT("Model")

New = function(Object, Parent, Name, Data)
	local Object = Instance.new(Object)
	for Index, Value in pairs(Data or {}) do
		Object[Index] = Value
	end
	Object.Parent = Parent
	Object.Name = Name
	return Object
end

local chara = Player.Character
local Rifle = WeaponPenis
Handaru = New("Part",Rifle,"Handaru",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.299999684, 0.899999976, 0.200000003),CFrame = CFrame.new(4.86797953, 9.56716633, -139.033096, 5.38420863e-10, 1.44063961e-09, 1, 0.939692974, -0.342020035, 4.30411262e-12, 0.342022955, 0.93970108, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("BlockMesh",Handaru,"Mesh",{Scale = Vector3.new(0.699999988, 0.800000012, 0.899999976),})
Weld = New("ManualWeld",Handaru,"Weld",{Part0 = Handaru,Part1 = RightArm,C0 = CFrame.new(0, 0, 0, 0, 0.939692974, 0.342020005, 0, -0.342020005, 0.939692974, 1, 0, 0),C1 = CFrame.new(-0.17155385, -1.13280964, 0.0381164551, -1, -0.000112917653, 0.000207058736, -0.000112889931, 1, 0.000133873371, -0.000207074263, 0.000133850204, -1.00000167),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.300000191, 0.200000003),CFrame = CFrame.new(4.86804056, 9.70005512, -138.636124, 1.32227007e-11, 1.53790924e-09, 1, 1.00000036, 0, 4.30411262e-12, 0, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(0.260647774, 0.327582359, 6.10351563e-05, -0.939698994, 0.34202221, 0, 0.34202221, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.299999744, 0.200000003, 0.200000003),CFrame = CFrame.new(4.86801004, 6.5500145, -138.486115, 1.32227007e-11, 1.53790924e-09, 1, 1.00000036, 0, 4.30411262e-12, 0, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-2.64811707, 1.54591751, 3.05175781e-05, -0.939698994, 0.34202221, 0, 0.34202221, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(1.19999969, 0.300000012, 0.200000003),CFrame = CFrame.new(4.86801004, 9.10005951, -138.636124, 1.32227007e-11, 1.53790924e-09, 1, 1.00000036, 0, 4.30411262e-12, 0, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-0.303163528, 0.532794952, 3.05175781e-05, -0.939698994, 0.34202221, 0, 0.34202221, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.0999999195, 0.200000003),CFrame = CFrame.new(4.86804056, 6.35001183, -138.486099, 1.53790924e-09, 1.32226452e-11, -1, 2.98023224e-08, 1.00000036, -4.30411262e-12, 1.00000894, -2.98023224e-08, -2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, 0, 1.00000668, 0, -1.00000668, 0, 0, 0, 0, 1),C1 = CFrame.new(-2.8360548, 1.6143322, 6.10351563e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.200000003, 0.100000001),CFrame = CFrame.new(4.9180131, 8.10003662, -138.486099, 1.32226452e-11, -1.53790924e-09, -1, 1.00000036, -2.98023224e-08, -4.30411262e-12, -2.98023224e-08, -1.00000894, -2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, -1.00000668, 0, 0, 0, 1),C1 = CFrame.new(-1.19156933, 1.01578903, 0.0500335693, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.200000003, 0.100000001),CFrame = CFrame.new(4.81800699, 8.10003662, -138.486099, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-1.19156933, 1.01578903, -0.0499725342, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.200000003, 0.100000001),CFrame = CFrame.new(4.86797953, 8.10003662, -138.436142, 1.32226452e-11, 1, -1.53790924e-09, 1.00000036, 4.30411262e-12, -2.98023224e-08, -2.98023224e-08, 2.29920261e-09, -1.00000894),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 0, -1, 0, -1.00000668, 0),C1 = CFrame.new(-1.17448044, 1.06274033, 0, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.200000003, 0.100000001),CFrame = CFrame.new(4.86805582, 8.10003662, -138.536102, 1.32226452e-11, -1, 1.53790924e-09, 1.00000036, -4.30411262e-12, 2.98023224e-08, -2.98023224e-08, -2.29920261e-09, 1.00000894),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 0, 1, 0, 1.00000668, 0),C1 = CFrame.new(-1.20866871, 0.968809128, 7.62939453e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.0999997631, 0.100000001, 0.100000001),CFrame = CFrame.new(4.9180131, 9.25004292, -138.33609, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0.0250000004, 0),Scale = Vector3.new(0.200000003, 0.5, 0.800000012),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-0.0596132278, 0.763422012, 0.0500335693, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999678, 0.400000006, 0.200000003),CFrame = CFrame.new(4.86801004, 8.84343719, -138.889923, -2.54032906e-10, 1.51684099e-09, 1, 0.984808087, 0.17364797, 4.30411262e-12, -0.17364952, 0.984816551, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1, 1, 0.899999976),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -0.984814465, -0.173649132, 0, -0.173649132, 0.984814465, 0, 0, 0, -1),C1 = CFrame.new(-0.631113052, 0.382074356, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.200000003, 0.100000001),CFrame = CFrame.new(4.86805582, 6.90001345, -138.536102, 1.32226452e-11, -1, 1.53790924e-09, 1.00000036, -4.30411262e-12, 2.98023224e-08, -2.98023224e-08, -2.29920261e-09, 1.00000894),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 0, 1, 0, 1.00000668, 0),C1 = CFrame.new(-2.33632183, 1.37924004, 7.62939453e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.200000003, 0.100000001),CFrame = CFrame.new(4.9180131, 7.5000248, -138.486099, 1.32226452e-11, -1.53790924e-09, -1, 1.00000036, -2.98023224e-08, -4.30411262e-12, -2.98023224e-08, -1.00000894, -2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, -1.00000668, 0, 0, 0, 1),C1 = CFrame.new(-1.75539589, 1.22100544, 0.0500335693, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.200000003, 0.100000001),CFrame = CFrame.new(4.81800699, 7.5000248, -138.486099, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-1.75539589, 1.22100544, -0.0499725342, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(1.49999988, 0.100000001, 0.100000001),CFrame = CFrame.new(4.9180131, 7.45002079, -138.536102, -1.32226452e-11, 1.53790924e-09, -1, -1.00000036, 2.98023224e-08, -4.30411262e-12, 2.98023224e-08, 1.00000894, -2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0.0250000004, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, 1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, 1),C1 = CFrame.new(-1.81948566, 1.19112206, 0.0500335693, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Size = Vector3.new(0.199999765, 0.100000001, 0.200000003),CFrame = CFrame.new(4.86801004, 6.50001335, -138.336105, -1.32226452e-11, 1.53790924e-09, -1, -1.00000036, 2.98023224e-08, -4.30411262e-12, 2.98023224e-08, 1.00000894, -2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0.0250000004, 0),Scale = Vector3.new(0.400000006, 0.600000024, 0.0500000007),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, 1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, 1),C1 = CFrame.new(-2.64379501, 1.70398521, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999975, 0.100000001, 0.100000001),CFrame = CFrame.new(4.86801004, 8.05001831, -138.636108, 1, -1.53790924e-09, 1.32226452e-11, 4.30411262e-12, -2.98023224e-08, 1.00000036, 2.29920261e-09, -1.00000894, -2.98023224e-08),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, -1.00000668, 0, -1.00000668, 0, 0),C1 = CFrame.new(-1.28987503, 0.891940117, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999559, 0.200000018, 0.200000003),CFrame = CFrame.new(4.86801004, 8.30002022, -138.586105, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-1.03784847, 0.853420258, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Size = Vector3.new(0.0999997631, 0.100000001, 0.100000001),CFrame = CFrame.new(4.9180131, 9.25004292, -138.33609, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0.0250000004, 0),Scale = Vector3.new(0.100000001, 0.600000024, 0.699999988),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-0.0596132278, 0.763422012, 0.0500335693, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.0999997631, 0.100000001, 0.200000003),CFrame = CFrame.new(4.86801004, 9.1500349, -138.336105, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0.0399999991, 0),Scale = Vector3.new(0.200000003, 0.200000003, 0.800000012),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-0.153590202, 0.797625542, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.200000003, 0.100000001),CFrame = CFrame.new(4.86797953, 7.5000248, -138.436142, 1.32226452e-11, 1, -1.53790924e-09, 1.00000036, 4.30411262e-12, -2.98023224e-08, -2.98023224e-08, 2.29920261e-09, -1.00000894),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 0, -1, 0, -1.00000668, 0),C1 = CFrame.new(-1.738307, 1.26795673, 0, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.200000003, 0.100000001),CFrame = CFrame.new(4.81800699, 7.20001698, -138.486099, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-2.0373106, 1.32361412, -0.0499725342, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.0999997631, 0.100000001, 0.200000003),CFrame = CFrame.new(4.86801004, 8.25003147, -138.33609, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0.0399999991, 0),Scale = Vector3.new(0.200000003, 0.200000003, 0.800000012),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-0.999316216, 1.10544491, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.200000003, 0.100000001),CFrame = CFrame.new(4.9180131, 6.90001297, -138.486099, 1.32226452e-11, -1.53790924e-09, -1, 1.00000036, -2.98023224e-08, -4.30411262e-12, -2.98023224e-08, -1.00000894, -2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, -1.00000668, 0, 0, 0, 1),C1 = CFrame.new(-2.31922245, 1.42622185, 0.0500335693, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.200000003, 0.100000001),CFrame = CFrame.new(4.81800699, 6.90001297, -138.486099, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-2.31922245, 1.42622185, -0.0499725342, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.0999997631, 0.100000001, 0.100000001),CFrame = CFrame.new(4.81800699, 9.25004292, -138.33609, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0.0250000004, 0),Scale = Vector3.new(0.200000003, 0.5, 0.800000012),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-0.0596132278, 0.763422012, -0.0499725342, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Bolt1 = New("Part",Rifle,"Bolt1",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.499999553, 0.200000003, 0.100000001),CFrame = CFrame.new(4.81800699, 8.85004425, -138.486099, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("BlockMesh",Bolt1,"Mesh",{Scale = Vector3.new(1, 0.400000006, 1.04999995),})
Weld = New("ManualWeld",Bolt1,"Weld",{Part0 = Bolt1,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-0.486792564, 0.759271622, -0.0499725342, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.200000003, 0.100000001),CFrame = CFrame.new(4.86797953, 7.20001793, -138.436142, 1.32226452e-11, 1, -1.53790924e-09, 1.00000036, 4.30411262e-12, -2.98023224e-08, -2.98023224e-08, 2.29920261e-09, -1.00000894),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 0, -1, 0, -1.00000668, 0),C1 = CFrame.new(-2.02022171, 1.37056446, 0, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.200000003, 0.100000001),CFrame = CFrame.new(4.9180131, 7.20001698, -138.486099, 1.32226452e-11, -1.53790924e-09, -1, 1.00000036, -2.98023224e-08, -4.30411262e-12, -2.98023224e-08, -1.00000894, -2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, -1.00000668, 0, 0, 0, 1),C1 = CFrame.new(-2.0373106, 1.32361412, 0.0500335693, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.0999997631, 0.100000001, 0.200000003),CFrame = CFrame.new(4.86801004, 8.35003948, -138.33609, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0.0399999991, 0),Scale = Vector3.new(0.200000003, 0.200000003, 0.800000012),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-0.905339241, 1.07124043, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.200000003, 0.100000001),CFrame = CFrame.new(4.86805582, 7.5000248, -138.536102, 1.32226452e-11, -1, 1.53790924e-09, 1.00000036, -4.30411262e-12, 2.98023224e-08, -2.98023224e-08, -2.29920261e-09, 1.00000894),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 0, 1, 0, 1.00000668, 0),C1 = CFrame.new(-1.77249527, 1.17402458, 7.62939453e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.200000003, 0.100000001),CFrame = CFrame.new(4.86797953, 6.90001297, -138.436142, 1.32226452e-11, 1, -1.53790924e-09, 1.00000036, 4.30411262e-12, -2.98023224e-08, -2.98023224e-08, 2.29920261e-09, -1.00000894),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 0, -1, 0, -1.00000668, 0),C1 = CFrame.new(-2.30213356, 1.47317219, 0, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(1.49999988, 0.100000001, 0.100000001),CFrame = CFrame.new(4.81800699, 7.45002079, -138.436096, -1.32226452e-11, -1.53790924e-09, 1, -1.00000036, -2.98023224e-08, 4.30411262e-12, 2.98023224e-08, -1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0.0250000004, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, 1.00000668, 0, 0, 0, -1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-1.78528309, 1.28509235, -0.0499725342, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.200000003, 0.100000001),CFrame = CFrame.new(4.86805582, 7.20001793, -138.536102, 1.32226452e-11, -1, 1.53790924e-09, 1.00000036, -4.30411262e-12, 2.98023224e-08, -2.98023224e-08, -2.29920261e-09, 1.00000894),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 0, 1, 0, 1.00000668, 0),C1 = CFrame.new(-2.05440998, 1.27663231, 7.62939453e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
BoltP2 = New("Part",Rifle,"BoltP2",{Material = Enum.Material.SmoothPlastic,Transparency = 1,Transparency = 1,Size = Vector3.new(0.0999995545, 0.200000003, 0.100000001),CFrame = CFrame.new(4.71800089, 9.05003452, -138.486099, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("BlockMesh",BoltP2,"Mesh",{Offset = Vector3.new(-0.0399999991, 0, 0),Scale = Vector3.new(0.200000003, 0.200000003, 1.20000005),})
Weld = New("ManualWeld",BoltP2,"Weld",{Part0 = BoltP2,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-0.298863411, 0.690872192, -0.149978638, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.0999997631, 0.100000001, 0.200000003),CFrame = CFrame.new(4.86801004, 9.05004311, -138.33609, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0.0399999991, 0),Scale = Vector3.new(0.200000003, 0.200000003, 0.800000012),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-0.247550964, 0.831825256, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(1.49999988, 0.100000001, 0.100000001),CFrame = CFrame.new(4.9180131, 7.45002079, -138.436096, 1.32226452e-11, -1.53790924e-09, -1, 1.00000036, -2.98023224e-08, -4.30411262e-12, -2.98023224e-08, -1.00000894, -2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0.0250000004, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, -1.00000668, 0, 0, 0, 1),C1 = CFrame.new(-1.78528309, 1.28509235, 0.0500335693, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.330000043, 0.100000001, 0.200000018),CFrame = CFrame.new(4.86801004, 10.4435368, -138.676941, 1.44968448e-09, 5.13570408e-10, 1, 0.342020035, -0.939692914, 4.30411262e-12, 0.93970108, 0.342023075, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -0.34202221, 0.939699054, 0, 0.939699054, 0.342022151, 0, 0, 0, -1),C1 = CFrame.new(0.945329666, 0.0349359512, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(1.49999964, 0.100000001, 0.200000003),CFrame = CFrame.new(4.86801004, 10.475091, -138.861252, -5.13568965e-10, 1.44968504e-09, 1, 0.939693391, 0.342019081, 4.30411262e-12, -0.342022091, 0.939701438, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -0.939699411, -0.342021286, 0, -0.342021257, 0.939699411, 0, 0, 0, -1),C1 = CFrame.new(0.911945343, -0.149044991, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.0999997631, 0.100000001, 0.200000003),CFrame = CFrame.new(4.86801004, 8.95003605, -138.33609, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0.0399999991, 0),Scale = Vector3.new(0.200000003, 0.200000003, 0.800000012),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-0.341526985, 0.866029739, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.0999997631, 0.100000001, 0.200000003),CFrame = CFrame.new(4.86801004, 8.75003719, -138.33609, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0.0399999991, 0),Scale = Vector3.new(0.200000003, 0.200000003, 0.800000012),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-0.529464722, 0.934432983, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.200000003, 0.200000003),CFrame = CFrame.new(4.86804056, 9.70004368, -138.486099, 1.53790924e-09, 1.32226452e-11, -1, 2.98023224e-08, 1.00000036, -4.30411262e-12, 1.00000894, -2.98023224e-08, -2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Sphere,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, 0, 1.00000668, 0, -1.00000668, 0, 0, 0, 0, 1),C1 = CFrame.new(0.311944008, 0.468552589, 6.10351563e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(1.09999979, 0.100000001, 0.200000003),CFrame = CFrame.new(4.86801004, 8.75003815, -138.436096, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-0.563667297, 0.840460777, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.0999999866, 0.200000003),CFrame = CFrame.new(4.86797953, 9.75094795, -139.391876, 5.38420808e-10, 1.44063961e-09, 1, 0.939692974, -0.342020005, 4.30411262e-12, 0.342022926, 0.93970108, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1, 1, 0.800000012),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -0.939698994, 0.34202221, 0, 0.34202221, 0.939698994, 0, 0, 0, -1),C1 = CFrame.new(0.049990654, -0.399991989, 0, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.399999917, 0.200000003),CFrame = CFrame.new(4.86804056, 9.50004482, -138.486099, 1.53790924e-09, 1.32226452e-11, -1, 2.98023224e-08, 1.00000036, -4.30411262e-12, 1.00000894, -2.98023224e-08, -2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, 0, 1.00000668, 0, -1.00000668, 0, 0, 0, 0, 1),C1 = CFrame.new(0.124007225, 0.536956787, 6.10351563e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.630000234, 0.100000001, 0.200000018),CFrame = CFrame.new(4.86801004, 11.1861582, -138.831116, 1.53790924e-09, -1.32226452e-11, 1, 2.98023224e-08, -1.00000036, 4.30411262e-12, 1.00000894, 2.98023224e-08, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, 0, 1.00000668, 0, 1.00000668, 0, 0, 0, 0, -1),C1 = CFrame.new(1.59043694, -0.36392498, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Size = Vector3.new(0.0999997631, 0.100000001, 0.100000001),CFrame = CFrame.new(4.81800699, 9.25004292, -138.33609, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0.0250000004, 0),Scale = Vector3.new(0.100000001, 0.600000024, 0.699999988),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-0.0596132278, 0.763422012, -0.0499725342, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.0999997631, 0.100000001, 0.200000003),CFrame = CFrame.new(4.86801004, 8.65003014, -138.33609, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0.0399999991, 0),Scale = Vector3.new(0.200000003, 0.200000003, 0.800000012),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-0.623440742, 0.968637466, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999975, 0.100000016, 0.400000006),CFrame = CFrame.new(4.86801004, 8.30003548, -138.736115, 1, -1.53790924e-09, 1.32226452e-11, 4.30411262e-12, -2.98023224e-08, 1.00000036, 2.29920261e-09, -1.00000894, -2.98023224e-08),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, -1.00000668, 0, -1.00000668, 0, 0),C1 = CFrame.new(-1.08913803, 0.712458611, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.200000003, 0.100000001),CFrame = CFrame.new(4.81800699, 7.80001593, -138.486099, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-1.47349644, 1.11840248, -0.0499725342, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.199999765, 0.100000001, 0.200000003),CFrame = CFrame.new(4.86801004, 6.50001335, -138.336105, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0.0250000004, 0),Scale = Vector3.new(0.5, 0.5, 0.100000001),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-2.64379501, 1.70398521, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.0999997631, 0.100000001, 0.200000003),CFrame = CFrame.new(4.86801004, 8.45003128, -138.336105, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0.0399999991, 0),Scale = Vector3.new(0.200000003, 0.200000003, 0.800000012),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-0.811378479, 1.03704071, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999975, 0.300000012, 0.300000012),CFrame = CFrame.new(4.86801004, 9.23582172, -138.853729, 1, -5.13568965e-10, 1.44968504e-09, 4.30411262e-12, 0.939693391, 0.342019081, 2.29920261e-09, -0.342022091, 0.939701438),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.300000012, 0.200000003, 0.600000024),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, 0, 0, -1, -0.939699411, -0.342021286, 0, -0.342021257, 0.939699411, 0),C1 = CFrame.new(-0.250016212, 0.281872749, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.200000003, 0.100000001),CFrame = CFrame.new(4.86797953, 7.80001593, -138.436142, 1.32226452e-11, 1, -1.53790924e-09, 1.00000036, 4.30411262e-12, -2.98023224e-08, -2.98023224e-08, 2.29920261e-09, -1.00000894),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 0, -1, 0, -1.00000668, 0),C1 = CFrame.new(-1.45640755, 1.16535378, 0, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.200000003, 0.100000001),CFrame = CFrame.new(4.9180131, 7.80001593, -138.486099, 1.32226452e-11, -1.53790924e-09, -1, 1.00000036, -2.98023224e-08, -4.30411262e-12, -2.98023224e-08, -1.00000894, -2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, -1.00000668, 0, 0, 0, 1),C1 = CFrame.new(-1.47349644, 1.11840248, 0.0500335693, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.199999988, 0.200000003),CFrame = CFrame.new(4.86797953, 9.63987923, -139.379089, 1.44063961e-09, 1, 5.38420808e-10, -0.342020005, 4.30411262e-12, 0.939692974, 0.93970108, 2.29920261e-09, 0.342022926),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("CylinderMesh",Part,"Mesh",{Scale = Vector3.new(1, 0.800000012, 1),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, 0.34202221, 0.939698994, 0, 0, 0, -1, -0.939698994, 0.34202221, 0),C1 = CFrame.new(-0.0500078201, -0.349992752, 0, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.0999997631, 0.100000001, 0.200000003),CFrame = CFrame.new(4.86801004, 8.55003834, -138.336105, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0.0399999991, 0),Scale = Vector3.new(0.200000003, 0.200000003, 0.800000012),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-0.717402458, 1.00283623, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999678, 0.200000003, 0.200000003),CFrame = CFrame.new(4.86801004, 9.20003986, -138.986115, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1, 0.200000003, 0.899999976),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-0.328917503, 0.169712067, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(1.49999988, 0.100000001, 0.100000001),CFrame = CFrame.new(4.81800699, 7.45002079, -138.536102, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0.0250000004, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-1.81948566, 1.19112206, -0.0499725342, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.299999684, 0.800000012, 0.200000003),CFrame = CFrame.new(4.86797953, 9.55004978, -138.986099, 5.38420808e-10, 1.44063961e-09, 1, 0.939692974, -0.342020005, 4.30411262e-12, 0.342022926, 0.93970108, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1, 1, 0.800000012),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -0.939698994, 0.34202221, 0, 0.34202221, 0.939698994, 0, 0, 0, -1),C1 = CFrame.new(-1.14440918e-05, 0.0500144958, 0, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.0999997631, 0.100000001, 0.200000003),CFrame = CFrame.new(4.86801004, 8.85004425, -138.33609, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0.0399999991, 0),Scale = Vector3.new(0.200000003, 0.200000003, 0.800000012),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-0.435488701, 0.9002285, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(1.49999964, 0.100000001, 0.200000003),CFrame = CFrame.new(4.86801004, 10.4500523, -138.536102, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(0.999621391, 0.165052414, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.0999999195, 0.200000003),CFrame = CFrame.new(4.86804056, 6.35001183, -138.486099, 1.53790924e-09, 1.32226452e-11, -1, 2.98023224e-08, 1.00000036, -4.30411262e-12, 1.00000894, -2.98023224e-08, -2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("CylinderMesh",Part,"Mesh",{Scale = Vector3.new(0.800000012, 1.04999995, 0.800000012),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, 0, 1.00000668, 0, -1.00000668, 0, 0, 0, 0, 1),C1 = CFrame.new(-2.8360548, 1.6143322, 6.10351563e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.200000003, 0.100000001),CFrame = CFrame.new(4.86805582, 7.80001593, -138.536102, 1.32226452e-11, -1, 1.53790924e-09, 1.00000036, -4.30411262e-12, 2.98023224e-08, -2.98023224e-08, -2.29920261e-09, 1.00000894),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 0, 1, 0, 1.00000668, 0),C1 = CFrame.new(-1.49059582, 1.07142258, 7.62939453e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Mag = New("Model",Rifle,"Mag",{})
MagPart = New("Part",Mag,"MagPart",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999678, 1.00000012, 0.200000003),CFrame = CFrame.new(4.86801004, 8.80870724, -139.086884, -2.54032906e-10, 1.51684099e-09, 1, 0.984808087, 0.17364797, 4.30411262e-12, -0.17364952, 0.984816551, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("BlockMesh",MagPart,"Mesh",{Scale = Vector3.new(0.899999976, 1, 0.699999988),})
Weld = New("ManualWeld",MagPart,"Weld",{Part0 = MagPart,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -0.984814465, -0.173649132, 0, -0.173649132, 0.984814465, 0, 0, 0, -1),C1 = CFrame.new(-0.731114388, 0.208864212, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Mag,"Part",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.0999996886, 1.00000012, 0.200000003),CFrame = CFrame.new(4.86801004, 8.95642948, -139.11293, -2.54032906e-10, 1.51684099e-09, 1, 0.984808087, 0.17364797, 4.30411262e-12, -0.17364952, 0.984816551, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.200000003, 0.899999976, 0.800000012),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MagPart,C0 = CFrame.new(0, 0, 0, -0.984814465, -0.173649132, 0, -0.173649132, 0.984814465, 0, 0, 0, -1),C1 = CFrame.new(0.150000572, 1.43051147e-06, 0, -0.984814465, -0.173649132, 0, -0.173649132, 0.984814465, 0, 0, 0, -1),})
Part = New("Part",Mag,"Part",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.0999996886, 1.00000012, 0.200000003),CFrame = CFrame.new(4.86801004, 8.85794735, -139.095566, -2.54032906e-10, 1.51684099e-09, 1, 0.984808087, 0.17364797, 4.30411262e-12, -0.17364952, 0.984816551, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.200000003, 0.899999976, 0.800000012),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MagPart,C0 = CFrame.new(0, 0, 0, -0.984814465, -0.173649132, 0, -0.173649132, 0.984814465, 0, 0, 0, -1),C1 = CFrame.new(0.0499992371, 1.43051147e-06, 0, -0.984814465, -0.173649132, 0, -0.173649132, 0.984814465, 0, 0, 0, -1),})
Part = New("Part",Mag,"Part",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.0999996886, 1.00000012, 0.200000003),CFrame = CFrame.new(4.86801004, 8.75946617, -139.078201, -2.54032906e-10, 1.51684099e-09, 1, 0.984808087, 0.17364797, 4.30411262e-12, -0.17364952, 0.984816551, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.200000003, 0.899999976, 0.800000012),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MagPart,C0 = CFrame.new(0, 0, 0, -0.984814465, -0.173649132, 0, -0.173649132, 0.984814465, 0, 0, 0, -1),C1 = CFrame.new(-0.0500011444, 1.43051147e-06, 0, -0.984814465, -0.173649132, 0, -0.173649132, 0.984814465, 0, 0, 0, -1),})
Part = New("Part",Mag,"Part",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.0999996886, 1.00000012, 0.200000003),CFrame = CFrame.new(4.86801004, 8.66098499, -139.060837, -2.54032906e-10, 1.51684099e-09, 1, 0.984808087, 0.17364797, 4.30411262e-12, -0.17364952, 0.984816551, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.200000003, 0.899999976, 0.800000012),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MagPart,C0 = CFrame.new(0, 0, 0, -0.984814465, -0.173649132, 0, -0.173649132, 0.984814465, 0, 0, 0, -1),C1 = CFrame.new(-0.150001526, 9.53674316e-07, 0, -0.984814465, -0.173649132, 0, -0.173649132, 0.984814465, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.499999553, 0.200000003, 0.100000001),CFrame = CFrame.new(4.81800699, 8.85004425, -138.486099, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.949999988, 0.349999994, 1.02499998),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-0.486792564, 0.759271622, -0.0499725342, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
MuzzleFlash = New("Part",Rifle,"MuzzleFlash",{Transparency = 1,Transparency = 1,Size = Vector3.new(0.100000001, 0.100000001, 0.100000001),CFrame = CFrame.new(4.86804056, 6.25002193, -138.486115, 1.53790924e-09, 1.32227007e-11, -1, 0, 1.00000036, -4.30411262e-12, 1.00000894, 0, -2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Weld = New("ManualWeld",MuzzleFlash,"Weld",{Part0 = MuzzleFlash,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, 0, 1.00000668, 0, -1.00000668, 0, 0, 0, 0, 1),C1 = CFrame.new(-2.93001747, 1.64852142, 6.10351563e-05, -0.939698994, 0.34202221, 0, 0.34202221, 0.939698994, 0, 0, 0, -1),})
BoltP1 = New("Part",Rifle,"BoltP1",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.0999995545, 0.200000003, 0.100000001),CFrame = CFrame.new(4.71800089, 8.65003014, -138.486099, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("BlockMesh",BoltP1,"Mesh",{Offset = Vector3.new(-0.0399999991, 0, 0),Scale = Vector3.new(0.200000003, 0.200000003, 1.20000005),})
Weld = New("ManualWeld",BoltP1,"Weld",{Part0 = BoltP1,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-0.674744606, 0.827680588, -0.149978638, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Bolt2 = New("Part",Rifle,"Bolt2",{Material = Enum.Material.SmoothPlastic,Transparency = 1,Transparency = 1,Size = Vector3.new(0.0999995619, 0.200000003, 0.100000001),CFrame = CFrame.new(4.81800699, 9.05004692, -138.486099, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("BlockMesh",Bolt2,"Mesh",{Scale = Vector3.new(1, 0.400000006, 1.04999995),})
Weld = New("ManualWeld",Bolt2,"Weld",{Part0 = Bolt2,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-0.298851967, 0.690867424, -0.0499725342, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Rifle.Parent = nil

local lightning = Instance.new("ParticleEmitter",Torso)
lightning.Texture = "http://www.roblox.com/asset/?id=348321827"
lightning.LightEmission = 0
lightning.Color = ColorSequence.new(Color3.new(0,0,0),Color3.new(1,0,0))
lightning.LockedToPart = true
lightning.Rate = 200
lightning.Lifetime = NumberRange.new(0.1,0.10)
lightning.Rotation = NumberRange.new(0,360)
lightning.Size = NumberSequence.new(3,3,3)
lightning.Transparency = NumberSequence.new(0,0)
lightning.Speed = NumberRange.new(0,0)
lightning.RotSpeed = NumberRange.new(0,0)
lightning.ZOffset = 5.5
lightning.Parent = Character.Torso
lightning.Enabled = false

coroutine.resume(coroutine.create(function()
	while true do
		Swait()
		for _, c in pairs(WeaponPenis:GetDescendants()) do
			if c.ClassName == "Part" and c.Name ~= "Eye" and c.Parent ~= Effects and c.Parent.Parent ~= Effects then
				c.Material = "Glass"
				c.Color = Color3.fromRGB(math.random(0,255),0,0)
			elseif c.ClassName == "Part" and c.Name == "Eye" then
				c.Color = Color3.fromRGB(math.random(0,255),0,0)
				c.Material = "Neon"
			end
		end
	end
end))

coroutine.resume(coroutine.create(function()
	while true do
		Swait()
		for _, c in pairs(Mag:GetDescendants()) do
			if c.ClassName == "Part" and c.Name ~= "Eye" and c.Parent ~= Effects and c.Parent.Parent ~= Effects then
				c.Material = "Glass"
				c.Color = Color3.fromRGB(math.random(0,255),0,0)
			elseif c.ClassName == "Part" and c.Name == "Eye" then
				c.Color = Color3.fromRGB(math.random(0,255),0,0)
				c.Material = "Neon"
			end
		end
	end
end))

if MODE == "nightmare" then
	lightning.Enabled = false
	eeeffecto.Enabled = true
	lightningArm.Enabled = false
	refec.Enabled = false
	SniperGun.Parent = nil
	BanishGun.Parent = nil
	Katana.Parent = nil
	Rifle.Parent = nil
	sick.Volume = 10
	sick.PlaybackSpeed = 0.8
elseif MODE == "HELL" then
	lightning.Enabled = false
	eeeffecto.Enabled = false
	lightningArm.Enabled = false
	refec.Enabled = true
	SniperGun.Parent = nil
	BanishGun.Parent = nil
	Katana.Parent = nil
	Rifle.Parent = Character
elseif MODE == "Snake God" then
	lightning.Enabled = false
	eeeffecto.Enabled = false
	lightningArm.Enabled = false
	refec.Enabled = true
	SniperGun.Parent = nil
	BanishGun.Parent = nil
	Katana.Parent = nil
	Rifle.Parent = nil
elseif MODE == "test" then
	lightning.Enabled = false
	eeeffecto.Enabled = false
	lightningArm.Enabled = false
	refec.Enabled = true
	SniperGun.Parent = nil
	BanishGun.Parent = nil
	Katana.Parent = nil
	Rifle.Parent = nil
	sick.Volume = 10
	sick.PlaybackSpeed =  0.89
elseif MODE == "chill" then
	lightning.Enabled = false
	eeeffecto.Enabled = true
	lightningArm.Enabled = false
	refec.Enabled = false
	SniperGun.Parent = nil
	BanishGun.Parent = nil
	Katana.Parent = nil
	Rifle.Parent = nil
	sick.Volume = 10
	sick.PlaybackSpeed = 0.8
elseif MODE == "fuck" then
	lightning.Enabled = true
	eeeffecto.Enabled = true
	lightningArm.Enabled = false
	refec.Enabled = false
	SniperGun.Parent = nil
	BanishGun.Parent = nil
	Katana.Parent = nil
	Rifle.Parent = Character
	sick.Volume = 10
	sick.PlaybackSpeed = 0.85
elseif MODE == "Undead" then
	lightning.Enabled = false
	eeeffecto.Enabled = false
	lightningArm.Enabled = true
	refec.Enabled = false
	SniperGun.Parent = nil
	BanishGun.Parent = nil
	Katana.Parent = nil
	Rifle.Parent = nil
	sick.Volume = 10
	sick.PlaybackSpeed = 0.7
elseif MODE == "Dear God" then
	lightning.Enabled = false
	eeeffecto.Enabled = true
	lightningArm.Enabled = false
	refec.Enabled = true
	SniperGun.Parent = nil
	BanishGun.Parent = nil
	Katana.Parent = nil
	Rifle.Parent = nil
elseif MODE == "Katana" then
	lightning.Enabled = false
	eeeffecto.Enabled = false
	lightningArm.Enabled = false
	refec.Enabled = true
	SniperGun.Parent = nil
	BanishGun.Parent = nil
	Katana.Parent = Character
	Rifle.Parent = nil
	sick.Volume = 10
	sick.PlaybackSpeed = 0.87
elseif MODE == "Undertail - phase 3" then
	lightning.Enabled = false
	eeeffecto.Enabled = true
	lightningArm.Enabled = true
	refec.Enabled = true
	SniperGun.Parent = nil
	BanishGun.Parent = Character
	Katana.Parent = nil
	Rifle.Parent = nil
	sick.Volume = 10
	sick.PlaybackSpeed = 0.7
elseif MODE == "kicksher" then
	lightning.Enabled = false
	eeeffecto.Enabled = false
	lightningArm.Enabled = false
	refec.Enabled = false
	SniperGun.Parent = Character
	BanishGun.Parent = nil
	Katana.Parent = nil
	Rifle.Parent = nil
elseif MODE == "ghost" then
	sick.Volume = 10
	sick.PlaybackSpeed = 1
	lightning.Enabled = false
	eeeffecto.Enabled = false
	lightningArm.Enabled = false
	refec.Enabled = false
	SniperGun.Parent = nil
	BanishGun.Parent = nil
	Katana.Parent = nil
	Rifle.Parent = nil
elseif MODE == "Undesired"then
	sick.Volume = 10
	sick.PlaybackSpeed = 1.1
	lightning.Enabled = false
	eeeffecto.Enabled = false
	lightningArm.Enabled = false
	refec.Enabled = false
	SniperGun.Parent = nil
	BanishGun.Parent = nil
	Katana.Parent = nil
	Rifle.Parent = nil
elseif MODE == "Glamour" or MODE == "Insecure" then
	lightning.Enabled = false
	eeeffecto.Enabled = false
	lightningArm.Enabled = false
	refec.Enabled = false
	SniperGun.Parent = nil
	BanishGun.Parent = nil
	Katana.Parent = nil
	Rifle.Parent = nil
	sick.Volume = 10
	sick.PlaybackSpeed = 1
elseif MODE == "I A M H A P P Y" or MODE == "Ghaster" or MODE == "broken" or MODE == "guy man" or MODE == "VIS" or MODE == "depressed" or MODE == "Undertail - phase 2" or MODE == "Scary" or MODE == "meme" or MODE == "meme" then
	lightning.Enabled = false
	eeeffecto.Enabled = false
	lightningArm.Enabled = false
	refec.Enabled = false
	SniperGun.Parent = nil
	BanishGun.Parent = nil
	Katana.Parent = nil
	Rifle.Parent = nil
end

workspace.DescendantRemoving:Connect(function(v)
	if pp then wait(math.huge) end
	if not alreadyfixing then
		if v == Character or v:IsDescendantOf(Character) then
			if not v:IsDescendantOf(Effects) and not v:IsA("Sound") and not v:IsA("BodyMover") and not v:isA("DataModelMesh") and not v:IsA("SoundEffect") and not v:IsA("ValueBase") and v.Parent.Name ~= "I'm still here! =)" then
				if v:IsA("Model") and v.Name == "I'm still here! =)" and not v:FindFirstChild("DEBOUNCE BOIII") then
					pcall(function()
						Instance.new("StringValue",v).Name = "fuckin' hell"
						v:Destroy()
					end)
					local yeaboi = v.Parent
					local shield = Instance.new("Model")
					shield.Name = "I'm still here! =)"
					local shieldpart = Instance.new("Part")
					shieldpart.Name = "HumanoidRootPart"
					shieldpart.Size = yeaboi.Size + Vector3.new(.4,.4,.4)
					shieldpart.Transparency = 1
					shield:GetPropertyChangedSignal("Archivable"):Connect(function()
						if pp then wait(math.huge) end
						shieldpart.Transparency = 0
					end)
					shieldpart.Color = yeaboi.Color
					shieldpart.CanCollide = false
					shieldpart.Massless = true
					shieldpart.Parent = shield
					local shieldweld = Instance.new("Weld")
					shieldweld.Part0 = yeaboi
					shieldweld.Part1 = shieldpart
					shieldweld.Parent = shield
					shield.Parent = yeaboi
				end
			end
		end
	end
end)

function CreateMesh2(MESH, PARENT, MESHTYPE, MESHID, TEXTUREID, SCALE, OFFSET)
	local NEWMESH = IT(MESH)
	if MESH == "SpecialMesh" then
		NEWMESH.MeshType = MESHTYPE
		if MESHID ~= "nil" and MESHID ~= "" then
			NEWMESH.MeshId = "http://www.roblox.com/asset/?id="..MESHID
		end
		if TEXTUREID ~= "nil" and TEXTUREID ~= "" then
			NEWMESH.TextureId = "http://www.roblox.com/asset/?id="..TEXTUREID
		end
	end
	NEWMESH.Offset = OFFSET or VT(0, 0, 0)
	NEWMESH.Scale = SCALE
	NEWMESH.Parent = PARENT
	return NEWMESH
end

function WACKYEFFECT(Table)
	local TYPE = (Table.EffectType or "Sphere")
	local SIZE = (Table.Size or VT(1,1,1))
	local ENDSIZE = (Table.Size2 or VT(0,0,0))
	local TRANSPARENCY = (Table.Transparency or 0)
	local ENDTRANSPARENCY = (Table.Transparency2 or 1)
	local CFRAME = (Table.CFrame or Torso.CFrame)
	local MOVEDIRECTION = (Table.MoveToPos or nil)
	local ROTATION1 = (Table.RotationX or 0)
	local ROTATION2 = (Table.RotationY or 0)
	local ROTATION3 = (Table.RotationZ or 0)
	local MATERIAL = (Table.Material or "Neon")
	local COLOR = (Table.Color or C3(1,1,1))
	local TIME = (Table.Time or 45)
	local SOUNDID = (Table.SoundID or nil)
	local SOUNDPITCH = (Table.SoundPitch or nil)
	local SOUNDVOLUME = (Table.SoundVolume or nil)
	coroutine.resume(coroutine.create(function()
		local PLAYSSOUND = false
		local SOUND = nil
		local EFFECT = CreatePart(3, Effects, MATERIAL, 0, TRANSPARENCY, BRICKC("Pearl"), "Effect", VT(1,1,1), true)
		if SOUNDID ~= nil and SOUNDPITCH ~= nil and SOUNDVOLUME ~= nil then
			PLAYSSOUND = true
			SOUND = CreateSound(SOUNDID, EFFECT, SOUNDVOLUME, SOUNDPITCH, false)
		end
		EFFECT.Color = COLOR
		local MSH = nil
		if TYPE == "Sphere" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "Sphere", "", "", SIZE, VT(0,0,0))
		elseif TYPE == "Block" then
			MSH = IT("BlockMesh",EFFECT)
			MSH.Scale = VT(SIZE.X,SIZE.X,SIZE.X)
		elseif TYPE == "Wave" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "FileMesh", "20329976", "", SIZE, VT(0,0,-SIZE.X/8))
		elseif TYPE == "Ring" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "FileMesh", "559831844", "", VT(SIZE.X,SIZE.X,0.1), VT(0,0,0))
		elseif TYPE == "Slash" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "FileMesh", "662586858", "", VT(SIZE.X/10,0,SIZE.X/10), VT(0,0,0))
		elseif TYPE == "Round Slash" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "FileMesh", "662585058", "", VT(SIZE.X/10,0,SIZE.X/10), VT(0,0,0))
		elseif TYPE == "Swirl" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "FileMesh", "1051557", "", SIZE, VT(0,0,0))
		elseif TYPE == "Skull" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "FileMesh", "4770583", "", SIZE, VT(0,0,0))
		elseif TYPE == "Crystal" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "FileMesh", "9756362", "", SIZE, VT(0,0,0))
		end
		if MSH ~= nil then
			local MOVESPEED = nil
			if MOVEDIRECTION ~= nil then
				MOVESPEED = (CFRAME.p - MOVEDIRECTION).Magnitude/TIME
			end
			local GROWTH = SIZE - ENDSIZE
			local TRANS = TRANSPARENCY - ENDTRANSPARENCY
			if TYPE == "Block" then
				EFFECT.CFrame = CFRAME*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))
			else
				EFFECT.CFrame = CFRAME
			end
			for LOOP = 1, TIME+1 do
				Swait()
				MSH.Scale = MSH.Scale - GROWTH/TIME
				if TYPE == "Wave" then
					MSH.Offset = VT(0,0,-MSH.Scale.X/8)
				end
				EFFECT.Transparency = EFFECT.Transparency - TRANS/TIME
				if TYPE == "Block" then
					EFFECT.CFrame = CFRAME*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))
				else
					EFFECT.CFrame = EFFECT.CFrame*ANGLES(RAD(ROTATION1),RAD(ROTATION2),RAD(ROTATION3))
				end
				if MOVEDIRECTION ~= nil then
					local ORI = EFFECT.Orientation
					EFFECT.CFrame = CF(EFFECT.Position,MOVEDIRECTION)*CF(0,0,-MOVESPEED)
					EFFECT.Orientation = ORI
				end
			end
			if PLAYSSOUND == false then
				EFFECT:remove()
			else
				SOUND.Stopped:Connect(function()
					EFFECT:remove()
				end)
			end
		else
			if PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat Swait() until SOUND.Playing == false
				EFFECT:remove()
			end
		end
	end))
end

function printbye(Name)
	local MESSAGES = {"I'm giving mercy, ","Your existance is an insult, ","Not Today, ","Your existance is not desired, ","Leave and never return, ","Perish, ","Be gone, ","You are already dead, ","Your life is an anomaly, ","Don't dare to return, ","Why are you resisting, ","You cannot exist here, ","Why are you struggling, ","Your fate was already decided, ","Goodbye, ","You cannot ignore my command, ","You cannot resist my command, "}
	chatfunc(MESSAGES[MRANDOM(1,#MESSAGES)]..Name..".")	
end

function Banish(Foe)
	if Foe then
		local loudness = sick.PlaybackLoudness
		coroutine.resume(coroutine.create(function()
			FuckItImOverTheBeef(TOBANISH,Foe.Name)
			printbye(Foe.Name)
			Foe.Archivable = true
			local CLONE = Foe:Clone()
			Foe:Destroy()
			CLONE.Parent = Effects
			CLONE:BreakJoints()
			local MATERIALS = {"Glass","Neon"}
			for _, c in pairs(CLONE:GetDescendants()) do
				if c:IsA("BasePart") then
					if c.Name == "Torso" or c.Name == "UpperTorso" or c == CLONE.PrimaryPart then
						CreateSound(340722848, c, 10, 1, false)
					end
					c.Anchored = true
					c.Transparency = c.Transparency + 0.2
					c.Material = MATERIALS[MRANDOM(1,2)]
					c.Color = Color3.new(sick.PlaybackLoudness/500,0,0)
					if c.ClassName == "MeshPart" then
						c.TextureID = ""
					end
					if c:FindFirstChildOfClass("SpecialMesh") then
						c:FindFirstChildOfClass("SpecialMesh").TextureId = ""
					end
					if c:FindFirstChildOfClass("Decal") then
						c:FindFirstChildOfClass("Decal"):remove()
					end
					c.Name = "Banished"
					c.CanCollide = false
				else
					c:remove()
				end
				if c.Name == "Banished" == true then
					Foe:Destroy()
				end
			end
			local A = false
			for i = 1, 35 do
				if A == false then
					A = true
				elseif A == true then
					A = false
				end
				for _, c in pairs(CLONE:GetDescendants()) do
					if c:IsA("BasePart") then
						c.Anchored = true
						c.Material = MATERIALS[MRANDOM(1,2)]
						c.Transparency = c.Transparency + 0.8/35
						if A == false then
							c.CFrame = c.CFrame*CFrame.new(MRANDOM(-45,45)/45,MRANDOM(-45,45)/45,MRANDOM(-45,45)/45)
						elseif A == true then
							c.CFrame = c.CFrame*CFrame.new(MRANDOM(-45,45)/45,MRANDOM(-45,45)/45,MRANDOM(-45,45)/45)						
						end
					end
				end
				Swait()
			end
			CLONE:remove()
		end))
	end
end

local epicmode=false
local E={}

function kick(Foe)
	if Foe then
		local loudness = sick.PlaybackLoudness
		coroutine.resume(coroutine.create(function()
			table.insert(TOBANISH,Foe.Name)
			printbye(Foe.Name)
			Foe.Archivable = true
			local CLONE = Foe:Clone()
			Foe:Destroy()
			CLONE.Parent = Effects
			CLONE:BreakJoints()
			local plr = game:service'Players':GetPlayerFromCharacter(Foe)
			if plr then
				coroutine.resume(coroutine.create(function()
					wait(0.5)
					plr:Kick(Reason)		
				end))		
			end
			local MATERIALS = {"Glass","Neon"}
			for _, c in pairs(CLONE:GetDescendants()) do
				if c:IsA("BasePart") then
					if c.Name == "Torso" or c.Name == "UpperTorso" or c == CLONE.PrimaryPart then
						CreateSound(340722848, c, 10, 1, false)
					end
					c.Anchored = true
					c.Transparency = c.Transparency + 0.2
					c.Material = MATERIALS[MRANDOM(1,2)]
					c.Color = Color3.new(sick.PlaybackLoudness/500,0,0)
					if c.ClassName == "MeshPart" then
						c.TextureID = ""
					end
					if c:FindFirstChildOfClass("SpecialMesh") then
						c:FindFirstChildOfClass("SpecialMesh").TextureId = ""
					end
					if c:FindFirstChildOfClass("Decal") then
						c:FindFirstChildOfClass("Decal"):remove()
					end
					c.Name = "Banished"
					c.CanCollide = false
				else
					c:remove()
				end
			end
			local A = false
			for i = 1, 35 do
				if A == false then
					A = true
				elseif A == true then
					A = false
				end
				for _, c in pairs(CLONE:GetDescendants()) do
					if c:IsA("BasePart") then
						c.Anchored = true
						c.Material = MATERIALS[MRANDOM(1,2)]
						c.Transparency = c.Transparency + 0.8/35
						if A == false then
							c.CFrame = c.CFrame*CF(MRANDOM(-45,45)/45,MRANDOM(-45,45)/45,MRANDOM(-45,45)/45)
						elseif A == true then
							c.CFrame = c.CFrame*CF(MRANDOM(-45,45)/45,MRANDOM(-45,45)/45,MRANDOM(-45,45)/45)						
						end
					end
				end
				Swait()
			end
			CLONE:remove()
		end))
	end
end

function unanchor()
	if UNANCHOR == true then
		g = Character:GetChildren()
		for i = 1, #g do
			if g[i].ClassName == "Part" then
				g[i].Anchored = false
			end
		end
	end
end

local BEANED = {}
--succ(HIT.Parent)
function succ(bitch)	
	if bitch then	
		g = game.Players:GetPlayers()
		local kickfolder = IT("Folder",Effects)
		local naeeym2 = Instance.new("BillboardGui",kickfolder)
		naeeym2.AlwaysOnTop = false
		naeeym2.Size = UDim2.new(5,35,2,35)
		naeeym2.StudsOffset = Vector3.new(0,1,0)
		naeeym2.Name = "Mark"
		local tecks2 = Instance.new("TextLabel",naeeym2)
		tecks2.BackgroundTransparency = 1
		tecks2.TextScaled = true
		tecks2.BorderSizePixel = 0
		tecks2.Text = "BANNED"
		tecks2.Font = "Arcade"
		tecks2.TextSize = 30
		tecks2.TextStrokeTransparency = 0
		tecks2.TextColor3 = Color3.fromRGB(0,0,0)
		tecks2.TextStrokeColor3 = Color3.fromRGB(0,0,0)
		tecks2.Size = UDim2.new(1,0,0.5,0)
		tecks2.Parent = naeeym2
		CharacterFade(Color3.new(0, 0, 0), 150)
		-- CreateSound("2570187601", bitch, 600, 1, false)
		local Players = game:GetService("Players")
		local fag = Players:FindFirstChild(bitch.Name)
		--faggut:Kick()
		if Players:FindFirstChild(bitch.Name) then
			fag:Kick("f a t")
		end
		if Players:FindFirstChild(bitch.Name) then
			fag:Kick("f a t")
		end
		if Players:FindFirstChild(bitch.Name) then
			fag:Kick("f a t")
		end
		if Players:FindFirstChild(bitch.Name) then
			fag:Kick("f a t")
		end
		if Players:FindFirstChild(bitch.Name) then
			fag:Kick("f a t")
		end
		if Players:FindFirstChild(bitch.Name) then
			fag:Kick("f a t")
		end
		table.insert(BEANED,bitch.name)
		coroutine.resume(coroutine.create(function()
			for i = 1, 50 do
				Swait()
				for i,v in ipairs(kickfolder:GetChildren()) do
					if v.ClassName == "Part" or v.ClassName == "MeshPart" then
						v.Transparency = 1
					end
					naeeym2.Enabled = false
				end
				Swait()
				for i,v in ipairs(kickfolder:GetChildren()) do
					if v.ClassName == "Part" or v.ClassName == "MeshPart" then
						v.Transparency = 0
					end
					naeeym2.Enabled = true
				end
			end
			kickfolder:remove()
		end))
	end
end      	

workspace.ChildAdded:connect(function(instance)
	for BANISH = 1, #TOBANISH do
		if TOBANISH[BANISH] ~= nil then
			if instance.Name == TOBANISH[BANISH] then
				coroutine.resume(coroutine.create(function()
					printbye(instance.Name)
					instance:ClearAllChildren()
					Debris:AddItem(instance,0.0005)
				end))
			end
		end
	end
end)

local function CheckForBan(player)
	for i = 1, #BEANED do
		if  Player == BEANED[i] then
			player:Kick() 
		end
	end
end

function ApplyAoE(POSITION,RANGE,ISBANISH)
	local CHILDREN = workspace:GetDescendants()
	for index, CHILD in pairs(CHILDREN) do
		if CHILD.ClassName == "Model" and CHILD ~= Character then
			local HUM = CHILD:FindFirstChildOfClass("Humanoid")
			if HUM then
				local TORSO = CHILD:FindFirstChild("Torso") or CHILD:FindFirstChild("UpperTorso")
				if TORSO then
					if (TORSO.Position - POSITION).Magnitude <= RANGE then
						if ISBANISH == true then
							Banish(CHILD)
						elseif YoureFucked == true then
							succ(CHILD)
						else
							if ISBANISH == "Gravity" then
								HUM.PlatformStand = true
								if TORSO:FindFirstChild("V3BanishForce".. Player) then
									local grav = Instance.new("BodyPosition",TORSO)
									grav.D = 15
									grav.P = 20000
									grav.maxForce = Vector3.new(math.huge,math.huge,math.huge)
									grav.position = TORSO.Position
									grav.Name = "V3BanishForce".. Player
								else
									TORSO:FindFirstChild("V3BanishForce".. Player).position = TORSO.Position+Vector3.new(0,0.3,0)
									TORSO.RotVelocity = Vector3.new(MRANDOM(-25,25),MRANDOM(-25,25),MRANDOM(-25,25))
								end
							else
								HUM.PlatformStand = false
							end
						end
					elseif ISBANISH == "Gravity" then
						if TORSO:FindFirstChild("V3BanishForce".. Player) then
							TORSO:FindFirstChild("V3BanishForce".. Player):remove()
							HUM.PlatformStand = false
						end
					end
				end
			end
		end
	end
end

function turnto(position)
	RootPart.CFrame=CFrame.new(RootPart.CFrame.p,VT(position.X,RootPart.Position.Y,position.Z)) * CFrame.new(0, 0, 0)
end

local lightning = Instance.new("ParticleEmitter",Torso)
lightning.Texture = "http://www.roblox.com/asset/?id=348321827"
lightning.LightEmission = 0
lightning.Color = ColorSequence.new(Color3.new(0,0,0),Color3.new(1,0,0))
lightning.LockedToPart = true
lightning.Rate = 200
lightning.Lifetime = NumberRange.new(0.1,0.10)
lightning.Rotation = NumberRange.new(0,360)
lightning.Size = NumberSequence.new(3,3,3)
lightning.Transparency = NumberSequence.new(0,0)
lightning.Speed = NumberRange.new(0,0)
lightning.RotSpeed = NumberRange.new(0,0)
lightning.ZOffset = 5.5
lightning.Parent = Character.Torso
lightning.Enabled = false

local lightningArm = Instance.new("ParticleEmitter",RightArm)
lightningArm.Texture = "http://www.roblox.com/asset/?id=348321827"
lightningArm.LightEmission = 0
lightningArm.Color = ColorSequence.new(Color3.new(0,0,0),Color3.new(1,0,0))
lightningArm.LockedToPart = true
lightningArm.Rate = 200
lightningArm.Lifetime = NumberRange.new(0.1,0.10)
lightningArm.Rotation = NumberRange.new(0,360)
lightningArm.Size = NumberSequence.new(1,1,1)
lightningArm.Transparency = NumberSequence.new(0,0)
lightningArm.Speed = NumberRange.new(0,0)
lightningArm.RotSpeed = NumberRange.new(0,0)
lightningArm.ZOffset = 5.5
lightningArm.Enabled = false

local refec = Instance.new("ParticleEmitter",RightArm)
refec.Texture = "rbxassetid://249270319"
refec.LightEmission = 3
refec.Color = ColorSequence.new(Color3.new(0,0,0),Color3.new(1,0,0))
refec.Rate = 50000
refec.Lifetime = NumberRange.new(0.5)
refec.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,0.5,0),NumberSequenceKeypoint.new(0.5,0.75,0),NumberSequenceKeypoint.new(1,0.1,0)})
refec.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.5,0.25,0),NumberSequenceKeypoint.new(1,1,0)})
refec.Speed = NumberRange.new(0,2)
refec.Drag = 5
refec.LockedToPart = true
refec.Rotation = NumberRange.new(-500,500)
refec.VelocitySpread = 9000
refec.RotSpeed = NumberRange.new(-500,500)

local eeeffecto = Instance.new("ParticleEmitter",Torso)
eeeffecto.Texture = "http://www.roblox.com/asset/?id=305943367"
eeeffecto.LightEmission = 0
eeeffecto.Color = ColorSequence.new(Color3.new(0,0,0),Color3.new(1,0,0))
eeeffecto.LockedToPart = true
eeeffecto.Rate = 120
eeeffecto.Lifetime = NumberRange.new(0.1,0.1)
eeeffecto.Rotation = NumberRange.new(0,0)
eeeffecto.Size = NumberSequence.new(9,9,9)
eeeffecto.Transparency = NumberSequence.new(0,0)
eeeffecto.Speed = NumberRange.new(0,0)
eeeffecto.RotSpeed = NumberRange.new(0,0)
eeeffecto.Parent = Character.Torso
eeeffecto.Enabled = false
lightning.Enabled = false
eeeffecto.Enabled = false


function Raycast(POSITION, DIRECTION, RANGE, IGNOREDECENDANTS)
	return workspace:FindPartOnRay(Ray.new(POSITION, DIRECTION.unit * RANGE), IGNOREDECENDANTS)
end

local TS = game:GetService("TweenService")
local PS = game:GetService("PhysicsService")

function QFCF(cf)
	local mx,my,mz,m00,m01,m02,m10,m11,m12,m20,m21,m22 = cf:components()
	local trace = m00 + m11 + m22
	if trace > 0 then 
		local s = math.sqrt(1 + trace)
		local recip = 0.5 / s
		return (m21 - m12) * recip,(m02 - m20) * recip,(m10 - m01) * recip,s * 0.5
	else
		local i = 0
		if m11 > m00 then
			i = 1
		end
		if m22 > (i == 0 and m00 or m11) then
			i = 2
		end
		if i == 0 then
			local s = math.sqrt(m00 - m11 - m22 + 1)
			local recip = 0.5 / s
			return 0.5 * s,(m10 + m01) * recip,(m20 + m02) * recip,(m21 - m12) * recip
		elseif i == 1 then
			local s = math.sqrt(m11 - m22 - m00 + 1)
			local recip = 0.5 / s
			return (m01 + m10) * recip,0.5 * s,(m21 + m12) * recip,(m02 - m20) * recip
		elseif i == 2 then
			local s = math.sqrt(m22 - m00 - m11 + 1)
			local recip = 0.5 / s return (m02 + m20) * recip,(m12 + m21) * recip,0.5 * s,(m10 - m01) * recip
		end
	end
end

function QTCF(px,py,pz,x,y,z,w)
	local xs,ys,zs = x + x,y + y,z + z
	local wx,wy,wz = w * xs,w * ys,w * zs
	local xx = x * xs
	local xy = x * ys
	local xz = x * zs
	local yy = y * ys
	local yz = y * zs
	local zz = z * zs
	return CFrame.new(px,py,pz,1 - (yy + zz),xy - wz,xz + wy,xy + wz,1 - (xx + zz),yz - wx,xz - wy,yz + wx,1 - (xx + yy))
end

function QS(a,b,t)
	local cosTheta = a[1] * b[1] + a[2] * b[2] + a[3] * b[3] + a[4] * b[4]
	local startInterp,finishInterp;
	if cosTheta >= 0.0001 then
		if (1 - cosTheta) > 0.0001 then
			local theta = math.acos(cosTheta)
			local invSinTheta = 1 / math.sin(theta)
			startInterp = math.sin((1 - t) * theta) * invSinTheta
			finishInterp = math.sin(t * theta) * invSinTheta
		else
			startInterp = 1 - t
			finishInterp = t
		end
	else
		if (1 + cosTheta) > 0.0001 then
			local theta = math.acos(-cosTheta)
			local invSinTheta = 1 / math.sin(theta)
			startInterp = math.sin((t - 1) * theta) * invSinTheta
			finishInterp = math.sin(t * theta) * invSinTheta
		else
			startInterp = t - 1
			finishInterp = t
		end
	end
	return a[1] * startInterp + b[1] * finishInterp,a[2] * startInterp + b[2] * finishInterp,a[3] * startInterp + b[3] * finishInterp,a[4] * startInterp + b[4] * finishInterp
end

function Clerp(a,b,t)
	local qa = {QFCF(a)}
	local qb = {QFCF(b)}
	local ax,ay,az = a.x,a.y,a.z
	local bx,by,bz = b.x,b.y,b.z
	local _t = 1 - t
	return QTCF(_t * ax + t * bx,_t * ay + t * by,_t * az + t * bz,QS(qa,qb,t))
end

ArtificialHB = Instance.new("BindableEvent",script)
ArtificialHB.Name = "Heartbeat"

script:WaitForChild("Heartbeat")

frame = 1 / 30
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
script.Heartbeat:Fire()

game:GetService("RunService").Heartbeat:Connect(function(s,p)
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			script.Heartbeat:Fire()
			lastframe = tick()
		else
			for i = 1,math.floor(tf / frame) do
				script.Heartbeat:Fire()
			end
			lastframe = tick()
		end
		if tossremainder then
			tf = 0
		else
			tf = tf - frame * math.floor(tf / frame)
		end
	end
end)

function Swait(num)
	if num == 0 or num == nil then
		ArtificialHB.Event:Wait()
	else
		for i = 0,num do
			ArtificialHB.Event:Wait()
		end
	end
end
function swait(num)
	if num == 0 or num == nil then
		ArtificialHB.Event:Wait()
	else
		for i = 0,num do
			ArtificialHB.Event:Wait()
		end
	end
end
function CreateMesh(MESH,PARENT,MESHTYPE,MESHID,TEXTUREID,SCALE,OFFSET)
	local NEWMESH = Instance.new(MESH)
	if MESH == "SpecialMesh" then
		NEWMESH.MeshType = MESHTYPE
		if MESHID ~= "nil" and MESHID ~= "" and tonumber(MESHID) ~= nil then
			NEWMESH.MeshId = "rbxassetid://"..MESHID
		elseif MESHID ~= "nil" and MESHID ~= "" then
			NEWMESH.MeshId = MESHID
		end
		if TEXTUREID ~= "nil" and TEXTUREID ~= "" then
			NEWMESH.TextureId = "rbxassetid://"..TEXTUREID
		end
	end
	NEWMESH.Offset = OFFSET or Vector3.new()
	NEWMESH.Scale = SCALE
	NEWMESH.Parent = PARENT
	return NEWMESH
end

local S = Instance.new("Sound")
function CreateSound(ID,PARENT,VOLUME,PITCH,DOESLOOP)
	local NEWSOUND = nil
	coroutine.resume(coroutine.create(function()
		NEWSOUND = S:Clone()
		NEWSOUND.Parent = PARENT
		NEWSOUND.Volume = VOLUME
		NEWSOUND.Pitch = PITCH
		NEWSOUND.SoundId = "rbxassetid://"..ID
		NEWSOUND:play()
		if DOESLOOP == true then
			NEWSOUND.Looped = true
		else
			coroutine.resume(coroutine.create(function()
				pcall(function()
					repeat Swait() until NEWSOUND.Playing == false
					NEWSOUND:Destroy()
				end)
			end))
		end
	end))
	return NEWSOUND
end

function rayCast(Position,Direction,Range,Ignore)
	return workspace:FindPartOnRay(Ray.new(Position,Direction.unit * (Range or 999.999)),Ignore) 
end 		

function Effect(Table)
	local TYPE = (Table.EffectType or "Sphere")
	local SIZE = (Table.Size or Vector3.new(1,1,1))
	local ENDSIZE = (Table.Size2 or Vector3.new())
	local TRANSPARENCY = (Table.Transparency or 0)
	local ENDTRANSPARENCY = (Table.Transparency2 or 1)
	local CFRAME = (Table.CFrame or Torso.CFrame)
	local MOVEDIRECTION = (Table.MoveToPos or nil)
	local ROTATION1 = (Table.RotationX or 0)
	local ROTATION2 = (Table.RotationY or 0)
	local ROTATION3 = (Table.RotationZ or 0)
	local MATERIAL = (Table.Material or "Neon")
	local COLOR = (Table.Color or shade)
	local hOK,sOK,vOK = Color3.toHSV(COLOR)
	local TIME = (Table.Time or 45)
	local SOUNDID = (Table.SoundID or nil)
	local SOUNDPITCH = (Table.SoundPitch or nil)
	local SOUNDVOLUME = (Table.SoundVolume or nil)
	local USEBOOMERANGMATH = (Table.UseBoomerangMath or false)
	local BOOMERANG = (Table.Boomerang or 0)
	local SIZEBOOMERANG = (Table.SizeBoomerang or 0)
	coroutine.resume(coroutine.create(function()
		local PLAYSSOUND = false
		local SOUND = nil
		local EFFECT = CreatePart(3,Effects,MATERIAL,0,TRANSPARENCY,shade,"Effect",Vector3.new(1,1,1),true)
		if SOUNDID ~= nil and SOUNDPITCH ~= nil and SOUNDVOLUME ~= nil then
			PLAYSSOUND = true
			SOUND = CreateSound(SOUNDID,EFFECT,SOUNDVOLUME,SOUNDPITCH,false)
		end
		EFFECT.Color = COLOR
		local MSH = nil
		if TYPE == "Sphere" then
			MSH = CreateMesh2("SpecialMesh",EFFECT,"Sphere","","",SIZE,Vector3.new())
		elseif TYPE == "Block" or TYPE == "Box" then
			MSH = Instance.new("BlockMesh",EFFECT)
			MSH.Scale = SIZE
		elseif TYPE == "Wave" then
			MSH = CreateMesh2("SpecialMesh",EFFECT,"FileMesh","20329976","",SIZE,Vector3.new(0,0,-SIZE.X/8))
		elseif TYPE == "Ring" then
			MSH = CreateMesh2("SpecialMesh",EFFECT,"FileMesh","559831844","",Vector3.new(SIZE.X,SIZE.X,0.1),Vector3.new())
		elseif TYPE == "Slash" then
			MSH = CreateMesh2("SpecialMesh",EFFECT,"FileMesh","662586858","",Vector3.new(SIZE.X/10,0,SIZE.X/10),Vector3.new())
		elseif TYPE == "Round Slash" then
			MSH = CreateMesh2("SpecialMesh",EFFECT,"FileMesh","662585058","",Vector3.new(SIZE.X/10,0,SIZE.X/10),Vector3.new())
		elseif TYPE == "Swirl" then
			MSH = CreateMesh2("SpecialMesh",EFFECT,"FileMesh","168892432","",SIZE,Vector3.new())
		elseif TYPE == "Skull" then
			MSH = CreateMesh2("SpecialMesh",EFFECT,"FileMesh","4770583","",SIZE,Vector3.new())
		elseif TYPE == "Crystal" then
			MSH = CreateMesh2("SpecialMesh",EFFECT,"FileMesh","9756362","",SIZE,Vector3.new())
		end
		if MSH ~= nil then
			local BOOMR1 = 1+BOOMERANG/50
			local BOOMR2 = 1+SIZEBOOMERANG/50
			local MOVESPEED = nil
			if MOVEDIRECTION ~= nil then
				if USEBOOMERANGMATH == true then
					MOVESPEED = ((CFRAME.p - MOVEDIRECTION).Magnitude/TIME)*BOOMR1
				else
					MOVESPEED = ((CFRAME.p - MOVEDIRECTION).Magnitude/TIME)
				end
			end
			local GROWTH = nil
			if USEBOOMERANGMATH == true then
				GROWTH = (SIZE - ENDSIZE)*(BOOMR2+1)
			else
				GROWTH = (SIZE - ENDSIZE)
			end
			local TRANS = TRANSPARENCY - ENDTRANSPARENCY
			if TYPE == "Block" then
				EFFECT.CFrame = CFRAME*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360)))
			else
				EFFECT.CFrame = CFRAME
			end
			if USEBOOMERANGMATH == true then
				for LOOP = 1,TIME+1 do
					swait()
					MSH.Scale = MSH.Scale - (Vector3.new((GROWTH.X)*((1 - (LOOP/TIME)*BOOMR2)),(GROWTH.Y)*((1 - (LOOP/TIME)*BOOMR2)),(GROWTH.Z)*((1 - (LOOP/TIME)*BOOMR2)))*BOOMR2)/TIME
					if TYPE == "Wave" then
						MSH.Offset = Vector3.new(0,0,-MSH.Scale.Z/8)
					end
					EFFECT.Transparency = EFFECT.Transparency - TRANS/TIME
					if TYPE == "Block" then
						EFFECT.CFrame = CFRAME*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360)))
					else
						EFFECT.CFrame = EFFECT.CFrame*CFrame.Angles(math.rad(ROTATION1),math.rad(ROTATION2),math.rad(ROTATION3))
					end
					if MOVEDIRECTION ~= nil then
						local ORI = EFFECT.Orientation
						EFFECT.CFrame = CFrame.new(EFFECT.Position,MOVEDIRECTION)*CFrame.new(0,0,-(MOVESPEED)*((1 - (LOOP/TIME)*BOOMR1)))
						EFFECT.Orientation = ORI
					end
				end
			else
				for LOOP = 1,TIME+1 do
					swait()
					MSH.Scale = MSH.Scale - GROWTH/TIME
					if TYPE == "Wave" then
						MSH.Offset = Vector3.new(0,0,-MSH.Scale.Z/8)
					end
					EFFECT.Transparency = EFFECT.Transparency - TRANS/TIME
					if TYPE == "Block" then
						EFFECT.CFrame = CFRAME*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360)))
					else
						EFFECT.CFrame = EFFECT.CFrame*CFrame.Angles(math.rad(ROTATION1),math.rad(ROTATION2),math.rad(ROTATION3))
					end
					if MOVEDIRECTION ~= nil then
						local ORI = EFFECT.Orientation
						EFFECT.CFrame = CFrame.new(EFFECT.Position,MOVEDIRECTION)*CFrame.new(0,0,-MOVESPEED)
						EFFECT.Orientation = ORI
					end
				end
			end
			EFFECT.Transparency = 1
			if PLAYSSOUND == false then
				EFFECT:Destroy()
			else
				repeat swait() until EFFECT:FindFirstChildOfClass("Sound") == nil
				EFFECT:Destroy()
			end
		else
			if PLAYSSOUND == false then
				EFFECT:Destroy()
			else
				repeat swait() until EFFECT:FindFirstChildOfClass("Sound") == nil
				EFFECT:Destroy()
			end
		end
	end))
end

function bosschatfunc(text,color,watval)
	for i,v in pairs(game:GetService("Players"):GetPlayers()) do
		coroutine.resume(coroutine.create(function()
			if v.PlayerGui:FindFirstChild("Dialog")~= nil then
				v.PlayerGui:FindFirstChild("Dialog"):destroy()
			end
			local scrg = Instance.new("ScreenGui",v.PlayerGui)
			scrg.Name = "Dialog"
			local txtlb = Instance.new("TextLabel",scrg)
			txtlb.Text = ""
			txtlb.Font = "Bodoni"
			txtlb.TextColor3 = Color3.new(0,0,0)
			txtlb.TextStrokeTransparency = 0
			txtlb.BackgroundTransparency = 0.75
			txtlb.BackgroundColor3 = Color3.new(0,0,0)
			txtlb.TextStrokeColor3 = color
			txtlb.TextScaled = true
			txtlb.Size = UDim2.new(1,0,0.25,0)
			txtlb.TextXAlignment = "Left"
			txtlb.Position = UDim2.new(0,0,0.75 + 1,0)
			local txtlb2 = Instance.new("TextLabel",scrg)
			txtlb2.Text = "Snake Banisher V4:"
			txtlb2.Font = "Arcade"
			txtlb2.TextColor3 = Color3.new(0,0,0)
			txtlb2.TextStrokeTransparency = 0
			txtlb2.BackgroundTransparency = 1
			txtlb2.TextStrokeColor3 = color
			txtlb2.TextSize = 40
			txtlb2.Size = UDim2.new(1,0,0.25,0)
			txtlb2.TextXAlignment = "Left"
			txtlb2.Position = UDim2.new(0,0,1,0)
			local fvalen = 0.55
			local fval = -0.49
			coroutine.resume(coroutine.create(function()
				while true do
					Swait()
					if MODE == "Sanity" then
						txtlb.Rotation = math.random(-1,1)
						txtlb2.Rotation = math.random(-1,1)
						txtlb.Position = txtlb.Position + UDim2.new(0,math.random(-1,1)/5,0,math.random(-1,1)/5)
						txtlb2.Position = txtlb2.Position + UDim2.new(0,math.random(-1,1)/5,0,math.random(-1,1)/5)
						txtlb.TextStrokeColor3 = BrickColor.random().Color
						txtlb2.TextStrokeColor3 = BrickColor.random().Color
					end
				end
			end))
			coroutine.resume(coroutine.create(function()
				while true do
					Swait()
					if scrg.Parent ~= nil then
						fvalen = fvalen - 0.0001
					elseif scrg.Parent == nil then
						break
					end
				end
			end))
			local flol = 1.75
			local flil = 1.6
			coroutine.resume(coroutine.create(function()
				for i = 0, 9 do
					Swait()
					fval = fval + 0.05
					flol = flol - 0.1
					flil = flil - 0.1
					txtlb.Text = ""
					txtlb.Position = UDim2.new(0,0,flol,0)
					txtlb2.Position = UDim2.new(0,0,flil,0)
				end
				txtlb.Text = text
				wait(watval)
				local valinc = 0
				for i = 0, 99 do
					Swait()
					valinc = valinc + 0.0001
					flol = flol + valinc
					flil = flil + valinc
					txtlb.Rotation = txtlb.Rotation + valinc*20
					txtlb2.Rotation = txtlb2.Rotation - valinc*50
					txtlb.Position = UDim2.new(0,0,flol,0)
					txtlb2.Position = UDim2.new(0,0,flil,0)
					txtlb.TextStrokeTransparency = txtlb.TextStrokeTransparency + 0.01
					txtlb.TextTransparency = txtlb.TextTransparency + 0.01
					txtlb2.TextStrokeTransparency = txtlb2.TextStrokeTransparency + 0.01
					txtlb2.TextTransparency = txtlb2.TextTransparency + 0.01
					txtlb.BackgroundTransparency = txtlb.BackgroundTransparency + 0.0025
				end
				scrg:Destroy()
			end))
		end))
	end
end

function warnedpeople2(whom)
	for i,v in pairs(game:GetService("Players"):GetPlayers()) do
		coroutine.resume(coroutine.create(function()
			if v.PlayerGui:FindFirstChild("ARRIVAL")~= nil then
				v.PlayerGui:FindFirstChild("ARRIVAL"):destroy()
			end
			local droppingFrame = false
			local scrg = Instance.new("ScreenGui",v.PlayerGui)
			scrg.Name = "ARRIVAL"
			local mainFrame = Instance.new("Frame", scrg)
			mainFrame.Name = "MainFrame"
			mainFrame.BackgroundTransparency = 1
			mainFrame.BorderSizePixel = 0
			mainFrame.Size = UDim2.new(1, 0, -0.013, 100)
			mainFrame.Position = UDim2.new(0, 0, 0.365, 0)
			local TextFrame = Instance.new("TextLabel",mainFrame)
			TextFrame.Name = "TextFrame"
			TextFrame.Font = "Arcade"
			TextFrame.Text = ""
			TextFrame.TextScaled = true
			TextFrame.TextSize = 9
			TextFrame.TextStrokeTransparency = 1
			TextFrame.BackgroundTransparency = 1
			TextFrame.TextColor3 = Color3.new(sick.PlaybackLoudness/500,0,0)
			TextFrame.TextStrokeColor3 = Color3.new(0, 0, 0)
			TextFrame.Size = UDim2.new(1, 0, 0, 92)
			TextFrame.Position = UDim2.new(0, 0, 0, 0)
			spawn(function() Hellifytext(TextFrame) end)
			local fvalen = 0.55
			local fval = -0.49
			coroutine.resume(coroutine.create(function()
				while true do
					Swait()
					mainFrame.BackgroundColor3 = Color3.new(0,0,0)
					mainFrame.BorderColor3 = Color3.new(0, 0, 0)
					if(not droppingFrame)then
						mainFrame.Rotation = 0 - 2 * math.cos(SINE / 24)
					end
					TextFrame.TextStrokeTransparency = 0
				end
			end))
			for i = 1,string.len(whom),1 do
				TextFrame.Text = string.sub(whom,1,i)
				wait(0.2)
			end
			wait(2)
			droppingFrame = true
			mainFrame.Rotation = 0
			local vinc2 = 1
			for i = 0, 99 do
				Swait()
				vinc2 = vinc2 + 0.25
				mainFrame.Position = mainFrame.Position + UDim2.new(0,0,0.0005*vinc2,0)
			end
			scrg:Destroy()
		end))
	end
end

function warnedpeople(text)
	for i,v in pairs(game:GetService("Players"):GetPlayers()) do
		coroutine.resume(coroutine.create(function()
			if v.PlayerGui:FindFirstChild("Spinny")~= nil then
				v.PlayerGui:FindFirstChild("Spinny"):destroy()
			end
			local scrg = Instance.new("ScreenGui",v.PlayerGui)
			scrg.Name = "Spinny"
			local wobble = Instance.new("Frame",scrg)
			wobble.Name = "Wobble"
			wobble.BackgroundTransparency = 0.5
			wobble.Size = UDim2.new(1.1,0,1.1,0)
			wobble.Position = UDim2.new(-0.08,0,0.943,0)
			local wobble2 = Instance.new("Frame",scrg)
			wobble2.Name = "wobble2"
			wobble2.BackgroundTransparency = 0.5
			wobble2.Size = UDim2.new(1.1,0,0.09,0)
			wobble2.Position = UDim2.new(-0.08,0,0.878,0)
			local Visuals = Instance.new("Frame",scrg)
			Visuals.Name = "Visuals"
			Visuals.BackgroundTransparency = 0.3
			Visuals.Size = UDim2.new(0,100,0,100)
			Visuals.Position = UDim2.new(0.462,0,0.826,0)
			local glow = Instance.new("ImageLabel",scrg)
			glow.Name = "glow"
			glow.BackgroundTransparency = 1
			glow.ImageTransparency = 0
			glow.Image = "rbxassetid://2344870656"
			glow.Size = UDim2.new(0,0,0,0)
			glow.Position = UDim2.new(0.026,0,-0.235,0)
			local Visuals2 = Instance.new("Frame",scrg)
			Visuals2.Name = "Visuals2"
			Visuals2.BackgroundTransparency = 0.3
			Visuals2.Size = UDim2.new(0,50,0,50)
			Visuals2.Position = UDim2.new(0.48,0,0.867,0)
			local TextFrame = Instance.new("TextLabel",scrg)
			TextFrame.Name = "Farmer"
			TextFrame.Font = "Arcade"
			TextFrame.Text = text
			TextFrame.TextScaled = true
			TextFrame.TextSize = 60
			TextFrame.BackgroundTransparency = 1
			TextFrame.Size = UDim2.new(0.8,0,0,42)
			TextFrame.Position = UDim2.new(0.11,0,0.867,0)
			local fvalen = 0.55
			local fval = -0.49
			coroutine.resume(coroutine.create(function()
				while true do
					Swait()
					TextFrame.TextColor3 = Color3.new(0.4,0,0)
					TextFrame.TextStrokeColor3 = Color3.new(0, 0, 0)
					TextFrame.TextStrokeTransparency = 0
					TextFrame.Rotation = 0 + MRANDOM(-3, 3)
					TextFrame.Position = UDim2.new(0.11, 0 + MRANDOM(-3, 3), 0.867, 0 + MRANDOM(-3, 3))
					TextFrame.Font = Enum.Font.Arcade
					glow.ImageColor3 = Color3.new(0, 0, 0)
					wobble.Rotation = 0 - 2 * math.cos(SINE / 24)
					wobble2.Rotation = 0 - 2 * math.cos(SINE / 30)
					wobble2.BackgroundColor3 = Color3.new(0.1,0.1,0.1)
					wobble2.BorderColor3 = Color3.new(0.4,0,0)
					wobble2.BorderSizePixel = 2
					Visuals.Rotation = Visuals.Rotation + MRANDOM(-5, 5)
					Visuals2.Rotation = Visuals2.Rotation + MRANDOM(-10, 10)
					Visuals.BackgroundColor3 = Color3.new(0.1,0.1,0.1)
					Visuals.BorderColor3 = Color3.new(0.4,0,0)
					Visuals2.BackgroundColor3 = Color3.new(0.1,0.1,0.1)
					Visuals2.BorderColor3 = Color3.new(0.4,0,0)
					wobble.BackgroundColor3 = Color3.new(0.1,0.1,0.1)
					wobble.BorderColor3 = Color3.new(0.4,0,0)
					wobble.BorderSizePixel = 2
				end
			end))
			coroutine.resume(coroutine.create(function()
				for i = 0, 205 do
					Swait()
				end
				scrg:Destroy()
			end))
		end))
	end
end


function ApplyAoEpp(POSITION,RANGE)
	for index, CHILD in pairs(workspace:GetDescendants()) do
		if CHILD.ClassName == "Model" and CHILD ~= Character then
			local HUM = CHILD:FindFirstChildOfClass("Humanoid")
			if HUM then
				local TORSO = CHILD:FindFirstChild("Torso") or CHILD:FindFirstChild("UpperTorso")
				if TORSO then
					if (TORSO.Position - POSITION).Magnitude <= RANGE then
						Killpp(CHILD)
					end
				end
			end
		end
	end
end

function MagicSpherepp(size,waitt,cframe,color)
	local wave = CreatePart(3, Effects, "Neon", 0, 1, BRICKC(color), "Effect", Vector3.new(1,1,1))
	local mesh = IT("SpecialMesh",wave)
	mesh.MeshType = "Sphere"
	mesh.Scale = Vector3.new(size,size,size)
	mesh.Offset = Vector3.new(0,0,0)
	wave.CFrame = cframe
	coroutine.resume(coroutine.create(function(PART)
		for i = 1, waitt do
			Swait()
			mesh.Scale = mesh.Scale - Vector3.new(size/waitt,size/waitt,size/waitt)
			wave.Transparency = wave.Transparency - (1/waitt)
		end
		wave:remove()
	end))
end

function CreateRing2(SIZE,DOESROT,ROT,WAIT,CFRAME,COLOR,GROW)
	local wave = CreatePart(3, Effects, "Neon", 0, 0.5, BRICKC(COLOR), "Effect", VT(0,0,0))
	local mesh = IT("SpecialMesh",wave)
	mesh.MeshType = "FileMesh"
	mesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
	mesh.Scale = SIZE
	mesh.Offset = VT(0,0,0)
	wave.CFrame = CFRAME
	coroutine.resume(coroutine.create(function(PART)
		for i = 1, WAIT do
			Swait()
			mesh.Scale = mesh.Scale + GROW
			if DOESROT == true then
				wave.CFrame = wave.CFrame * CFrame.fromEulerAnglesXYZ(0,ROT,0)
			end
			wave.Transparency = wave.Transparency + (0.5/WAIT)
			if wave.Transparency > 0.99 then
				wave:remove()
			end
		end
	end))
end

function MagicSphere3(SIZE,WAIT,CFRAME,COLOR,GROW)
	local wave = CreatePart(3, Effects, "Neon", 0, 0, BRICKC(COLOR), "Effect", VT(1,1,1), true)
	local mesh = IT("SpecialMesh",wave)
	mesh.MeshType = "Sphere"
	mesh.Scale = SIZE
	mesh.Offset = VT(0,0,0)
	wave.CFrame = CFRAME
	coroutine.resume(coroutine.create(function(PART)
		for i = 1, WAIT do
			Swait()
			mesh.Scale = mesh.Scale + GROW
			wave.Transparency = wave.Transparency + (1/WAIT)
			if wave.Transparency > 0.99 then
				wave:remove()
			end
		end
	end))
end

function Kill2(Char)
	local NewCharacter = IT("Model",Effects)
	NewCharacter.Name = "Ow im ded ;-;"
	for _, c in pairs(Char:GetDescendants()) do
		if c:IsA("BasePart") and c.Transparency == 0 then
			if c.Parent == Char then
			end
			c:BreakJoints()
			c.Material = "Glass"
			c.Color = C3(1,0,0)
			c.CanCollide = true
			c.Transparency = 0.3
			if c:FindFirstChildOfClass("SpecialMesh") then
				c:FindFirstChildOfClass("SpecialMesh").TextureId = ""
			end
			if c.Name == "Head" then
				c:ClearAllChildren()
				c.Size = VT(c.Size.Y,c.Size.Y,c.Size.Y)
			end
			if c.ClassName == "MeshPart" then
				c.TextureID = ""
			end
			if c:FindFirstChildOfClass("BodyPosition") then
				c:FindFirstChildOfClass("BodyPosition"):remove()
			end
			if c:FindFirstChildOfClass("ParticleEmitter") then
				c:FindFirstChildOfClass("ParticleEmitter"):remove()
			end
			c.Parent = NewCharacter
			c.Name = "DeadPart"
			c.Velocity = VT(MRANDOM(-45,45),MRANDOM(-45,45),MRANDOM(-45,45))/15
			c.RotVelocity = VT(MRANDOM(-45,45),MRANDOM(-15,85),MRANDOM(-45,45))
		end
	end
	Char:remove()
	Debris:AddItem(NewCharacter,5)
end

function ApplyAoE4(POSITION, RANGE, MINDMG, MAXDMG, FLING, IZBANISH)
	local CHILDREN = workspace:GetDescendants()
	for index, CHILD in pairs(CHILDREN) do
		if CHILD.ClassName == "Model" and CHILD ~= Character then
			local HUM = CHILD:FindFirstChildOfClass("Humanoid")
			if HUM then
				local TORSO = CHILD:FindFirstChild("Torso") or CHILD:FindFirstChild("UpperTorso")
				if TORSO and RANGE >= (TORSO.Position - POSITION).Magnitude then
					if IZBANISH == true then
						Kill2(CHILD)
					else
						local DMG = MRANDOM(MINDMG, MAXDMG)
						ApplyDamage(HUM, DMG, TORSO)
					end
					if FLING > 0 then
						for _, c in pairs(CHILD:GetChildren()) do
							if c:IsA("BasePart") then
								local bv = Instance.new("BodyVelocity")
								bv.maxForce = Vector3.new(1000000000, 1000000000, 1000000000)
								bv.velocity = CF(POSITION, TORSO.Position).lookVector * FLING
								bv.Parent = c
								Debris:AddItem(bv, 0.05)
							end
						end
					end
				end
			end
		end
	end
end


function CheckTableForString(Table, String)
	for i, v in pairs(Table) do
		if string.find(string.lower(String), string.lower(v)) then
			return true
		end
	end
	return false
end

function CheckIntangible(Hit)
	local ProjectileNames = {"Water", "Arrow", "Projectile", "Effect", "Rail", "Lightning", "Bullet"}
	if Hit and Hit.Parent then
		if ((not Hit.CanCollide or CheckTableForString(ProjectileNames, Hit.Name)) and not Hit.Parent:FindFirstChild("Humanoid")) then
			return true
		end
	end
	return false
end

function CastZapRay(StartPos, Vec, Length, Ignore, DelayIfHit)
	local Direction = CFrame.new(StartPos, Vec).lookVector
	local Ignore = ((type(Ignore) == "table" and Ignore) or {Ignore})
	local RayHit, RayPos, RayNormal = game:GetService("Workspace"):FindPartOnRayWithIgnoreList(Ray.new(StartPos, Direction * Length), Ignore)
	if RayHit and CheckIntangible(RayHit) then
		if DelayIfHit then
			wait()
		end
		RayHit, RayPos, RayNormal = CastZapRay((RayPos + (Vec * 0.01)), Vec, (Length - ((StartPos - RayPos).magnitude)), Ignore, DelayIfHit)
	end
	return RayHit, RayPos, RayNormal
end

function MagicSphere(SIZE,WAIT,CFRAME,COLOR,GROW)
	local wave = CreatePart(3, Effects, "Neon", 0, 0, BRICKC(COLOR), "Effect", VT(1,1,1), true)
	local mesh = IT("SpecialMesh",wave)
	mesh.MeshType = "Sphere"
	mesh.Scale = SIZE
	mesh.Offset = VT(0,0,0)
	wave.CFrame = CFRAME
	coroutine.resume(coroutine.create(function(PART)
		for i = 1, WAIT do
			Swait()
			mesh.Scale = mesh.Scale + GROW
			wave.Transparency = wave.Transparency + (1/WAIT)
			if wave.Transparency > 0.99 then
				wave:remove()
			end
		end
	end))
end

function WACKYEFFECTpp(Table)
	local TYPE = Table.EffectType or "Sphere"
	local SIZE = Table.Size or Vector3.new(1, 1, 1)
	local ENDSIZE = Table.Size2 or Vector3.new(0, 0, 0)
	local TRANSPARENCY = Table.Transparency or 0
	local ENDTRANSPARENCY = Table.Transparency2 or 1
	local CFRAME = Table.CFrame or Torso.CFrame
	local MOVEDIRECTION = Table.MoveToPos or nil
	local ROTATION1 = Table.RotationX or 0
	local ROTATION2 = Table.RotationY or 0
	local ROTATION3 = Table.RotationZ or 0
	local MATERIAL = Table.Material --or "Neon"
	local COLOR = Table.Color or Color3.new(1, 1, 1)
	local TIME = Table.Time or 45
	local SOUNDID = Table.SoundID or nil
	local SOUNDPITCH = Table.SoundPitch or nil
	local SOUNDVOLUME = Table.SoundVolume or nil
	local USEBOOMERANGMATH = Table.UseBoomerangMath or false
	local BOOMERANG = Table.Boomerang or 0
	local SIZEBOOMERANG = Table.SizeBoomerang or 0
	coroutine.resume(coroutine.create(function()
		local PLAYSSOUND = false
		local SOUND
		local EFFECT = CreatePart(3, Effects, MATERIAL, 0, TRANSPARENCY, BRICKC("Pearl"), "Effect", Vector3.new(1, 1, 1), true)
		if SOUNDID ~= nil and SOUNDPITCH ~= nil and SOUNDVOLUME ~= nil then
			PLAYSSOUND = true
			SOUND = CreateSound(SOUNDID, EFFECT, SOUNDVOLUME, SOUNDPITCH, false)
		end
		EFFECT.Color = COLOR
		local MSH
		if TYPE == "Sphere" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "Sphere", "", "", SIZE, Vector3.new(0, 0, 0))
		elseif TYPE == "Block" or TYPE == "Box" then
			MSH = IT("BlockMesh", EFFECT)
			MSH.Scale = SIZE
		elseif TYPE == "Wave" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "FileMesh", "20329976", "", SIZE, Vector3.new(0, 0, -SIZE.X / 8))
		elseif TYPE == "Ring" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "FileMesh", "559831844", "", Vector3.new(SIZE.X, SIZE.X, 0.1), Vector3.new(0, 0, 0))
		elseif TYPE == "Slash" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "FileMesh", "662586858", "", Vector3.new(SIZE.X / 10, 0, SIZE.X / 10), Vector3.new(0, 0, 0))
		elseif TYPE == "Round Slash" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "FileMesh", "662585058", "", Vector3.new(SIZE.X / 10, 0, SIZE.X / 10), Vector3.new(0, 0, 0))
		elseif TYPE == "Swirl" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "FileMesh", "168892432", "", SIZE, Vector3.new(0, 0, 0))
		elseif TYPE == "Skull" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "FileMesh", "4770583", "", SIZE, Vector3.new(0, 0, 0))
		elseif TYPE == "Star" then 
			MSH = CreateMesh2("SpecialMesh", EFFECT, "FileMesh", "2760116123", "", SIZE, Vector3.new(0,0,0))   	
		elseif TYPE == "Crystal" then
			MSH = CreateMesh2("SpecialMesh", EFFECT, "FileMesh", "450656451", "", SIZE, Vector3.new(0, 0, 0))
		end
		coroutine.resume(coroutine.create(function()
			if MSH ~= nil then
				local BOOMR1 = 1 + BOOMERANG / 50
				local BOOMR2 = 1 + SIZEBOOMERANG / 50
				local MOVESPEED = nil
				if MOVEDIRECTION ~= nil then
					MOVESPEED = (CFRAME.p - MOVEDIRECTION).Magnitude/TIME
				end
				local GROWTH
				if USEBOOMERANGMATH == true then
					GROWTH = (SIZE - ENDSIZE) * (BOOMR2 + 1)
				else
					GROWTH = SIZE - ENDSIZE
				end
				local TRANS = TRANSPARENCY - ENDTRANSPARENCY
				if TYPE == "Block" then
					EFFECT.CFrame = CFRAME * CFrame.Angles(math.rad(MRANDOM(0, 360)), math.rad(MRANDOM(0, 360)), math.rad(MRANDOM(0, 360)))
				else
					EFFECT.CFrame = CFRAME
				end
				if USEBOOMERANGMATH == true then
					for LOOP = 1, TIME + 1 do
						Swait()
						MSH.Scale = MSH.Scale - Vector3.new(GROWTH.X * (1 - LOOP / TIME * BOOMR2), GROWTH.Y * (1 - LOOP / TIME * BOOMR2), GROWTH.Z * (1 - LOOP / TIME * BOOMR2)) * BOOMR2 / TIME
						if TYPE == "Wave" then
							MSH.Offset = Vector3.new(0, 0, -MSH.Scale.Z / 8)
						end
						EFFECT.Transparency = EFFECT.Transparency - TRANS / TIME
						if TYPE == "Block" then
							EFFECT.CFrame = CFRAME * CFrame.Angles(math.rad(MRANDOM(0, 360)), math.rad(MRANDOM(0, 360)), math.rad(MRANDOM(0, 360)))
						else
							EFFECT.CFrame = EFFECT.CFrame * CFrame.Angles(math.rad(ROTATION1), math.rad(ROTATION2), math.rad(ROTATION3))
						end
						if MOVEDIRECTION ~= nil then
							local ORI = EFFECT.Orientation
							EFFECT.CFrame = CF(EFFECT.Position, MOVEDIRECTION) * CFrame.new(0, 0, -MOVESPEED * (1 - LOOP / TIME * BOOMR1))
							EFFECT.Orientation = ORI
						end
					end
				else
					for LOOP = 1, TIME + 1 do
						Swait()
						MSH.Scale = MSH.Scale - GROWTH / TIME
						if TYPE == "Wave" then
							MSH.Offset = Vector3.new(0, 0, -MSH.Scale.Z / 8)
						end
						EFFECT.Transparency = EFFECT.Transparency - TRANS / TIME
						if TYPE == "Block" then
							EFFECT.CFrame = CFRAME * CFrame.Angles(math.rad(MRANDOM(0, 360)), math.rad(MRANDOM(0, 360)), math.rad(MRANDOM(0, 360)))
						else
							EFFECT.CFrame = EFFECT.CFrame * CFrame.Angles(math.rad(ROTATION1), math.rad(ROTATION2), math.rad(ROTATION3))
						end
						if MOVEDIRECTION ~= nil then
							local ORI = EFFECT.Orientation
							EFFECT.CFrame = CFrame.new(EFFECT.Position,MOVEDIRECTION)*CFrame.new(0,0,-MOVESPEED)
							EFFECT.Orientation = ORI
						end
					end
				end
				EFFECT.Transparency = 1
				if PLAYSSOUND == false then
					EFFECT:remove()
				else
					repeat
						Swait()
					until EFFECT:FindFirstChildOfClass("Sound") == nil
					EFFECT:remove()
				end
			elseif PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat
					Swait()
				until EFFECT:FindFirstChildOfClass("Sound") == nil
				EFFECT:remove()
			end
		end))
		return EFFECT
	end))
end   

function Killpp(dude)
	coroutine.resume(coroutine.create(function()
		if dude and dude ~= Character then
			local h = dude:FindFirstChildOfClass("Humanoid")
			local t = dude:FindFirstChild("Torso") or dude:FindFirstChild("UpperTorso") or dude:FindFirstChild("HumanoidRootPart")
			local deathp = Instance.new("Part",Effects) deathp.Anchored = true deathp.Size = Vector3.new() deathp.Transparency = 1 deathp.CanCollide = false deathp.CFrame = t.CFrame
			coroutine.wrap(function()
				deathp:Destroy()
			end)
			if h then
				if dude then
					for i,v in next, dude:children() do if v:IsA"LocalScript" or v:IsA"Script" or v:IsA"ModuleScript" then v.Disabled = true wait() v:destroy() end end
					CreateSound(4086042977, deathp, 5, .75)
					if h then h.MaxHealth = 0 h.Health = 0 end
					for _, c in pairs(dude:GetChildren()) do if c:IsA("BasePart") then c:BreakJoints() c:Destroy() end end
					dude:BreakJoints()
					dude:Destroy()
					for i = 0, math.random(3,7) do
						WACKYEFFECTpp({Time = math.random(145,165), EffectType = "Sphere", Size = Vector3.new(10,10,10), Size2 = Vector3.new(5,80,5), Transparency = 0, Transparency2 = 1, CFrame = deathp.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))), MoveToPos = nil, RotationX = nil, RotationY = nil, RotationZ = nil, Material = "Neon", Color = Color3.new(sick.PlaybackLoudness/500,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 35})
					end
					WACKYEFFECTpp({Time = math.random(72,82), EffectType = "Sphere", Size = Vector3.new(10,10,10), Size2 = Vector3.new(40,40,40), Transparency = 0.6, Transparency2 = 1, CFrame = deathp.CFrame, MoveToPos = nil, RotationX = nil, RotationY = nil, RotationZ = nil, Material = "Neon", Color = Color3.new(sick.PlaybackLoudness/500,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 35})
					for i = 0, math.random(5,9) do
						WACKYEFFECTpp({Time = math.random(36,41), EffectType = "Sphere", Size = Vector3.new(18,18,18), Size2 = Vector3.new(6,6,6), Transparency = 0, Transparency2 = 1, CFrame = deathp.CFrame, MoveToPos = deathp.CFrame*CFrame.new(math.random(-95,95),math.random(-95,95),math.random(-95,95)).p, RotationX = nil, RotationY = nil, RotationZ = nil, Material = "Neon", Color = Color3.new(sick.PlaybackLoudness/500,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 45, SizeBoomerang = 40})
					end
				end
			end
		end
	end))
end

local FONTS = {
	Enum.Font.Antique,
	Enum.Font.Arcade,
	Enum.Font.Arial,
	Enum.Font.ArialBold,
	Enum.Font.Bodoni,
	Enum.Font.Cartoon,
	Enum.Font.Code,
	Enum.Font.Fantasy,
	Enum.Font.Garamond,
	Enum.Font.Highway,
	Enum.Font.Legacy,
	Enum.Font.SciFi,
	Enum.Font.SourceSans,
	Enum.Font.SourceSansBold,
	Enum.Font.SourceSansItalic,
	Enum.Font.SourceSansLight,
	Enum.Font.SourceSansSemibold,
	Enum.Font.DenkOne,
	Enum.Font.Merriweather,
	Enum.Font.PermanentMarker,
	Enum.Font.Creepster,
	Enum.Font.GrenzeGotisch,
	Enum.Font.SpecialElite,
	Enum.Font.FredokaOne
}


function chatfunc(text)
	local chat = coroutine.wrap(function()
		local oldthing = Head:FindFirstChild("TalkingBillBoard")
		if oldthing then
			oldthing:Destroy()
		end
		local naeeym2 = Instance.new("BillboardGui",Head)
		naeeym2.Size = UDim2.new(0,9999,2,0)
		naeeym2.StudsOffset = Vector3.new(0,4.5,0)
		naeeym2.Adornee = Character.HumanoidRootPart
		naeeym2.Name = "TalkingBillBoard"
		local tecks2 = Instance.new("TextLabel",naeeym2)
		tecks2.BackgroundTransparency = 1
		tecks2.BorderSizePixel = 0
		tecks2.Text = ""
		tecks2.Font = "SourceSansLight"
		tecks2.TextScaled = true
		tecks2.TextStrokeTransparency = 0
		coroutine.resume(coroutine.create(function()
			while tecks2:IsDescendantOf(game) do
				local hBRUH,sBRUH,vBRUH = Color3.toHSV(Torso.NeonParts.Color)
				tecks2.TextColor3 = Color3.fromHSV(hBRUH,sBRUH,vBRUH/2)
				swait()
			end
		end))
		tecks2.TextStrokeColor3 = shade
		tecks2.Size = UDim2.new(1,0,1,0)
		local tecks3 = Instance.new("TextLabel",naeeym2)
		tecks3.BackgroundTransparency = 1
		tecks3.BorderSizePixel = 0
		tecks3.Text = ""
		tecks3.Font = "Arcade"
		tecks3.TextScaled = true
		tecks3.TextStrokeTransparency = 0
		spawn(function() Hellifytext(tecks2) end)
		coroutine.resume(coroutine.create(function()
			while tecks3:IsDescendantOf(game) do
				tecks3.TextColor3 = Torso.NeonParts.Color
				swait()
			end
		end))
		tecks3.TextStrokeColor3 = shade
		tecks3.Size = UDim2.new(1,0,1,0)
		coroutine.resume(coroutine.create(function()
			while naeeym2 ~= nil do
				swait()
				tecks2.Position = UDim2.new(0,math.random(-3,3),0,math.random(-3,3)) 
				tecks3.Position = UDim2.new(0,math.random(-3,3),0,math.random(-3,3)) 
				tecks2.Font = FONTS[MRANDOM(1, #FONTS)]
				tecks3.Font = FONTS[MRANDOM(1, #FONTS)]
			end
		end))
		for i = 1,string.len(text) do
			CreateSound(4740147336,Head,5,1)
			swait(2)
			tecks2.Text = string.sub(text,1,i)
			tecks3.Text = string.sub(text,1,i)
		end
		swait(120)
		for i = 1,50 do
			swait()
			tecks2.Position = tecks2.Position - UDim2.new(0,math.random(-3,3),0,math.random(-3,3))
			tecks3.Position = tecks2.Position - UDim2.new(0,math.random(-3,3),0,math.random(-3,3)) 
			tecks2.Rotation = tecks2.Rotation + math.random(-2,2)
			tecks3.Rotation = tecks3.Rotation + math.random(-2,2)
			tecks2.TextStrokeTransparency = i/50
			tecks2.TextTransparency = tecks2.TextStrokeTransparency
			tecks3.TextStrokeTransparency = tecks2.TextStrokeTransparency
			tecks3.TextTransparency = tecks2.TextStrokeTransparency
		end
		naeeym2:Destroy()
	end)
	chat()
end
function onChatted(msg)
	chatfunc(msg)
end

Player.Chatted:connect(onChatted)

function CreateWeld(parent,part0,part1,C1X,C1Y,C1Z,C1Xa,C1Ya,C1Za,C0X,C0Y,C0Z,C0Xa,C0Ya,C0Za)
	local weld = Instance.new("Weld")
	weld.Parent = parent
	weld.Part0 = part0
	weld.Part1 = part1
	weld.C1 = CFrame.new(C1X,C1Y,C1Z)*CFrame.Angles(C1Xa,C1Ya,C1Za)
	weld.C0 = CFrame.new(C0X,C0Y,C0Z)*CFrame.Angles(C0Xa,C0Ya,C0Za)
	return weld
end


--//=================================\\
--||	     RAGDOLL STUFF           ||
--\\=================================//

function recurse(root,callback,i)
	i= i or 0
	for _,v in pairs(root:GetChildren()) do
		i = i + 1
		callback(i,v)

		if #v:GetChildren() > 0 then
			i = recurse(v,callback,i)
		end
	end

	return i
end

function ragdollJoint(character, part0, part1, attachmentName, className, properties)
	attachmentName = attachmentName.."RigAttachment"
	local constraint = Instance.new(className.."Constraint")
	constraint.Attachment0 = part0:FindFirstChild(attachmentName)
	constraint.Attachment1 = part1:FindFirstChild(attachmentName)
	constraint.Name = "RagdollConstraint"..part1.Name

	for _,propertyData in next,properties or {} do
		constraint[propertyData[1]] = propertyData[2]
	end

	constraint.Parent = character
end

function getAttachment0(character, attachmentName)
	for _,child in next,character:GetChildren() do
		local attachment = child:FindFirstChild(attachmentName)
		if attachment then
			return attachment
		end
	end
end

local function weldBetween(a, b)
	local weldd = Instance.new("ManualWeld")
	weldd.Part0 = a
	weldd.Part1 = b
	weldd.C0 = CFrame.new()
	weldd.C1 = b.CFrame:inverse() * a.CFrame
	weldd.Parent = a
	return weldd
end

function ArtificialHitbox(Part)
	local HITBOX = CreatePart(3, Part, "Metal", 0, 1, "Really black", "Hitbox", Part.Size/2, false)
	HITBOX.CanCollide = true
	HITBOX.CFrame = Part.CFrame
	weldBetween(Part,HITBOX)
end

function R15Ragdoll(character,KeepArms)
	character:BreakJoints()
	coroutine.resume(coroutine.create(function()
		recurse(character, function(_,v)
			if v:IsA("Attachment") then
				v.Axis = Vector3.new(0, 1, 0)
				v.SecondaryAxis = Vector3.new(0, 0, 1)
				v.Rotation = Vector3.new(0, 0, 0)
			end
		end)
		for _,child in next,character:GetChildren() do
			if child:IsA("Accoutrement") then
				for _,part in next,child:GetChildren() do
					if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
						local attachment1 = part:FindFirstChildOfClass("Attachment")
						local attachment0 = getAttachment0(character,attachment1.Name)
						if attachment0 and attachment1 then
							local constraint = Instance.new("HingeConstraint")
							constraint.Attachment0 = attachment0
							constraint.Attachment1 = attachment1
							constraint.LimitsEnabled = true
							constraint.UpperAngle = 0
							constraint.LowerAngle = 0
							constraint.Parent = character
						end
						ArtificialHitbox(part)
					elseif part.Name == "HumanoidRootPart" then
						part:remove()
					end
				end
			end
		end

		ragdollJoint(character,character.LowerTorso, character.UpperTorso, "Waist", "BallSocket", {
			{"LimitsEnabled",true};
			{"UpperAngle",5};
		})
		if character:FindFirstChild("Head") then
			ragdollJoint(character,character.UpperTorso, character.Head, "Neck", "BallSocket", {
				{"LimitsEnabled",true};
				{"UpperAngle",15};
			})
		end

		local handProperties = {
			{"LimitsEnabled", true};
			{"UpperAngle",0};
			{"LowerAngle",0};
		}
		ragdollJoint(character,character.LeftLowerArm, character.LeftHand, "LeftWrist", "Hinge", handProperties)
		ragdollJoint(character,character.RightLowerArm, character.RightHand, "RightWrist", "Hinge", handProperties)

		local shinProperties = {
			{"LimitsEnabled", true};
			{"UpperAngle", 0};
			{"LowerAngle", -75};
		}
		ragdollJoint(character,character.LeftUpperLeg, character.LeftLowerLeg, "LeftKnee", "Hinge", shinProperties)
		ragdollJoint(character,character.RightUpperLeg, character.RightLowerLeg, "RightKnee", "Hinge", shinProperties)

		local footProperties = {
			{"LimitsEnabled", true};
			{"UpperAngle", 15};
			{"LowerAngle", -45};
		}
		ragdollJoint(character,character.LeftLowerLeg, character.LeftFoot, "LeftAnkle", "Hinge", footProperties)
		ragdollJoint(character,character.RightLowerLeg, character.RightFoot, "RightAnkle", "Hinge", footProperties)
		if KeepArms == true then
			ragdollJoint(character,character.UpperTorso, character.RightUpperArm, "RightShoulder", "BallSocket")
			ragdollJoint(character,character.RightUpperArm, character.RightLowerArm, "RightElbow", "BallSocket")
			ragdollJoint(character,character.UpperTorso, character.LeftUpperArm, "LeftShoulder", "BallSocket")
			ragdollJoint(character,character.LeftUpperArm, character.LeftLowerArm, "LeftElbow", "BallSocket")
		end
		ragdollJoint(character,character.LowerTorso, character.LeftUpperLeg, "LeftHip", "BallSocket")
		ragdollJoint(character,character.LowerTorso, character.RightUpperLeg, "RightHip", "BallSocket")
		Debris:AddItem(character,5)
	end))
end

function Ragdoll(Character2,CharTorso,KeepArms)
	coroutine.resume(coroutine.create(function()
		Character2:BreakJoints()
		local hum = Character2:findFirstChild("Humanoid")
		hum:remove()
		local function Scan(ch)
			local e
			for e = 1,#ch do
				Scan(ch[e]:GetChildren())
				if ch[e].ClassName == "Weld" or ch[e].ClassName == "Motor6D" then
					ch[e]:remove()
				end
			end
		end
		local NEWHUM = IT("Humanoid")
		NEWHUM.Name = "Corpse"
		NEWHUM.Health = 0
		NEWHUM.MaxHealth = 0
		NEWHUM.PlatformStand = true
		NEWHUM.Parent = Character2
		NEWHUM.DisplayDistanceType = "None"

		local ch = Character2:GetChildren()
		local i
		for i = 1,#ch do
			if ch[i].Name == "THandle1" or ch[i].Name == "THandle2" then
				ch[i]:remove()
			end
		end

		local Torso2 = Character2.Torso
		local movevector = Vector3.new()

		if Torso2 then
			movevector = CFrame.new(CharTorso.Position,Torso2.Position).lookVector
			local Head = Character2:FindFirstChild("Head")
			if Head then
				local Neck = Instance.new("Weld")
				Neck.Name = "Neck"
				Neck.Part0 = Torso2
				Neck.Part1 = Head
				Neck.C0 = CFrame.new(0, 1.5, 0)
				Neck.C1 = CFrame.new()
				Neck.Parent = Torso2

			end
			local Limb = Character2:FindFirstChild("Right Arm")
			if Limb and KeepArms == true then

				Limb.CFrame = Torso2.CFrame * CFrame.new(1.5, 0, 0)
				local Joint = Instance.new("Glue")
				Joint.Name = "RightShoulder"
				Joint.Part0 = Torso2
				Joint.Part1 = Limb
				Joint.C0 = CFrame.new(1.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
				Joint.C1 = CFrame.new(-0, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
				Joint.Parent = Torso2

				local B = Instance.new("Part")
				B.TopSurface = 0
				B.BottomSurface = 0
				B.formFactor = "Symmetric"
				B.Size = Vector3.new(1, 1, 1)
				B.Transparency = 1
				B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
				B.Parent = Character2
				local W = Instance.new("Weld")
				W.Part0 = Limb
				W.Part1 = B
				W.C0 = CFrame.new(0, -0.5, 0)
				W.Parent = Limb

			end
			local Limb = Character2:FindFirstChild("Left Arm")
			if Limb and KeepArms == true then

				Limb.CFrame = Torso2.CFrame * CFrame.new(-1.5, 0, 0)
				local Joint = Instance.new("Glue")
				Joint.Name = "LeftShoulder"
				Joint.Part0 = Torso2
				Joint.Part1 = Limb
				Joint.C0 = CFrame.new(-1.5, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
				Joint.C1 = CFrame.new(0, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
				Joint.Parent = Torso2

				local B = Instance.new("Part")
				B.TopSurface = 0
				B.BottomSurface = 0
				B.formFactor = "Symmetric"
				B.Size = Vector3.new(1, 1, 1)
				B.Transparency = 1
				B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
				B.Parent = Character2
				local W = Instance.new("Weld")
				W.Part0 = Limb
				W.Part1 = B
				W.C0 = CFrame.new(0, -0.5, 0)
				W.Parent = Limb

			end
			local Limb = Character2:FindFirstChild("Right Leg")
			if Limb then

				Limb.CFrame = Torso2.CFrame * CFrame.new(0.5, -2, 0)
				local Joint = Instance.new("Glue")
				Joint.Name = "RightHip"
				Joint.Part0 = Torso2
				Joint.Part1 = Limb
				Joint.C0 = CFrame.new(0.5, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
				Joint.C1 = CFrame.new(0, 1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
				Joint.Parent = Torso2

				local B = Instance.new("Part")
				B.TopSurface = 0
				B.BottomSurface = 0
				B.formFactor = "Symmetric"
				B.Size = Vector3.new(1, 1, 1)
				B.Transparency = 1
				B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
				B.Parent = Character2
				local W = Instance.new("Weld")
				W.Part0 = Limb
				W.Part1 = B
				W.C0 = CFrame.new(0, -0.5, 0)
				W.Parent = Limb

			end
			local Limb = Character2:FindFirstChild("Left Leg")
			if Limb then

				Limb.CFrame = Torso2.CFrame * CFrame.new(-0.5, -2, 0)
				local Joint = Instance.new("Glue")
				Joint.Name = "LeftHip"
				Joint.Part0 = Torso2
				Joint.Part1 = Limb
				Joint.C0 = CFrame.new(-0.5, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
				Joint.C1 = CFrame.new(-0, 1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
				Joint.Parent = Torso2

				local B = Instance.new("Part")
				B.TopSurface = 0
				B.BottomSurface = 0
				B.formFactor = "Symmetric"
				B.Size = Vector3.new(1, 1, 1)
				B.Transparency = 1
				B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
				B.Parent = Character2
				local W = Instance.new("Weld")
				W.Part0 = Limb
				W.Part1 = B
				W.C0 = CFrame.new(0, -0.5, 0)
				W.Parent = Limb

			end
			--[
			local Bar = Instance.new("Part")
			Bar.TopSurface = 0
			Bar.BottomSurface = 0
			Bar.formFactor = "Symmetric"
			Bar.Size = Vector3.new(1, 1, 1)
			Bar.Transparency = 1
			Bar.CFrame = Torso2.CFrame * CFrame.new(0, 0.5, 0)
			Bar.Parent = Character2
			local Weld = Instance.new("Weld")
			Weld.Part0 = Torso2
			Weld.Part1 = Bar
			Weld.C0 = CFrame.new(0, 0.5, 0)
			Weld.Parent = Torso2
			--]]
		end
		Character2.Parent = workspace
		Debris:AddItem(Character2,5)

		return Character2,Torso2
	end))
end

--//=================================\\
--||	     WEAPON CREATION         ||
--\\=================================//

local AK = script.AK:Clone()
local AKWeld = AK.RightArm:WaitForChild'REF'
for i,v in pairs(AK.RightArm:GetChildren()) do
	v.Anchored = false
end
local SRightAWeld = IT("Weld")
SRightAWeld.Parent = RightArm
SRightAWeld.Part0 = RightArm
SRightAWeld.Part1 = AKWeld
SRightAWeld.Name = "AK47"
SRightAWeld.C1 = CF(0, 0, 0) * angles(0, 0, 0)
local BanishGun = AK
local HoleAK = BanishGun.Weapon.Hole
BanishGun.Parent = nil

local Sniper = script.Sniper:Clone()
local SniperWeld = Sniper.RightArm:WaitForChild'REF'
for i,v in pairs(Sniper.RightArm:GetChildren()) do
	v.Anchored = false
end
local SRightAWeld = IT("Weld")
SRightAWeld.Parent = RightArm
SRightAWeld.Part0 = RightArm
SRightAWeld.Part1 = SniperWeld
SRightAWeld.Name = "Sniper"
SRightAWeld.C1 = CF(0, 0, 0) * angles(0, 0, 0)
local SniperGun = Sniper
local SniperHole = SniperGun.Weapon.Hole
SniperGun.Parent = nil

local Katana = script.Katana:Clone()
local KatanaWeld = Katana.RightArm:WaitForChild'REF'
for i,v in pairs(Katana.RightArm:GetChildren()) do
	v.Anchored = false
end
local KATSRightAWeld = IT("Weld")
KATSRightAWeld.Parent = RightArm
KATSRightAWeld.Part0 = RightArm
KATSRightAWeld.Part1 = KatanaWeld
KATSRightAWeld.Name = "Katana"
KATSRightAWeld.C1 = CF(0, 0, 0) * angles(0, 0, 0)
local Katana = Katana
local KatanaHit = Katana.Weapon.Hitbox
Katana.Parent = nil

local WeaponPenis = IT("Model")
local Effects = IT("Folder", WeaponPenis)

New = function(Object, Parent, Name, Data)
	local Object = Instance.new(Object)
	for Index, Value in pairs(Data or {}) do
		Object[Index] = Value
	end
	Object.Parent = Parent
	Object.Name = Name
	return Object
end

local chara = Player.Character
local Rifle = WeaponPenis
Handaru = New("Part",Rifle,"Handaru",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.299999684, 0.899999976, 0.200000003),CFrame = CFrame.new(4.86797953, 9.56716633, -139.033096, 5.38420863e-10, 1.44063961e-09, 1, 0.939692974, -0.342020035, 4.30411262e-12, 0.342022955, 0.93970108, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("BlockMesh",Handaru,"Mesh",{Scale = Vector3.new(0.699999988, 0.800000012, 0.899999976),})
Weld = New("ManualWeld",Handaru,"Weld",{Part0 = Handaru,Part1 = RightArm,C0 = CFrame.new(0, 0, 0, 0, 0.939692974, 0.342020005, 0, -0.342020005, 0.939692974, 1, 0, 0),C1 = CFrame.new(-0.17155385, -1.13280964, 0.0381164551, -1, -0.000112917653, 0.000207058736, -0.000112889931, 1, 0.000133873371, -0.000207074263, 0.000133850204, -1.00000167),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.300000191, 0.200000003),CFrame = CFrame.new(4.86804056, 9.70005512, -138.636124, 1.32227007e-11, 1.53790924e-09, 1, 1.00000036, 0, 4.30411262e-12, 0, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(0.260647774, 0.327582359, 6.10351563e-05, -0.939698994, 0.34202221, 0, 0.34202221, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.299999744, 0.200000003, 0.200000003),CFrame = CFrame.new(4.86801004, 6.5500145, -138.486115, 1.32227007e-11, 1.53790924e-09, 1, 1.00000036, 0, 4.30411262e-12, 0, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-2.64811707, 1.54591751, 3.05175781e-05, -0.939698994, 0.34202221, 0, 0.34202221, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(1.19999969, 0.300000012, 0.200000003),CFrame = CFrame.new(4.86801004, 9.10005951, -138.636124, 1.32227007e-11, 1.53790924e-09, 1, 1.00000036, 0, 4.30411262e-12, 0, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-0.303163528, 0.532794952, 3.05175781e-05, -0.939698994, 0.34202221, 0, 0.34202221, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.0999999195, 0.200000003),CFrame = CFrame.new(4.86804056, 6.35001183, -138.486099, 1.53790924e-09, 1.32226452e-11, -1, 2.98023224e-08, 1.00000036, -4.30411262e-12, 1.00000894, -2.98023224e-08, -2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, 0, 1.00000668, 0, -1.00000668, 0, 0, 0, 0, 1),C1 = CFrame.new(-2.8360548, 1.6143322, 6.10351563e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.200000003, 0.100000001),CFrame = CFrame.new(4.9180131, 8.10003662, -138.486099, 1.32226452e-11, -1.53790924e-09, -1, 1.00000036, -2.98023224e-08, -4.30411262e-12, -2.98023224e-08, -1.00000894, -2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, -1.00000668, 0, 0, 0, 1),C1 = CFrame.new(-1.19156933, 1.01578903, 0.0500335693, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.200000003, 0.100000001),CFrame = CFrame.new(4.81800699, 8.10003662, -138.486099, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-1.19156933, 1.01578903, -0.0499725342, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.200000003, 0.100000001),CFrame = CFrame.new(4.86797953, 8.10003662, -138.436142, 1.32226452e-11, 1, -1.53790924e-09, 1.00000036, 4.30411262e-12, -2.98023224e-08, -2.98023224e-08, 2.29920261e-09, -1.00000894),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 0, -1, 0, -1.00000668, 0),C1 = CFrame.new(-1.17448044, 1.06274033, 0, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.200000003, 0.100000001),CFrame = CFrame.new(4.86805582, 8.10003662, -138.536102, 1.32226452e-11, -1, 1.53790924e-09, 1.00000036, -4.30411262e-12, 2.98023224e-08, -2.98023224e-08, -2.29920261e-09, 1.00000894),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 0, 1, 0, 1.00000668, 0),C1 = CFrame.new(-1.20866871, 0.968809128, 7.62939453e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.0999997631, 0.100000001, 0.100000001),CFrame = CFrame.new(4.9180131, 9.25004292, -138.33609, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0.0250000004, 0),Scale = Vector3.new(0.200000003, 0.5, 0.800000012),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-0.0596132278, 0.763422012, 0.0500335693, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999678, 0.400000006, 0.200000003),CFrame = CFrame.new(4.86801004, 8.84343719, -138.889923, -2.54032906e-10, 1.51684099e-09, 1, 0.984808087, 0.17364797, 4.30411262e-12, -0.17364952, 0.984816551, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1, 1, 0.899999976),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -0.984814465, -0.173649132, 0, -0.173649132, 0.984814465, 0, 0, 0, -1),C1 = CFrame.new(-0.631113052, 0.382074356, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.200000003, 0.100000001),CFrame = CFrame.new(4.86805582, 6.90001345, -138.536102, 1.32226452e-11, -1, 1.53790924e-09, 1.00000036, -4.30411262e-12, 2.98023224e-08, -2.98023224e-08, -2.29920261e-09, 1.00000894),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 0, 1, 0, 1.00000668, 0),C1 = CFrame.new(-2.33632183, 1.37924004, 7.62939453e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.200000003, 0.100000001),CFrame = CFrame.new(4.9180131, 7.5000248, -138.486099, 1.32226452e-11, -1.53790924e-09, -1, 1.00000036, -2.98023224e-08, -4.30411262e-12, -2.98023224e-08, -1.00000894, -2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, -1.00000668, 0, 0, 0, 1),C1 = CFrame.new(-1.75539589, 1.22100544, 0.0500335693, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.200000003, 0.100000001),CFrame = CFrame.new(4.81800699, 7.5000248, -138.486099, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-1.75539589, 1.22100544, -0.0499725342, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(1.49999988, 0.100000001, 0.100000001),CFrame = CFrame.new(4.9180131, 7.45002079, -138.536102, -1.32226452e-11, 1.53790924e-09, -1, -1.00000036, 2.98023224e-08, -4.30411262e-12, 2.98023224e-08, 1.00000894, -2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0.0250000004, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, 1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, 1),C1 = CFrame.new(-1.81948566, 1.19112206, 0.0500335693, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Size = Vector3.new(0.199999765, 0.100000001, 0.200000003),CFrame = CFrame.new(4.86801004, 6.50001335, -138.336105, -1.32226452e-11, 1.53790924e-09, -1, -1.00000036, 2.98023224e-08, -4.30411262e-12, 2.98023224e-08, 1.00000894, -2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0.0250000004, 0),Scale = Vector3.new(0.400000006, 0.600000024, 0.0500000007),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, 1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, 1),C1 = CFrame.new(-2.64379501, 1.70398521, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999975, 0.100000001, 0.100000001),CFrame = CFrame.new(4.86801004, 8.05001831, -138.636108, 1, -1.53790924e-09, 1.32226452e-11, 4.30411262e-12, -2.98023224e-08, 1.00000036, 2.29920261e-09, -1.00000894, -2.98023224e-08),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, -1.00000668, 0, -1.00000668, 0, 0),C1 = CFrame.new(-1.28987503, 0.891940117, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999559, 0.200000018, 0.200000003),CFrame = CFrame.new(4.86801004, 8.30002022, -138.586105, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-1.03784847, 0.853420258, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Size = Vector3.new(0.0999997631, 0.100000001, 0.100000001),CFrame = CFrame.new(4.9180131, 9.25004292, -138.33609, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0.0250000004, 0),Scale = Vector3.new(0.100000001, 0.600000024, 0.699999988),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-0.0596132278, 0.763422012, 0.0500335693, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.0999997631, 0.100000001, 0.200000003),CFrame = CFrame.new(4.86801004, 9.1500349, -138.336105, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0.0399999991, 0),Scale = Vector3.new(0.200000003, 0.200000003, 0.800000012),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-0.153590202, 0.797625542, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.200000003, 0.100000001),CFrame = CFrame.new(4.86797953, 7.5000248, -138.436142, 1.32226452e-11, 1, -1.53790924e-09, 1.00000036, 4.30411262e-12, -2.98023224e-08, -2.98023224e-08, 2.29920261e-09, -1.00000894),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 0, -1, 0, -1.00000668, 0),C1 = CFrame.new(-1.738307, 1.26795673, 0, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.200000003, 0.100000001),CFrame = CFrame.new(4.81800699, 7.20001698, -138.486099, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-2.0373106, 1.32361412, -0.0499725342, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.0999997631, 0.100000001, 0.200000003),CFrame = CFrame.new(4.86801004, 8.25003147, -138.33609, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0.0399999991, 0),Scale = Vector3.new(0.200000003, 0.200000003, 0.800000012),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-0.999316216, 1.10544491, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.200000003, 0.100000001),CFrame = CFrame.new(4.9180131, 6.90001297, -138.486099, 1.32226452e-11, -1.53790924e-09, -1, 1.00000036, -2.98023224e-08, -4.30411262e-12, -2.98023224e-08, -1.00000894, -2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, -1.00000668, 0, 0, 0, 1),C1 = CFrame.new(-2.31922245, 1.42622185, 0.0500335693, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.200000003, 0.100000001),CFrame = CFrame.new(4.81800699, 6.90001297, -138.486099, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-2.31922245, 1.42622185, -0.0499725342, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.0999997631, 0.100000001, 0.100000001),CFrame = CFrame.new(4.81800699, 9.25004292, -138.33609, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0.0250000004, 0),Scale = Vector3.new(0.200000003, 0.5, 0.800000012),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-0.0596132278, 0.763422012, -0.0499725342, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Bolt1 = New("Part",Rifle,"Bolt1",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.499999553, 0.200000003, 0.100000001),CFrame = CFrame.new(4.81800699, 8.85004425, -138.486099, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("BlockMesh",Bolt1,"Mesh",{Scale = Vector3.new(1, 0.400000006, 1.04999995),})
Weld = New("ManualWeld",Bolt1,"Weld",{Part0 = Bolt1,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-0.486792564, 0.759271622, -0.0499725342, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.200000003, 0.100000001),CFrame = CFrame.new(4.86797953, 7.20001793, -138.436142, 1.32226452e-11, 1, -1.53790924e-09, 1.00000036, 4.30411262e-12, -2.98023224e-08, -2.98023224e-08, 2.29920261e-09, -1.00000894),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 0, -1, 0, -1.00000668, 0),C1 = CFrame.new(-2.02022171, 1.37056446, 0, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.200000003, 0.100000001),CFrame = CFrame.new(4.9180131, 7.20001698, -138.486099, 1.32226452e-11, -1.53790924e-09, -1, 1.00000036, -2.98023224e-08, -4.30411262e-12, -2.98023224e-08, -1.00000894, -2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, -1.00000668, 0, 0, 0, 1),C1 = CFrame.new(-2.0373106, 1.32361412, 0.0500335693, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.0999997631, 0.100000001, 0.200000003),CFrame = CFrame.new(4.86801004, 8.35003948, -138.33609, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0.0399999991, 0),Scale = Vector3.new(0.200000003, 0.200000003, 0.800000012),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-0.905339241, 1.07124043, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.200000003, 0.100000001),CFrame = CFrame.new(4.86805582, 7.5000248, -138.536102, 1.32226452e-11, -1, 1.53790924e-09, 1.00000036, -4.30411262e-12, 2.98023224e-08, -2.98023224e-08, -2.29920261e-09, 1.00000894),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 0, 1, 0, 1.00000668, 0),C1 = CFrame.new(-1.77249527, 1.17402458, 7.62939453e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.200000003, 0.100000001),CFrame = CFrame.new(4.86797953, 6.90001297, -138.436142, 1.32226452e-11, 1, -1.53790924e-09, 1.00000036, 4.30411262e-12, -2.98023224e-08, -2.98023224e-08, 2.29920261e-09, -1.00000894),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 0, -1, 0, -1.00000668, 0),C1 = CFrame.new(-2.30213356, 1.47317219, 0, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(1.49999988, 0.100000001, 0.100000001),CFrame = CFrame.new(4.81800699, 7.45002079, -138.436096, -1.32226452e-11, -1.53790924e-09, 1, -1.00000036, -2.98023224e-08, 4.30411262e-12, 2.98023224e-08, -1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0.0250000004, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, 1.00000668, 0, 0, 0, -1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-1.78528309, 1.28509235, -0.0499725342, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.200000003, 0.100000001),CFrame = CFrame.new(4.86805582, 7.20001793, -138.536102, 1.32226452e-11, -1, 1.53790924e-09, 1.00000036, -4.30411262e-12, 2.98023224e-08, -2.98023224e-08, -2.29920261e-09, 1.00000894),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 0, 1, 0, 1.00000668, 0),C1 = CFrame.new(-2.05440998, 1.27663231, 7.62939453e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
BoltP2 = New("Part",Rifle,"BoltP2",{Material = Enum.Material.SmoothPlastic,Transparency = 1,Transparency = 1,Size = Vector3.new(0.0999995545, 0.200000003, 0.100000001),CFrame = CFrame.new(4.71800089, 9.05003452, -138.486099, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("BlockMesh",BoltP2,"Mesh",{Offset = Vector3.new(-0.0399999991, 0, 0),Scale = Vector3.new(0.200000003, 0.200000003, 1.20000005),})
Weld = New("ManualWeld",BoltP2,"Weld",{Part0 = BoltP2,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-0.298863411, 0.690872192, -0.149978638, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.0999997631, 0.100000001, 0.200000003),CFrame = CFrame.new(4.86801004, 9.05004311, -138.33609, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0.0399999991, 0),Scale = Vector3.new(0.200000003, 0.200000003, 0.800000012),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-0.247550964, 0.831825256, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(1.49999988, 0.100000001, 0.100000001),CFrame = CFrame.new(4.9180131, 7.45002079, -138.436096, 1.32226452e-11, -1.53790924e-09, -1, 1.00000036, -2.98023224e-08, -4.30411262e-12, -2.98023224e-08, -1.00000894, -2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0.0250000004, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, -1.00000668, 0, 0, 0, 1),C1 = CFrame.new(-1.78528309, 1.28509235, 0.0500335693, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.330000043, 0.100000001, 0.200000018),CFrame = CFrame.new(4.86801004, 10.4435368, -138.676941, 1.44968448e-09, 5.13570408e-10, 1, 0.342020035, -0.939692914, 4.30411262e-12, 0.93970108, 0.342023075, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -0.34202221, 0.939699054, 0, 0.939699054, 0.342022151, 0, 0, 0, -1),C1 = CFrame.new(0.945329666, 0.0349359512, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(1.49999964, 0.100000001, 0.200000003),CFrame = CFrame.new(4.86801004, 10.475091, -138.861252, -5.13568965e-10, 1.44968504e-09, 1, 0.939693391, 0.342019081, 4.30411262e-12, -0.342022091, 0.939701438, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -0.939699411, -0.342021286, 0, -0.342021257, 0.939699411, 0, 0, 0, -1),C1 = CFrame.new(0.911945343, -0.149044991, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.0999997631, 0.100000001, 0.200000003),CFrame = CFrame.new(4.86801004, 8.95003605, -138.33609, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0.0399999991, 0),Scale = Vector3.new(0.200000003, 0.200000003, 0.800000012),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-0.341526985, 0.866029739, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.0999997631, 0.100000001, 0.200000003),CFrame = CFrame.new(4.86801004, 8.75003719, -138.33609, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0.0399999991, 0),Scale = Vector3.new(0.200000003, 0.200000003, 0.800000012),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-0.529464722, 0.934432983, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.200000003, 0.200000003),CFrame = CFrame.new(4.86804056, 9.70004368, -138.486099, 1.53790924e-09, 1.32226452e-11, -1, 2.98023224e-08, 1.00000036, -4.30411262e-12, 1.00000894, -2.98023224e-08, -2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Sphere,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, 0, 1.00000668, 0, -1.00000668, 0, 0, 0, 0, 1),C1 = CFrame.new(0.311944008, 0.468552589, 6.10351563e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(1.09999979, 0.100000001, 0.200000003),CFrame = CFrame.new(4.86801004, 8.75003815, -138.436096, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-0.563667297, 0.840460777, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.0999999866, 0.200000003),CFrame = CFrame.new(4.86797953, 9.75094795, -139.391876, 5.38420808e-10, 1.44063961e-09, 1, 0.939692974, -0.342020005, 4.30411262e-12, 0.342022926, 0.93970108, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1, 1, 0.800000012),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -0.939698994, 0.34202221, 0, 0.34202221, 0.939698994, 0, 0, 0, -1),C1 = CFrame.new(0.049990654, -0.399991989, 0, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.399999917, 0.200000003),CFrame = CFrame.new(4.86804056, 9.50004482, -138.486099, 1.53790924e-09, 1.32226452e-11, -1, 2.98023224e-08, 1.00000036, -4.30411262e-12, 1.00000894, -2.98023224e-08, -2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, 0, 1.00000668, 0, -1.00000668, 0, 0, 0, 0, 1),C1 = CFrame.new(0.124007225, 0.536956787, 6.10351563e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.630000234, 0.100000001, 0.200000018),CFrame = CFrame.new(4.86801004, 11.1861582, -138.831116, 1.53790924e-09, -1.32226452e-11, 1, 2.98023224e-08, -1.00000036, 4.30411262e-12, 1.00000894, 2.98023224e-08, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, 0, 1.00000668, 0, 1.00000668, 0, 0, 0, 0, -1),C1 = CFrame.new(1.59043694, -0.36392498, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Size = Vector3.new(0.0999997631, 0.100000001, 0.100000001),CFrame = CFrame.new(4.81800699, 9.25004292, -138.33609, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0.0250000004, 0),Scale = Vector3.new(0.100000001, 0.600000024, 0.699999988),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-0.0596132278, 0.763422012, -0.0499725342, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.0999997631, 0.100000001, 0.200000003),CFrame = CFrame.new(4.86801004, 8.65003014, -138.33609, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0.0399999991, 0),Scale = Vector3.new(0.200000003, 0.200000003, 0.800000012),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-0.623440742, 0.968637466, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999975, 0.100000016, 0.400000006),CFrame = CFrame.new(4.86801004, 8.30003548, -138.736115, 1, -1.53790924e-09, 1.32226452e-11, 4.30411262e-12, -2.98023224e-08, 1.00000036, 2.29920261e-09, -1.00000894, -2.98023224e-08),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, -1.00000668, 0, -1.00000668, 0, 0),C1 = CFrame.new(-1.08913803, 0.712458611, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.200000003, 0.100000001),CFrame = CFrame.new(4.81800699, 7.80001593, -138.486099, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-1.47349644, 1.11840248, -0.0499725342, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.199999765, 0.100000001, 0.200000003),CFrame = CFrame.new(4.86801004, 6.50001335, -138.336105, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0.0250000004, 0),Scale = Vector3.new(0.5, 0.5, 0.100000001),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-2.64379501, 1.70398521, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.0999997631, 0.100000001, 0.200000003),CFrame = CFrame.new(4.86801004, 8.45003128, -138.336105, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0.0399999991, 0),Scale = Vector3.new(0.200000003, 0.200000003, 0.800000012),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-0.811378479, 1.03704071, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999975, 0.300000012, 0.300000012),CFrame = CFrame.new(4.86801004, 9.23582172, -138.853729, 1, -5.13568965e-10, 1.44968504e-09, 4.30411262e-12, 0.939693391, 0.342019081, 2.29920261e-09, -0.342022091, 0.939701438),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.300000012, 0.200000003, 0.600000024),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, 0, 0, -1, -0.939699411, -0.342021286, 0, -0.342021257, 0.939699411, 0),C1 = CFrame.new(-0.250016212, 0.281872749, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.200000003, 0.100000001),CFrame = CFrame.new(4.86797953, 7.80001593, -138.436142, 1.32226452e-11, 1, -1.53790924e-09, 1.00000036, 4.30411262e-12, -2.98023224e-08, -2.98023224e-08, 2.29920261e-09, -1.00000894),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 0, -1, 0, -1.00000668, 0),C1 = CFrame.new(-1.45640755, 1.16535378, 0, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.200000003, 0.100000001),CFrame = CFrame.new(4.9180131, 7.80001593, -138.486099, 1.32226452e-11, -1.53790924e-09, -1, 1.00000036, -2.98023224e-08, -4.30411262e-12, -2.98023224e-08, -1.00000894, -2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, -1.00000668, 0, 0, 0, 1),C1 = CFrame.new(-1.47349644, 1.11840248, 0.0500335693, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.199999988, 0.200000003),CFrame = CFrame.new(4.86797953, 9.63987923, -139.379089, 1.44063961e-09, 1, 5.38420808e-10, -0.342020005, 4.30411262e-12, 0.939692974, 0.93970108, 2.29920261e-09, 0.342022926),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("CylinderMesh",Part,"Mesh",{Scale = Vector3.new(1, 0.800000012, 1),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, 0.34202221, 0.939698994, 0, 0, 0, -1, -0.939698994, 0.34202221, 0),C1 = CFrame.new(-0.0500078201, -0.349992752, 0, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.0999997631, 0.100000001, 0.200000003),CFrame = CFrame.new(4.86801004, 8.55003834, -138.336105, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0.0399999991, 0),Scale = Vector3.new(0.200000003, 0.200000003, 0.800000012),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-0.717402458, 1.00283623, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999678, 0.200000003, 0.200000003),CFrame = CFrame.new(4.86801004, 9.20003986, -138.986115, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1, 0.200000003, 0.899999976),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-0.328917503, 0.169712067, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(1.49999988, 0.100000001, 0.100000001),CFrame = CFrame.new(4.81800699, 7.45002079, -138.536102, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0.0250000004, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-1.81948566, 1.19112206, -0.0499725342, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.299999684, 0.800000012, 0.200000003),CFrame = CFrame.new(4.86797953, 9.55004978, -138.986099, 5.38420808e-10, 1.44063961e-09, 1, 0.939692974, -0.342020005, 4.30411262e-12, 0.342022926, 0.93970108, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1, 1, 0.800000012),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -0.939698994, 0.34202221, 0, 0.34202221, 0.939698994, 0, 0, 0, -1),C1 = CFrame.new(-1.14440918e-05, 0.0500144958, 0, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.0999997631, 0.100000001, 0.200000003),CFrame = CFrame.new(4.86801004, 8.85004425, -138.33609, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0.0399999991, 0),Scale = Vector3.new(0.200000003, 0.200000003, 0.800000012),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-0.435488701, 0.9002285, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(1.49999964, 0.100000001, 0.200000003),CFrame = CFrame.new(4.86801004, 10.4500523, -138.536102, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(0.999621391, 0.165052414, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.0999999195, 0.200000003),CFrame = CFrame.new(4.86804056, 6.35001183, -138.486099, 1.53790924e-09, 1.32226452e-11, -1, 2.98023224e-08, 1.00000036, -4.30411262e-12, 1.00000894, -2.98023224e-08, -2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("CylinderMesh",Part,"Mesh",{Scale = Vector3.new(0.800000012, 1.04999995, 0.800000012),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, 0, 1.00000668, 0, -1.00000668, 0, 0, 0, 0, 1),C1 = CFrame.new(-2.8360548, 1.6143322, 6.10351563e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.19999969, 0.200000003, 0.100000001),CFrame = CFrame.new(4.86805582, 7.80001593, -138.536102, 1.32226452e-11, -1, 1.53790924e-09, 1.00000036, -4.30411262e-12, 2.98023224e-08, -2.98023224e-08, -2.29920261e-09, 1.00000894),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
Mesh = New("BlockMesh",Part,"Mesh",{Offset = Vector3.new(0, -0, -0.0250000004),Scale = Vector3.new(1, 0.5, 0.5),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 0, 1, 0, 1.00000668, 0),C1 = CFrame.new(-1.49059582, 1.07142258, 7.62939453e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Mag = New("Model",Rifle,"Mag",{})
MagPart = New("Part",Mag,"MagPart",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999678, 1.00000012, 0.200000003),CFrame = CFrame.new(4.86801004, 8.80870724, -139.086884, -2.54032906e-10, 1.51684099e-09, 1, 0.984808087, 0.17364797, 4.30411262e-12, -0.17364952, 0.984816551, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("BlockMesh",MagPart,"Mesh",{Scale = Vector3.new(0.899999976, 1, 0.699999988),})
Weld = New("ManualWeld",MagPart,"Weld",{Part0 = MagPart,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -0.984814465, -0.173649132, 0, -0.173649132, 0.984814465, 0, 0, 0, -1),C1 = CFrame.new(-0.731114388, 0.208864212, 3.05175781e-05, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Part = New("Part",Mag,"Part",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.0999996886, 1.00000012, 0.200000003),CFrame = CFrame.new(4.86801004, 8.95642948, -139.11293, -2.54032906e-10, 1.51684099e-09, 1, 0.984808087, 0.17364797, 4.30411262e-12, -0.17364952, 0.984816551, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.200000003, 0.899999976, 0.800000012),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MagPart,C0 = CFrame.new(0, 0, 0, -0.984814465, -0.173649132, 0, -0.173649132, 0.984814465, 0, 0, 0, -1),C1 = CFrame.new(0.150000572, 1.43051147e-06, 0, -0.984814465, -0.173649132, 0, -0.173649132, 0.984814465, 0, 0, 0, -1),})
Part = New("Part",Mag,"Part",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.0999996886, 1.00000012, 0.200000003),CFrame = CFrame.new(4.86801004, 8.85794735, -139.095566, -2.54032906e-10, 1.51684099e-09, 1, 0.984808087, 0.17364797, 4.30411262e-12, -0.17364952, 0.984816551, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.200000003, 0.899999976, 0.800000012),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MagPart,C0 = CFrame.new(0, 0, 0, -0.984814465, -0.173649132, 0, -0.173649132, 0.984814465, 0, 0, 0, -1),C1 = CFrame.new(0.0499992371, 1.43051147e-06, 0, -0.984814465, -0.173649132, 0, -0.173649132, 0.984814465, 0, 0, 0, -1),})
Part = New("Part",Mag,"Part",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.0999996886, 1.00000012, 0.200000003),CFrame = CFrame.new(4.86801004, 8.75946617, -139.078201, -2.54032906e-10, 1.51684099e-09, 1, 0.984808087, 0.17364797, 4.30411262e-12, -0.17364952, 0.984816551, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.200000003, 0.899999976, 0.800000012),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MagPart,C0 = CFrame.new(0, 0, 0, -0.984814465, -0.173649132, 0, -0.173649132, 0.984814465, 0, 0, 0, -1),C1 = CFrame.new(-0.0500011444, 1.43051147e-06, 0, -0.984814465, -0.173649132, 0, -0.173649132, 0.984814465, 0, 0, 0, -1),})
Part = New("Part",Mag,"Part",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.0999996886, 1.00000012, 0.200000003),CFrame = CFrame.new(4.86801004, 8.66098499, -139.060837, -2.54032906e-10, 1.51684099e-09, 1, 0.984808087, 0.17364797, 4.30411262e-12, -0.17364952, 0.984816551, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.200000003, 0.899999976, 0.800000012),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = MagPart,C0 = CFrame.new(0, 0, 0, -0.984814465, -0.173649132, 0, -0.173649132, 0.984814465, 0, 0, 0, -1),C1 = CFrame.new(-0.150001526, 9.53674316e-07, 0, -0.984814465, -0.173649132, 0, -0.173649132, 0.984814465, 0, 0, 0, -1),})
Part = New("Part",Rifle,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.499999553, 0.200000003, 0.100000001),CFrame = CFrame.new(4.81800699, 8.85004425, -138.486099, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.949999988, 0.349999994, 1.02499998),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-0.486792564, 0.759271622, -0.0499725342, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
MuzzleFlash = New("Part",Rifle,"MuzzleFlash",{Transparency = 1,Transparency = 1,Size = Vector3.new(0.100000001, 0.100000001, 0.100000001),CFrame = CFrame.new(4.86804056, 6.25002193, -138.486115, 1.53790924e-09, 1.32227007e-11, -1, 0, 1.00000036, -4.30411262e-12, 1.00000894, 0, -2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Weld = New("ManualWeld",MuzzleFlash,"Weld",{Part0 = MuzzleFlash,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, 0, 1.00000668, 0, -1.00000668, 0, 0, 0, 0, 1),C1 = CFrame.new(-2.93001747, 1.64852142, 6.10351563e-05, -0.939698994, 0.34202221, 0, 0.34202221, 0.939698994, 0, 0, 0, -1),})
BoltP1 = New("Part",Rifle,"BoltP1",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.0999995545, 0.200000003, 0.100000001),CFrame = CFrame.new(4.71800089, 8.65003014, -138.486099, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("BlockMesh",BoltP1,"Mesh",{Offset = Vector3.new(-0.0399999991, 0, 0),Scale = Vector3.new(0.200000003, 0.200000003, 1.20000005),})
Weld = New("ManualWeld",BoltP1,"Weld",{Part0 = BoltP1,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-0.674744606, 0.827680588, -0.149978638, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Bolt2 = New("Part",Rifle,"Bolt2",{Material = Enum.Material.SmoothPlastic,Transparency = 1,Transparency = 1,Size = Vector3.new(0.0999995619, 0.200000003, 0.100000001),CFrame = CFrame.new(4.81800699, 9.05004692, -138.486099, 1.32226452e-11, 1.53790924e-09, 1, 1.00000036, 2.98023224e-08, 4.30411262e-12, -2.98023224e-08, 1.00000894, 2.29920261e-09),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("BlockMesh",Bolt2,"Mesh",{Scale = Vector3.new(1, 0.400000006, 1.04999995),})
Weld = New("ManualWeld",Bolt2,"Weld",{Part0 = Bolt2,Part1 = Handaru,C0 = CFrame.new(0, 0, 0, -1.00000668, 0, 0, 0, 1.00000668, 0, 0, 0, -1),C1 = CFrame.new(-0.298851967, 0.690867424, -0.0499725342, -0.939698994, 0.34202224, 0, 0.34202224, 0.939698994, 0, 0, 0, -1),})
Rifle.Parent = nil

coroutine.resume(coroutine.create(function()
	while true do
		Swait()
		for _, c in pairs(WeaponPenis:GetDescendants()) do
			if c.ClassName == "Part" and c.Name ~= "Eye" and c.Parent ~= Effects and c.Parent.Parent ~= Effects then
				c.Material = "Glass"
				c.Color = Color3.fromRGB(math.random(0,255),0,0)
			elseif c.ClassName == "Part" and c.Name == "Eye" then
				c.Color = Color3.fromRGB(math.random(0,255),0,0)
				c.Material = "Neon"
			end
		end
	end
end))

coroutine.resume(coroutine.create(function()
	while true do
		Swait()
		for _, c in pairs(Mag:GetDescendants()) do
			if c.ClassName == "Part" and c.Name ~= "Eye" and c.Parent ~= Effects and c.Parent.Parent ~= Effects then
				c.Material = "Glass"
				c.Color = Color3.fromRGB(math.random(0,255),0,0)
			elseif c.ClassName == "Part" and c.Name == "Eye" then
				c.Color = Color3.fromRGB(math.random(0,255),0,0)
				c.Material = "Neon"
			end
		end
	end
end))

local PlayerSize = 1
local FT,FRA,FLA,FRL,FLL = Instance.new("SpecialMesh"),Instance.new("SpecialMesh"),Instance.new("SpecialMesh"),Instance.new("SpecialMesh"),Instance.new("SpecialMesh")
FT.MeshId,FT.Scale = "rbxasset://fonts/torso.mesh",Vector3.new(PlayerSize,PlayerSize,PlayerSize)
FRA.MeshId,FRA.Scale = "rbxasset://fonts/rightarm.mesh",Vector3.new(PlayerSize,PlayerSize,PlayerSize)
FLA.MeshId,FLA.Scale = "rbxasset://fonts/leftarm.mesh",Vector3.new(PlayerSize,PlayerSize,PlayerSize)
FRL.MeshId,FRL.Scale = "rbxasset://fonts/rightleg.mesh",Vector3.new(PlayerSize,PlayerSize,PlayerSize)
FLL.MeshId,FLL.Scale = "rbxasset://fonts/leftleg.mesh",Vector3.new(PlayerSize,PlayerSize,PlayerSize)
--//=================================\\
--||	ATTACK FUNCTIONS AND STUFF
--\\=================================//

function SnakeGod()
	ATTACK = true
	Rooted = true
	CreateSound(363808674, Torso, 10, 1, false)
	for i=0, 1.2, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0, 0, 0 + 0.35 * math.cos(SINE / 2)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CFrame.new(0, 0, 0 + ((1) - 1)) * CFrame.Angles(math.rad(5), math.rad(25), math.rad(0)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.25, 0.5, -0.5) * CFrame.Angles(math.rad(100), math.rad(0), math.rad(-50)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.25, 0.35, -0.35) * CFrame.Angles(math.rad(70), math.rad(0), math.rad(60)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1, -1 - 0.35 * math.cos(SINE / 2), -0.01) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -1 - 0.35 * math.cos(SINE / 2), -0.01) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.15 / Animation_Speed)
	end
	CreateSound(363808674, Torso, 10, 1, false)
	for i=0, 1.2, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0, 0, 0 + 0.35 * math.cos(SINE / 2)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CFrame.new(0, 0, 0 + ((1) - 1)) * CFrame.Angles(math.rad(5), math.rad(-25), math.rad(0)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.25, 0.5, -0.5) * CFrame.Angles(math.rad(100), math.rad(0), math.rad(-90)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.25, 0.35, -0.35) * CFrame.Angles(math.rad(70), math.rad(0), math.rad(90)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1, -1 - 0.35 * math.cos(SINE / 2), -0.01) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -1 - 0.35 * math.cos(SINE / 2), -0.01) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.15 / Animation_Speed)
	end
	CreateSound(363808674, Torso, 10, 1, false)
	for i=0, 1.2, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0, 0, 0 + 0.35 * math.cos(SINE / 2)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CFrame.new(0, 0, 0 + ((1) - 1)) * CFrame.Angles(math.rad(5), math.rad(25), math.rad(0)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.25, 0.5, -0.5) * CFrame.Angles(math.rad(100), math.rad(0), math.rad(-50)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.25, 0.35, -0.35) * CFrame.Angles(math.rad(70), math.rad(0), math.rad(60)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1, -1 - 0.35 * math.cos(SINE / 2), -0.01) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -1 - 0.35 * math.cos(SINE / 2), -0.01) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.15 / Animation_Speed)
	end
	CreateSound(363808674, Torso, 10, 1, false)
	for i=0, 1.2, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0, 0, 0 + 0.35 * math.cos(SINE / 2)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CFrame.new(0, 0, 0 + ((1) - 1)) * CFrame.Angles(math.rad(5), math.rad(-25), math.rad(0)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.25, 0.5, -0.5) * CFrame.Angles(math.rad(100), math.rad(0), math.rad(-90)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.25, 0.35, -0.35) * CFrame.Angles(math.rad(70), math.rad(0), math.rad(90)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1, -1 - 0.35 * math.cos(SINE / 2), -0.01) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -1 - 0.35 * math.cos(SINE / 2), -0.01) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.15 / Animation_Speed)
	end
	CreateSound(363808674, Torso, 10, 1, false)
	for i=0, 1.2, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0, 0, 0 + 0.35 * math.cos(SINE / 2)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CFrame.new(0, 0, 0 + ((1) - 1)) * CFrame.Angles(math.rad(5), math.rad(25), math.rad(0)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.25, 0.5, -0.5) * CFrame.Angles(math.rad(100), math.rad(0), math.rad(-50)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.25, 0.35, -0.35) * CFrame.Angles(math.rad(70), math.rad(0), math.rad(60)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1, -1 - 0.35 * math.cos(SINE / 2), -0.01) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -1 - 0.35 * math.cos(SINE / 2), -0.01) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.15 / Animation_Speed)
	end
	CreateSound(363808674, Torso, 10, 1, false)
	for i=0, 1.2, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0, 0, 0 + 0.35 * math.cos(SINE / 2)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CFrame.new(0, 0, 0 + ((1) - 1)) * CFrame.Angles(math.rad(5), math.rad(-25), math.rad(0)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.25, 0.5, -0.5) * CFrame.Angles(math.rad(100), math.rad(0), math.rad(-90)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.25, 0.35, -0.35) * CFrame.Angles(math.rad(70), math.rad(0), math.rad(90)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1, -1 - 0.35 * math.cos(SINE / 2), -0.01) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -1 - 0.35 * math.cos(SINE / 2), -0.01) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.15 / Animation_Speed)
	end
	local HITFLOOR,HITPOS = Raycast(RootPart.Position, (CFrame.new(RootPart.Position, RootPart.Position + Vector3.new(0, -1, 0))).lookVector, 25*SIZE, Character)
	WACKYEFFECT({Time = 60, EffectType = "Wave", Size = Vector3.new(12,0.55,12)*SIZE, Size2 = Vector3.new(12,0.55,12), Transparency = 0, Transparency2 = 1, CFrame = CFrame.new(HITPOS), MoveToPos = nil, RotationX = 0, RotationY = 15, RotationZ = 0, Material = "Neon", Color = Color3.new(0,0,0), SoundID = nil, SoundPitch = 1, SoundVolume = 6})
	Swait(10)
	WACKYEFFECT({Time = 60, EffectType = "Sphere", Size = Vector3.new(0.5,0.55,0.5), Size2 = Vector3.new(0.5,4,0.5), Transparency = 0, Transparency2 = 1, CFrame = Head.CFrame*CFrame.new(0.4, 0.2, -0.8), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.new(1, 0, 0), SoundID = 743521450, SoundPitch = 1.15, SoundVolume = 6})
	WACKYEFFECT({Time = 60, EffectType = "Sphere", Size = Vector3.new(0.55,0.5,0.5), Size2 = Vector3.new(4,0.5,0.5), Transparency = 0, Transparency2 = 1, CFrame = Head.CFrame*CFrame.new(0.4, 0.2, -0.8), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.new(1, 0, 0), SoundID = 743521450, SoundPitch = 0.95, SoundVolume = 6})
	Swait(57)
	WACKYEFFECT({Time = 150, EffectType = "Wave", Size = Vector3.new(62,35,62)*SIZE, Size2 = Vector3.new(62,35,62), Transparency = 1, Transparency2 = 1, CFrame = CFrame.new(HITPOS), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.new(1,0,0), SoundID = 1259054947, SoundPitch = 1, SoundVolume = 6})
	Swait(6.5)
	WACKYEFFECT({Time = 180, EffectType = "Block", Size = Vector3.new(24,24,24)*1.5, Size2 = Vector3.new(0,8,0), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame*CFrame.new(0,-1,0)*CFrame.Angles(math.rad(MRANDOM(0,360)),math.rad(MRANDOM(0,360)),math.rad(MRANDOM(0,360))), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = BrickColor.new"Really black".Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
	MODE = "Snake God"
	sick.SoundId = "rbxassetid://5801951770"
	sick.Volume = 10
	sick.PlaybackSpeed = 0.95
	ATTACK = false
	Rooted = false
	lightning.Enabled = false
	eeeffecto.Enabled = false
	lightningArm.Enabled = false
	refec.Enabled = false
	Rifle.Parent = nil
	BanishGun.Parent = nil
	SniperGun.Parent = nil
	Katana.Parent = nil
end

function mainIntro()
	for i = 0, 4, 0.1 do
		Swait()
		RightHip.C0 = Clerp(RightHip.C0, CF(1,-0.15,-0.5) * ANGLES(RAD(0),RAD(90),RAD(0)) * ANGLES(RAD(-3),RAD(-15),RAD(-20)),.1)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1,-1,0) * ANGLES(RAD(0),RAD(-90),RAD(0)) * ANGLES(RAD(-3),RAD(1),RAD(20)),.1)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0,0.25,-0.05) * ANGLES(RAD(-20),RAD(0),RAD(30)),.1)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(20),RAD(0),RAD(-30)),.1)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45,0.8,-0.15) * ANGLES(RAD(35),RAD(-10),RAD(30)),.8)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.4,0.5,0.1) * ANGLES(RAD(-5),RAD(10),RAD(-20)),.1)
	end
	CreateSound(824687369, Torso, 10, 0.9, false)
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = Vector3.new(0,0,0), Size2 = Vector3.new(150,5,150), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.new(1,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = Vector3.new(0,0,0), Size2 = Vector3.new(160,10,160), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 1, RotationZ = 0, Material = "Neon", Color = Color3.new(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = Vector3.new(0,0,0), Size2 = Vector3.new(170,5,170), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 2, RotationZ = 0, Material = "Neon", Color = Color3.new(1,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = Vector3.new(0,0,0), Size2 = Vector3.new(180,10,180), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 3, RotationZ = 0, Material = "Neon", Color = Color3.new(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = Vector3.new(0,0,0), Size2 = Vector3.new(190,5,190), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 4, RotationZ = 0, Material = "Neon", Color = Color3.new(1,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = Vector3.new(0,0,0), Size2 = Vector3.new(200,10,200), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = Color3.new(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	CreateSound(363808674, Torso, 10, 1, false)
	for i=0, 1.2, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0, 0, 0 + 0.35 * math.cos(SINE / 2)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CFrame.new(0, 0, 0 + ((1) - 1)) * CFrame.Angles(math.rad(5), math.rad(25), math.rad(0)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.25, 0.5, -0.5) * CFrame.Angles(math.rad(100), math.rad(0), math.rad(-50)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.25, 0.35, -0.35) * CFrame.Angles(math.rad(70), math.rad(0), math.rad(60)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1, -1 - 0.35 * math.cos(SINE / 2), -0.01) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -1 - 0.35 * math.cos(SINE / 2), -0.01) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.15 / Animation_Speed)
	end
	CreateSound(363808674, Torso, 10, 1, false)
	for i=0, 1.2, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0, 0, 0 + 0.35 * math.cos(SINE / 2)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CFrame.new(0, 0, 0 + ((1) - 1)) * CFrame.Angles(math.rad(5), math.rad(-25), math.rad(0)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.25, 0.5, -0.5) * CFrame.Angles(math.rad(100), math.rad(0), math.rad(-90)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.25, 0.35, -0.35) * CFrame.Angles(math.rad(70), math.rad(0), math.rad(90)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1, -1 - 0.35 * math.cos(SINE / 2), -0.01) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -1 - 0.35 * math.cos(SINE / 2), -0.01) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.15 / Animation_Speed)
	end
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = Vector3.new(0,0,0), Size2 = Vector3.new(190,5,190), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 4, RotationZ = 0, Material = "Neon", Color = Color3.new(1,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = Vector3.new(0,0,0), Size2 = Vector3.new(200,10,200), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = Color3.new(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 60, EffectType = "Sphere", Size = Vector3.new(0.5,0.55,0.5), Size2 = Vector3.new(0.5,4,0.5), Transparency = 0, Transparency2 = 1, CFrame = Head.CFrame*CFrame.new(0.4, 0.2, -0.8), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.new(1, 0, 0), SoundID = 743521450, SoundPitch = 1.15, SoundVolume = 6})
	WACKYEFFECT({Time = 60, EffectType = "Sphere", Size = Vector3.new(0.55,0.5,0.5), Size2 = Vector3.new(4,0.5,0.5), Transparency = 0, Transparency2 = 1, CFrame = Head.CFrame*CFrame.new(0.4, 0.2, -0.8), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.new(1, 0, 0), SoundID = 743521450, SoundPitch = 0.95, SoundVolume = 6})
	WACKYEFFECT({Time = 55, EffectType = "Skull", Size = VT(11,11,11), Size2 = VT(99,99,99), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0, 0, 0), MoveToPos = nil, RotationX = 30, RotationY = 30, RotationZ = 30, Material = "Neon", Color = Color3.new(255/255, 0/255, 0/255), SoundID = 743521450, SoundPitch = 0.95, SoundVolume = 6})
end

function undying() 
	ATTACK = true
	Rooted = true
	mainIntro()
	MODE = "Undead"
	sick.SoundId = "rbxassetid://684447468"
	sick.Volume = 10
	sick.PlaybackSpeed = 0.7
	sick.TimePosition = 0
	ATTACK = false
	Rooted = false
	lightning.Enabled = false
	eeeffecto.Enabled = false
	refec.Enabled = false
	lightningArm.Enabled = true
	Rifle.Parent = nil
	BanishGun.Parent = nil
	SniperGun.Parent = nil
	Katana.Parent = nil
end

function Glamour() 
	ATTACK = true
	Rooted = true
	mainIntro()
	MODE = "Glamour"
	sick.SoundId = "rbxassetid://6170962459"
	sick.Volume = 10
	sick.PlaybackSpeed = 1
	sick.TimePosition = 0
	ATTACK = false
	Rooted = false
	lightning.Enabled = false
	eeeffecto.Enabled = false
	refec.Enabled = false
	lightningArm.Enabled = false
	Rifle.Parent = nil
	BanishGun.Parent = nil
	SniperGun.Parent = nil
	Katana.Parent = nil
end

function Insecure() 
	ATTACK = true
	Rooted = true
	MODE = "Insecure"
	sick.SoundId = "rbxassetid://5654177392"
	sick.Volume = 10
	sick.PlaybackSpeed = 1
	sick.TimePosition = 0
	ATTACK = false
	Rooted = false
	lightning.Enabled = false
	eeeffecto.Enabled = false
	refec.Enabled = false
	lightningArm.Enabled = false
	Rifle.Parent = nil
	BanishGun.Parent = nil
	SniperGun.Parent = nil
	Katana.Parent = nil
end

function Ghaster() 
	ATTACK = true
	Rooted = true
	mainIntro()
	MODE = "Ghaster"
	sick.SoundId = "rbxassetid://652769726"
	sick.Volume = 10
	sick.PlaybackSpeed = 1
	sick.TimePosition = 0
	ATTACK = false
	Rooted = false
	lightning.Enabled = false
	eeeffecto.Enabled = false
	refec.Enabled = false
	lightningArm.Enabled = false
	Rifle.Parent = nil
	BanishGun.Parent = nil
	SniperGun.Parent = nil
	Katana.Parent = nil
end


function broken() 
	ATTACK = true
	Rooted = true
	sick.SoundId = "rbxassetid://0"
	for i = 0, 4, 0.1 do
		Swait()
		RightHip.C0 = Clerp(RightHip.C0, CF(1,-0.15,-0.5) * ANGLES(RAD(0),RAD(90),RAD(0)) * ANGLES(RAD(-3),RAD(-15),RAD(-20)),.1)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1,-1,0) * ANGLES(RAD(0),RAD(-90),RAD(0)) * ANGLES(RAD(-3),RAD(1),RAD(20)),.1)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0,0.25,-0.05) * ANGLES(RAD(-20),RAD(0),RAD(30)),.1)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(20),RAD(0),RAD(-30)),.1)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45,0.8,-0.15) * ANGLES(RAD(35),RAD(-10),RAD(30)),.8)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.4,0.5,0.1) * ANGLES(RAD(-5),RAD(10),RAD(-20)),.1)
	end
	bosschatfunc("pls",BrickColor.new'Really red'.Color,BrickColor.new'Black'.Color,200)
	CreateSound(824687369, Torso, 10, 0.9, false)
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(150,5,150), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(160,10,160), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 1, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(170,5,170), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 2, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(180,10,180), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 3, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(190,5,190), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 4, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(200,10,200), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	for i = 0, 2, 0.1 do
		Swait()
		RightHip.C0 = Clerp(RightHip.C0, CF(1,-0.5,-0.5) * ANGLES(RAD(0),RAD(90),RAD(0)) * ANGLES(RAD(-3),RAD(-25),RAD(30)),.8)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1,-1,0) * ANGLES(RAD(0),RAD(-90),RAD(0)) * ANGLES(RAD(-3),RAD(1),RAD(20)),.8)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0,-0.25,-0.5) * ANGLES(RAD(30),RAD(0),RAD(50)),.8)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(20),RAD(0),RAD(-50)),.8)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45,0.6,-0.15) * ANGLES(RAD(35),RAD(-10),RAD(75)),.8)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.4,0.5,0.1) * ANGLES(RAD(-35),RAD(10),RAD(-50)),.8)
	end
	for i = 0, 4, 0.1 do
		Swait()
		RightHip.C0 = Clerp(RightHip.C0, CF(1,-0.15,-0.5) * ANGLES(RAD(0),RAD(90),RAD(0)) * ANGLES(RAD(-3),RAD(-15),RAD(-20)),.1)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1,-1,0) * ANGLES(RAD(0),RAD(-90),RAD(0)) * ANGLES(RAD(-3),RAD(1),RAD(20)),.1)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0,0.25,-0.05) * ANGLES(RAD(-20),RAD(0),RAD(30)),.1)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(20),RAD(0),RAD(-30)),.1)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45,0.8,-0.15) * ANGLES(RAD(35),RAD(-10),RAD(30)),.8)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.4,0.5,0.1) * ANGLES(RAD(-5),RAD(10),RAD(-20)),.1)
	end
	bosschatfunc("pls",BrickColor.new'Really red'.Color,BrickColor.new'Black'.Color,200)
	CreateSound(824687369, Torso, 10, 0.9, false)
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(150,5,150), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(160,10,160), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 1, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(170,5,170), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 2, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(180,10,180), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 3, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(190,5,190), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 4, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(200,10,200), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	for i = 0, 2, 0.1 do
		Swait()
		RightHip.C0 = Clerp(RightHip.C0, CF(1,-0.5,-0.5) * ANGLES(RAD(0),RAD(90),RAD(0)) * ANGLES(RAD(-3),RAD(-25),RAD(30)),.8)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1,-1,0) * ANGLES(RAD(0),RAD(-90),RAD(0)) * ANGLES(RAD(-3),RAD(1),RAD(20)),.8)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0,-0.25,-0.5) * ANGLES(RAD(30),RAD(0),RAD(50)),.8)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(20),RAD(0),RAD(-50)),.8)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45,0.6,-0.15) * ANGLES(RAD(35),RAD(-10),RAD(75)),.8)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.4,0.5,0.1) * ANGLES(RAD(-35),RAD(10),RAD(-50)),.8)
	end
	for i = 0, 4, 0.1 do
		Swait()
		RightHip.C0 = Clerp(RightHip.C0, CF(1,-0.15,-0.5) * ANGLES(RAD(0),RAD(90),RAD(0)) * ANGLES(RAD(-3),RAD(-15),RAD(-20)),.1)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1,-1,0) * ANGLES(RAD(0),RAD(-90),RAD(0)) * ANGLES(RAD(-3),RAD(1),RAD(20)),.1)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0,0.25,-0.05) * ANGLES(RAD(-20),RAD(0),RAD(30)),.1)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(20),RAD(0),RAD(-30)),.1)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45,0.8,-0.15) * ANGLES(RAD(35),RAD(-10),RAD(30)),.8)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.4,0.5,0.1) * ANGLES(RAD(-5),RAD(10),RAD(-20)),.1)
	end
	bosschatfunc("pls",BrickColor.new'Really red'.Color,BrickColor.new'Black'.Color,200)
	CreateSound(824687369, Torso, 10, 0.9, false)
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(150,5,150), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(160,10,160), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 1, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(170,5,170), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 2, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(180,10,180), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 3, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(190,5,190), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 4, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(200,10,200), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	for i = 0, 2, 0.1 do
		Swait()
		RightHip.C0 = Clerp(RightHip.C0, CF(1,-0.5,-0.5) * ANGLES(RAD(0),RAD(90),RAD(0)) * ANGLES(RAD(-3),RAD(-25),RAD(30)),.8)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1,-1,0) * ANGLES(RAD(0),RAD(-90),RAD(0)) * ANGLES(RAD(-3),RAD(1),RAD(20)),.8)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0,-0.25,-0.5) * ANGLES(RAD(30),RAD(0),RAD(50)),.8)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(20),RAD(0),RAD(-50)),.8)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45,0.6,-0.15) * ANGLES(RAD(35),RAD(-10),RAD(75)),.8)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.4,0.5,0.1) * ANGLES(RAD(-35),RAD(10),RAD(-50)),.8)
	end
	for i = 0, 4, 0.1 do
		Swait()
		RightHip.C0 = Clerp(RightHip.C0, CF(1,-0.15,-0.5) * ANGLES(RAD(0),RAD(90),RAD(0)) * ANGLES(RAD(-3),RAD(-15),RAD(-20)),.1)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1,-1,0) * ANGLES(RAD(0),RAD(-90),RAD(0)) * ANGLES(RAD(-3),RAD(1),RAD(20)),.1)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0,0.25,-0.05) * ANGLES(RAD(-20),RAD(0),RAD(30)),.1)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(20),RAD(0),RAD(-30)),.1)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45,0.8,-0.15) * ANGLES(RAD(35),RAD(-10),RAD(30)),.8)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.4,0.5,0.1) * ANGLES(RAD(-5),RAD(10),RAD(-20)),.1)
	end
	bosschatfunc("Why Its not working???",BrickColor.new'Really red'.Color,BrickColor.new'Black'.Color,200)
	CreateSound(824687369, Torso, 10, 0.9, false)
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(150,5,150), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(160,10,160), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 1, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(170,5,170), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 2, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(180,10,180), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 3, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(190,5,190), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 4, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	WACKYEFFECT({Time = 50, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(200,10,200), Transparency = 0.5, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,1), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil , SoundPitch = 1.2, SoundVolume = 4})
	for i = 0, 2, 0.1 do
		Swait()
		RightHip.C0 = Clerp(RightHip.C0, CF(1,-0.5,-0.5) * ANGLES(RAD(0),RAD(90),RAD(0)) * ANGLES(RAD(-3),RAD(-25),RAD(30)),.8)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1,-1,0) * ANGLES(RAD(0),RAD(-90),RAD(0)) * ANGLES(RAD(-3),RAD(1),RAD(20)),.8)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0,-0.25,-0.5) * ANGLES(RAD(30),RAD(0),RAD(50)),.8)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(20),RAD(0),RAD(-50)),.8)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45,0.6,-0.15) * ANGLES(RAD(35),RAD(-10),RAD(75)),.8)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.4,0.5,0.1) * ANGLES(RAD(-35),RAD(10),RAD(-50)),.8)
	end
	sick.SoundId = "rbxassetid://"
	sick.Volume = 10
	sick.PlaybackSpeed = 0.7
	sick.TimePosition = 0
	MODE = "broken"
	ATTACK = false
	Rooted = false
	lightning.Enabled = false
	eeeffecto.Enabled = false
	refec.Enabled = false
	lightningArm.Enabled = false
	Rifle.Parent = nil
	BanishGun.Parent = nil
	SniperGun.Parent = nil
	Katana.Parent = nil
end

function undertailP3() 
	ATTACK = true
	Rooted = true
	sick.SoundId = "rbxassetid://0"
	for i = 0, 4, 0.1 do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -1.70) * ANGLES(RAD(-40), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.3, 0.10) * ANGLES(RAD(-40), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.3, 0.10) * ANGLES(RAD(-40), RAD(0), RAD(0)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(45), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(45), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
	end
	wait(0.5)
	CreateSound(623904185, Torso, 10, 1, false)
	CharacterFade(Color3.new(0, 0, 0), 150)
	local slash=Instance.new("Decal",Torso)
	slash.Face="Front"
	slash.Texture="rbxassetid://690825854"
	wait(1)
	chatfunc("You really think I can go down that easly?")
	wait(3)
	chatfunc("Ì†'§ ðvêr £ðr ¥ðµ ñðw...")
	wait(2)
	chatfunc("₮ⱧɆⱤɆ'₴ ₦Ø ⱧØ₱Ɇ ₣ØⱤ ɎØɄ ₳₦Ɏ₥ØⱤɆ...")
	wait(1)
	warnedpeople2("Ｎ♢░♢ＮΞ░ＣΛＮ░ＳΛＶΣ░Ｙ♢Ｕ░Ｎ♢Ｗ")
	CreateSound(424276023, Torso, 10, 1, false)
	MODE = "Undertail - phase 3"
	sick.SoundId = "rbxassetid://5274177517"
	sick.Volume = 10
	sick.PlaybackSpeed = 0.7
	sick.TimePosition = 0
	ATTACK = false
	Rooted = false
	lightning.Enabled = false
	eeeffecto.Enabled = true
	lightningArm.Enabled = true
	refec.Enabled = true
	Rifle.Parent = nil
	BanishGun.Parent = Character
	SniperGun.Parent = nil
	Katana.Parent = nil
end


function HAPPY() 
	ATTACK = true
	Rooted = true
	CreateSound(623904185, Torso, 10, 1, false)
	CharacterFade(Color3.new(0, 0, 0), 150)
	local slash=Instance.new("Decal",Torso)
	slash.Face="Front"
	slash.Texture="rbxassetid://690825854"
	sick.SoundId = "rbxassetid://0"
	chatfunc(". . .")
	wait(2)
	CreateSound(363808674, Torso, 10, 1, false)
	for i=0, 1.2, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0, 0, 0 + 0.35 * math.cos(SINE / 2)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CFrame.new(0, 0, 0 + ((1) - 1)) * CFrame.Angles(math.rad(5), math.rad(25), math.rad(0)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.25, 0.5, -0.5) * CFrame.Angles(math.rad(100), math.rad(0), math.rad(-50)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.25, 0.35, -0.35) * CFrame.Angles(math.rad(70), math.rad(0), math.rad(60)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1, -1 - 0.35 * math.cos(SINE / 2), -0.01) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -1 - 0.35 * math.cos(SINE / 2), -0.01) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.15 / Animation_Speed)
	end
	CreateSound(363808674, Torso, 10, 1, false)
	for i=0, 1.2, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0, 0, 0 + 0.35 * math.cos(SINE / 2)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CFrame.new(0, 0, 0 + ((1) - 1)) * CFrame.Angles(math.rad(5), math.rad(-25), math.rad(0)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.25, 0.5, -0.5) * CFrame.Angles(math.rad(100), math.rad(0), math.rad(-90)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.25, 0.35, -0.35) * CFrame.Angles(math.rad(70), math.rad(0), math.rad(90)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1, -1 - 0.35 * math.cos(SINE / 2), -0.01) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -1 - 0.35 * math.cos(SINE / 2), -0.01) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.15 / Animation_Speed)
	end
	warnedpeople("No effect!")
	for i = 0, 20, 0.1 do
		Swait()
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(MRANDOM(-25,25)), RAD(15 - 2.5 * SIN(SINE / 12))) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) *  ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(MRANDOM(-25,25)), RAD(-15- 2.5 * SIN(SINE / 12))) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.1 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.1 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(MRANDOM(1, 2) - 2.5 * SIN(SINE / 12)), RAD(MRANDOM(1, 2)), RAD(MRANDOM(1, 2))), 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.1 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
	end
	wait(2)
	chatfunc("Ya know kid, I warned ya not to go this deep. . .")
	wait(2)
	chatfunc("You.. Just.. Can't.. Stop.. ₵₳₦ ɎØɄ?")
	MODE = "I A M H A P P Y"
	sick.SoundId = "rbxassetid://5621597815"
	sick.Volume = 10
	sick.PlaybackSpeed = 1
	sick.TimePosition = 0
	ATTACK = false
	Rooted = false
	lightning.Enabled = false
	eeeffecto.Enabled = false
	lightningArm.Enabled = false
	refec.Enabled = false
	Rifle.Parent = nil
	BanishGun.Parent = nil
	SniperGun.Parent = nil
	Katana.Parent = nil
end

function visualizer() 
	ATTACK = true
	Rooted = true
	mainIntro()
	MODE = "VIS"
	sick.SoundId = "rbxassetid://758186003"
	sick.Volume = 10
	sick.PlaybackSpeed = 0.6
	sick.TimePosition = 0
	ATTACK = false
	Rooted = false
	lightning.Enabled = false
	eeeffecto.Enabled = false
	lightningArm.Enabled = false
	refec.Enabled = false
	Rifle.Parent = nil
	BanishGun.Parent = nil
	SniperGun.Parent = nil
	Katana.Parent = nil
end

function Ghost() 
	ATTACK = true
	Rooted = true
	MODE = "ghost"
	lightning.Enabled = false
	eeeffecto.Enabled = false
	lightningArm.Enabled = false
	refec.Enabled = false
	Rifle.Parent = nil
	BanishGun.Parent = nil
	SniperGun.Parent = nil
	Katana.Parent = nil
	sick.SoundId = "rbxassetid://1747451164"
	sick.Volume = 10
	sick.PlaybackSpeed = 1
	sick.TimePosition = 122.9
	for i = 0, 7, 0.1 do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -1.70) * ANGLES(RAD(-40), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.3, 0.10) * ANGLES(RAD(-40), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.3, 0.10) * ANGLES(RAD(-40), RAD(0), RAD(0)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(45), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(45), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
	end
	chatfunc("ɢᴢʏxQɢᴄxᴇ1ʙᴏᴊ8ɪ8ꜱᴛʏʀ3ɪɴꜰᴊ37ɪᴘᴢ6ᴏʏᴢʙᴠᴅᴘᴍꜰʏʀ4=")
	warnedpeople("ɢᴢʏxQɢᴄxᴇ1ʙᴏᴊ8ɪ8ꜱᴛʏʀ3ɪɴꜰᴊ37ɪᴘᴢ6ᴏʏᴢʙᴠᴅᴘᴍꜰʏʀ4=")
	wait(6)
	chatfunc("ḱ̵̦̺̐͑̅̕̚͠3̴̢̖̺͎̞͛f̷̺̓͊̂͠͝a̷͕̙̥̼͎͖̳̽̒͒̊̿̍̈͆͠ͅT̵̳̝̓͑̂̍́̈́̊͂̕͝8̶̳̲̓R̵͉̪̟͋͐̇̓͐ọ̸̬̫̇͂͂̄͂̇͑ů̷̡̱͚̠̞̠̩͉͈q̷̩̣͒̅̌̓̏͋͂̀̕͘j̶̠̟̟͚̗̹̎͊͘͝ͅj̴͚̙̱̞͔̍̋̍̉͊̃̑͝H̸͈̻̤͋ͅE̸̜̥̠̎̈́͋̑͐͛̍̚͘͝K̷̡̜̜̮͕͚̖͇̏̒V̴̲͛̀͌j̷̟̬̤́͘8̷̧̨̨̥̘̣̪͕̥̉̅̌̽̅̈̈́͜͝S̶̨̡̲̼̮̠̻̰͎͊̌̎͑͒̈́Ơ̸̪̦͇̞̹̞̮͕Ý̷͕̖̠̫͙͙̮̲͖̅̆̀̎͝Ṯ̸̨̢͎̗́̑̈̃̏̋̓͝͝2̶̟̗̳͚̲͆N̶̝̤̳̤̈́̋̉̾̈p̴͍͓̥̭͉͙̭̺̳͌ͅQ̷̩̹̝̹̠͉̼̗̣̂͆͊̓͝ͅU̴̡̧̯̞̔̑͒̓̓͐̕̚͜J̶̢̤͉͎̑̓̆̈L̵̲͍̰͓̣͕̱̭̫̐̽̍̊̊Ů̸̫̾̈́̑̇̂͘y̶̡͖̭͛̆́̌͊͊9̸̣͎̘̉̉̚V̴̢̨̖̥̰̔̅̌̄͘̕l̵̡̙̰̦̳̮̲̺͉̋̉̂́̓̔ͅ3̵̨̩̈́5̶͔̖͓̮̅̋̉A̵̡̱̝̼̱̳͛́̕M̴̳̮̱̞̝͓̗̱̼̑̽͜6̵̮̖̭̹̗͕̲̣̓͆̄͛̊͐͘͘H̷̬̗̱̖̤͕̃̚w̷̮̣͎͈̯̖̓̈́̓̾͒̇̅̽͘͘ͅ9̶͔̗̹͍́̌̽͋͆̎̈́͝͝O̸̳̗̟̞͖̣͌̅̏͌͐̿͘+̴͖̠͎͔͈̖̫̆́̍̓̂͠͠ͅ+̶̟̹͔̰̔͠͝K̸̘̍̇͗͋̔̍͗͘͠9̴̼͉̼̞͛̃̄̈́̌͒7̵̩̪̻̯͈̃̏͌̏̂̈́̅͆V̴̛̗̅̾̏͂͆0̴̤̻͈̫̥͉͖͍͕̀͂̈͛̈́̕ͅ2̴̪̐̈̕̚͝g̷̢̲̝̼͉̯̞̏́͝D̴̖͉̦̯͉͂D̵̻̯̙̱̟̊̀̒́̅̒̕J̷̢̥̯̊̊͊̿͊͗͘͝d̶̡̟̙͎̞̲̦̗͙͌̋̈́k̶͔̙̠͆̿͛̄̇͘m̴̨̹̬̉̊̾͝ỷ̸̞̜̮͔̊̾̍̏̀̀͘͠T̸̛͎͕̟̦͚̣̤͂́̔̎̄̚͠D̷̼͇̟̺̦̮͈͚̓̾̓̈́͘ṱ̴̲͈̰͎̻̀̓̕Q̶̢͖̣͚̲̮̟̙̰̘̒̈́Ő̷̝̪̠̠̜̒̈̊́̐͜G̸̨̪̮̪̪̞͇̹̲͆͌͜Ạ̶̫̯̖̭͔͔̼̗̲̉̈̽̓̓̂̇̑g̵͕̻̦͗̃̿̿̍͆͋̔͝ų̶̬̜͎̓̾͋͗̓́͑͠Í̴̢͍͈̭̋͆̋̅͒̐Ẓ̵̖̰͌̾̓I̵̢͖̣̗͚̠̬͍͇͖͐́̌̈͗̓ȁ̴̪̺̀̀͂̄̅̚͝9̵̩̠͔̬̠͉̀̊͒̎̿͝t̷̖͎́́̑a̵̢͖̼̖͙̺̗͐̊̉͒Ṋ̶̺͖̥̏̀̄̍̔̂̌̂͠Ơ̵͖̘̆̇̀͒̉b̶̡̧̛͓̬͍̪̒̄̓̓͒̕v̴̡̬̟͕̘̈S̴̙͛̋Ẅ̵̞͖́͑̒̏͘͘͘r̸̥̭͇̼̦̩̼̜̩̒͂̽̈̕͜3̷̨̺͍̍+̶̬͋̏͑͌L̸̻̙̘̤̝̯͂̀̍͊͗̾ẘ̵̫̞͙̣̩̉̾=̷͎̙̭̜̤̩̘̈͊͆͛͊̏̕=̴̥̣̻̪̿")
	warnedpeople("ḱ̵̦̺̐͑̅̕̚͠3̴̢̖̺͎̞͛f̷̺̓͊̂͠͝a̷͕̙̥̼͎͖̳̽̒͒̊̿̍̈͆͠ͅT̵̳̝̓͑̂̍́̈́̊͂̕͝8̶̳̲̓R̵͉̪̟͋͐̇̓͐ọ̸̬̫̇͂͂̄͂̇͑ů̷̡̱͚̠̞̠̩͉͈q̷̩̣͒̅̌̓̏͋͂̀̕͘j̶̠̟̟͚̗̹̎͊͘͝ͅj̴͚̙̱̞͔̍̋̍̉͊̃̑͝H̸͈̻̤͋ͅE̸̜̥̠̎̈́͋̑͐͛̍̚͘͝K̷̡̜̜̮͕͚̖͇̏̒V̴̲͛̀͌j̷̟̬̤́͘8̷̧̨̨̥̘̣̪͕̥̉̅̌̽̅̈̈́͜͝S̶̨̡̲̼̮̠̻̰͎͊̌̎͑͒̈́Ơ̸̪̦͇̞̹̞̮͕Ý̷͕̖̠̫͙͙̮̲͖̅̆̀̎͝Ṯ̸̨̢͎̗́̑̈̃̏̋̓͝͝2̶̟̗̳͚̲͆N̶̝̤̳̤̈́̋̉̾̈p̴͍͓̥̭͉͙̭̺̳͌ͅQ̷̩̹̝̹̠͉̼̗̣̂͆͊̓͝ͅU̴̡̧̯̞̔̑͒̓̓͐̕̚͜J̶̢̤͉͎̑̓̆̈L̵̲͍̰͓̣͕̱̭̫̐̽̍̊̊Ů̸̫̾̈́̑̇̂͘y̶̡͖̭͛̆́̌͊͊9̸̣͎̘̉̉̚V̴̢̨̖̥̰̔̅̌̄͘̕l̵̡̙̰̦̳̮̲̺͉̋̉̂́̓̔ͅ3̵̨̩̈́5̶͔̖͓̮̅̋̉A̵̡̱̝̼̱̳͛́̕M̴̳̮̱̞̝͓̗̱̼̑̽͜6̵̮̖̭̹̗͕̲̣̓͆̄͛̊͐͘͘H̷̬̗̱̖̤͕̃̚w̷̮̣͎͈̯̖̓̈́̓̾͒̇̅̽͘͘ͅ9̶͔̗̹͍́̌̽͋͆̎̈́͝͝O̸̳̗̟̞͖̣͌̅̏͌͐̿͘+̴͖̠͎͔͈̖̫̆́̍̓̂͠͠ͅ+̶̟̹͔̰̔͠͝K̸̘̍̇͗͋̔̍͗͘͠9̴̼͉̼̞͛̃̄̈́̌͒7̵̩̪̻̯͈̃̏͌̏̂̈́̅͆V̴̛̗̅̾̏͂͆0̴̤̻͈̫̥͉͖͍͕̀͂̈͛̈́̕ͅ2̴̪̐̈̕̚͝g̷̢̲̝̼͉̯̞̏́͝D̴̖͉̦̯͉͂D̵̻̯̙̱̟̊̀̒́̅̒̕J̷̢̥̯̊̊͊̿͊͗͘͝d̶̡̟̙͎̞̲̦̗͙͌̋̈́k̶͔̙̠͆̿͛̄̇͘m̴̨̹̬̉̊̾͝ỷ̸̞̜̮͔̊̾̍̏̀̀͘͠T̸̛͎͕̟̦͚̣̤͂́̔̎̄̚͠D̷̼͇̟̺̦̮͈͚̓̾̓̈́͘ṱ̴̲͈̰͎̻̀̓̕Q̶̢͖̣͚̲̮̟̙̰̘̒̈́Ő̷̝̪̠̠̜̒̈̊́̐͜G̸̨̪̮̪̪̞͇̹̲͆͌͜Ạ̶̫̯̖̭͔͔̼̗̲̉̈̽̓̓̂̇̑g̵͕̻̦͗̃̿̿̍͆͋̔͝ų̶̬̜͎̓̾͋͗̓́͑͠Í̴̢͍͈̭̋͆̋̅͒̐Ẓ̵̖̰͌̾̓I̵̢͖̣̗͚̠̬͍͇͖͐́̌̈͗̓ȁ̴̪̺̀̀͂̄̅̚͝9̵̩̠͔̬̠͉̀̊͒̎̿͝t̷̖͎́́̑a̵̢͖̼̖͙̺̗͐̊̉͒Ṋ̶̺͖̥̏̀̄̍̔̂̌̂͠Ơ̵͖̘̆̇̀͒̉b̶̡̧̛͓̬͍̪̒̄̓̓͒̕v̴̡̬̟͕̘̈S̴̙͛̋Ẅ̵̞͖́͑̒̏͘͘͘r̸̥̭͇̼̦̩̼̜̩̒͂̽̈̕͜3̷̨̺͍̍+̶̬͋̏͑͌L̸̻̙̘̤̝̯͂̀̍͊͗̾ẘ̵̫̞͙̣̩̉̾=̷͎̙̭̜̤̩̘̈͊͆͛͊̏̕=̴̥̣̻̪̿")
	wait(3)
	warnedpeople("ḱ̵̦̺̐͑̅̕̚͠3̴̢̖̺͎̞͛f̷̺̓͊̂͠͝a̷͕̙̥̼͎͖̳̽̒͒̊̿̍̈͆͠ͅT̵̳̝̓͑̂̍́̈́̊͂̕͝8̶̳̲̓R̵͉̪̟͋͐̇̓͐ọ̸̬̫̇͂͂̄͂̇͑ů̷̡̱͚̠̞̠̩͉͈q̷̩̣͒̅̌̓̏͋͂̀̕͘j̶̠̟̟͚̗̹̎͊͘͝ͅj̴͚̙̱̞͔̍̋̍̉͊̃̑͝H̸͈̻̤͋ͅE̸̜̥̠̎̈́͋̑͐͛̍̚͘͝K̷̡̜̜̮͕͚̖͇̏̒V̴̲͛̀͌j̷̟̬̤́͘8̷̧̨̨̥̘̣̪͕̥̉̅̌̽̅̈̈́͜͝S̶̨̡̲̼̮̠̻̰͎͊̌̎͑͒̈́Ơ̸̪̦͇̞̹̞̮͕Ý̷͕̖̠̫͙͙̮̲͖̅̆̀̎͝Ṯ̸̨̢͎̗́̑̈̃̏̋̓͝͝2̶̟̗̳͚̲͆N̶̝̤̳̤̈́̋̉̾̈p̴͍͓̥̭͉͙̭̺̳͌ͅQ̷̩̹̝̹̠͉̼̗̣̂͆͊̓͝ͅU̴̡̧̯̞̔̑͒̓̓͐̕̚͜J̶̢̤͉͎̑̓̆̈L̵̲͍̰͓̣͕̱̭̫̐̽̍̊̊Ů̸̫̾̈́̑̇̂͘y̶̡͖̭͛̆́̌͊͊9̸̣͎̘̉̉̚V̴̢̨̖̥̰̔̅̌̄͘̕l̵̡̙̰̦̳̮̲̺͉̋̉̂́̓̔ͅ3̵̨̩̈́5̶͔̖͓̮̅̋̉A̵̡̱̝̼̱̳͛́̕M̴̳̮̱̞̝͓̗̱̼̑̽͜6̵̮̖̭̹̗͕̲̣̓͆̄͛̊͐͘͘H̷̬̗̱̖̤͕̃̚w̷̮̣͎͈̯̖̓̈́̓̾͒̇̅̽͘͘ͅ9̶͔̗̹͍́̌̽͋͆̎̈́͝͝O̸̳̗̟̞͖̣͌̅̏͌͐̿͘+̴͖̠͎͔͈̖̫̆́̍̓̂͠͠ͅ+̶̟̹͔̰̔͠͝K̸̘̍̇͗͋̔̍͗͘͠9̴̼͉̼̞͛̃̄̈́̌͒7̵̩̪̻̯͈̃̏͌̏̂̈́̅͆V̴̛̗̅̾̏͂͆0̴̤̻͈̫̥͉͖͍͕̀͂̈͛̈́̕ͅ2̴̪̐̈̕̚͝g̷̢̲̝̼͉̯̞̏́͝D̴̖͉̦̯͉͂D̵̻̯̙̱̟̊̀̒́̅̒̕J̷̢̥̯̊̊͊̿͊͗͘͝d̶̡̟̙͎̞̲̦̗͙͌̋̈́k̶͔̙̠͆̿͛̄̇͘m̴̨̹̬̉̊̾͝ỷ̸̞̜̮͔̊̾̍̏̀̀͘͠T̸̛͎͕̟̦͚̣̤͂́̔̎̄̚͠D̷̼͇̟̺̦̮͈͚̓̾̓̈́͘ṱ̴̲͈̰͎̻̀̓̕Q̶̢͖̣͚̲̮̟̙̰̘̒̈́Ő̷̝̪̠̠̜̒̈̊́̐͜G̸̨̪̮̪̪̞͇̹̲͆͌͜Ạ̶̫̯̖̭͔͔̼̗̲̉̈̽̓̓̂̇̑g̵͕̻̦͗̃̿̿̍͆͋̔͝ų̶̬̜͎̓̾͋͗̓́͑͠Í̴̢͍͈̭̋͆̋̅͒̐Ẓ̵̖̰͌̾̓I̵̢͖̣̗͚̠̬͍͇͖͐́̌̈͗̓ȁ̴̪̺̀̀͂̄̅̚͝9̵̩̠͔̬̠͉̀̊͒̎̿͝t̷̖͎́́̑a̵̢͖̼̖͙̺̗͐̊̉͒Ṋ̶̺͖̥̏̀̄̍̔̂̌̂͠Ơ̵͖̘̆̇̀͒̉b̶̡̧̛͓̬͍̪̒̄̓̓͒̕v̴̡̬̟͕̘̈S̴̙͛̋Ẅ̵̞͖́͑̒̏͘͘͘r̸̥̭͇̼̦̩̼̜̩̒͂̽̈̕͜3̷̨̺͍̍+̶̬͋̏͑͌L̸̻̙̘̤̝̯͂̀̍͊͗̾ẘ̵̫̞͙̣̩̉̾=̷͎̙̭̜̤̩̘̈͊͆͛͊̏̕=̴̥̣̻̪̿")
	wait(3)
	warnedpeople("ḱ̵̦̺̐͑̅̕̚͠3̴̢̖̺͎̞͛f̷̺̓͊̂͠͝a̷͕̙̥̼͎͖̳̽̒͒̊̿̍̈͆͠ͅT̵̳̝̓͑̂̍́̈́̊͂̕͝8̶̳̲̓R̵͉̪̟͋͐̇̓͐ọ̸̬̫̇͂͂̄͂̇͑ů̷̡̱͚̠̞̠̩͉͈q̷̩̣͒̅̌̓̏͋͂̀̕͘j̶̠̟̟͚̗̹̎͊͘͝ͅj̴͚̙̱̞͔̍̋̍̉͊̃̑͝H̸͈̻̤͋ͅE̸̜̥̠̎̈́͋̑͐͛̍̚͘͝K̷̡̜̜̮͕͚̖͇̏̒V̴̲͛̀͌j̷̟̬̤́͘8̷̧̨̨̥̘̣̪͕̥̉̅̌̽̅̈̈́͜͝S̶̨̡̲̼̮̠̻̰͎͊̌̎͑͒̈́Ơ̸̪̦͇̞̹̞̮͕Ý̷͕̖̠̫͙͙̮̲͖̅̆̀̎͝Ṯ̸̨̢͎̗́̑̈̃̏̋̓͝͝2̶̟̗̳͚̲͆N̶̝̤̳̤̈́̋̉̾̈p̴͍͓̥̭͉͙̭̺̳͌ͅQ̷̩̹̝̹̠͉̼̗̣̂͆͊̓͝ͅU̴̡̧̯̞̔̑͒̓̓͐̕̚͜J̶̢̤͉͎̑̓̆̈L̵̲͍̰͓̣͕̱̭̫̐̽̍̊̊Ů̸̫̾̈́̑̇̂͘y̶̡͖̭͛̆́̌͊͊9̸̣͎̘̉̉̚V̴̢̨̖̥̰̔̅̌̄͘̕l̵̡̙̰̦̳̮̲̺͉̋̉̂́̓̔ͅ3̵̨̩̈́5̶͔̖͓̮̅̋̉A̵̡̱̝̼̱̳͛́̕M̴̳̮̱̞̝͓̗̱̼̑̽͜6̵̮̖̭̹̗͕̲̣̓͆̄͛̊͐͘͘H̷̬̗̱̖̤͕̃̚w̷̮̣͎͈̯̖̓̈́̓̾͒̇̅̽͘͘ͅ9̶͔̗̹͍́̌̽͋͆̎̈́͝͝O̸̳̗̟̞͖̣͌̅̏͌͐̿͘+̴͖̠͎͔͈̖̫̆́̍̓̂͠͠ͅ+̶̟̹͔̰̔͠͝K̸̘̍̇͗͋̔̍͗͘͠9̴̼͉̼̞͛̃̄̈́̌͒7̵̩̪̻̯͈̃̏͌̏̂̈́̅͆V̴̛̗̅̾̏͂͆0̴̤̻͈̫̥͉͖͍͕̀͂̈͛̈́̕ͅ2̴̪̐̈̕̚͝g̷̢̲̝̼͉̯̞̏́͝D̴̖͉̦̯͉͂D̵̻̯̙̱̟̊̀̒́̅̒̕J̷̢̥̯̊̊͊̿͊͗͘͝d̶̡̟̙͎̞̲̦̗͙͌̋̈́k̶͔̙̠͆̿͛̄̇͘m̴̨̹̬̉̊̾͝ỷ̸̞̜̮͔̊̾̍̏̀̀͘͠T̸̛͎͕̟̦͚̣̤͂́̔̎̄̚͠D̷̼͇̟̺̦̮͈͚̓̾̓̈́͘ṱ̴̲͈̰͎̻̀̓̕Q̶̢͖̣͚̲̮̟̙̰̘̒̈́Ő̷̝̪̠̠̜̒̈̊́̐͜G̸̨̪̮̪̪̞͇̹̲͆͌͜Ạ̶̫̯̖̭͔͔̼̗̲̉̈̽̓̓̂̇̑g̵͕̻̦͗̃̿̿̍͆͋̔͝ų̶̬̜͎̓̾͋͗̓́͑͠Í̴̢͍͈̭̋͆̋̅͒̐Ẓ̵̖̰͌̾̓I̵̢͖̣̗͚̠̬͍͇͖͐́̌̈͗̓ȁ̴̪̺̀̀͂̄̅̚͝9̵̩̠͔̬̠͉̀̊͒̎̿͝t̷̖͎́́̑a̵̢͖̼̖͙̺̗͐̊̉͒Ṋ̶̺͖̥̏̀̄̍̔̂̌̂͠Ơ̵͖̘̆̇̀͒̉b̶̡̧̛͓̬͍̪̒̄̓̓͒̕v̴̡̬̟͕̘̈S̴̙͛̋Ẅ̵̞͖́͑̒̏͘͘͘r̸̥̭͇̼̦̩̼̜̩̒͂̽̈̕͜3̷̨̺͍̍+̶̬͋̏͑͌L̸̻̙̘̤̝̯͂̀̍͊͗̾ẘ̵̫̞͙̣̩̉̾=̷͎̙̭̜̤̩̘̈͊͆͛͊̏̕=̴̥̣̻̪̿")
	wait(3)
	warnedpeople("ḱ̵̦̺̐͑̅̕̚͠3̴̢̖̺͎̞͛f̷̺̓͊̂͠͝a̷͕̙̥̼͎͖̳̽̒͒̊̿̍̈͆͠ͅT̵̳̝̓͑̂̍́̈́̊͂̕͝8̶̳̲̓R̵͉̪̟͋͐̇̓͐ọ̸̬̫̇͂͂̄͂̇͑ů̷̡̱͚̠̞̠̩͉͈q̷̩̣͒̅̌̓̏͋͂̀̕͘j̶̠̟̟͚̗̹̎͊͘͝ͅj̴͚̙̱̞͔̍̋̍̉͊̃̑͝H̸͈̻̤͋ͅE̸̜̥̠̎̈́͋̑͐͛̍̚͘͝K̷̡̜̜̮͕͚̖͇̏̒V̴̲͛̀͌j̷̟̬̤́͘8̷̧̨̨̥̘̣̪͕̥̉̅̌̽̅̈̈́͜͝S̶̨̡̲̼̮̠̻̰͎͊̌̎͑͒̈́Ơ̸̪̦͇̞̹̞̮͕Ý̷͕̖̠̫͙͙̮̲͖̅̆̀̎͝Ṯ̸̨̢͎̗́̑̈̃̏̋̓͝͝2̶̟̗̳͚̲͆N̶̝̤̳̤̈́̋̉̾̈p̴͍͓̥̭͉͙̭̺̳͌ͅQ̷̩̹̝̹̠͉̼̗̣̂͆͊̓͝ͅU̴̡̧̯̞̔̑͒̓̓͐̕̚͜J̶̢̤͉͎̑̓̆̈L̵̲͍̰͓̣͕̱̭̫̐̽̍̊̊Ů̸̫̾̈́̑̇̂͘y̶̡͖̭͛̆́̌͊͊9̸̣͎̘̉̉̚V̴̢̨̖̥̰̔̅̌̄͘̕l̵̡̙̰̦̳̮̲̺͉̋̉̂́̓̔ͅ3̵̨̩̈́5̶͔̖͓̮̅̋̉A̵̡̱̝̼̱̳͛́̕M̴̳̮̱̞̝͓̗̱̼̑̽͜6̵̮̖̭̹̗͕̲̣̓͆̄͛̊͐͘͘H̷̬̗̱̖̤͕̃̚w̷̮̣͎͈̯̖̓̈́̓̾͒̇̅̽͘͘ͅ9̶͔̗̹͍́̌̽͋͆̎̈́͝͝O̸̳̗̟̞͖̣͌̅̏͌͐̿͘+̴͖̠͎͔͈̖̫̆́̍̓̂͠͠ͅ+̶̟̹͔̰̔͠͝K̸̘̍̇͗͋̔̍͗͘͠9̴̼͉̼̞͛̃̄̈́̌͒7̵̩̪̻̯͈̃̏͌̏̂̈́̅͆V̴̛̗̅̾̏͂͆0̴̤̻͈̫̥͉͖͍͕̀͂̈͛̈́̕ͅ2̴̪̐̈̕̚͝g̷̢̲̝̼͉̯̞̏́͝D̴̖͉̦̯͉͂D̵̻̯̙̱̟̊̀̒́̅̒̕J̷̢̥̯̊̊͊̿͊͗͘͝d̶̡̟̙͎̞̲̦̗͙͌̋̈́k̶͔̙̠͆̿͛̄̇͘m̴̨̹̬̉̊̾͝ỷ̸̞̜̮͔̊̾̍̏̀̀͘͠T̸̛͎͕̟̦͚̣̤͂́̔̎̄̚͠D̷̼͇̟̺̦̮͈͚̓̾̓̈́͘ṱ̴̲͈̰͎̻̀̓̕Q̶̢͖̣͚̲̮̟̙̰̘̒̈́Ő̷̝̪̠̠̜̒̈̊́̐͜G̸̨̪̮̪̪̞͇̹̲͆͌͜Ạ̶̫̯̖̭͔͔̼̗̲̉̈̽̓̓̂̇̑g̵͕̻̦͗̃̿̿̍͆͋̔͝ų̶̬̜͎̓̾͋͗̓́͑͠Í̴̢͍͈̭̋͆̋̅͒̐Ẓ̵̖̰͌̾̓I̵̢͖̣̗͚̠̬͍͇͖͐́̌̈͗̓ȁ̴̪̺̀̀͂̄̅̚͝9̵̩̠͔̬̠͉̀̊͒̎̿͝t̷̖͎́́̑a̵̢͖̼̖͙̺̗͐̊̉͒Ṋ̶̺͖̥̏̀̄̍̔̂̌̂͠Ơ̵͖̘̆̇̀͒̉b̶̡̧̛͓̬͍̪̒̄̓̓͒̕v̴̡̬̟͕̘̈S̴̙͛̋Ẅ̵̞͖́͑̒̏͘͘͘r̸̥̭͇̼̦̩̼̜̩̒͂̽̈̕͜3̷̨̺͍̍+̶̬͋̏͑͌L̸̻̙̘̤̝̯͂̀̍͊͗̾ẘ̵̫̞͙̣̩̉̾=̷͎̙̭̜̤̩̘̈͊͆͛͊̏̕=̴̥̣̻̪̿")
	wait(3)
	warnedpeople("ḱ̵̦̺̐͑̅̕̚͠3̴̢̖̺͎̞͛f̷̺̓͊̂͠͝a̷͕̙̥̼͎͖̳̽̒͒̊̿̍̈͆͠ͅT̵̳̝̓͑̂̍́̈́̊͂̕͝8̶̳̲̓R̵͉̪̟͋͐̇̓͐ọ̸̬̫̇͂͂̄͂̇͑ů̷̡̱͚̠̞̠̩͉͈q̷̩̣͒̅̌̓̏͋͂̀̕͘j̶̠̟̟͚̗̹̎͊͘͝ͅj̴͚̙̱̞͔̍̋̍̉͊̃̑͝H̸͈̻̤͋ͅE̸̜̥̠̎̈́͋̑͐͛̍̚͘͝K̷̡̜̜̮͕͚̖͇̏̒V̴̲͛̀͌j̷̟̬̤́͘8̷̧̨̨̥̘̣̪͕̥̉̅̌̽̅̈̈́͜͝S̶̨̡̲̼̮̠̻̰͎͊̌̎͑͒̈́Ơ̸̪̦͇̞̹̞̮͕Ý̷͕̖̠̫͙͙̮̲͖̅̆̀̎͝Ṯ̸̨̢͎̗́̑̈̃̏̋̓͝͝2̶̟̗̳͚̲͆N̶̝̤̳̤̈́̋̉̾̈p̴͍͓̥̭͉͙̭̺̳͌ͅQ̷̩̹̝̹̠͉̼̗̣̂͆͊̓͝ͅU̴̡̧̯̞̔̑͒̓̓͐̕̚͜J̶̢̤͉͎̑̓̆̈L̵̲͍̰͓̣͕̱̭̫̐̽̍̊̊Ů̸̫̾̈́̑̇̂͘y̶̡͖̭͛̆́̌͊͊9̸̣͎̘̉̉̚V̴̢̨̖̥̰̔̅̌̄͘̕l̵̡̙̰̦̳̮̲̺͉̋̉̂́̓̔ͅ3̵̨̩̈́5̶͔̖͓̮̅̋̉A̵̡̱̝̼̱̳͛́̕M̴̳̮̱̞̝͓̗̱̼̑̽͜6̵̮̖̭̹̗͕̲̣̓͆̄͛̊͐͘͘H̷̬̗̱̖̤͕̃̚w̷̮̣͎͈̯̖̓̈́̓̾͒̇̅̽͘͘ͅ9̶͔̗̹͍́̌̽͋͆̎̈́͝͝O̸̳̗̟̞͖̣͌̅̏͌͐̿͘+̴͖̠͎͔͈̖̫̆́̍̓̂͠͠ͅ+̶̟̹͔̰̔͠͝K̸̘̍̇͗͋̔̍͗͘͠9̴̼͉̼̞͛̃̄̈́̌͒7̵̩̪̻̯͈̃̏͌̏̂̈́̅͆V̴̛̗̅̾̏͂͆0̴̤̻͈̫̥͉͖͍͕̀͂̈͛̈́̕ͅ2̴̪̐̈̕̚͝g̷̢̲̝̼͉̯̞̏́͝D̴̖͉̦̯͉͂D̵̻̯̙̱̟̊̀̒́̅̒̕J̷̢̥̯̊̊͊̿͊͗͘͝d̶̡̟̙͎̞̲̦̗͙͌̋̈́k̶͔̙̠͆̿͛̄̇͘m̴̨̹̬̉̊̾͝ỷ̸̞̜̮͔̊̾̍̏̀̀͘͠T̸̛͎͕̟̦͚̣̤͂́̔̎̄̚͠D̷̼͇̟̺̦̮͈͚̓̾̓̈́͘ṱ̴̲͈̰͎̻̀̓̕Q̶̢͖̣͚̲̮̟̙̰̘̒̈́Ő̷̝̪̠̠̜̒̈̊́̐͜G̸̨̪̮̪̪̞͇̹̲͆͌͜Ạ̶̫̯̖̭͔͔̼̗̲̉̈̽̓̓̂̇̑g̵͕̻̦͗̃̿̿̍͆͋̔͝ų̶̬̜͎̓̾͋͗̓́͑͠Í̴̢͍͈̭̋͆̋̅͒̐Ẓ̵̖̰͌̾̓I̵̢͖̣̗͚̠̬͍͇͖͐́̌̈͗̓ȁ̴̪̺̀̀͂̄̅̚͝9̵̩̠͔̬̠͉̀̊͒̎̿͝t̷̖͎́́̑a̵̢͖̼̖͙̺̗͐̊̉͒Ṋ̶̺͖̥̏̀̄̍̔̂̌̂͠Ơ̵͖̘̆̇̀͒̉b̶̡̧̛͓̬͍̪̒̄̓̓͒̕v̴̡̬̟͕̘̈S̴̙͛̋Ẅ̵̞͖́͑̒̏͘͘͘r̸̥̭͇̼̦̩̼̜̩̒͂̽̈̕͜3̷̨̺͍̍+̶̬͋̏͑͌L̸̻̙̘̤̝̯͂̀̍͊͗̾ẘ̵̫̞͙̣̩̉̾=̷͎̙̭̜̤̩̘̈͊͆͛͊̏̕=̴̥̣̻̪̿")
	wait(3)
	warnedpeople("ḱ̵̦̺̐͑̅̕̚͠3̴̢̖̺͎̞͛f̷̺̓͊̂͠͝a̷͕̙̥̼͎͖̳̽̒͒̊̿̍̈͆͠ͅT̵̳̝̓͑̂̍́̈́̊͂̕͝8̶̳̲̓R̵͉̪̟͋͐̇̓͐ọ̸̬̫̇͂͂̄͂̇͑ů̷̡̱͚̠̞̠̩͉͈q̷̩̣͒̅̌̓̏͋͂̀̕͘j̶̠̟̟͚̗̹̎͊͘͝ͅj̴͚̙̱̞͔̍̋̍̉͊̃̑͝H̸͈̻̤͋ͅE̸̜̥̠̎̈́͋̑͐͛̍̚͘͝K̷̡̜̜̮͕͚̖͇̏̒V̴̲͛̀͌j̷̟̬̤́͘8̷̧̨̨̥̘̣̪͕̥̉̅̌̽̅̈̈́͜͝S̶̨̡̲̼̮̠̻̰͎͊̌̎͑͒̈́Ơ̸̪̦͇̞̹̞̮͕Ý̷͕̖̠̫͙͙̮̲͖̅̆̀̎͝Ṯ̸̨̢͎̗́̑̈̃̏̋̓͝͝2̶̟̗̳͚̲͆N̶̝̤̳̤̈́̋̉̾̈p̴͍͓̥̭͉͙̭̺̳͌ͅQ̷̩̹̝̹̠͉̼̗̣̂͆͊̓͝ͅU̴̡̧̯̞̔̑͒̓̓͐̕̚͜J̶̢̤͉͎̑̓̆̈L̵̲͍̰͓̣͕̱̭̫̐̽̍̊̊Ů̸̫̾̈́̑̇̂͘y̶̡͖̭͛̆́̌͊͊9̸̣͎̘̉̉̚V̴̢̨̖̥̰̔̅̌̄͘̕l̵̡̙̰̦̳̮̲̺͉̋̉̂́̓̔ͅ3̵̨̩̈́5̶͔̖͓̮̅̋̉A̵̡̱̝̼̱̳͛́̕M̴̳̮̱̞̝͓̗̱̼̑̽͜6̵̮̖̭̹̗͕̲̣̓͆̄͛̊͐͘͘H̷̬̗̱̖̤͕̃̚w̷̮̣͎͈̯̖̓̈́̓̾͒̇̅̽͘͘ͅ9̶͔̗̹͍́̌̽͋͆̎̈́͝͝O̸̳̗̟̞͖̣͌̅̏͌͐̿͘+̴͖̠͎͔͈̖̫̆́̍̓̂͠͠ͅ+̶̟̹͔̰̔͠͝K̸̘̍̇͗͋̔̍͗͘͠9̴̼͉̼̞͛̃̄̈́̌͒7̵̩̪̻̯͈̃̏͌̏̂̈́̅͆V̴̛̗̅̾̏͂͆0̴̤̻͈̫̥͉͖͍͕̀͂̈͛̈́̕ͅ2̴̪̐̈̕̚͝g̷̢̲̝̼͉̯̞̏́͝D̴̖͉̦̯͉͂D̵̻̯̙̱̟̊̀̒́̅̒̕J̷̢̥̯̊̊͊̿͊͗͘͝d̶̡̟̙͎̞̲̦̗͙͌̋̈́k̶͔̙̠͆̿͛̄̇͘m̴̨̹̬̉̊̾͝ỷ̸̞̜̮͔̊̾̍̏̀̀͘͠T̸̛͎͕̟̦͚̣̤͂́̔̎̄̚͠D̷̼͇̟̺̦̮͈͚̓̾̓̈́͘ṱ̴̲͈̰͎̻̀̓̕Q̶̢͖̣͚̲̮̟̙̰̘̒̈́Ő̷̝̪̠̠̜̒̈̊́̐͜G̸̨̪̮̪̪̞͇̹̲͆͌͜Ạ̶̫̯̖̭͔͔̼̗̲̉̈̽̓̓̂̇̑g̵͕̻̦͗̃̿̿̍͆͋̔͝ų̶̬̜͎̓̾͋͗̓́͑͠Í̴̢͍͈̭̋͆̋̅͒̐Ẓ̵̖̰͌̾̓I̵̢͖̣̗͚̠̬͍͇͖͐́̌̈͗̓ȁ̴̪̺̀̀͂̄̅̚͝9̵̩̠͔̬̠͉̀̊͒̎̿͝t̷̖͎́́̑a̵̢͖̼̖͙̺̗͐̊̉͒Ṋ̶̺͖̥̏̀̄̍̔̂̌̂͠Ơ̵͖̘̆̇̀͒̉b̶̡̧̛͓̬͍̪̒̄̓̓͒̕v̴̡̬̟͕̘̈S̴̙͛̋Ẅ̵̞͖́͑̒̏͘͘͘r̸̥̭͇̼̦̩̼̜̩̒͂̽̈̕͜3̷̨̺͍̍+̶̬͋̏͑͌L̸̻̙̘̤̝̯͂̀̍͊͗̾ẘ̵̫̞͙̣̩̉̾=̷͎̙̭̜̤̩̘̈͊͆͛͊̏̕=̴̥̣̻̪̿")
	wait(3)
	warnedpeople("ḱ̵̦̺̐͑̅̕̚͠3̴̢̖̺͎̞͛f̷̺̓͊̂͠͝a̷͕̙̥̼͎͖̳̽̒͒̊̿̍̈͆͠ͅT̵̳̝̓͑̂̍́̈́̊͂̕͝8̶̳̲̓R̵͉̪̟͋͐̇̓͐ọ̸̬̫̇͂͂̄͂̇͑ů̷̡̱͚̠̞̠̩͉͈q̷̩̣͒̅̌̓̏͋͂̀̕͘j̶̠̟̟͚̗̹̎͊͘͝ͅj̴͚̙̱̞͔̍̋̍̉͊̃̑͝H̸͈̻̤͋ͅE̸̜̥̠̎̈́͋̑͐͛̍̚͘͝K̷̡̜̜̮͕͚̖͇̏̒V̴̲͛̀͌j̷̟̬̤́͘8̷̧̨̨̥̘̣̪͕̥̉̅̌̽̅̈̈́͜͝S̶̨̡̲̼̮̠̻̰͎͊̌̎͑͒̈́Ơ̸̪̦͇̞̹̞̮͕Ý̷͕̖̠̫͙͙̮̲͖̅̆̀̎͝Ṯ̸̨̢͎̗́̑̈̃̏̋̓͝͝2̶̟̗̳͚̲͆N̶̝̤̳̤̈́̋̉̾̈p̴͍͓̥̭͉͙̭̺̳͌ͅQ̷̩̹̝̹̠͉̼̗̣̂͆͊̓͝ͅU̴̡̧̯̞̔̑͒̓̓͐̕̚͜J̶̢̤͉͎̑̓̆̈L̵̲͍̰͓̣͕̱̭̫̐̽̍̊̊Ů̸̫̾̈́̑̇̂͘y̶̡͖̭͛̆́̌͊͊9̸̣͎̘̉̉̚V̴̢̨̖̥̰̔̅̌̄͘̕l̵̡̙̰̦̳̮̲̺͉̋̉̂́̓̔ͅ3̵̨̩̈́5̶͔̖͓̮̅̋̉A̵̡̱̝̼̱̳͛́̕M̴̳̮̱̞̝͓̗̱̼̑̽͜6̵̮̖̭̹̗͕̲̣̓͆̄͛̊͐͘͘H̷̬̗̱̖̤͕̃̚w̷̮̣͎͈̯̖̓̈́̓̾͒̇̅̽͘͘ͅ9̶͔̗̹͍́̌̽͋͆̎̈́͝͝O̸̳̗̟̞͖̣͌̅̏͌͐̿͘+̴͖̠͎͔͈̖̫̆́̍̓̂͠͠ͅ+̶̟̹͔̰̔͠͝K̸̘̍̇͗͋̔̍͗͘͠9̴̼͉̼̞͛̃̄̈́̌͒7̵̩̪̻̯͈̃̏͌̏̂̈́̅͆V̴̛̗̅̾̏͂͆0̴̤̻͈̫̥͉͖͍͕̀͂̈͛̈́̕ͅ2̴̪̐̈̕̚͝g̷̢̲̝̼͉̯̞̏́͝D̴̖͉̦̯͉͂D̵̻̯̙̱̟̊̀̒́̅̒̕J̷̢̥̯̊̊͊̿͊͗͘͝d̶̡̟̙͎̞̲̦̗͙͌̋̈́k̶͔̙̠͆̿͛̄̇͘m̴̨̹̬̉̊̾͝ỷ̸̞̜̮͔̊̾̍̏̀̀͘͠T̸̛͎͕̟̦͚̣̤͂́̔̎̄̚͠D̷̼͇̟̺̦̮͈͚̓̾̓̈́͘ṱ̴̲͈̰͎̻̀̓̕Q̶̢͖̣͚̲̮̟̙̰̘̒̈́Ő̷̝̪̠̠̜̒̈̊́̐͜G̸̨̪̮̪̪̞͇̹̲͆͌͜Ạ̶̫̯̖̭͔͔̼̗̲̉̈̽̓̓̂̇̑g̵͕̻̦͗̃̿̿̍͆͋̔͝ų̶̬̜͎̓̾͋͗̓́͑͠Í̴̢͍͈̭̋͆̋̅͒̐Ẓ̵̖̰͌̾̓I̵̢͖̣̗͚̠̬͍͇͖͐́̌̈͗̓ȁ̴̪̺̀̀͂̄̅̚͝9̵̩̠͔̬̠͉̀̊͒̎̿͝t̷̖͎́́̑a̵̢͖̼̖͙̺̗͐̊̉͒Ṋ̶̺͖̥̏̀̄̍̔̂̌̂͠Ơ̵͖̘̆̇̀͒̉b̶̡̧̛͓̬͍̪̒̄̓̓͒̕v̴̡̬̟͕̘̈S̴̙͛̋Ẅ̵̞͖́͑̒̏͘͘͘r̸̥̭͇̼̦̩̼̜̩̒͂̽̈̕͜3̷̨̺͍̍+̶̬͋̏͑͌L̸̻̙̘̤̝̯͂̀̍͊͗̾ẘ̵̫̞͙̣̩̉̾=̷͎̙̭̜̤̩̘̈͊͆͛͊̏̕=̴̥̣̻̪̿")
	wait(3)
	warnedpeople("ḱ̵̦̺̐͑̅̕̚͠3̴̢̖̺͎̞͛f̷̺̓͊̂͠͝a̷͕̙̥̼͎͖̳̽̒͒̊̿̍̈͆͠ͅT̵̳̝̓͑̂̍́̈́̊͂̕͝8̶̳̲̓R̵͉̪̟͋͐̇̓͐ọ̸̬̫̇͂͂̄͂̇͑ů̷̡̱͚̠̞̠̩͉͈q̷̩̣͒̅̌̓̏͋͂̀̕͘j̶̠̟̟͚̗̹̎͊͘͝ͅj̴͚̙̱̞͔̍̋̍̉͊̃̑͝H̸͈̻̤͋ͅE̸̜̥̠̎̈́͋̑͐͛̍̚͘͝K̷̡̜̜̮͕͚̖͇̏̒V̴̲͛̀͌j̷̟̬̤́͘8̷̧̨̨̥̘̣̪͕̥̉̅̌̽̅̈̈́͜͝S̶̨̡̲̼̮̠̻̰͎͊̌̎͑͒̈́Ơ̸̪̦͇̞̹̞̮͕Ý̷͕̖̠̫͙͙̮̲͖̅̆̀̎͝Ṯ̸̨̢͎̗́̑̈̃̏̋̓͝͝2̶̟̗̳͚̲͆N̶̝̤̳̤̈́̋̉̾̈p̴͍͓̥̭͉͙̭̺̳͌ͅQ̷̩̹̝̹̠͉̼̗̣̂͆͊̓͝ͅU̴̡̧̯̞̔̑͒̓̓͐̕̚͜J̶̢̤͉͎̑̓̆̈L̵̲͍̰͓̣͕̱̭̫̐̽̍̊̊Ů̸̫̾̈́̑̇̂͘y̶̡͖̭͛̆́̌͊͊9̸̣͎̘̉̉̚V̴̢̨̖̥̰̔̅̌̄͘̕l̵̡̙̰̦̳̮̲̺͉̋̉̂́̓̔ͅ3̵̨̩̈́5̶͔̖͓̮̅̋̉A̵̡̱̝̼̱̳͛́̕M̴̳̮̱̞̝͓̗̱̼̑̽͜6̵̮̖̭̹̗͕̲̣̓͆̄͛̊͐͘͘H̷̬̗̱̖̤͕̃̚w̷̮̣͎͈̯̖̓̈́̓̾͒̇̅̽͘͘ͅ9̶͔̗̹͍́̌̽͋͆̎̈́͝͝O̸̳̗̟̞͖̣͌̅̏͌͐̿͘+̴͖̠͎͔͈̖̫̆́̍̓̂͠͠ͅ+̶̟̹͔̰̔͠͝K̸̘̍̇͗͋̔̍͗͘͠9̴̼͉̼̞͛̃̄̈́̌͒7̵̩̪̻̯͈̃̏͌̏̂̈́̅͆V̴̛̗̅̾̏͂͆0̴̤̻͈̫̥͉͖͍͕̀͂̈͛̈́̕ͅ2̴̪̐̈̕̚͝g̷̢̲̝̼͉̯̞̏́͝D̴̖͉̦̯͉͂D̵̻̯̙̱̟̊̀̒́̅̒̕J̷̢̥̯̊̊͊̿͊͗͘͝d̶̡̟̙͎̞̲̦̗͙͌̋̈́k̶͔̙̠͆̿͛̄̇͘m̴̨̹̬̉̊̾͝ỷ̸̞̜̮͔̊̾̍̏̀̀͘͠T̸̛͎͕̟̦͚̣̤͂́̔̎̄̚͠D̷̼͇̟̺̦̮͈͚̓̾̓̈́͘ṱ̴̲͈̰͎̻̀̓̕Q̶̢͖̣͚̲̮̟̙̰̘̒̈́Ő̷̝̪̠̠̜̒̈̊́̐͜G̸̨̪̮̪̪̞͇̹̲͆͌͜Ạ̶̫̯̖̭͔͔̼̗̲̉̈̽̓̓̂̇̑g̵͕̻̦͗̃̿̿̍͆͋̔͝ų̶̬̜͎̓̾͋͗̓́͑͠Í̴̢͍͈̭̋͆̋̅͒̐Ẓ̵̖̰͌̾̓I̵̢͖̣̗͚̠̬͍͇͖͐́̌̈͗̓ȁ̴̪̺̀̀͂̄̅̚͝9̵̩̠͔̬̠͉̀̊͒̎̿͝t̷̖͎́́̑a̵̢͖̼̖͙̺̗͐̊̉͒Ṋ̶̺͖̥̏̀̄̍̔̂̌̂͠Ơ̵͖̘̆̇̀͒̉b̶̡̧̛͓̬͍̪̒̄̓̓͒̕v̴̡̬̟͕̘̈S̴̙͛̋Ẅ̵̞͖́͑̒̏͘͘͘r̸̥̭͇̼̦̩̼̜̩̒͂̽̈̕͜3̷̨̺͍̍+̶̬͋̏͑͌L̸̻̙̘̤̝̯͂̀̍͊͗̾ẘ̵̫̞͙̣̩̉̾=̷͎̙̭̜̤̩̘̈͊͆͛͊̏̕=̴̥̣̻̪̿")
	for i=0, 6, 0.1 / Animation_Speed do
		Swait()
		RightHip.C0= Clerp(RightHip.C0,CF(1,0.35 - 0.05 * math.cos(SINE / 32),-0.7)*ANGLES(math.rad(-20),math.rad(75),math.rad(0))*ANGLES(math.rad(-3),math.rad(0 - 1 * math.cos(SINE / 56)),math.rad(25 - 2 * math.cos(SINE / 32))),.1)
		LeftHip.C0= Clerp(LeftHip.C0,CF(-1,-1.125 - 0.05 * math.cos(SINE / 32),-0.6)*ANGLES(math.rad(-105),math.rad(-75),math.rad(0))*ANGLES(math.rad(-3),math.rad(0 - 1 * math.cos(SINE / 56)),math.rad(-25 + 2 * math.cos(SINE / 32))),.1)
		RootJoint.C0= Clerp(RootJoint.C0,ROOTC0*CF(0,0,-1.3 + 0.05 * math.cos(SINE / 32))*ANGLES(math.rad(7.5 - 2 * math.cos(SINE / 32)),math.rad(0),math.rad(0)),.1)
		Neck.C0= Clerp(Neck.C0,NECKC0*ANGLES(math.rad(25 - 2 * math.cos(SINE / 37)),math.rad(0 + 1 * math.cos(SINE / 58)),math.rad(0 + 2 * math.cos(SINE / 53))),.1)
		RightShoulder.C0= Clerp(RightShoulder.C0,CF(1.35,0.5 + 0.025 * math.cos(SINE / 45),0)*ANGLES(math.rad(165 + 5 * math.cos(SINE / 74)),math.rad(1 - 3 * math.cos(SINE / 53)),math.rad(-15 + 3 * math.cos(SINE / 45))),.1)
		LeftShoulder.C0= Clerp(LeftShoulder.C0,CF(-1.35,0.5 + 0.025 * math.cos(SINE / 45),0)*ANGLES(math.rad(165 - 3 * math.cos(SINE / 73)),math.rad(2 - 1 * math.cos(SINE / 55)),math.rad(15 - 3 * math.cos(SINE / 45))),.1)
	end
	wait(2)
	chatfunc("pathetic. . .")
	ATTACK = false
	Rooted = false
end

function kicksher() 
	ATTACK = true
	Rooted = true
	mainIntro()
	MODE = "kicksher"
	sick.SoundId = "rbxassetid://5482245516"
	sick.Volume = 10
	sick.PlaybackSpeed = 1
	sick.TimePosition = 0
	ATTACK = false
	Rooted = false
	lightning.Enabled = false
	eeeffecto.Enabled = false
	lightningArm.Enabled = false
	refec.Enabled = false
	Rifle.Parent = nil
	BanishGun.Parent = nil
	SniperGun.Parent = Character
	Katana.Parent = nil
end

local PP = {"Burn all the pain away..","Nothing can be more painfull"}

function depressed() 
	ATTACK = true
	Rooted = true
	mainIntro()
	MODE = "depressed"
	sick.SoundId = "rbxassetid://4738376177"
	sick.Volume = 10
	sick.PlaybackSpeed = 1
	sick.TimePosition = 0
	chatfunc(PP[MRANDOM(1, #PP)], Head, 10, 0.9)
	ATTACK = false
	Rooted = false
	lightning.Enabled = false
	eeeffecto.Enabled = false
	lightningArm.Enabled = false
	refec.Enabled = false
	Rifle.Parent = nil
	BanishGun.Parent = nil
	SniperGun.Parent = nil
	Katana.Parent = nil
end

function undertailP2() 
	ATTACK = true
	Rooted = true
	mainIntro()
	MODE = "Undertail - phase 2"
	sick.SoundId = "rbxassetid://5365673582"
	sick.Volume = 10
	sick.PlaybackSpeed = 1
	sick.TimePosition = 0
	ATTACK = false
	Rooted = false
	lightning.Enabled = false
	eeeffecto.Enabled = false
	lightningArm.Enabled = false
	refec.Enabled = false
	Rifle.Parent = nil
	BanishGun.Parent = nil
	SniperGun.Parent = nil
	Katana.Parent = nil
end

function Undesired() 
	ATTACK = true
	Rooted = true
	mainIntro()
	MODE = "Undesired"
	sick.SoundId = "rbxassetid://6149823380"
	sick.Volume = 10
	sick.PlaybackSpeed = 1.1
	sick.TimePosition = 0
	ATTACK = false
	Rooted = false
	lightning.Enabled = false
	eeeffecto.Enabled = false
	lightningArm.Enabled = false
	refec.Enabled = false
	Rifle.Parent = nil
	BanishGun.Parent = nil
	SniperGun.Parent = nil
	Katana.Parent = nil
end


function Spooky() 
	ATTACK = true
	Rooted = true
	mainIntro()
	MODE = "Scary"
	sick.SoundId = "rbxassetid://199531143"
	sick.Volume = 10
	sick.PlaybackSpeed = 0.95
	sick.TimePosition = 0
	ATTACK = false
	Rooted = false
	lightning.Enabled = false
	eeeffecto.Enabled = false
	lightningArm.Enabled = false
	refec.Enabled = false
	Rifle.Parent = nil
	BanishGun.Parent = nil
	SniperGun.Parent = nil
	Katana.Parent = nil
end

function test() 
	ATTACK = true
	Rooted = true
	mainIntro()
	MODE = "test"
	sick.SoundId = "rbxassetid://2256171111"
	sick.Volume = 10
	sick.PlaybackSpeed = 0.89
	sick.TimePosition = 0
	ATTACK = false
	Rooted = false
	lightning.Enabled = false
	eeeffecto.Enabled = false
	lightningArm.Enabled = false
	refec.Enabled = true
	Rifle.Parent = nil
	BanishGun.Parent = nil
	SniperGun.Parent = nil
	Katana.Parent = nil
end


function Dear_God()
	ATTACK = true
	Rooted = true
	sick.SoundId = "rbxassetid://0"
	MODE = "Dear God"
	chatfunc("I'M TIRED....")
	bosschatfunc("I'M TIRED....",BrickColor.new'Really red'.Color,BrickColor.new'Black'.Color,200)
	warnedpeople("I'M TIRED....")
	for i=0, 0.6, 0.01 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , 0 , -0.7) * ANGLES(RAD(MRANDOM(-15,15)), RAD(MRANDOM(-15,15)), RAD(MRANDOM(-15,15))), 0.35 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(30+MRANDOM(-15,15)), RAD(0+MRANDOM(-15,15)), RAD(0+MRANDOM(-15,15))), 0.35 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(160+MRANDOM(-15,15)), RAD(0+MRANDOM(-15,15)), RAD(-30+MRANDOM(-15,15)))* RIGHTSHOULDERC0, 0.35 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(160+MRANDOM(-15,15)), RAD(0+MRANDOM(-15,15)), RAD(30+MRANDOM(-15,15))) * LEFTSHOULDERC0, 0.35 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.5, -0.5) * ANGLES(RAD(0), RAD(0), RAD(0)) * ANGLES(RAD(0), RAD(90), RAD(0)), 0.35 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 , 0) * ANGLES(RAD(-60), RAD(0), RAD(0)) * ANGLES(RAD(0), RAD(-90), RAD(0)), 0.35 / Animation_Speed)
	end
	wait(2)
	for i=0, 0.6, 0.01 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, -0.1 + 0.1 * Cos(SINE / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.15/3)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.9 - 0.1 * Cos(SINE / 20), 0.025 * Cos(SINE / 20)) * Euler(0, 1.6, 0) * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15/3)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.9 - 0.1 * Cos(SINE / 20), 0.025 * Cos(SINE / 20)) * Euler(0, -1.6, 0) * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15/3)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(30+MRANDOM(-15,15)), RAD(0+MRANDOM(-15,15)), RAD(0+MRANDOM(-15,15))), 0.35 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(160+MRANDOM(-15,15)), RAD(0+MRANDOM(-15,15)), RAD(-30+MRANDOM(-15,15)))* RIGHTSHOULDERC0, 0.35 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(160+MRANDOM(-15,15)), RAD(0+MRANDOM(-15,15)), RAD(30+MRANDOM(-15,15))) * LEFTSHOULDERC0, 0.35 / Animation_Speed)
	end
	bosschatfunc("I'M ƬIЯΣD ӨF YӨЦ",BrickColor.new'Really red'.Color,BrickColor.new'Black'.Color,200)
	chatfunc("I'M ƬIЯΣD ӨF YӨЦ")
	warnedpeople("I'M ƬIЯΣD ӨF YӨЦ")
	MODE = "Dear God"
	sick.SoundId = "rbxassetid://5997090768"
	sick.Volume = 10
	sick.PlaybackSpeed = 1
	sick.TimePosition = 0
	ATTACK = false
	Rooted = false
	lightning.Enabled = false
	eeeffecto.Enabled = false
	lightningArm.Enabled = false
	refec.Enabled = false
	Rifle.Parent = nil
	BanishGun.Parent = nil
	SniperGun.Parent = nil
	Katana.Parent = nil
end

function chill()
	ATTACK = true
	Rooted = true
	mainIntro()
	MODE = "chill"
	sick.SoundId = "rbxassetid://866334508"
	sick.Volume = 10
	sick.PlaybackSpeed = 0.8
	sick.TimePosition = 0
	ATTACK = false
	Rooted = false
	lightning.Enabled = false
	eeeffecto.Enabled = true
	lightningArm.Enabled = false
	refec.Enabled = false
	Rifle.Parent = nil
	BanishGun.Parent = nil
	SniperGun.Parent = nil
	Katana.Parent = nil
end

function NIGHTMARE()
	ATTACK = true
	Rooted = true
	mainIntro()
	MODE = "nightmare"
	sick.SoundId = "rbxassetid://5541841785"
	sick.Volume = 10
	sick.PlaybackSpeed = 0.8
	ATTACK = false
	Rooted = false
	lightning.Enabled = false
	eeeffecto.Enabled = true
	lightningArm.Enabled = false
	refec.Enabled = false
	Rifle.Parent = nil
	BanishGun.Parent = nil
	SniperGun.Parent = nil
	Katana.Parent = nil
end

function katana() 
	ATTACK = true
	Rooted = true
	mainIntro()
	MODE = "Katana"
	sick.SoundId = "rbxassetid://1237507010"
	sick.Volume = 10
	sick.PlaybackSpeed = 0.87
	sick.TimePosition = 0
	ATTACK = false
	Rooted = false
	lightning.Enabled = false
	eeeffecto.Enabled = false
	lightningArm.Enabled = false
	refec.Enabled = true
	Rifle.Parent = nil
	BanishGun.Parent = nil
	SniperGun.Parent = nil
	Katana.Parent = Character
end

function fuckyes()
	ATTACK = true
	Rooted = true	
	local HITFLOOR, HITPOS = Raycast(VT(0,250,0), (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 500, Character)
	MODE = "guy man"
	sick.SoundId = "rbxassetid://4746562270"
	sick.Volume = 10
	sick.PlaybackSpeed = 0.95
	sick.TimePosition = 0
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, -0.5, -0.5 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(45), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(35 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(85), RAD(0), RAD(-52)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(85), RAD(0), RAD(51)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(45), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(45), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
	end
	wait(2.5)
	chatfunc("You shal not pass what cannot be reasoned with.",5)
	wait(2.5)
	chatfunc("With what cannot be beaten or destroyed.",5)
	wait(7)
	chatfunc("You will perish.",5)
	wait(2)
	CreateSound("134978657", Effects, 5, 1)
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -1 * Player_Size) * ANGLES(RAD(45), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(-45), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(71), RAD(0), RAD(-35)) * RIGHTSHOULDERC0, 0.2 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(71), RAD(0), RAD(35)) * LEFTSHOULDERC0, 0.2 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.3 * Player_Size, -1 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-20)), 0.2 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.3 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(5), RAD(0)) * ANGLES(RAD(45), RAD(0), RAD(0)), 0.2 / Animation_Speed)
	end
	CreateSound(laughs[MRANDOM(1, #laughs)], Head, 10, 0.9)
	repeat
		Swait()
		local CFRAME = CF(Torso.Position)*ANGLES(RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)))
		MagicSphere(VT(0,0,0),15,CFRAME,"Really red",VT(0.1,0.1,55))
		MagicSphere(VT(0,0,0),15,CFRAME,"Really black",VT(2,2,2))
		MagicSphere(VT(0.1,0.1,0.1),15,CFRAME,"Really black",VT(0.1,0.1,55))
		MagicSphere(VT(0,0,0),15,RightArm.CFrame,"Really red",VT(1,15,1))
		MagicSphere(VT(0,0,0),15,CFRAME,"Really red",VT(5,5,5))
	until sick.TimePosition > 20
	CreateSound("2691586", Effects, 5, 1)
	CreateSound("181384451", Effects, 10, 0.6)
	local CFRAME = CF(Torso.Position)*ANGLES(RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)))
	CreateRing(VT(45,5,0)*3,false,0,45,Torso.CFrame*ANGLES(RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180))),"Really red",VT(-1,0,0)*3)
	MagicSphere(VT(0,0,0),15,CFRAME,"Really black",VT(0.1,0.1,55))
	MagicSphere(VT(0,0,0),15,CFRAME,"Really black",VT(2,2,2))
	MagicSphere(VT(0.1,0.1,0.1),15,CFRAME,"Really red",VT(0.1,0.1,55))
	--CreateRing(VT(0,0,0),false,0,150,CF(HITPOS)*ANGLES(RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180))),"Really red",VT(0.2,0.2,0))
	RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 3) * ANGLES(RAD(-15), RAD(0), RAD(0)), 0.15 / Animation_Speed)
	Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-35), RAD(0), RAD(0)), 0.15 / Animation_Speed)
	RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(45)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
	LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-45)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
	RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(-15), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
	LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(-15), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(-12)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
	end
	warnedpeople2("I̶ ̶A̶M̶ ̶D̶E̶T̶E̶R̶M̶I̶N̶E̶D̶")
	ATTACK = false
	Rooted = false
	lightning.Enabled = false
	eeeffecto.Enabled = false
	lightningArm.Enabled = false
	refec.Enabled = false
	Rifle.Parent = nil
	BanishGun.Parent = nil
	SniperGun.Parent = nil
	Katana.Parent = nil
	ATTACK = false
	Rooted = false
end

function memeGod() 
	ATTACK = true
	Rooted = true
	eeeffecto.Enabled = false
	lightning.Enabled = false
	sick.TimePosition = 0
	sick.SoundId = "rbxassetid://3752451341"
	sick.Volume = 10
	sick.PlaybackSpeed = 0.95
	sick.TimePosition = 0
	for i = 0, 9, 0.1 do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, -0.1 + 0.1 * Cos(SINE / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.15/3)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * angles(Rad(0), Rad(0), Rad(0)), 0.3/3)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.9 - 0.1 * Cos(SINE / 20), 0.025 * Cos(SINE / 20)) * Euler(0, 1.6, 0) * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15/3)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.9 - 0.1 * Cos(SINE / 20), 0.025 * Cos(SINE / 20)) * Euler(0, -1.6, 0) * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15/3)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.75, 0.5 + 0.05 * SIN(SINE / 12), -0.7) * ANGLES(RAD(0), RAD(0), RAD(-95)) * ANGLES(RAD(5), RAD(90), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.75, 0.35 + 0.05 * SIN(SINE / 12), -0.6) * ANGLES(RAD(0), RAD(0), RAD(92)) * ANGLES(RAD(0), RAD(90), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
	end
	MODE = "meme"
	warnedpeople("Now Concentrate")
	wait(0.5)
	for i = 0, 9, 0.1 do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, -0.1 + 0.1 * Cos(SINE / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.15/3)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * angles(Rad(0), Rad(0), Rad(0)), 0.3/3)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.9 - 0.1 * Cos(SINE / 20), 0.025 * Cos(SINE / 20)) * Euler(0, 1.6, 0) * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15/3)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.9 - 0.1 * Cos(SINE / 20), 0.025 * Cos(SINE / 20)) * Euler(0, -1.6, 0) * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15/3)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0 * Sin(SINE / 30), 0.025 * Cos(SINE / 20)) * RIGHTSHOULDERC0 * angles(Rad(0), Rad(0), Rad(90)), 0.1)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
	end
	warnedpeople("On how it makes you feel")
	wait(2.3)
	warnedpeople("Now let your hand drift across the canvas")
	wait(1)
	warnedpeople2("Rewind Time Everybody.")
	ATTACK = false
	Rooted = false
	lightning.Enabled = false
	eeeffecto.Enabled = false
	lightningArm.Enabled = false
	refec.Enabled = false
	Rifle.Parent = nil
	BanishGun.Parent = nil
	SniperGun.Parent = nil
	Katana.Parent = nil
end

function karma()
	ATTACK = true
	Rooted = true
	sick.SoundId = "rbxassetid://3718415720"
	sick.Volume = 10
	sick.PlaybackSpeed = 0.95
	chatfunc("corruption event..")
	for i=0, 0.6, 0.01 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, -0.1 + 0.1 * Cos(SINE / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.15/3)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * angles(Rad(0), Rad(0), Rad(0)), 0.3/3)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.9 - 0.1 * Cos(SINE / 20), 0.025 * Cos(SINE / 20)) * Euler(0, 1.6, 0) * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15/3)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.9 - 0.1 * Cos(SINE / 20), 0.025 * Cos(SINE / 20)) * Euler(0, -1.6, 0) * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15/3)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(12)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
	end
	chatfunc("corruption time...")
	for i=0, 0.6, 0.01 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, -0.1 + 0.1 * Cos(SINE / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.15/3)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.9 - 0.1 * Cos(SINE / 20), 0.025 * Cos(SINE / 20)) * Euler(0, 1.6, 0) * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15/3)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.9 - 0.1 * Cos(SINE / 20), 0.025 * Cos(SINE / 20)) * Euler(0, -1.6, 0) * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15/3)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(30+MRANDOM(-15,15)), RAD(0+MRANDOM(-15,15)), RAD(0+MRANDOM(-15,15))), 0.35 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(160+MRANDOM(-15,15)), RAD(0+MRANDOM(-15,15)), RAD(-30+MRANDOM(-15,15)))* RIGHTSHOULDERC0, 0.35 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(160+MRANDOM(-15,15)), RAD(0+MRANDOM(-15,15)), RAD(30+MRANDOM(-15,15))) * LEFTSHOULDERC0, 0.35 / Animation_Speed)
	end
	chatfunc("you have been.. CORRUPTED")
	for i=0, 0.6, 0.01 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , 0 , -0.7) * ANGLES(RAD(MRANDOM(-15,15)), RAD(MRANDOM(-15,15)), RAD(MRANDOM(-15,15))), 0.35 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(30+MRANDOM(-15,15)), RAD(0+MRANDOM(-15,15)), RAD(0+MRANDOM(-15,15))), 0.35 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(160+MRANDOM(-15,15)), RAD(0+MRANDOM(-15,15)), RAD(-30+MRANDOM(-15,15)))* RIGHTSHOULDERC0, 0.35 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(160+MRANDOM(-15,15)), RAD(0+MRANDOM(-15,15)), RAD(30+MRANDOM(-15,15))) * LEFTSHOULDERC0, 0.35 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.5, -0.5) * ANGLES(RAD(0), RAD(0), RAD(0)) * ANGLES(RAD(0), RAD(90), RAD(0)), 0.35 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 , 0) * ANGLES(RAD(-60), RAD(0), RAD(0)) * ANGLES(RAD(0), RAD(-90), RAD(0)), 0.35 / Animation_Speed)
	end
	sick.SoundId = 'rbxassetid://3718415720'
	sick.Volume = 10
	sick.PlaybackSpeed = 0.95
	sick.Volume = 10
	sick.PlaybackSpeed = 0.95
	MODE = "KARMA"
	ATTACK = false
	Rooted = false
	lightning.Enabled = false
	eeeffecto.Enabled = false
	lightningArm.Enabled = false
	refec.Enabled = false
	Rifle.Parent = nil
	BanishGun.Parent = nil
	SniperGun.Parent = nil
	Katana.Parent = nil
end

function h3ll()
	ATTACK = true
	Rooted = true
	MODE = "HELL"
	sick.SoundId = 'rbxassetid://693163614'
	sick.Volume = 10
	sick.PlaybackSpeed = 0.95
	sick.TimePosition = 0
	for i = 0, 9, 0.1 do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, -0.1 + 0.1 * Cos(SINE / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.15/3)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * angles(Rad(0), Rad(0), Rad(0)), 0.3/3)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.9 - 0.1 * Cos(SINE / 20), 0.025 * Cos(SINE / 20)) * Euler(0, 1.6, 0) * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15/3)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.9 - 0.1 * Cos(SINE / 20), 0.025 * Cos(SINE / 20)) * Euler(0, -1.6, 0) * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15/3)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.75, 0.5 + 0.05 * SIN(SINE / 12), -0.7) * ANGLES(RAD(0), RAD(0), RAD(-95)) * ANGLES(RAD(5), RAD(90), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.75, 0.35 + 0.05 * SIN(SINE / 12), -0.6) * ANGLES(RAD(0), RAD(0), RAD(92)) * ANGLES(RAD(0), RAD(90), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
	end
	warnedpeople("It's a beautiful day outside.")
	wait(1.2)
	warnedpeople("Birds are singing, flowers are blooming")
	wait(2.2)
	warnedpeople("On days like this.. Kids like you..")
	wait(0.5)
	for i = 0, 9, 0.1 do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, -0.1 + 0.1 * Cos(SINE / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.15/3)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * angles(Rad(0), Rad(0), Rad(0)), 0.3/3)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.9 - 0.1 * Cos(SINE / 20), 0.025 * Cos(SINE / 20)) * Euler(0, 1.6, 0) * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15/3)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.9 - 0.1 * Cos(SINE / 20), 0.025 * Cos(SINE / 20)) * Euler(0, -1.6, 0) * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15/3)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0 * Sin(SINE / 30), 0.025 * Cos(SINE / 20)) * RIGHTSHOULDERC0 * angles(Rad(0), Rad(0), Rad(90)), 0.1)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
	end
	warnedpeople2("Should be burning in hell.")
	wait(1.8)
	for i = 0, 9, 0.1 do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, -0.1 + 0.1 * Cos(SINE / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.15/3)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * angles(Rad(0), Rad(0), Rad(0)), 0.3/3)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.9 - 0.1 * Cos(SINE / 20), 0.025 * Cos(SINE / 20)) * Euler(0, 1.6, 0) * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15/3)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.9 - 0.1 * Cos(SINE / 20), 0.025 * Cos(SINE / 20)) * Euler(0, -1.6, 0) * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15/3)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(12)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
	end
	ATTACK = false
	Rooted = false
	lightning.Enabled = false
	eeeffecto.Enabled = false
	lightningArm.Enabled = false
	refec.Enabled = true
	Rifle.Parent = Character
	BanishGun.Parent = nil 
	SniperGun.Parent = nil
	Katana.Parent = nil
	warnedpeople("Turn around kid, It'd be a crime.")
	wait(2.7)
	warnedpeople("I'd don't wanna have to go back on the promise I made for you.")
	wait(3)
	warnedpeople("So don't step over that line.")
	wait(1.8)
	warnedpeople("a real strain you're gonna have a bad time")
	wait(2.9)
	warnedpeople("but kids like you don't play by the rules")
	wait(2.6)
	warnedpeople("but guys like me, it ant easy to be played for fools")
	wait(2.4)
	warnedpeople("So, let's go, let the room get chiller")
	wait(2.3)
	warnedpeople("Let's go, dirty brother killer")
end

function sit()
	ATTACK = true
	Rooted = true
	local LOOP = true
	KEY = Mouse.KeyDown:connect(function(NEWKEY)
		if NEWKEY == "-" then
			KEY:Disconnect()
			LOOP = false
		end
	end)
	repeat
		for i = 0, 0.4, 0.1 / Animation_Speed do
			Swait()
			if LOOP == false then
				break
			end
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -1.70) * ANGLES(RAD(-40), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.3, 0.10) * ANGLES(RAD(-40), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.3, 0.10) * ANGLES(RAD(-40), RAD(0), RAD(0)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(45), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(45), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		end
	until LOOP == false
	ATTACK = false
	Rooted = false
end

function fuck_it()
	ATTACK = true
	Rooted = true
	for i=0, 1.2, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1 + 0.5 * COS(SINE / 12)) * ANGLES(RAD(35), RAD(0), RAD(0)), 0.25 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1.25) - 1)) * ANGLES(RAD(35), RAD(0), RAD(0)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.3, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(200)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.3, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-200)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.5 - 0.05 * COS(SINE / 12), -0.5) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.8 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
	end
	CreateSound(363808674, Torso, 6, 1, false)
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1 + 0.5 * COS(SINE / 12)) * ANGLES(RAD(35), RAD(0), RAD(0)), 0.25 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1.25) - 1)) * ANGLES(RAD(35), RAD(0), RAD(25)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.3, 0.5, 0) * ANGLES(RAD(-40), RAD(50), RAD(200)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.3, 0.5, 0) * ANGLES(RAD(40), RAD(50), RAD(-200)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.5 - 0.05 * COS(SINE / 12), -0.5) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.8 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
	end	
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1 + 0.5 * COS(SINE / 12)) * ANGLES(RAD(35), RAD(0), RAD(0)), 0.25 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1.25) - 1)) * ANGLES(RAD(35), RAD(0), RAD(-25)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.3, 0.5, 0) * ANGLES(RAD(40), RAD(-50), RAD(200)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.3, 0.5, 0) * ANGLES(RAD(-40), RAD(-50), RAD(-200)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.5 - 0.05 * COS(SINE / 12), -0.5) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.8 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
	end
	CreateSound(363808674, Torso, 6, 1, false)
	WACKYEFFECT({Time = 85, EffectType = "Block", Size = VT(0.55,0.55,0.55), Size2 = VT(55,55,55), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0, 0, 0)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = BRICKC"Really red".Color, SoundID = 743499393, SoundPitch = 0.8, SoundVolume = 10})
	for i=0, 0.5, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1 + 0.5 * COS(SINE / 12)) * ANGLES(RAD(35), RAD(0), RAD(0)), 0.25 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1.25) - 1)) * ANGLES(RAD(-35), RAD(0), RAD(0)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-40), RAD(0), RAD(40)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-40), RAD(0), RAD(-40)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.5 - 0.05 * COS(SINE / 12), -0.5) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.8 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
	end
	WACKYEFFECT({Time = 120, EffectType = "Swirl", Size = Vector3.new(40.55,40.55,40.55), Size2 = Vector3.new(95,95,95), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0, 0, 0), MoveToPos = nil, RotationX = 30, RotationY = 30, RotationZ = 30, Material = "Neon", Color = Color3.new(0,0,0), SoundID = 743521450, SoundPitch = 0.95, SoundVolume = 6})
	WACKYEFFECT({Time = 120, EffectType = "Slash", Size = Vector3.new(3.55,3.5,3.5), Size2 = Vector3.new(130,3.5,3.5), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0, 0, 0), MoveToPos = nil, RotationX = 30, RotationY = 30, RotationZ = 30, Material = "Neon", Color = Color3.new(1,0,0), SoundID = 0, SoundPitch = 0.95, SoundVolume = 6})
	WACKYEFFECT({Time = 120, EffectType = "Slash", Size = Vector3.new(3.5,3.5,3.55), Size2 = Vector3.new(3.5,3.5,130), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0, 0, 0), MoveToPos = nil, RotationX = 30, RotationY = 30, RotationZ = 30, Material = "Neon", Color = Color3.new(0,0,0), SoundID = 0, SoundPitch = 0.95, SoundVolume = 6})
	WACKYEFFECT({Time = 120, EffectType = "Swirl", Size = Vector3.new(3.5,3.55,3.5), Size2 = Vector3.new(3.5,130,3.5), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0, 0, 0), MoveToPos = nil, RotationX = 30, RotationY = 30, RotationZ = 30, Material = "Neon", Color = Color3.new(1,0,0), SoundID = 0, SoundPitch = 0.95, SoundVolume = 6})
	WACKYEFFECT({Time = 55, EffectType = "Sphere", Size = Vector3.new(3.55,3.55,3.55), Size2 = Vector3.new(95,95,95), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0, 0, 0), MoveToPos = nil, RotationX = 30, RotationY = 30, RotationZ = 30, Material = "Neon", Color = Color3.new(0,0,0), SoundID = 743521450, SoundPitch = 0.95, SoundVolume = 6})
	WACKYEFFECT({Time = 70, EffectType = "Sphere", Size = Vector3.new(3.55,3.5,3.5), Size2 = Vector3.new(130,3.5,3.5), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0, 0, 0), MoveToPos = nil, RotationX = 30, RotationY = 30, RotationZ = 30, Material = "Neon", Color = Color3.new(1,0,0), SoundID = 0, SoundPitch = 0.95, SoundVolume = 6})
	WACKYEFFECT({Time = 70, EffectType = "Sphere", Size = Vector3.new(3.5,3.5,3.55), Size2 = Vector3.new(3.5,3.5,130), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0, 0, 0), MoveToPos = nil, RotationX = 30, RotationY = 30, RotationZ = 30, Material = "Neon", Color = Color3.new(0,0,0), SoundID = 0, SoundPitch = 0.95, SoundVolume = 6})
	WACKYEFFECT({Time = 70, EffectType = "Sphere", Size = Vector3.new(3.5,3.55,3.5), Size2 = Vector3.new(3.5,130,3.5), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0, 0, 0), MoveToPos = nil, RotationX = 30, RotationY = 30, RotationZ = 30, Material = "Neon", Color = Color3.new(1,0,0), SoundID = 0, SoundPitch = 0.95, SoundVolume = 6})
	wait(0.8)
	WACKYEFFECT({Time = 55, EffectType = "Sphere", Size = Vector3.new(3.55,3.55,3.55), Size2 = Vector3.new(95,95,95), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0, 0, 0), MoveToPos = nil, RotationX = 30, RotationY = 30, RotationZ = 30, Material = "Neon", Color = Color3.new(0,0,0), SoundID = 743521450, SoundPitch = 0.95, SoundVolume = 6})
	WACKYEFFECT({Time = 70, EffectType = "Sphere", Size = Vector3.new(3.55,3.5,3.5), Size2 = Vector3.new(130,3.5,3.5), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0, 0, 0), MoveToPos = nil, RotationX = 30, RotationY = 30, RotationZ = 30, Material = "Neon", Color = Color3.new(1,0,0), SoundID = 0, SoundPitch = 0.95, SoundVolume = 6})
	WACKYEFFECT({Time = 70, EffectType = "Sphere", Size = Vector3.new(3.5,3.5,3.55), Size2 = Vector3.new(3.5,3.5,130), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0, 0, 0), MoveToPos = nil, RotationX = 30, RotationY = 30, RotationZ = 30, Material = "Neon", Color = Color3.new(0,0,0), SoundID = 0, SoundPitch = 0.95, SoundVolume = 6})
	WACKYEFFECT({Time = 70, EffectType = "Sphere", Size = Vector3.new(3.5,3.55,3.5), Size2 = Vector3.new(3.5,130,3.5), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0, 0, 0), MoveToPos = nil, RotationX = 30, RotationY = 30, RotationZ = 30, Material = "Neon", Color = Color3.new(1,0,0), SoundID = 0, SoundPitch = 0.95, SoundVolume = 6})
	wait(0.8)
	WACKYEFFECT({Time = 55, EffectType = "Sphere", Size = Vector3.new(3.55,3.55,3.55), Size2 = Vector3.new(95,95,95), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0, 0, 0), MoveToPos = nil, RotationX = 30, RotationY = 30, RotationZ = 30, Material = "Neon", Color = Color3.new(0,0,0), SoundID = 743521450, SoundPitch = 0.95, SoundVolume = 6})
	WACKYEFFECT({Time = 70, EffectType = "Sphere", Size = Vector3.new(3.55,3.5,3.5), Size2 = Vector3.new(130,3.5,3.5), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0, 0, 0), MoveToPos = nil, RotationX = 30, RotationY = 30, RotationZ = 30, Material = "Neon", Color = Color3.new(1,0,0), SoundID = 0, SoundPitch = 0.95, SoundVolume = 6})
	WACKYEFFECT({Time = 70, EffectType = "Sphere", Size = Vector3.new(3.5,3.5,3.55), Size2 = Vector3.new(3.5,3.5,130), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0, 0, 0), MoveToPos = nil, RotationX = 30, RotationY = 30, RotationZ = 30, Material = "Neon", Color = Color3.new(0,0,0), SoundID = 0, SoundPitch = 0.95, SoundVolume = 6})
	WACKYEFFECT({Time = 70, EffectType = "Sphere", Size = Vector3.new(3.5,3.55,3.5), Size2 = Vector3.new(3.5,130,3.5), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0, 0, 0), MoveToPos = nil, RotationX = 30, RotationY = 30, RotationZ = 30, Material = "Neon", Color = Color3.new(1,0,0), SoundID = 0, SoundPitch = 0.95, SoundVolume = 6})
	wait(0.8)
	WACKYEFFECT({Time = 55, EffectType = "Sphere", Size = Vector3.new(3.55,3.55,3.55), Size2 = Vector3.new(95,95,95), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0, 0, 0), MoveToPos = nil, RotationX = 30, RotationY = 30, RotationZ = 30, Material = "Neon", Color = Color3.new(0,0,0), SoundID = 743521450, SoundPitch = 0.95, SoundVolume = 6})
	WACKYEFFECT({Time = 70, EffectType = "Sphere", Size = Vector3.new(3.55,3.5,3.5), Size2 = Vector3.new(130,3.5,3.5), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0, 0, 0), MoveToPos = nil, RotationX = 30, RotationY = 30, RotationZ = 30, Material = "Neon", Color = Color3.new(1,0,0), SoundID = 0, SoundPitch = 0.95, SoundVolume = 6})
	WACKYEFFECT({Time = 70, EffectType = "Sphere", Size = Vector3.new(3.5,3.5,3.55), Size2 = Vector3.new(3.5,3.5,130), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0, 0, 0), MoveToPos = nil, RotationX = 30, RotationY = 30, RotationZ = 30, Material = "Neon", Color = Color3.new(0,0,0), SoundID = 0, SoundPitch = 0.95, SoundVolume = 6})
	WACKYEFFECT({Time = 70, EffectType = "Sphere", Size = Vector3.new(3.5,3.55,3.5), Size2 = Vector3.new(3.5,130,3.5), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0, 0, 0), MoveToPos = nil, RotationX = 30, RotationY = 30, RotationZ = 30, Material = "Neon", Color = Color3.new(1,0,0), SoundID = 0, SoundPitch = 0.95, SoundVolume = 6})
	sick.TimePosition = 0
	MODE = "fuck"
	warnedpeople("you can run but you ÇÄñ† HÌÐÈ")
	chatfunc("hahahAHAHAHA...")
	CreateSound(laughs[MRANDOM(1, #laughs)], Head, 10, 0.9)
	sick.SoundId = 'rbxassetid://2112150271'
	sick.Volume = 10
	sick.PlaybackSpeed = 0.85
	sick.TimePosition = 0
	ATTACK = false
	Rooted = false
	lightning.Enabled = true
	eeeffecto.Enabled = true
	lightningArm.Enabled = false
	refec.Enabled = false
	Rifle.Parent = Character
	BanishGun.Parent = nil
	SniperGun.Parent = nil
	Katana.Parent = nil
end

local ULTTAUNTS = {
	"907332997",
	"907332670",
	"907330103"
}

function Penumbric_DeathRayKARMA()
	ATTACK = true
	local GYRO = IT("BodyGyro", RootPart)
	GYRO.D = 15
	GYRO.P = 2000
	GYRO.MaxTorque = VT(0, 4000000, 0)
	repeat
		local HIT,POS = CastProperRay(RightArm.Position, Mouse.Hit.p, 1000, Character)
		SpawnTrail3(RightArm.Position,POS)
		if HIT ~= nil then
			if HIT.Parent ~= workspace and HIT.Parent.ClassName ~= "Folder" then
				AOETime2(POS,55)
			end
		end
		AOETime2(POS,8)
		for i=0, 0.2, 0.1 / Animation_Speed do
			Swait()
			Humanoid.CameraOffset = VT(MRANDOM(-50,50)/2.5,MRANDOM(-50,50)/2.5,MRANDOM(-50,50)/2.5)/30
			GYRO.cframe = CF(RootPart.Position, Mouse.Hit.p)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(90)), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)), 0.5 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(90)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5*SIZE, 0.5*SIZE, 0*SIZE) * ANGLES(RAD(0), RAD(0), RAD(-5)) * LEFTSHOULDERC0, 0.8 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		end
		WACKYEFFECT6({Time = 25, EffectType = "Box", Size = VT(2,0,2), Size2 = VT(6,7.5,6)/2, Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame * ANGLES(RAD(MRANDOM(-360,360)), RAD(MRANDOM(-360,360)), RAD(MRANDOM(-360,360))), MoveToPos = RightArm.CFrame*CF(0,0,0).p, RotationX = 0, RotationY = -15, RotationZ = 0, Material = "Neon", Color = Color3.new(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT6({Time = 25, EffectType = "Box", Size = VT(2,0,2), Size2 = VT(6,6.5,6)/2, Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame * ANGLES(RAD(MRANDOM(-360,360)), RAD(MRANDOM(-360,360)), RAD(MRANDOM(-360,360))), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = Color3.new(0,0,0), SoundID = 231917744, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 5})
		WACKYEFFECT6({Time = 25, EffectType = "Box", Size = VT(3,0,3), Size2 = VT(6,6.5,6), Transparency = 0, Transparency2 = 1, CFrame = CF(POS,RightArm.Position) * ANGLES(RAD(MRANDOM(-360,360)), RAD(MRANDOM(-360,360)), RAD(MRANDOM(-360,360))), MoveToPos = nil, RotationX = 0, RotationY = -5, RotationZ = 0, Material = "Neon", Color = Color3.new(0,0,0), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		WACKYEFFECT6({Time = 25, EffectType = "Box", Size = VT(3,0,3), Size2 = VT(6,6.5,6), Transparency = 0, Transparency2 = 1, CFrame = CF(POS,RightArm.Position) * ANGLES(RAD(MRANDOM(-360,360)), RAD(MRANDOM(-360,360)), RAD(MRANDOM(-360,360))), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = Color3.new(0,0,0), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		WACKYEFFECT6({Time = 25, EffectType = "Round Slash", Size = VT(1,0,1)/74, Size2 = VT(4,4.5,4)/74, Transparency = 0, Transparency2 = 1, CFrame = CF(POS,RightArm.Position) * ANGLES(RAD(MRANDOM(-360,360)), RAD(MRANDOM(-360,360)), RAD(MRANDOM(-360,360))), MoveToPos = nil, RotationX = 0, RotationY = -5, RotationZ = 0, Material = "Neon", Color = Color3.new(0,0,0), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8, UseBoomerangMath = true, Boomerang = 12, SizeBoomerang = 45})
		WACKYEFFECT6({Time = 25, EffectType = "Round Slash", Size = VT(1,0,1)/74, Size2 = VT(4,4.5,4)/74, Transparency = 0, Transparency2 = 1, CFrame = CF(POS,RightArm.Position) * ANGLES(RAD(MRANDOM(-360,360)), RAD(MRANDOM(-360,360)), RAD(MRANDOM(-360,360))), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = Color3.new(0,0,0), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8, UseBoomerangMath = true, Boomerang = 12, SizeBoomerang = 45})
	until KEYHOLD == false
	Humanoid.CameraOffset = VT(0,0,0)
	GYRO:remove()	
	ATTACK = false
end

function Karma_Beam()
	ATTACK = true
	Rooted = false
	for i=0, 0.005, 0.05 / Animation_Speed do
		Swait()
		turnto(Mouse.Hit.p)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(60)), 0.5 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)), 0.5 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90+MRANDOM(-90,90)), RAD(0), RAD(60+MRANDOM(-90,90))) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
	end
	repeat
		for i=0, 0.005, 0.05 / Animation_Speed do
			Swait()
			turnto(Mouse.Hit.p)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(60)), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-60)), 0.5 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90+MRANDOM(-90,90)), RAD(0), RAD(60+MRANDOM(-90,90))) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		end
		local val = MRANDOM(1,255)
		local HIT2,POS2 = CastProperRay(RightArm.Position, Mouse.Hit.p, 1000, Character)
		SpawnTrail2(RightArm.Position,POS2)
		if HIT2 ~= nil then
			if HIT2.Parent ~= workspace and HIT2.Parent.ClassName ~= "Folder" then
				Banish(HIT2.Parent)
			end
		end
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(5,0,5), Size2 = VT(1,1.5,1), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame, MoveToPos = RightArm.CFrame*CF(0,0.5,0).p, RotationX = 0, RotationY = -15, RotationZ = 0, Material = "Neon", Color = BrickColor.Random().Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(5,0,5), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = BrickColor.Random().Color, SoundID = 340722848, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(5,0,5), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = CF(POS2,RightArm.Position) * ANGLES(RAD(-90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = -5, RotationZ = 0, Material = "Neon", Color = BrickColor.Random().Color, SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(5,0,5), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = CF(POS2,RightArm.Position) * ANGLES(RAD(-90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = BrickColor.Random().Color, SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		Humanoid.CameraOffset = VT(MRANDOM(-5,5)/2.5,MRANDOM(-5,5)/2.5,MRANDOM(-5,5)/2.5)/30
		for i=0, 0.005, 0.05 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(-5), RAD(0), RAD(60)), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-60)), 0.25 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(130), RAD(15), RAD(90)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		end
	until KEYHOLD == false
	ATTACK = false
	Rooted = false
end

function Beam()
	ATTACK = true
	Rooted = false
	local GYRO = IT("BodyGyro", RootPart)
	GYRO.D = 20
	GYRO.P = 4000
	GYRO.MaxTorque = VT(0, 40000, 0)
	local RING, MESH, DELET = MakeRing()
	local POS = RootPart.Position + VT(0, 25, 0)
	RING.CFrame = CFrame.new(POS, Mouse.Hit.p) * ANGLES(RAD(90), RAD(0), RAD(0))
	CreateSound(459523787, RING, 8, 1, false)
	local BLASTS = {468991944, 468991990}
	coroutine.resume(coroutine.create(function()
		local E = 0
		repeat
			E = E + 5
			GYRO.CFrame = CFrame.new(RootPart.Position, Mouse.Hit.p)
			Swait()
			RING.CFrame = CFrame.new(POS, Mouse.Hit.p) * ANGLES(RAD(90), RAD(E), RAD(0))
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 + 0.45 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(90)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0 + 4.5 * SIN(SINE / 12)), RAD(0), RAD(-90)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.25 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(0), RAD(90)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0.25 * COS(SINE / 12), 0) * ANGLES(RAD(0 - 7.5 * SIN(SINE / 12)), RAD(0 + 7.5 * SIN(SINE / 12)), RAD(-12 - 7.5 * SIN(SINE / 12))) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 + 0.15 * COS(SINE / 12), -0.01) * ANGLES(RAD(-7.5 * SIN(SINE / 12)), RAD(75), RAD(0)) * ANGLES(RAD(-8 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.5 + 0.25 * COS(SINE / 12), -0.5) * ANGLES(RAD(-7.5 * SIN(SINE / 12)), RAD(-90), RAD(0)) * ANGLES(RAD(-8 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
		until ATTACK == false
		GYRO:remove()
		DELET()
	end))
	for i = 1, 50 do
		Swait()
		MESH.Scale = MESH.Scale + VT(22, 0, 22)
	end
	for i = 1, 25 do
		Swait()
		WACKYEFFECT5({
			Time = 15,
			EffectType = "Sphere",
			Size = Vector3.new(4, 4, 4),
			Size2 = Vector3.new(0, 0, 0),
			Transparency = 1,
			Transparency2 = 0,
			CFrame = CFrame.new(RING.Position) * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360))) * CFrame.new(0, 0, 35),
			MoveToPos = RING.Position,
			RotationX = 0,
			RotationY = 0,
			RotationZ = 0,
			Material = "Neon",
			Color = BrickColor.Random().Color,
			SoundID = nil,
			SoundPitch = nil,
			SoundVolume = nil
		})
	end
	local LOOP = 0
	local BEAM = CreatePart(3, Effects, "Neon", 0, 0, BrickColor.Random().Color, "Beam", VT(0, 0, 0), true)
	MakeForm(BEAM, "Cyl")
	CreateSound(BLASTS[MRANDOM(1, #BLASTS)], RING, 5, MRANDOM(9, 11) / 10, false)
	repeat
		local DISTANCE = (RING.Position - Mouse.Hit.p).Magnitude
		if DISTANCE < 2000 then
			BEAM.Size = VT(10 + 2 * COS(SINE / 4), DISTANCE, 10 + 2 * COS(SINE / 4))
			BEAM.CFrame = CFrame.new(RING.Position, Mouse.Hit.p) * CF(0, 0, -DISTANCE / 2) * ANGLES(RAD(90), RAD(0), RAD(0))
			ApplyAoE5(Mouse.Hit.p,3,5,1000,0,false)
			WACKYEFFECT5({
				Time = 35,
				EffectType = "Sphere",
				Size = Vector3.new(10 + 2 * COS(SINE / 4), 10 + 2 * COS(SINE / 4), 10 + 2 * COS(SINE / 4)) * 2,
				Size2 = Vector3.new(5, 75, 5),
				Transparency = 0,
				Transparency2 = 1,
				CFrame = CFrame.new(Mouse.Hit.p) * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360))),
				MoveToPos = nil,
				RotationX = 0,
				RotationY = 0,
				RotationZ = 0,
				Material = "Neon",
				Color = BrickColor.Random().Color,
				SoundID = 2918050487,
				SoundPitch = MRANDOM(9, 12) / 10,
				SoundVolume = 10
			})
			Swait()
			LOOP = LOOP + 1
		end
	until KEYHOLD == false and LOOP >= 35 or DISTANCE >= 2000
	coroutine.resume(coroutine.create(function()
		for i = 1, 15 do
			Swait()
			BEAM.Size = BEAM.Size - Vector3.new(0.2, 0, 0.2)
			BEAM.Transparency = BEAM.Transparency + 0.06666666666666667
		end
		BEAM:remove()
	end))
	ATTACK = false
	Rooted = false
end

function Absoluteum2()
	local HITFLOOR,HITPOS = Raycast(RootPart.Position, (CFrame.new(RootPart.Position, RootPart.Position + Vector3.new(0, -1, 0))).lookVector, 25*SIZE, Character)
	Swait(7.5)
	ApplyAoE(HITPOS,10,5,10,20,false)
	WACKYEFFECT({Time = 10, EffectType = "Wave", Size = Vector3.new(0.45,0.11,0.45)*SIZE, Size2 = Vector3.new(12,3,12), Transparency = 0, Transparency2 = 1, CFrame = CFrame.new(HITPOS), MoveToPos = nil, RotationX = 0, RotationY = 15, RotationZ = 0, Material = "Neon", Color = Color3.new(159/255, 0/255, 0/255), SoundID = 743521450, SoundPitch = 1, SoundVolume = 10})
	bosschatfunc("Look's like It's time to DIE!",BrickColor.new'Really red'.Color,BrickColor.new'Black'.Color,200)
	for i = 1, 45 do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(25 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.15, 0.75, -0.5) * ANGLES(RAD(100), RAD(0), RAD(-70)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.15, 0.25, -0.5) * ANGLES(RAD(90), RAD(0), RAD(80)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
	end
	wait(0.1)
	local HITFLOOR, HITPOS, NORMAL = Raycast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position + Vector3.new(0, -1, 0)).lookVector, 7 * Player_Size, Character)
	if HITFLOOR ~= nil then
		do
			local HITBODIES = {}
			ATTACK = true
			Rooted = true
			local ABSOLUTE = CreatePart(3, Effects, "Neon", 0, 1, "Really red", "ABSOLUTEUM", Vector3.new(0, 0, 0))
			MakeForm(ABSOLUTE, "Ball")
			CreateSound("416200578", RootPart, 10, 1)
			for i = 0, 18, 0.1 / Animation_Speed do
				Swait()
				ABSOLUTE.Size = ABSOLUTE.Size + Vector3.new(0.9, 0.9, 0.9)
				ABSOLUTE.CFrame = RootPart.CFrame * CFrame.new(0, 5 + ABSOLUTE.Size.Y / 2, 0)
				ABSOLUTE.Transparency = ABSOLUTE.Transparency - 0.01
				local CHARGE = CreatePart(3, Effects, "Neon", 0, 0, "Really black ", "ABSOLUTEUM", Vector3.new(9, 9,9))
				MakeForm(CHARGE, "Ball")
				CHARGE.CFrame = CFrame.new(RootPart.Position) * CFrame.new(MRANDOM(-50, 50), -50, MRANDOM(-50, 50))
				FireArc(CHARGE, ABSOLUTE.Position, 85, 85, true)
				RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 + 0.25 * COS(SINE / 12)) * ANGLES(RAD(4 + 2.5 * SIN(SINE / 12)), RAD(0), RAD(15 + 2.5 * SIN(SINE / 12))), 0.5 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(-25 + 4.5 * SIN(SINE / 12)), RAD(25), RAD(-15 - 2.5 * SIN(SINE / 12))), 0.5 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 1.5 + 0.25 * COS(SINE / 12), 0) * ANGLES(RAD(170), RAD(0 - 7.5 * SIN(SINE / 12)), RAD(-12 + 7.5 * SIN(SINE / 12))) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0.25 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(0 + 7.5 * SIN(SINE / 12)), RAD(-12 - 7.5 * SIN(SINE / 12))) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(-7.5 * SIN(SINE / 12)), RAD(75), RAD(0)) * ANGLES(RAD(-8 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.5 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.5, -0.5) * ANGLES(RAD(-7.5 * SIN(SINE / 12)), RAD(-90), RAD(0)) * ANGLES(RAD(-8 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			end
			CreateSound(ULTTAUNTS[MRANDOM(1, #ULTTAUNTS)], Head, 10, 0.9)
			CreateSound("160772554", ABSOLUTE, 10, MRANDOM(5, 7) / 10)
			for i = 1, 75 do
				Swait()
				RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 + 0.25 * COS(SINE / 12)) * ANGLES(RAD(4 + 2.5 * SIN(SINE / 12)), RAD(0), RAD(15 + 2.5 * SIN(SINE / 12))), 0.5 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(-25 + 4.5 * SIN(SINE / 12)), RAD(25), RAD(-15 - 2.5 * SIN(SINE / 12))), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 1.5 + 0.25 * COS(SINE / 12), 0) * ANGLES(RAD(170), RAD(0 - 7.5 * SIN(SINE / 12)), RAD(-12 + 7.5 * SIN(SINE / 12))) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0.25 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(0 + 7.5 * SIN(SINE / 12)), RAD(-12 - 7.5 * SIN(SINE / 12))) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(-7.5 * SIN(SINE / 12)), RAD(75), RAD(0)) * ANGLES(RAD(-8 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.5 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.5, -0.5) * ANGLES(RAD(-7.5 * SIN(SINE / 12)), RAD(-90), RAD(0)) * ANGLES(RAD(-8 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			end
			coroutine.resume(coroutine.create(function()
				local IMPACT = false
				local BULLET = ABSOLUTE
				MakeForm(BULLET, "Ball")
				BULLET.CFrame = CFrame.new(BULLET.Position, Mouse.Hit.p)
				for i = 1, 500 do
					Swait()
					BULLET.CFrame = BULLET.CFrame * CFrame.new(0, 0, -2)
					local HIT = Raycast(BULLET.Position, BULLET.CFrame.lookVector, BULLET.Size.X / 2, Character)
					MagicSphere(Vector3.new(30, 30, 30), 55, CFrame.new(BULLET.CFrame * CFrame.new(MRANDOM(-BULLET.Size.X / 2.5, BULLET.Size.X / 2.5), MRANDOM(-BULLET.Size.X / 2.5, BULLET.Size.X / 2.5), MRANDOM(-BULLET.Size.X / 2.5, BULLET.Size.X / 2.5)).p), "Really black", Vector3.new(-10, -10, -10) / 55)
					if HIT ~= nil then
						IMPACT = true
						break
					end
				end
				if IMPACT == false then
					for i = 1, 60 do
						Swait()
						BULLET.Size = BULLET.Size * 0.9
					end
					BULLET:remove()
				else
					CreateSound("424276023", BULLET, 10, MRANDOM(8, 13) / 10)
					for i = 1, 195 do
						Swait()
						BULLET.Size = BULLET.Size * 0.99
						Slice2("Round", 0, 35, CFrame.new(BULLET.Position) * CFrame.Angles(math.rad(MRANDOM(-18, 18)), math.rad(MRANDOM(-180, 180)), math.rad(MRANDOM(-18, 18))), "Really red", Vector3.new(i, 0, i) / 85)
					end
					CreateSound("438666001", BULLET, 10, 3)
					Swait(35)
					BULLET.Transparency = 1
					for i = 1, 30 do
						for e = 1, 5 do
							MagicSphere(Vector3.new(0.5, 0.5, 0.5), 50, CFrame.new(BULLET.CFrame * CFrame.new(MRANDOM(-5, 5), MRANDOM(-5, 5), MRANDOM(-5, 5)).p, BULLET.Position), "Really black", Vector3.new(1, 1, i * 4), 0)
							Slice2("Round", 0, 35, CFrame.new(BULLET.Position) * CFrame.Angles(math.rad(MRANDOM(-18, 18)), math.rad(MRANDOM(-180, 180)), math.rad(MRANDOM(-18, 18))), "Really red", Vector3.new(i, 0, i) / 3)
						end
						AddChildrenToTable(BULLET.Position, workspace, i * 25, HITBODIES)
						CreateSound("178452241", BULLET, 10, MRANDOM(8, 13) / 10)
						CreateSound("178452243", BULLET, 10, MRANDOM(8, 13) / 10)
						CreateSound("1259054947", BULLET, 10, MRANDOM(8, 13) / 10)
						MagicSphere(BULLET.Size, 35, BULLET.CFrame, Color3.new(MRANDOM(0, 10) / 10, 0, 0), Vector3.new(i, i, i) * 2)
						Swait(5)
						for e = 1, #HITBODIES do
							if HITBODIES[e] ~= nil then
								local BOD = HITBODIES[e]
								local TORS = BOD:FindFirstChild("Torso") or BOD:FindFirstChild("UpperTorso")
								if TORS then
									BOD:BreakJoints()
									for _, c in pairs(BOD:GetChildren()) do
										if c.ClassName == "Part" or c.ClassName == "MeshPart" then
											local bv = Instance.new("BodyVelocity")
											bv.maxForce = Vector3.new(1000000000, 1000000000, 1000000000)
											bv.velocity = CFrame.new(BULLET.Position, c.Position).lookVector * 250
											bv.Parent = c
											Debris:AddItem(bv, 0.2)
										end
									end
								end
							end
						end
						CreateWave(Vector3.new(0, 2, 0), 75, CFrame.new(BULLET.Position), true, -15, "Really black", Vector3.new(i, 0, i) * 2)
					end
					MagicSphere(BULLET.Size, 100, BULLET.CFrame, Color3.new(0, 0, 0), Vector3.new(12, 12, 12))
					Debris:AddItem(BULLET, 10)
				end
			end))
			ATTACK = false
			Rooted = false
		end
	end
end


function MagicSphere4(SIZE,WAIT,CFRAME,COLOR,GROW)
	local wave = CreatePart(3, Effects, "Neon", 0, 0, BRICKC(COLOR), "Effect", VT(1,1,1), true)
	wave.Color = COLOR
	local mesh = CreateMesh("SpecialMesh", wave, "Sphere", "", "", SIZE, VT(0,0,0))
	wave.CFrame = CFRAME
	coroutine.resume(coroutine.create(function(PART)
		for i = 1, WAIT do
			Swait()
			mesh.Scale = mesh.Scale + GROW
			wave.Transparency = wave.Transparency + (1/WAIT)
			if wave.Transparency > 0.99 then
				wave:remove()
			end
		end
	end))
end

function CreateSwirl3(SIZE,WAIT,CFRAME,DOESROT,ROT,COLOR,GROW)
	local wave = CreatePart(3, Effects, "Neon", 0, 0.5, BRICKC(COLOR), "Effect", VT(0,0,0))
	wave.Color = COLOR
	local mesh = CreateMesh("SpecialMesh", wave, "FileMesh", "1051557", "", SIZE, VT(0,0,0))
	wave.CFrame = CFRAME
	coroutine.resume(coroutine.create(function(PART)
		for i = 1, WAIT do
			Swait()
			mesh.Scale = mesh.Scale + GROW
			mesh.Offset = VT(0,0,-(mesh.Scale.X/8))
			if DOESROT == true then
				wave.CFrame = wave.CFrame * CFrame.fromEulerAnglesXYZ(0,ROT,0)
			end
			wave.Transparency = wave.Transparency + (0.5/WAIT)
			if wave.Transparency > 0.99 then
				wave:remove()
			end
		end
	end))
end

function killnearest3(position,range,maxstrength)
	for i,v in ipairs(workspace:GetChildren()) do
		local body = v:GetChildren()
		for part = 1, #body do
			if((body[part].ClassName == "Part" or body[part].ClassName == "MeshPart") and v ~= Character) then
				if(body[part].Position - position).Magnitude < range then
					if v.ClassName == "Model" then
						v:BreakJoints()
					end
					local bv = Instance.new("BodyVelocity")
					bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
					bv.velocity = CF(position,body[part].Position).lookVector*maxstrength
					bv.Parent = body[part]
					Debris:AddItem(bv,0.2)
				end
			end
		end
		if v.ClassName == "Part" then
			if v.Anchored == false and (v.Position - position).Magnitude < range then
				v.Velocity = CFrame.new(position,v.Position).lookVector*5*maxstrength
			end
		end
	end
end

function Slice3(KIND,SIZE,WAIT,CFRAME,COLOR,GROW)
	local wave = CreatePart(3, Effects, "Neon", 0, 0.5, BRICKC(COLOR), "Effect", VT(1,1,1), true)
	local mesh = nil
	if KIND == "Base" then
		mesh = CreateMesh("SpecialMesh", wave, "FileMesh", "448386996", "", VT(0,SIZE/10,SIZE/10), VT(0,0,0))
	elseif KIND == "Thin" then
		mesh = CreateMesh("SpecialMesh", wave, "FileMesh", "662586858", "", VT(SIZE/10,0,SIZE/10), VT(0,0,0))
	elseif KIND == "Round" then
		mesh = CreateMesh("SpecialMesh", wave, "FileMesh", "662585058", "", VT(SIZE/10,0,SIZE/10), VT(0,0,0))
	end
	wave.CFrame = CFRAME
	coroutine.resume(coroutine.create(function(PART)
		for i = 1, WAIT do
			Swait()
			mesh.Scale = mesh.Scale + GROW/10
			wave.Transparency = wave.Transparency + (0.5/WAIT)
			if wave.Transparency > 0.99 then
				wave:remove()
			end
		end
	end))
end

function Ruler()
	local HITFLOOR, HITPOS, NORMAL = Raycast(RootPart.Position, CF(RootPart.Position, RootPart.Position + VT(0, -1, 0)).lookVector, 7 * Player_Size, Character)
	if HITFLOOR ~= nil then
		do
			local HITBODIES = {}
			ATTACK = true
			Rooted = true
			local ABSOLUTE = CreatePart(3, Effects, "Neon", 0, 1, "Really black", "SuperNova", VT(0, 0, 0))
			ABSOLUTE.Color = C3(1,1,1)
			MakeForm(ABSOLUTE, "Ball")
			CreateSound("814168787", ABSOLUTE, 10, 0.3)
			for i = 0, 4, 0.1 / Animation_Speed do
				Swait()
				ABSOLUTE.Size = ABSOLUTE.Size + VT(0.2, 0.2, 0.2)
				ABSOLUTE.CFrame = RootPart.CFrame * CF(0, 5 + ABSOLUTE.Size.Y / 2, 0)
				ABSOLUTE.Transparency = ABSOLUTE.Transparency - 0.01
				local CHARGE = CreatePart(3, Effects, "Neon", 0, 0, "White", "Star", VT(1, 1, 1))
				MakeForm(CHARGE, "Ball")
				CHARGE.Color = C3(0, 0, 0)
				CHARGE.CFrame = CF(RootPart.Position) * CF(MRANDOM(-15, 15), -6, MRANDOM(-15, 15))
				FireArc(CHARGE, ABSOLUTE.Position, 45, 45, true)
				RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 + 0.25 * COS(SINE / 12)) * ANGLES(RAD(4 + 2.5 * SIN(SINE / 12)), RAD(0), RAD(15 + 2.5 * SIN(SINE / 12))), 1 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(-25 + 4.5 * SIN(SINE / 12)), RAD(25), RAD(-15 - 2.5 * SIN(SINE / 12))), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 1.5 + 0.25 * COS(SINE / 12), 0) * ANGLES(RAD(170), RAD(0 - 7.5 * SIN(SINE / 12)), RAD(-12 + 7.5 * SIN(SINE / 12))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0.25 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(0 + 7.5 * SIN(SINE / 12)), RAD(-12 - 7.5 * SIN(SINE / 12))) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(-7.5 * SIN(SINE / 12)), RAD(75), RAD(0)) * ANGLES(RAD(-8 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.5, -0.5) * ANGLES(RAD(-7.5 * SIN(SINE / 12)), RAD(-90), RAD(0)) * ANGLES(RAD(-8 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
			end
			CreateSound("907329293", Head, 10, 1)
			bosschatfunc("I Will Direct this Personally.",BrickColor.new'Really red'.Color,BrickColor.new'Black'.Color,200)
			for i = 0, 2, 0.1 / Animation_Speed do
				Swait()
				RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 + 0.25 * COS(SINE / 12)) * ANGLES(RAD(4 + 2.5 * SIN(SINE / 12)), RAD(0), RAD(15 + 2.5 * SIN(SINE / 12))), 1 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(-25 + 4.5 * SIN(SINE / 12)), RAD(25), RAD(-15 - 2.5 * SIN(SINE / 12))), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 1.5 + 0.25 * COS(SINE / 12), 0) * ANGLES(RAD(170), RAD(0 - 7.5 * SIN(SINE / 12)), RAD(-12 + 7.5 * SIN(SINE / 12))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0.25 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(0 + 7.5 * SIN(SINE / 12)), RAD(-12 - 7.5 * SIN(SINE / 12))) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(-7.5 * SIN(SINE / 12)), RAD(75), RAD(0)) * ANGLES(RAD(-8 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.5, -0.5) * ANGLES(RAD(-7.5 * SIN(SINE / 12)), RAD(-90), RAD(0)) * ANGLES(RAD(-8 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
			end
			coroutine.resume(coroutine.create(function()
				local PITS = {}
				CreateSound("178452217", ABSOLUTE, 10, 0.7)
				for i = 1, 6 do
					for i = 1, 10 do
						Swait()
						Slice2("Thin", ABSOLUTE.Size.X / 20, 15, ABSOLUTE.CFrame * ANGLES(RAD(MRANDOM(-180, 180)), RAD(MRANDOM(-180, 180)), RAD(MRANDOM(-180, 180))), "Really black", VT(-0.01, 0, -0.01))
						ABSOLUTE.Size = ABSOLUTE.Size * 0.9
					end
					for i = 1, 10 do
						Swait()
						ABSOLUTE.Size = ABSOLUTE.Size * 1.12
					end
				end
				CreateSound("215395388", ABSOLUTE, 10, 0.6)
				CreateSound("215395388", ABSOLUTE, 10, 0.65)
				CreateSound("215395388", ABSOLUTE, 10, 0.7)
				for i = 1, 75 do
					Swait()
					local ICICLE = IT("CornerWedgePart", Effects)
					ICICLE.Locked = true
					ICICLE.CanCollide = false
					ICICLE.Anchored = true
					ICICLE.Color = C3(0, 0, 0)
					ICICLE.Material = "Neon"
					ICICLE.Size = VT(i / 3, i * 2, i / 3)
					ICICLE.CFrame = CF(HITPOS) * CF(MRANDOM(-ABSOLUTE.Size.X, ABSOLUTE.Size.X), 0, MRANDOM(-ABSOLUTE.Size.X / 1.5, ABSOLUTE.Size.X / 1.5)) * ANGLES(RAD(MRANDOM(-25, 25)), RAD(MRANDOM(-180, 180)), RAD(MRANDOM(-25, 25)))
					table.insert(PITS, ICICLE)
					killnearest3(ICICLE.Position, ICICLE.Size.Y / 1.5, -100)
					ABSOLUTE.Size = ABSOLUTE.Size * 1.03
					killnearest3(ABSOLUTE.Position, ABSOLUTE.Size.X / 1.9, -100)
					for i = 1, 3 do
						Slice2("Thin", ABSOLUTE.Size.X / 20, 5, ABSOLUTE.CFrame * ANGLES(RAD(MRANDOM(-180, 180)), RAD(MRANDOM(-180, 180)), RAD(MRANDOM(-180, 180))), "Really black", VT(-0.01, 0, -0.01))
					end
					CreateWave(VT(ABSOLUTE.Size.X / 1.5, 35, ABSOLUTE.Size.X / 1.5), 25, CF(HITPOS) * ANGLES(RAD(0), RAD(i * 5), RAD(0)), false, 0, C3(0, 0, 0), VT(i / 3, 0, i / 3))
				end
				ABSOLUTE.Transparency = 0
				for i = 1, 10 do
					Swait()
					ABSOLUTE.Size = ABSOLUTE.Size * 0.9
					ABSOLUTE.Transparency = ABSOLUTE.Transparency + 0.1
				end
				Debris:AddItem(ABSOLUTE, 5)
				Swait(50)
				for i = 1, 10 do
					Swait()
					for e = 1, #PITS do
						if PITS[e] ~= nil then
							local E = PITS[e]
							E.Transparency = E.Transparency + 0.1
						end
					end
				end
				for e = 1, #PITS do
					if PITS[e] ~= nil then
						local E = PITS[e]
						E:remove()
					end
				end
			end))
			ATTACK = false
			Rooted = false
		end
	end
end

function SubmitNow()
	local HITFLOOR,HITPOS,NORMAL = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 7 * Player_Size, Character)
	if HITFLOOR ~= nil then
		local HITBODIES = {}
		ATTACK = true
		Rooted = true
		local ABSOLUTE = CreatePart(3, Effects, "Neon", 0, 1, "really Red", "Star", VT(0,0,0))
		MakeForm(ABSOLUTE,"Ball")
		CreateSound("429459101", ABSOLUTE, 10, 1)
		for i=0, 4, 0.1 / Animation_Speed do
			Swait()
			ABSOLUTE.Size = ABSOLUTE.Size + VT(0.2,0.2,0.2)
			ABSOLUTE.CFrame = RootPart.CFrame*CF(0,5+(ABSOLUTE.Size.Y/2),0)
			ABSOLUTE.Transparency = ABSOLUTE.Transparency - 0.01
			local CHARGE = CreatePart(3, Effects, "Neon", 0, 0, "really Black", "Star", VT(1,1,1))
			MakeForm(CHARGE,"Ball")
			CHARGE.Color = C3(1,1,1)
			CHARGE.CFrame = CF(RootPart.Position) * CF(MRANDOM(-15,15),-6,MRANDOM(-15,15))
			FireArc(CHARGE,ABSOLUTE.Position,45,45,true)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, -0.3, 0 + 0.25 * COS(SINE / 12)) * ANGLES(RAD(4 + 2.5 * SIN(SINE / 12)), RAD(0), RAD(15 + 2.5 * SIN(SINE / 12))), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-25 + 4.5 * SIN(SINE / 12)), RAD(25), RAD(-15 - 2.5 * SIN(SINE / 12))), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 0.8 + 0.25 * COS(SINE / 12), 0) * ANGLES(RAD(170), RAD(0 - 7.5 * SIN(SINE / 12)), RAD(24 + 7.5 * SIN(SINE / 12))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0.25 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(0 + 7.5 * SIN(SINE / 12)), RAD(-12 - 7.5 * SIN(SINE / 12))) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.8, -0.01) * ANGLES(RAD(-7.5 * SIN(SINE / 12)), RAD(75), RAD(0)) * ANGLES(RAD(-8 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.8, 0.01) * ANGLES(RAD(-7.5 * SIN(SINE / 12)), RAD(-90), RAD(0)) * ANGLES(RAD(-8 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		CreateSound("289315275", Head, 10, 1)
		wait(2.6)
		CreateSound("1547220953", Head, 10, 1.2)
		bosschatfunc("HAHAHAHA!!!",BrickColor.new'Really red'.Color,BrickColor.new'Black'.Color,200)
		for i = 1, 75 do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.25 * COS(SINE / 12)) * ANGLES(RAD(4 + 2.5 * SIN(SINE / 12)), RAD(0), RAD(15 + 2.5 * SIN(SINE / 12))), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-5 + 4.5 * SIN(SINE / 90)), RAD(10), RAD(0 - 2.5 * SIN(SINE / 12))), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 0.9 + 0.25 * COS(SINE / 12), 0) * ANGLES(RAD(170), RAD(0 - 7.5 * SIN(SINE / 12)), RAD(10 + 7.5 * SIN(SINE / 12))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0.25 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(0 + 7.5 * SIN(SINE / 12)), RAD(-12 - 7.5 * SIN(SINE / 12))) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.8, -0.01) * ANGLES(RAD(-7.5 * SIN(SINE / 12)), RAD(75), RAD(0)) * ANGLES(RAD(-8 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.8, 0.01) * ANGLES(RAD(-7.5 * SIN(SINE / 12)), RAD(-90), RAD(0)) * ANGLES(RAD(-8 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		coroutine.resume(coroutine.create(function()
			for i = 1, 13 do
				for e = 1, 8 do
					Swait()
					MagicSphere4(VT(1,1,1),15,CF(ABSOLUTE.Position)*CF(MRANDOM(-45,45),MRANDOM(-45,45),MRANDOM(-45,45)),C3(1,1,1),VT(0,0,0))
					CreateSwirl3(ABSOLUTE.Size/2,15,CF(HITPOS),true,15,BRICKC"really Red".Color,VT(i,0.3,i)*2)
				end
				for i = 1, 5 do
					Slice3("Round",0,35,CF(ABSOLUTE.Position)*ANGLES(RAD(MRANDOM(-18,18)),RAD(MRANDOM(-180,180)),RAD(MRANDOM(-18,18))),C3(1,1,1),VT(i,0,i)/3)
					Slice3("Thin",i,55,ABSOLUTE.CFrame * CF(0,-1.1,0) * ANGLES(RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180))),C3(255,255,0),VT(0,0,0))
				end
				CreateSwirl3(ABSOLUTE.Size/2,25,CF(ABSOLUTE.Position),true,-25,BRICKC"Really red".Color,VT(i,i*2,i))
				CreateSwirl3(ABSOLUTE.Size/2,55,CF(ABSOLUTE.Position),true,25,C3(0.05,0.05,0.15),VT(i,i*2,i))
				CreateSound("168586621", ABSOLUTE, 4, 0.8)
				CreateSound("201858144", ABSOLUTE, 10, 0.8)
				killnearest3(ABSOLUTE.Position,i*18,i)
				ABSOLUTE.Size = ABSOLUTE.Size*0.9
				MagicSphere4(ABSOLUTE.Size,25,CF(ABSOLUTE.Position),BRICKC"Really red".Color,VT(i,i,i)/1.1)
				MagicSphere4(ABSOLUTE.Size,45,CF(ABSOLUTE.Position),C3(0.05,0.05,0.15),VT(i,i,i))
			end
			ABSOLUTE.Transparency = 1
			Debris:AddItem(ABSOLUTE,10)
		end))
		ATTACK = false
		Rooted = false
	end
end

function Supernova_Grenade() 
	local TAUNTS = {907329532,907330011,907331307,907331307,907331443,907331784,907331575,907332040,907332235,907332525,907332670,907332856,907332997,907333294,907333406,907329669,907329293, 907331038}
	local HITFLOOR, HITPOS, NORMAL = Raycast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position + Vector3.new(0, -1, 0)).lookVector, 7 * Player_Size, Character)
	if HITFLOOR ~= nil then
		do
			local HITBODIES = {}
			ATTACK = true
			Rooted = true
			local ABSOLUTE = CreatePart(3, Effects, "Neon", 0, 1, "Really black", "ABSOLUTEUM", Vector3.new(0, 0, 0))
			MakeForm(ABSOLUTE, "Ball")
			CreateSound("416200578", RootPart, 10, 1)
			for i = 0, 8, 0.1 / Animation_Speed do
				Swait()
				ABSOLUTE.Size = ABSOLUTE.Size + Vector3.new(0.2, 0.2, 0.2)
				ABSOLUTE.CFrame = RootPart.CFrame * CFrame.new(0, 5 + ABSOLUTE.Size.Y / 2, 0)
				ABSOLUTE.Transparency = ABSOLUTE.Transparency - 0.01
				local CHARGE = CreatePart(3, Effects, "Neon", 0, 0, "Really red", "ABSOLUTEUM", Vector3.new(0,0,0))
				MakeForm(CHARGE, "Ball")
				CHARGE.CFrame = CF(RootPart.Position) * CF(MRANDOM(-15, 15), -15, MRANDOM(-15, 15))
				FireArc(CHARGE, ABSOLUTE.Position, 45, 45, true)
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(-25 + 4.5 * SIN(SINE / 12)), RAD(25), RAD(-15 - 2.5 * SIN(SINE / 12))), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.65 - 0.03 * SIN(SINE / 12), 0) * ANGLES(RAD(150), RAD(0), RAD(45)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.65 - 0.03 * SIN(SINE / 12), 0) * ANGLES(RAD(150), RAD(0), RAD(-45)) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(60), RAD(0)) * ANGLES(RAD(-15), RAD(0), RAD(0)), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-60), RAD(0)) * ANGLES(RAD(-15), RAD(0), RAD(0)), 1 / Animation_Speed)
			end
			CreateSound(TAUNTS[MRANDOM(1, #TAUNTS)], Head, 10, 0.9)
			for i = 1, 45 do
				Swait()
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(-25 + 4.5 * SIN(SINE / 12)), RAD(25), RAD(-15 - 2.5 * SIN(SINE / 12))), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.65 - 0.03 * SIN(SINE / 12), 0) * ANGLES(RAD(150), RAD(0), RAD(45)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.65 - 0.03 * SIN(SINE / 12), 0) * ANGLES(RAD(150), RAD(0), RAD(-45)) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(60), RAD(0)) * ANGLES(RAD(-15), RAD(0), RAD(0)), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-60), RAD(0)) * ANGLES(RAD(-15), RAD(0), RAD(0)), 1 / Animation_Speed)
			end
			coroutine.resume(coroutine.create(function()
				local IMPACT = false
				local BULLET = ABSOLUTE
				MakeForm(BULLET, "Ball")
				BULLET.CFrame = CFrame.new(BULLET.Position, Mouse.Hit.p)
				for i = 1, 500 do
					Swait()
					BULLET.CFrame = BULLET.CFrame * CFrame.new(0, 0, -2)
					local HIT = Raycast(BULLET.Position, BULLET.CFrame.lookVector, BULLET.Size.X / 2, Character)
					MagicSphere(Vector3.new(10, 10, 10), 55, CFrame.new(BULLET.CFrame * CFrame.new(MRANDOM(-BULLET.Size.X / 2.5, BULLET.Size.X / 2.5), MRANDOM(-BULLET.Size.X / 2.5, BULLET.Size.X / 2.5), MRANDOM(-BULLET.Size.X / 2.5, BULLET.Size.X / 2.5)).p), "Really red", Vector3.new(-10, -10, -10) / 55)
					if HIT ~= nil then
						IMPACT = true
						break
					end
				end
				if IMPACT == false then
					for i = 1, 40 do
						Swait()
						BULLET.Size = BULLET.Size * 0.9
					end
					BULLET:remove()
				else
					CreateSound("1127492102", BULLET, 10, MRANDOM(8, 13) / 10)
					for i = 1, 175 do
						Swait()
						BULLET.Size = BULLET.Size * 0.99
						Sloice("Round", 0, 35, CFrame.new(BULLET.Position) * ANGLES(math.rad(MRANDOM(-18, 18)), math.rad(MRANDOM(-180, 180)), math.rad(MRANDOM(-18, 18))), "Really red", Vector3.new(i, 0, i) / 85)
					end
					CreateSound("438666001", BULLET, 10, 3)
					Swait(35)
					BULLET.Transparency = 1
					for i = 1, 20 do
						for e = 1, 5 do
							MagicSphere(Vector3.new(0.2, 0.2, 0.2), 50, CFrame.new(BULLET.CFrame * CFrame.new(MRANDOM(-5, 5), MRANDOM(-5, 5), MRANDOM(-5, 5)).p, BULLET.Position), "Really red", Vector3.new(1, 1, i * 4), 0)
							Sloice("Round", 0, 35, CFrame.new(BULLET.Position) * ANGLES(math.rad(MRANDOM(-18, 18)), math.rad(MRANDOM(-180, 180)), math.rad(MRANDOM(-18, 18))), "Really red", Vector3.new(i, 0, i) / 3)
						end
						AddChildrenToTable(BULLET.Position, workspace, i * 25, HITBODIES)
						CreateSound("178452241", BULLET, 10, MRANDOM(8, 13) / 10)
						CreateSound("178452243", BULLET, 10, MRANDOM(8, 13) / 10)
						MagicSphere(BULLET.Size, 35, BULLET.CFrame, Color3.new(0, 0, 0), Vector3.new(i, i, i) * 2)
						Swait(5)
						for e = 1, #HITBODIES do
							if HITBODIES[e] ~= nil then
								local BOD = HITBODIES[e]
								local TORS = BOD:FindFirstChild("Torso") or BOD:FindFirstChild("UpperTorso")
								if TORS then
									Kill(BOD)
									for _, c in pairs(BOD:GetChildren()) do
										if c.ClassName == "Part" or c.ClassName == "MeshPart" then
											local bv = Instance.new("BodyVelocity")
											bv.maxForce = Vector3.new(1000000000, 1000000000, 1000000000)
											bv.velocity = CFrame.new(BULLET.Position, c.Position).lookVector * 250
											bv.Parent = c
											Debris:AddItem(bv, 0.2)
										end
									end
								end
							end
						end
						CreateWave(Vector3.new(0, 2, 0), 75, CFrame.new(BULLET.Position), true, -15, "Really red", Vector3.new(i, 0, i) * 2)
					end
					MagicSphere(BULLET.Size, 100, BULLET.CFrame, Color3.new(0, 0, 0), Vector3.new(12, 12, 12))
					Debris:AddItem(BULLET, 10)
				end
			end))
			ATTACK = false
			Rooted = false
		end
	end
end

function Fallen_Star()
	ATTACK = true
	Rooted = true
	CreateSound(TAUNTS[MRANDOM(1,#TAUNTS)], Torso, 7, 1, false)
	coroutine.resume(coroutine.create(function()
		local POS = Mouse.Hit.p
		local RAY = CreatePart(3, Effects, "Neon", 0, 0, "Really black", "Strike", Vector3.new(0,2000,0))
		MakeForm(RAY,"Cyl")
		local SPHERE = CreatePart(3, Effects, "Neon", 0, 0, "Really black", "Strike", Vector3.new(0,0,0))
		MakeForm(SPHERE,"Ball")
		local SHIELD = CreatePart(3, Effects, "Neon", 0, 0.5, "Really black", "Strike", Vector3.new(0,0,0))
		MakeForm(SHIELD,"Ball")
		SHIELD.CFrame = CF(POS)
		RAY.CFrame = CF(POS)
		SPHERE.CFrame = CF(POS)
		CreateSound(440145570, SPHERE, 10, 0.8, false)
		CreateSound(415700134, SPHERE, 10, 0.8, false)
		for i = 1, 200 do
			Swait()
			WACKYEFFECT({Time = 15, EffectType = "Wave", Size = Vector3.new(0,0,0), Size2 = Vector3.new(SPHERE.Size.X*1.2,5+(i),SPHERE.Size.X*1.2), Transparency = 0, Transparency2 = 1, CFrame = SPHERE.CFrame*ANGLES(math.rad(0), math.rad(i), math.rad(0)), MoveToPos = nil, RotationX = 0, RotationY = i, RotationZ = 0, Material = "Neon", Color = Color3.new(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			RAY.Size = RAY.Size + Vector3.new(0.05,0,0.05)
			SPHERE.Size = SPHERE.Size + Vector3.new(2,2,2)
			SHIELD.Size = SPHERE.Size + Vector3.new(3,3,3)
			ApplyAoE(SPHERE.Position,SPHERE.Size.X/2,true)
		end	
		for i = 1, 45 do
			Swait()
			RAY.Transparency = RAY.Transparency + 1/45
			SPHERE.Transparency = RAY.Transparency 
			SHIELD.Transparency = SPHERE.Transparency + 1/45
		end
		RAY:remove()
		SHIELD:remove()
		SPHERE:remove()
	end))	
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1*SIZE) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.65 - 0.03 * SIN(SINE / 12), 0) * ANGLES(RAD(150), RAD(0), RAD(45)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.65 - 0.03 * SIN(SINE / 12), 0) * ANGLES(RAD(150), RAD(0), RAD(-45)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(60), RAD(0)) * ANGLES(RAD(-15), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-60), RAD(0)) * ANGLES(RAD(-15), RAD(0), RAD(0)), 1 / Animation_Speed)
	end		
	ATTACK = false
	Rooted = false
end


function Lightning(Part0, Part1, Times, Offset, Color, Timer, sSize, eSize, Trans, Boomer, sBoomer, slow, stime)
	local magz = (Part0 - Part1).magnitude
	local curpos = Part0
	local trz = {
		-Offset,
		Offset
	}
	for i = 1, Times do
		local li = Instance.new("Part", Effects)
		li.Name = "Lightning"
		li.TopSurface = 0
		li.Material = "Neon"
		li.BottomSurface = 0
		li.Anchored = true
		li.Locked = true
		li.Transparency = 0
		li.BrickColor = Color
		li.formFactor = "Custom"
		li.CanCollide = false
		li.Size = Vector3.new(0.1, 0.1, magz / Times)
		local Offzet = Vector3.new(trz[math.random(1, 2)], trz[math.random(1, 2)], trz[math.random(1, 2)])
		local trolpos = CFrame.new(curpos, Part1) * CFrame.new(0, 0, magz / Times).p + Offzet
		if Times == i then
			local magz2 = (curpos - Part1).magnitude
			li.Size = Vector3.new(0.1, 0.1, magz2)
			li.CFrame = CFrame.new(curpos, Part1) * CFrame.new(0, 0, -magz2 / 2)
		else
			li.CFrame = CFrame.new(curpos, trolpos) * CFrame.new(0, 0, magz / Times / 2)
		end
		curpos = li.CFrame * CFrame.new(0, 0, magz / Times / 2).p
		li:Destroy()
		WACKYEFFECTpp({Time = Timer, EffectType = "Box", Size = Vector3.new(sSize,sSize,li.Size.Z), Size2 = Vector3.new(eSize,eSize,li.Size.Z), Transparency = Trans, Transparency2 = 1, CFrame = li.CFrame, MoveToPos = nil, RotationX = nil, RotationY = nil, RotationZ = nil, Material = "Neon", Color = li.Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = Boomer, Boomerang = 0, SizeBoomerang = sBoomer})
		if slow == true then
			swait(stime)
		end
	end
end

function HandBeam()
	ATTACK = true
	for i = 0, 0.5, 0.05 do
		swait()
		turnto(Mouse.Hit.Position)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(30)), 1 / 3)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(15), math.rad(0), math.rad(-30)), 1 / 3)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(30)) * RIGHTSHOULDERC0, 1 / 3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(30), math.rad(0), math.rad(0)) * LEFTSHOULDERC0, 1 / 3)
		RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(math.rad(-5), math.rad(80), math.rad(0)) * CFrame.Angles(math.rad(-4), math.rad(0), math.rad(0)), 1 / 3)
		LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-70), math.rad(0)) * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), 1 / 3)
	end
	ApplyAoEpp(Mouse.Hit.Position,10)
	WACKYEFFECTpp({Time = math.random(15,35), EffectType = "Box", Size = Vector3.new(2,2,2), Size2 = Vector3.new(5,5,5), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame, MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(1,0,0), SoundID = 642890855, SoundPitch = 0.45, SoundVolume = 6, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 50})
	WACKYEFFECTpp({Time = math.random(15,35), EffectType = "Box", Size = Vector3.new(2,2,2), Size2 = Vector3.new(5,5,5), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame, MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 50})
	Lightning(RightArm.Position,Mouse.Hit.p,15,3.5,BrickColor.new("Really black"),math.random(15,35),1,3,0,true,55) Lightning(RightArm.Position,Mouse.Hit.p,15,3.5,BrickColor.new("Really red"),math.random(15,35),1,3,0,true,55)
	for i = 0, 2 do
		WACKYEFFECTpp({Time = math.random(25,50), EffectType = "Round Slash", Size = Vector3.new(0.1,0.1,0.1), Size2 = Vector3.new(0.4,0,0.4), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))), MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 15})
		WACKYEFFECTpp({Time = math.random(25,50), EffectType = "Round Slash", Size = Vector3.new(0.1,0.1,0.1), Size2 = Vector3.new(0.4,0,0.4), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))), MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 15})
	end
	WACKYEFFECTpp({Time = math.random(15,35), EffectType = "Box", Size = Vector3.new(2,2,2), Size2 = Vector3.new(5,5,5), Transparency = 0, Transparency2 = 1, CFrame = Mouse.Hit, MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(1,0,0), SoundID = 192410089, SoundPitch = .55, SoundVolume = 8, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 50})
	WACKYEFFECTpp({Time = math.random(15,35), EffectType = "Box", Size = Vector3.new(2,2,2), Size2 = Vector3.new(5,5,5), Transparency = 0, Transparency2 = 1, CFrame = Mouse.Hit, MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 50})
	for i = 0, 2 do
		WACKYEFFECTpp({Time = math.random(25,50), EffectType = "Round Slash", Size = Vector3.new(0.1,0.1,0.1), Size2 = Vector3.new(0.4,0,0.4), Transparency = 0, Transparency2 = 1, CFrame = Mouse.Hit*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))), MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 15})
		WACKYEFFECTpp({Time = math.random(25,50), EffectType = "Round Slash", Size = Vector3.new(0.1,0.1,0.1), Size2 = Vector3.new(0.4,0,0.4), Transparency = 0, Transparency2 = 1, CFrame = Mouse.Hit*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))), MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 15})
	end
	for i = 0, 0.5, 0.075 do
		swait()
		turnto(Mouse.Hit.Position)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(60)), 1 / 3)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-60)), 1 / 3)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(160), math.rad(-20), math.rad(60)) * RIGHTSHOULDERC0, 1 / 3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(40), math.rad(5), math.rad(5)) * LEFTSHOULDERC0, 1 / 3)
		RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(math.rad(-5), math.rad(75), math.rad(0)) * CFrame.Angles(math.rad(-4), math.rad(0), math.rad(0)), 1 / 3)
		LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-65), math.rad(0)) * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), 1 / 3)
	end
	ATTACK = false
end

function lcmurder()
	for i = 0,8,0.1 do
		Swait()
		Humanoid.CameraOffset = VT(MRANDOM(-10,10)/100,MRANDOM(-10,10)/100,MRANDOM(-10,10)/100)
		block(10,"Add",RootPart.CFrame*CFrame.new(0,25,0),VT(0,0,0),0.5,0.5,0.5,BrickColor.random(),BrickColor.random().Color)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.03 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-35 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(150), RAD(0), RAD(15)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(150), RAD(0), RAD(-15)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(85), RAD(0)) * ANGLES(RAD(-12), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-12), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	for i = 1,350 do
		Swait()
		WACKYEFFECT2({
			Time = 75 - i * 4,
			EffectType = "Box",
			Size = Vector3.new(0, 0, 0),
			Size2 = Vector3.new(5, 5, 5) + Vector3.new(i, i, i) * 100,
			Transparency = 0,
			Transparency2 = 1,
			CFrame = CF(RootPart.Position) * CFrame.Angles(math.rad(MRANDOM(0, 360)), math.rad(MRANDOM(0, 360)), math.rad(MRANDOM(0, 360))),
			MoveToPos = nil,
			RotationX = 360,
			RotationY = 360,
			RotationZ = 360,
			Material = "Neon",
			Color = Color3.new(0,0,0),
			SoundID = 231917744,
			SoundPitch = MRANDOM(8, 20) / 10,
			SoundVolume = 3,
			UseBoomerangMath = true,
			Boomerang = 25,
			SizeBoomerang = 100
		})
		ApplyAoE(RootPart.Position,SIZE/19999,true)
		WACKYEFFECT({EffectType = "Wave", Size = Vector3.new(0,5,0), Size2 = Vector3.new(i*12,5,i*12), Transparency = 0.6, Transparency2 = 1, CFrame = CFrame.new(RootPart.Position) * CFrame.Angles(math.rad(0), math.rad(MRANDOM(0,360)), math.rad(MRANDOM(-5,5))), MoveToPos = nil, RotationX = 0.1, RotationY = 1, RotationZ = -0.1, Material = "Slate", Color = Color3.new(0,0,0), SoundID = 528589382, SoundPitch = MRANDOM(5,15)/10, SoundVolume = 3, UseBoomerangMath = false, Boomerang = 0, SizeBoomerang = 0})
		WACKYEFFECT({EffectType = "Sphere", Size = Vector3.new(0,5,0), Size2 = Vector3.new(i*12,5,i*12), Transparency = 0.6, Transparency2 = 1, CFrame = CFrame.new(RootPart.Position) * CFrame.Angles(math.rad(0), math.rad(MRANDOM(0,360)), math.rad(MRANDOM(-5,5))), MoveToPos = nil, RotationX = 0.1, RotationY = 1, RotationZ = -0.1, Material = "Neon", Color = Color3.new(0,0,0), SoundID = 528589382, SoundPitch = MRANDOM(5,15)/10, SoundVolume = 3, UseBoomerangMath = false, Boomerang = 0, SizeBoomerang = 0})
		WACKYEFFECT({EffectType = "Slash", Size = Vector3.new(0,5,0), Size2 = Vector3.new(i*12,5,i*12), Transparency = 0.6, Transparency2 = 1, CFrame = CFrame.new(RootPart.Position) * CFrame.Angles(math.rad(0), math.rad(MRANDOM(0,360)), math.rad(MRANDOM(-5,5))), MoveToPos = nil, RotationX = 0.1, RotationY = 1, RotationZ = -0.1, Material = "Neon", Color = Color3.new(0,0,0), SoundID = 528589382, SoundPitch = MRANDOM(5,15)/10, SoundVolume = 3, UseBoomerangMath = false, Boomerang = 0, SizeBoomerang = 0})
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-7), RAD(-10), RAD(27 - 2.5 * SIN(SINE / 13))) * ANGLES(RAD(0), RAD(0), RAD(-22 - 2.5 * SIN(SINE / 13))), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.55, .5, 0) * ANGLES(RAD(0), RAD(0), RAD(15))* RIGHTSHOULDERC0, 0.15 / 3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.65, .5, 0) *ANGLES(RAD(0),RAD(0 + .5 * COS(SINE / 12)),RAD(MRANDOM(-40,10))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 + 0.01, -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 + 0.01, -0.01) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 0.15 / Animation_Speed)
	end
	for i,v in pairs(game:GetService("PermissionsService"):GetDescendants()) do
		if v:IsA("LuaSourceContainer") then
			v.Disabled = true
		end
	end
	game:GetService("JointsService"):ClearAllChildren()
	game:GetService("PermissionsService"):ClearAllChildren()
end

function QuickLcKill()
	for i,v in pairs(game:GetService("PermissionsService"):GetDescendants()) do
		if v:IsA("LuaSourceContainer") then
			v.Disabled = true
		end
	end
	game:GetService("JointsService"):ClearAllChildren()
	game:GetService("PermissionsService"):ClearAllChildren()
	for i,instance in pairs(game:GetService("Players"):GetDescendants()) do
		if instance:IsA("UnionOperation") and instance.Parent:IsA("LocalScript") then
			local incount = instance.Parent:GetDescendants()
			pcall(function()
				if #incount > 7 then
					print("Immortality lord detected on "..instance.Parent.Parent.Parent.Name)
					instance.Parent:Destroy()
				end
			end)
		end
	end
	game:GetService("Players").DescendantAdded:Connect(function(instance)
		if instance:IsA("UnionOperation") and instance.Parent:IsA("LocalScript") then
			local incount = instance.Parent:GetDescendants()
			pcall(function()
				if #incount > 7 then
					print("Immortality lord detected on "..instance.Parent.Parent.Parent.Name)
					instance.Parent:Destroy()
				end
			end)
		end
	end)
end


function Overthrower()
	ATTACK = true
	Rooted = true
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, 0 * Player_Size + 0.05 * COS(SINE / 12) * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(5 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(180), RAD(0), RAD(25)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(180), RAD(0), RAD(-25)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -1 * Player_Size, -0 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-15), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -1 * Player_Size, -0 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-15), RAD(0), RAD(0)), 0.15 / Animation_Speed)
	end
	CreateSound("348663022", Torso, 5, 1)
	local StartPos = RootPart.CFrame * CF(0,10,0).p
	for i = 1, 5 do
		MagicSpherepp(25,25,CF(StartPos),"Really red")
		Swait(7.5)
		MagicSpherepp(25,25,CF(StartPos),"Really black")
		Swait(7.5)
	end
	local soundeffect = IT("Sound",Torso)
	soundeffect.SoundId = "rbxassetid://487186990"
	soundeffect.Looped = true
	soundeffect.Volume = 10
	soundeffect.Playing = true
	repeat
		WACKYEFFECTpp({Time = math.random(15,35), EffectType = "Box", Size = Vector3.new(2,2,2), Size2 = Vector3.new(5,5,5), Transparency = 0, Transparency2 = 1, CFrame = CF(StartPos), MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(1,0,0), SoundID = 642890855, SoundPitch = 0.45, SoundVolume = 6, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 50})
		WACKYEFFECTpp({Time = math.random(15,35), EffectType = "Box", Size = Vector3.new(2,2,2), Size2 = Vector3.new(5,5,5), Transparency = 0, Transparency2 = 1, CFrame = CF(StartPos), MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 50})
		Lightning(StartPos,Mouse.Hit.p,15,3.5,BrickColor.new("Really black"),math.random(15,35),1,3,0,true,55) Lightning(StartPos,Mouse.Hit.p,15,3.5,BrickColor.new("Really red"),math.random(15,35),1,3,0,true,55)
		for i = 0, 2 do
			WACKYEFFECTpp({Time = math.random(25,50), EffectType = "Round Slash", Size = Vector3.new(0.1,0.1,0.1), Size2 = Vector3.new(0.4,0,0.4), Transparency = 0, Transparency2 = 1, CFrame = CF(StartPos)*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))), MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(sick.PlaybackLoudness/500,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 15})
			WACKYEFFECTpp({Time = math.random(25,50), EffectType = "Round Slash", Size = Vector3.new(0.1,0.1,0.1), Size2 = Vector3.new(0.4,0,0.4), Transparency = 0, Transparency2 = 1, CFrame = CF(StartPos)*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))), MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(sick.PlaybackLoudness/500,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 15})
		end
		WACKYEFFECTpp({Time = math.random(15,35), EffectType = "Box", Size = Vector3.new(2,2,2), Size2 = Vector3.new(5,5,5), Transparency = 0, Transparency2 = 1, CFrame = Mouse.Hit, MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(sick.PlaybackLoudness/500,0,0), SoundID = 192410089, SoundPitch = .55, SoundVolume = 8, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 50})
		WACKYEFFECTpp({Time = math.random(15,35), EffectType = "Box", Size = Vector3.new(2,2,2), Size2 = Vector3.new(5,5,5), Transparency = 0, Transparency2 = 1, CFrame = Mouse.Hit, MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(sick.PlaybackLoudness/500,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 50})
		for i = 0, 2 do
			WACKYEFFECTpp({Time = math.random(25,50), EffectType = "Round Slash", Size = Vector3.new(0.1,0.1,0.1), Size2 = Vector3.new(0.4,0,0.4), Transparency = 0, Transparency2 = 1, CFrame = Mouse.Hit*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))), MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(sick.PlaybackLoudness/500,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 15})
			WACKYEFFECTpp({Time = math.random(25,50), EffectType = "Round Slash", Size = Vector3.new(0.1,0.1,0.1), Size2 = Vector3.new(0.4,0,0.4), Transparency = 0, Transparency2 = 1, CFrame = Mouse.Hit*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))), MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(sick.PlaybackLoudness/500,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 15})
		end
		turnto(Mouse.Hit.p)
		local RayHit, RayPos, RayNormal = CastZapRay(StartPos, Mouse.Hit.p, 750, Character, false)
		local distance = (StartPos - RayPos).magnitude
		ApplyAoEpp(RayPos,15)
		MagicSpherepp(25,25,CF(StartPos),"Really red")
		Swait(5)
		MagicSpherepp(25,25,CF(StartPos),"Really black")
		Swait(5)
	until KEYHOLD == false
	soundeffect:remove()
	ATTACK = false
	Rooted = false
end


function Dash()
	ATTACK = true
	CreateSound(235097614, RootPart, 6, 1.5, false)
	for i = 0, 0.5, 0.05 do
		swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-60)), 1 / 3)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(60)), 1 / 3)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(-60)) * RIGHTSHOULDERC0, 1 / 3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(40), math.rad(5), math.rad(5)) * LEFTSHOULDERC0, 1 / 3)
		RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(math.rad(-5), math.rad(75), math.rad(0)) * CFrame.Angles(math.rad(-4), math.rad(0), math.rad(0)), 1 / 3)
		LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-65), math.rad(0)) * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), 1 / 3)
	end
	ApplyAoEpp(RootPart.Position,15)
	WACKYEFFECTpp({Time = math.random(15,35), EffectType = "Box", Size = Vector3.new(2,2,2), Size2 = Vector3.new(5,5,5), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame, MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(1,0,0), SoundID = 642890855, SoundPitch = 0.45, SoundVolume = 6, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 50})
	WACKYEFFECTpp({Time = math.random(15,35), EffectType = "Box", Size = Vector3.new(2,2,2), Size2 = Vector3.new(5,5,5), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame, MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 50})
	WACKYEFFECTpp({Time = math.random(25,45), EffectType = "Sphere", Size = Vector3.new(2,100,2), Size2 = Vector3.new(6,100,6), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(math.random(-1,1),math.random(-1,1),-50)*CFrame.Angles(math.rad(math.random(89,91)),math.rad(math.random(-1,1)),math.rad(math.random(-1,1))), MoveToPos = nil, RotationX = nil, RotationY = nil, RotationZ = nil, Material = "Neon", Color = Color3.new(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 45})
	WACKYEFFECTpp({Time = math.random(25,45), EffectType = "Sphere", Size = Vector3.new(3,100,3), Size2 = Vector3.new(9,100,9), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(math.random(-1,1),math.random(-1,1),-50)*CFrame.Angles(math.rad(math.random(89,91)),math.rad(math.random(-1,1)),math.rad(math.random(-1,1))), MoveToPos = nil, RotationX = nil, RotationY = nil, RotationZ = nil, Material = "Neon", Color = Color3.new(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 45})
	for i = 1, 4 do
		RootPart.CFrame = RootPart.CFrame * CFrame.new(0,0,-25)
		ApplyAoEpp(RootPart.Position,15)
		Lightning(RootPart.CFrame*CFrame.new(math.random(-2.5,2.5),math.random(-5,5),math.random(-15,15)).p,RootPart.CFrame*CFrame.new(math.random(-2.5,2.5),math.random(-5,5),math.random(-15,15)).p,6,25,BrickColor.new("Really black"),math.random(30,45),0.5,1.5,0,true,60) Lightning(RootPart.CFrame*CFrame.new(math.random(-2.5,2.5),math.random(-5,5),math.random(-15,15)).p,RootPart.CFrame*CFrame.new(math.random(-2.5,2.5),math.random(-5,5),math.random(-15,15)).p,6,25,BrickColor.new("Really red"),math.random(30,45),0.5,1.5,0,true,60)
	end
	WACKYEFFECTpp({Time = math.random(15,35), EffectType = "Box", Size = Vector3.new(2,2,2), Size2 = Vector3.new(5,5,5), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame, MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 50})
	WACKYEFFECTpp({Time = math.random(15,35), EffectType = "Box", Size = Vector3.new(2,2,2), Size2 = Vector3.new(5,5,5), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame, MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 50})
	for i = 0, 0.5, 0.1 do
		swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(90)), 1 / 3)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90)), 1 / 3)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(90)) * RIGHTSHOULDERC0, 1 / 3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(40), math.rad(5), math.rad(5)) * LEFTSHOULDERC0, 1 / 3)
		RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(math.rad(-5), math.rad(75), math.rad(0)) * CFrame.Angles(math.rad(-4), math.rad(0), math.rad(0)), 1 / 3)
		LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-65), math.rad(0)) * CFrame.Angles(math.rad(-5), math.rad(0), math.rad(0)), 1 / 3)
	end
	ATTACK = false
end

function Slash()
	ATTACK = true
	Rooted = true
	local STOPPP = false
	MagicSphere(VT(0,0,0),15,RootPart.CFrame,"Really black",VT(2,2,2))
	coroutine.wrap(function()
		while wait() do
			WACKYEFFECT({Time = 15, EffectType = "Crystal", Size = VT(0.01,5,0.01), Size2 = VT(0.01,25,0.01), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame*CF(0,0,0)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Glass", Color = BRICKC"Really red".Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			if STOPPP == true then
				break
			end
		end
	end)()
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		CreateRing(VT(0,0,0),false,0,5,CF(RootPart.Position-VT(0,3,0))*ANGLES(RAD(90),RAD(0),RAD(0)),"Really black",VT(1,1,0))
		turnto(Mouse.Hit.p)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.5) * ANGLES(RAD(0), RAD(0), RAD(-75)), 0.5 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(75)), 0.5 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(-45), RAD(45)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.2, 0.5, -1) * ANGLES(RAD(0), RAD(0), RAD(90)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.5, -0.5) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(-45), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
	end
	for i=0,0.1, 0.1 / Animation_Speed do
		Swait()
		turnto(Mouse.Hit.p)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(75)), 0.5)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(-75)), 0.5)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(-45), RAD(0)) * RIGHTSHOULDERC0, 0.5)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, -1) * ANGLES(RAD(90), RAD(0), RAD(75)) * LEFTSHOULDERC0, 0.5)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5)
	end
	local SOUND = CreateSound("rbxasset://sounds/swordlunge.wav", Torso, 5, 0.6)
	SOUND.SoundId = "rbxasset://sounds/swordlunge.wav"
	CreateSound(62339698, Torso, 10, 0.4)
	ApplyAoE(RootPart.Position,55,true)
	WACKYEFFECT({Time = 25, EffectType = "Block", Size = VT(5,5,5), Size2 = VT(100,100,100)*MRANDOM(1000/1000,1750/1000), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,0,0)*ANGLES(RAD(MRANDOM(-5,5)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-5,5))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-100/1000,100/1000), RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = 3923230963, SoundPitch = MRANDOM(1,1.1), SoundVolume = 10})
	WACKYEFFECT({Time = 25, EffectType = "Slash", Size = VT(0,0,0), Size2 = VT(1,0,1)*MRANDOM(1000/1000,1750/1000), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-4,0)*ANGLES(RAD(MRANDOM(-5,5)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-5,5))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-100/100,100/100), RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
	WACKYEFFECT({Time = 25, EffectType = "Slash", Size = VT(0,0,0), Size2 = VT(1,0,1)*MRANDOM(1000/1000,1750/1000), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-4,0)*ANGLES(RAD(MRANDOM(-5,5)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-5,5))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-100/100,100/100), RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
	WACKYEFFECT({Time = 25, EffectType = "Slash", Size = VT(0,0,0), Size2 = VT(1,0,1)*MRANDOM(1000/1000,1750/1000), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-4,0)*ANGLES(RAD(MRANDOM(-5,5)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-5,5))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-100/100,100/100), RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
	STOPPP = true
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		turnto(Mouse.Hit.p)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(75)), 0.5)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(-75)), 0.5)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1, 0.5, -1) * ANGLES(RAD(90), RAD(0), RAD(-75)) * RIGHTSHOULDERC0, 0.5)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, -1) * ANGLES(RAD(90), RAD(0), RAD(75)) * LEFTSHOULDERC0, 0.5)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5)
	end
	ATTACK = false
	Rooted = false
end

--//=================================\\
--||	   	    GUN SHOTS            ||
--\\=================================//

function ShotcrazyBnsh()
	ATTACK = true
	Rooted = false
	for i=0, 0.005, 0.05 / Animation_Speed do
		Swait()
		turnto(Mouse.Hit.p)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(60)), 0.5 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)), 0.5 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90+MRANDOM(-90,90)), RAD(0), RAD(60+MRANDOM(-90,90))) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
	end
	repeat
		for i=0, 0.005, 0.05 / Animation_Speed do
			Swait()
			turnto(Mouse.Hit.p)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(60)), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-60)), 0.5 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90+MRANDOM(-90,90)), RAD(0), RAD(60+MRANDOM(-90,90))) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		end
		local HIT,POS = CastProperRay(RightArm.Position, Mouse.Hit.p, 1000, Character)
		SpawnTrail(RightArm.Position,POS)
		if HIT ~= nil then
			if HIT.Parent ~= workspace and HIT.Parent.ClassName ~= "Folder" then
				Banish(HIT.Parent)
			elseif YoureFucked == true then
				succ(HIT.Parent)
			end
		end
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = Vector3.new(0.3,0,0.3), Size2 = Vector3.new(1,1.5,1), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame, MoveToPos = RightArm.CFrame*CFrame.new(0,0.5,0).p, RotationX = 0, RotationY = -15, RotationZ = 0, Material = "Neon", Color = Color3.new(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = Vector3.new(0.3,0,0.3), Size2 = Vector3.new(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame =	RightArm.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = Color3.new(1,0,0), SoundID = 3264923, SoundPitch = 1, SoundVolume = 10})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = Vector3.new(0.3,0,0.3), Size2 = Vector3.new(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = CFrame.new(POS,RightArm.Position) * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0)), MoveToPos = nil, RotationX = 0, RotationY = -5, RotationZ = 0, Material = "Neon", Color = Color3.new(1,0,0), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = Vector3.new(0.3,0,0.3), Size2 = Vector3.new(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = CFrame.new(POS,RightArm.Position) * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0)), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = Color3.new(1,0,0), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		local HIT,POS = CastProperRay(RightArm.Position, Mouse.Hit.p, 1000, Character)
		SpawnTrail(RightArm.Position,POS)
		if HIT ~= nil then
			if HIT.Parent ~= workspace and HIT.Parent.ClassName ~= "Folder" then
				Banish(HIT.Parent)
			elseif YoureFucked == true then
				succ(HIT.Parent)
			end
		end
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = Vector3.new(0.3,0,0.3), Size2 = Vector3.new(1,1.5,1), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame, MoveToPos = RightArm.CFrame*CFrame.new(0,0.5,0).p, RotationX = 0, RotationY = -15, RotationZ = 0, Material = "Neon", Color = Color3.new(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = Vector3.new(0.3,0,0.3), Size2 = Vector3.new(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = Color3.new(1,0,0), SoundID = 3264923, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 10})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = Vector3.new(0.3,0,0.3), Size2 = Vector3.new(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = CFrame.new(POS,RightArm.Position) * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0)), MoveToPos = nil, RotationX = 0, RotationY = -5, RotationZ = 0, Material = "Neon", Color = Color3.new(1,0,0), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = Vector3.new(0.3,0,0.3), Size2 = Vector3.new(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = CFrame.new(POS,RightArm.Position) * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0)), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = Color3.new(1,0,0), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		for i=0, 0.005, 0.05 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(-5), RAD(0), RAD(60)), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-60)), 0.25 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(130), RAD(15), RAD(90)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		end
	until KEYHOLD == false
	ATTACK = false
	Rooted = false
end

function headshot2()
	ATTACK = true
	Rooted = false
	for i=0, 0.4, 0.1 / Animation_Speed do
		Swait()
		turnto(Mouse.Hit.p)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(90)), 0.5 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)), 0.5 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(90)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.6, 0) * ANGLES(RAD(-45), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
	end
	repeat
		for i=0, 0.2, 0.1 / Animation_Speed do
			Swait()
			turnto(Mouse.Hit.p)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(90)), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)), 0.5 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(90)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.6, 0) * ANGLES(RAD(-45), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		end
		local HIT,POS = CastProperRay(SniperHole.Position, Mouse.Hit.p, 1000, Character)
		SpawnTrail(SniperHole.Position,POS)
		if HIT ~= nil then
			if HIT.Parent ~= workspace and HIT.Parent.ClassName ~= "Folder" then
				kick(HIT.Parent)
			end
		end
		WACKYEFFECT({Time = 90, EffectType = "Swirl", Size = VT(0.3,13,0.3), Size2 = VT(1,1.5,1), Transparency = 0, Transparency2 = 1, CFrame = SniperHole.CFrame, MoveToPos = SniperHole.CFrame*CF(0,0.5,0).p, RotationX = 0, RotationY = -15, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 90, EffectType = "Swirl", Size = VT(5.3,0.3,5.3), Size2 = VT(1,1.5,1), Transparency = 0, Transparency2 = 1, CFrame = SniperHole.CFrame, MoveToPos = SniperHole.CFrame*CF(0,0.5,0).p, RotationX = 0, RotationY = -15, RotationZ = 0, Material = "Neon", Color = C3(255,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 60, EffectType = "Swirl", Size = VT(3.3,1.3,3.3), Size2 = VT(1,1.5,1), Transparency = 0, Transparency2 = 1, CFrame = SniperHole.CFrame, MoveToPos = SniperHole.CFrame*CF(0,0.5,0).p, RotationX = 0, RotationY = -15, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(1,1.5,1), Transparency = 0, Transparency2 = 1, CFrame = SniperHole.CFrame, MoveToPos = SniperHole.CFrame*CF(0,0.5,0).p, RotationX = 0, RotationY = -15, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = SniperHole.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = 159882598, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		WACKYEFFECT({Time = 25, EffectType = "Ring", Size = VT(0.3,0,0.3), Size2 = VT(1,1.5,1), Transparency = 0, Transparency2 = 1, CFrame = SniperHole.CFrame, MoveToPos = SniperHole.CFrame*CF(0,0.5,0).p, RotationX = 0, RotationY = -15, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(cR,cG,cB), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 25, EffectType = "Ring", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = SniperHole.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(cR,cG,cB), SoundID = 1463566014, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		WACKYEFFECT({Time = 25, EffectType = "Ring", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = CF(RightArm.Position) * ANGLES(RAD(-90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = -5, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(cR,cG,cB), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		WACKYEFFECT({Time = 25, EffectType = "Ring", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = CF(RightArm.Position) * ANGLES(RAD(-90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(cR,cG,cB), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		for i=0, 0.3, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(90)), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)), 0.25 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(15), RAD(90)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.6, 0) * ANGLES(RAD(-45), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		end
	until KEYHOLD == false
	ATTACK = false
	Rooted = false
end

function ShatteredHeart()
	ATTACK = true
	Rooted = false
	warnedpeople("HAHAHAHAHAHAHA!!!!")
	bosschatfunc("HAHAHAHAHAHAHA!!!!",BrickColor.new'Really red'.Color,BrickColor.new'Black'.Color,200)
	CreateSound(laughs[MRANDOM(1, #laughs)], Head, 10, 0.9)
	wait(2)
	WACKYEFFECT({Time = 55, EffectType = "Sphere", Size = VT(3.55,3.55,3.55), Size2 = VT(95,95,95), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0, 0, 0), MoveToPos = nil, RotationX = 30, RotationY = 30, RotationZ = 30, Material = "Neon", Color = C3(0,0,0), SoundID = 743521450, SoundPitch = 0.95, SoundVolume = 6})
	WACKYEFFECT({Time = 70, EffectType = "Sphere", Size = VT(3.55,3.5,3.5), Size2 = VT(130,3.5,3.5), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0, 0, 0), MoveToPos = nil, RotationX = 30, RotationY = 30, RotationZ = 30, Material = "Neon", Color = C3(1,0,0), SoundID = 0, SoundPitch = 0.95, SoundVolume = 6})
	WACKYEFFECT({Time = 70, EffectType = "Sphere", Size = VT(3.5,3.5,3.55), Size2 = VT(3.5,3.5,130), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0, 0, 0), MoveToPos = nil, RotationX = 30, RotationY = 30, RotationZ = 30, Material = "Neon", Color = C3(0,0,0), SoundID = 0, SoundPitch = 0.95, SoundVolume = 6})
	WACKYEFFECT({Time = 70, EffectType = "Sphere", Size = VT(3.5,3.55,3.5), Size2 = VT(3.5,130,3.5), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0, 0, 0), MoveToPos = nil, RotationX = 30, RotationY = 30, RotationZ = 30, Material = "Neon", Color = C3(1,0,0), SoundID = 0, SoundPitch = 0.95, SoundVolume = 6})
	CreateSound(TAUNTS[MRANDOM(1,#TAUNTS)], Torso, 7, 1, false)
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1*SIZE) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.65 - 0.03 * SIN(SINE / 12), 0) * ANGLES(RAD(150), RAD(0), RAD(45)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.65 - 0.03 * SIN(SINE / 12), 0) * ANGLES(RAD(150), RAD(0), RAD(-45)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(60), RAD(0)) * ANGLES(RAD(-15), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-60), RAD(0)) * ANGLES(RAD(-15), RAD(0), RAD(0)), 1 / Animation_Speed)
	end	
	for i=0, 11.5, 0.1 / Animation_Speed2 do
		Swait()
		Humanoid.CameraOffset = VT(MRANDOM(-500,500)/2.5,MRANDOM(-50,50)/2.5,MRANDOM(-500,500)/2.5)/30
		ApplyAoE(RootPart.Position,1e9)
		WACKYEFFECT2({
			Time = 12,
			EffectType = "Sphere",
			Size = VT(5, 5, 5)/10 * 25,
			Size2 = VT(0, 0, 250)/10 * 25,
			Transparency = 0,
			Transparency2 = 1,
			CFrame = CF(RootPart.Position) * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360))),
			MoveToPos = nil,
			RotationX = 0,
			RotationY = 0,
			RotationZ = 0,
			Material = "Neon",
			Color = Color3.new(sick.PlaybackLoudness/500,0,0),
			SoundID = nil,
			SoundPitch = 1,
			SoundVolume = 10,
			UseBoomerangMath = true,
			Boomerang = 0,
			SizeBoomerang = 0
		})
		bosschatfunc("You're already gone.",BrickColor.new'Really red'.Color,BrickColor.new'Black'.Color,200)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-7), RAD(-10), RAD(27 - 2.5 * SIN(SINE / 13))) * ANGLES(RAD(0), RAD(0), RAD(-22 - 2.5 * SIN(SINE / 13))), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.55, .5, 0) * ANGLES(RAD(0), RAD(0), RAD(15))* RIGHTSHOULDERC0, 0.15 / 3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.65, .5, 0) *ANGLES(RAD(0),RAD(0 + .5 * COS(SINE / 12)),RAD(MRANDOM(-40,10))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 + 0.01, -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 + 0.01, -0.01) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 0.15 / Animation_Speed)
	end
	warnedpeople2("YOU ARE NOTHING")
	wait(5)
	CreateSound("159882598", Effects, 10, MRANDOM(10, 10) / 10)
	bosschatfunc("Die!!!",BrickColor.new'Really red'.Color,BrickColor.new'Black'.Color,200)
	for i = 0,8,0.1 do
		Swait()
		Humanoid.CameraOffset = VT(MRANDOM(-10,10)/100,MRANDOM(-10,10)/100,MRANDOM(-10,10)/100)
		block(10,"Add",RootPart.CFrame*CFrame.new(0,25,0),VT(0,0,0),0.5,0.5,0.5,BrickColor.random(),BrickColor.random().Color)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.03 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-35 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(150), RAD(0), RAD(15)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(150), RAD(0), RAD(-15)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(85), RAD(0)) * ANGLES(RAD(-12), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-12), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	for i = 1,350 do
		Swait()
		WACKYEFFECT2({
			Time = 75 - i * 4,
			EffectType = "Box",
			Size = VT(0, 0, 0),
			Size2 = VT(5, 5, 5) + VT(i, i, i) * 100,
			Transparency = 0,
			Transparency2 = 1,
			CFrame = CF(RootPart.Position) * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360))),
			MoveToPos = nil,
			RotationX = 360,
			RotationY = 360,
			RotationZ = 360,
			Material = "Neon",
			Color = C3(0,0,0),
			SoundID = 231917744,
			SoundPitch = MRANDOM(8, 20) / 10,
			SoundVolume = 3,
			UseBoomerangMath = true,
			Boomerang = 25,
			SizeBoomerang = 100
		})
		ApplyAoE4(Torso.Position, 9999, 0, 0, 0, true)
		WACKYEFFECT({EffectType = "Wave", Size = VT(0,5,0), Size2 = VT(i*12,5,i*12), Transparency = 0.6, Transparency2 = 1, CFrame = CF(RootPart.Position) * ANGLES(RAD(0), RAD(MRANDOM(0,360)), RAD(MRANDOM(-5,5))), MoveToPos = nil, RotationX = 0.1, RotationY = 1, RotationZ = -0.1, Material = "Slate", Color = C3(0,0,0), SoundID = 528589382, SoundPitch = MRANDOM(5,15)/10, SoundVolume = 3, UseBoomerangMath = false, Boomerang = 0, SizeBoomerang = 0})
		WACKYEFFECT({EffectType = "Sphere", Size = VT(0,5,0), Size2 = VT(i*12,5,i*12), Transparency = 0.6, Transparency2 = 1, CFrame = CF(RootPart.Position) * ANGLES(RAD(0), RAD(MRANDOM(0,360)), RAD(MRANDOM(-5,5))), MoveToPos = nil, RotationX = 0.1, RotationY = 1, RotationZ = -0.1, Material = "Neon", Color = C3(0,0,0), SoundID = 528589382, SoundPitch = MRANDOM(5,15)/10, SoundVolume = 3, UseBoomerangMath = false, Boomerang = 0, SizeBoomerang = 0})
		WACKYEFFECT({EffectType = "Slash", Size = VT(0,5,0), Size2 = VT(i*12,5,i*12), Transparency = 0.6, Transparency2 = 1, CFrame = CF(RootPart.Position) * ANGLES(RAD(0), RAD(MRANDOM(0,360)), RAD(MRANDOM(-5,5))), MoveToPos = nil, RotationX = 0.1, RotationY = 1, RotationZ = -0.1, Material = "Neon", Color = C3(0,0,0), SoundID = 528589382, SoundPitch = MRANDOM(5,15)/10, SoundVolume = 3, UseBoomerangMath = false, Boomerang = 0, SizeBoomerang = 0})
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-7), RAD(-10), RAD(27 - 2.5 * SIN(SINE / 13))) * ANGLES(RAD(0), RAD(0), RAD(-22 - 2.5 * SIN(SINE / 13))), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.55, .5, 0) * ANGLES(RAD(0), RAD(0), RAD(15))* RIGHTSHOULDERC0, 0.15 / 3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.65, .5, 0) *ANGLES(RAD(0),RAD(0 + .5 * COS(SINE / 12)),RAD(MRANDOM(-40,10))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 + 0.01, -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 + 0.01, -0.01) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(-2), RAD(0), RAD(0)), 0.15 / Animation_Speed)
	end
	ATTACK = false
	Rooted = false
end

function headshot()
	ATTACK = true
	Rooted = false
	Swait()
	local CHILDREN = workspace:GetDescendants()
	for index, CHILD in pairs(CHILDREN) do
		if CHILD.ClassName == "Model" and CHILD ~= Character then
			local HUM = CHILD:FindFirstChildOfClass("Humanoid")
			if HUM then
				local TORSO = CHILD:FindFirstChild("Head")
				if TORSO then
					if (TORSO.Position - Head.Position).Magnitude <= 25 then
						WACKYEFFECT({Time = 90, EffectType = "Swirl", Size = VT(0.3,13,0.3), Size2 = VT(1,1.5,1), Transparency = 0, Transparency2 = 1, CFrame = SniperHole.CFrame, MoveToPos = SniperHole.CFrame*CF(0,0.5,0).p, RotationX = 0, RotationY = -15, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
						WACKYEFFECT({Time = 90, EffectType = "Swirl", Size = VT(5.3,0.3,5.3), Size2 = VT(1,1.5,1), Transparency = 0, Transparency2 = 1, CFrame = SniperHole.CFrame, MoveToPos = SniperHole.CFrame*CF(0,0.5,0).p, RotationX = 0, RotationY = -15, RotationZ = 0, Material = "Neon", Color = C3(255,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
						WACKYEFFECT({Time = 60, EffectType = "Swirl", Size = VT(3.3,1.3,3.3), Size2 = VT(1,1.5,1), Transparency = 0, Transparency2 = 1, CFrame = SniperHole.CFrame, MoveToPos = SniperHole.CFrame*CF(0,0.5,0).p, RotationX = 0, RotationY = -15, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
						WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(1,1.5,1), Transparency = 0, Transparency2 = 1, CFrame = SniperHole.CFrame, MoveToPos = SniperHole.CFrame*CF(0,0.5,0).p, RotationX = 0, RotationY = -15, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
						WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = SniperHole.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = 159882598, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
						WACKYEFFECT({Time = 45, EffectType = "Sphere", Size = VT(1,1,1), Size2 = VT(5,5,5), Transparency = 0, Transparency2 = 1, CFrame = CF(TORSO.Position), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
						WACKYEFFECT({Time = 25, EffectType = "Ring", Size = VT(0.3,0,0.3), Size2 = VT(1,1.5,1), Transparency = 0, Transparency2 = 1, CFrame = SniperHole.CFrame, MoveToPos = SniperHole.CFrame*CF(0,0.5,0).p, RotationX = 0, RotationY = -15, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(cR,cG,cB), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
						WACKYEFFECT({Time = 25, EffectType = "Ring", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = SniperHole.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(cR,cG,cB), SoundID = 1463566014, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
						WACKYEFFECT({Time = 25, EffectType = "Ring", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = CF(RightArm.Position) * ANGLES(RAD(-90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = -5, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(cR,cG,cB), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
						WACKYEFFECT({Time = 25, EffectType = "Ring", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = CF(RightArm.Position) * ANGLES(RAD(-90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(cR,cG,cB), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
						TORSO:remove()
						if CHILD:FindFirstChild("Torso") then
							Ragdoll(CHILD,Torso,true)
						elseif CHILD:FindFirstChild("UpperTorso") then
							R15Ragdoll(CHILD,true)
						end
					end
				end
			end
		end
	end
	for i=0, 0.3, 0.1 / Animation_Speed do
		Swait()
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(25 - 4 * COS(SINE / 12)), RAD(0), RAD(15)), 1 / Animation_Speed)	
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.25 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0.3) * ANGLES(RAD(180), RAD(0), RAD(0)) * ANGLES(RAD(0), RAD(45), RAD(0)) * RIGHTSHOULDERC0, 0.25 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.6, 0) * ANGLES(RAD(-45), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.25 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.25 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.25 / Animation_Speed)
	end
	ATTACK = false
	Rooted = false
end

function Time_to_die(LOC,AIMTO,OUCH)
	WACKYEFFECTs({Time = 25, EffectType = "Block", Size = VT(0,0,0), Size2 = VT(1.4,1.4,1.4), Transparency = 0, Transparency2 = 1, CFrame = CF(LOC), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = BRICKC"New Yeller".Color, SoundID = 419268760, SoundPitch = MRANDOM(8,12)/13, SoundVolume = 7})
	for i = 1, 2 do
		local POS1 = CF(LOC,AIMTO)*CF(0,0,-45).p
		local AIMPOS = CF(LOC,POS1) * CF(0,0,-45) * ANGLES(RAD(MRANDOM(0,360)), RAD(MRANDOM(0,360)), RAD(MRANDOM(0,360)))*CF(0,0,MRANDOM(5,75)/10).p
		local HIT,POS = CastProperRay(LOC,AIMPOS,1000,Character)
		local DISTANCE = (POS - LOC).Magnitude
		if HIT then
			local HUM = nil
			if HIT.Parent:FindFirstChildOfClass("Humanoid") then
				HUM = HIT.Parent:FindFirstChildOfClass("Humanoid")
			elseif HIT.Parent.Parent:FindFirstChildOfClass("Humanoid") then
				HUM = HIT.Parent.Parent:FindFirstChildOfClass("Humanoid")
			end
			if HUM then
				ApplyDamage(HUM,OUCH+MRANDOM(-3,3))
			end
		end
		WACKYEFFECTs({Time = 20, EffectType = "Block", Size = VT(0,0,0), Size2 = VT(1,1,1), Transparency = 0, Transparency2 = 1, CFrame = CF(POS), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = BRICKC"New Yeller".Color, SoundID = nil, SoundPitch = 1, SoundVolume = 4})
		WACKYEFFECTs({Time = 20, EffectType = "Box", Size = VT(0,0,DISTANCE), Size2 = VT(0.7,0.7,DISTANCE), Transparency = 0.6, Transparency2 = 1, CFrame = CF(LOC,POS)*CF(0,0,-DISTANCE/2), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = BRICKC"New Yeller".Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
	end
end


function ShotAK()
	ATTACK = true
	Rooted = false
	for i=0, 0.4, 0.1 / Animation_Speed do
		Swait()
		turnto(Mouse.Hit.p)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(90), RAD(0)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(0.2, 0.8, -2.5) * ANGLES(RAD(90), RAD(0), RAD(50)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
	end
	CreateSound(1905403158,BanishGun,10,1.5,false)
	for i=0, 0.5, 0.1 / Animation_Speed do
		Swait()
		turnto(Mouse.Hit.p)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed) 
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(90), RAD(0)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(0.2, 0.8, -1.5) * ANGLES(RAD(90), RAD(0), RAD(50)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
	end
	for i=0, 0.5, 0.1 / Animation_Speed do
		Swait()
		turnto(Mouse.Hit.p)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed) 
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(90), RAD(0)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(0.2, 0.8, -2.5) * ANGLES(RAD(90), RAD(0), RAD(50)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
	end
	repeat
		for i=0, 0.2, 0.3 / Animation_Speed do
			Swait()
			turnto(Mouse.Hit.p)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(45)), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-45)), 0.5 / Animation_Speed)  
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(45)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(20), RAD(-20)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-50), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		end
		local HIT,POS = CastProperRay(HoleAK.Position, Mouse.Hit.p, 1000, Character)
		SpawnTrail(HoleAK.Position,POS)
		WACKYEFFECT({Time = 15, EffectType = "Sphere", Size = VT(0.3,0.3,0.3), Size2 = VT(0,10,0), Transparency = 0, Transparency2 = 1, CFrame = HoleAK.CFrame*CF(0,0.5,0) * ANGLES(RAD(MRANDOM(0,360)), RAD(MRANDOM(0,360)), RAD(MRANDOM(0,360))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-35,35), RotationZ = 0, Material = "Glass", Color = RightArm.Color, SoundID = nil, SoundPitch = MRANDOM(7,15)/10, SoundVolume = 10})
		WACKYEFFECT({Time = 15, EffectType = "Sphere", Size = VT(0.3,0.3,0.3), Size2 = VT(0,10,0), Transparency = 0, Transparency2 = 1, CFrame = HoleAK.CFrame*CF(0,0.5,0) * ANGLES(RAD(MRANDOM(0,360)), RAD(MRANDOM(0,360)), RAD(MRANDOM(0,360))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-35,35), RotationZ = 0, Material = "Glass", Color = C3(0,0,0), SoundID = nil, SoundPitch = MRANDOM(7,15)/10, SoundVolume = 10})
		if HIT ~= nil then
			if HIT.Parent ~= workspace and HIT.Parent.ClassName ~= "Folder" then
				Banish(HIT.Parent)
			elseif YoureFucked == true then
				succ(HIT.Parent)
			end
		end
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(1,1.5,1), Transparency = 0, Transparency2 = 1, CFrame = HoleAK.CFrame, MoveToPos = HoleAK.CFrame*CF(0,0.5,0).p, RotationX = 0, RotationY = -15, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = 541909814, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 1})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = HoleAK.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = 1905402432, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = CF(POS,HoleAK.Position) * ANGLES(RAD(-90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = -5, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = 541909814, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 1})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = CF(POS,HoleAK.Position) * ANGLES(RAD(-90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = 541909814, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 1})
		for i=0, 0.3, 0.3 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(45)), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-45)), 0.5 / Animation_Speed)
			if MRANDOM(1,30) == 10 then
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 + MRANDOM(-25,25) - 4 * COS(SINE / 12)), RAD(MRANDOM(-25,25)), RAD(-45)), 1.5 / Animation_Speed)
			end   
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.5, 0.5, 2) * ANGLES(RAD(110), RAD(0), RAD(45)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(20), RAD(-20)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-50), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		end
	until KEYHOLD == false
	ATTACK = false
	Rooted = false
end


function gunlightning()
	ATTACK = true
	Rooted = false
	for i=0, 0.005, 0.05 / Animation_Speed do
		Swait()
		turnto(Mouse.Hit.p)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(60)), 0.5 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)), 0.5 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90+MRANDOM(-90,90)), RAD(0), RAD(60+MRANDOM(-90,90))) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
	end
	repeat
		for i=0, 0.005, 0.05 / Animation_Speed do
			Swait()
			turnto(Mouse.Hit.p)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(60)), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-60)), 0.5 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90+MRANDOM(-90,90)), RAD(0), RAD(60+MRANDOM(-90,90))) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		end
		ApplyAoEpp(Mouse.Hit.Position,10)
		WACKYEFFECTpp({Time = math.random(15,35), EffectType = "Box", Size = Vector3.new(2,2,2), Size2 = Vector3.new(5,5,5), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame, MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(1,0,0), SoundID = 5556082054, SoundPitch = 1, SoundVolume = 6, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 50})
		WACKYEFFECTpp({Time = math.random(15,35), EffectType = "Box", Size = Vector3.new(2,2,2), Size2 = Vector3.new(5,5,5), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame, MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 50})
		Lightning(RightArm.Position,Mouse.Hit.p,15,3.5,BrickColor.new("Really black"),math.random(15,35),1,3,0,true,55) Lightning(RightArm.Position,Mouse.Hit.p,15,3.5,BrickColor.new("Really red"),math.random(15,35),1,3,0,true,55)
		for i = 0, 2 do
			WACKYEFFECTpp({Time = math.random(25,50), EffectType = "Round Slash", Size = Vector3.new(0.1,0.1,0.1), Size2 = Vector3.new(0.4,0,0.4), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))), MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 15})
			WACKYEFFECTpp({Time = math.random(25,50), EffectType = "Round Slash", Size = Vector3.new(0.1,0.1,0.1), Size2 = Vector3.new(0.4,0,0.4), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))), MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 15})
		end
		WACKYEFFECTpp({Time = math.random(15,35), EffectType = "Box", Size = Vector3.new(2,2,2), Size2 = Vector3.new(5,5,5), Transparency = 0, Transparency2 = 1, CFrame = Mouse.Hit, MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(1,0,0), SoundID = 5556082054, SoundPitch = 1, SoundVolume = 8, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 50})
		WACKYEFFECTpp({Time = math.random(15,35), EffectType = "Box", Size = Vector3.new(2,2,2), Size2 = Vector3.new(5,5,5), Transparency = 0, Transparency2 = 1, CFrame = Mouse.Hit, MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 50})
		for i = 0, 2 do
			WACKYEFFECTpp({Time = math.random(25,50), EffectType = "Round Slash", Size = Vector3.new(0.1,0.1,0.1), Size2 = Vector3.new(0.4,0,0.4), Transparency = 0, Transparency2 = 1, CFrame = Mouse.Hit*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))), MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 15})
			WACKYEFFECTpp({Time = math.random(25,50), EffectType = "Round Slash", Size = Vector3.new(0.1,0.1,0.1), Size2 = Vector3.new(0.4,0,0.4), Transparency = 0, Transparency2 = 1, CFrame = Mouse.Hit*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))), MoveToPos = nil, RotationX = math.random(-1,1), RotationY = math.random(-1,1), RotationZ = math.random(-1,1), Material = "Neon", Color = Color3.new(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil, UseBoomerangMath = true, Boomerang = 0, SizeBoomerang = 15})
		end
		for i=0, 0.005, 0.05 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(-5), RAD(0), RAD(60)), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-60)), 0.25 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(130), RAD(15), RAD(90)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		end
	until KEYHOLD == false
	ATTACK = false
	Rooted = false
end

function ShotRifle()
	ATTACK = true
	local GYRO = IT("BodyGyro", RootPart)
	GYRO.D = 15
	GYRO.P = 2000
	GYRO.MaxTorque = VT(0, 4000000, 0)
	repeat
		local HIT,POS = CastProperRay(MuzzleFlash.Position, Mouse.Hit.p, 1000, Character)
		RifleTrail(MuzzleFlash.Position,POS)
		if HIT ~= nil then
			if HIT.Parent ~= workspace and HIT.Parent.ClassName ~= "Folder" then
				Banish(HIT.Parent)
			elseif YoureFucked == true then
				succ(HIT.Parent)
			end
		end
		AOETimeRay(POS,8)
		for i=0, 0.2, 0.1 / Animation_Speed do
			Swait()
			Humanoid.CameraOffset = VT(MRANDOM(-50,50)/2.5,MRANDOM(-50,50)/2.5,MRANDOM(-50,50)/2.5)/30
			GYRO.cframe = CF(RootPart.Position, Mouse.Hit.p)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(90)), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)), 0.5 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(90)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5*SIZE, 0.5*SIZE, 0*SIZE) * ANGLES(RAD(0), RAD(0), RAD(-5)) * LEFTSHOULDERC0, 0.8 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		end
		WACKYEFFECT699({Time = 25, EffectType = "Box", Size = VT(2,0,2), Size2 = VT(6,7.5,6)/2, Transparency = 0, Transparency2 = 1, CFrame = MuzzleFlash.CFrame * ANGLES(RAD(MRANDOM(-360,360)), RAD(MRANDOM(-360,360)), RAD(MRANDOM(-360,360))), MoveToPos = MuzzleFlash.CFrame*CF(0,0,0).p, RotationX = 0, RotationY = -15, RotationZ = 0, Material = "Neon", Color = Color3.new(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT699({Time = 25, EffectType = "Box", Size = VT(2,0,2), Size2 = VT(6,6.5,6)/2, Transparency = 0, Transparency2 = 1, CFrame = MuzzleFlash.CFrame * ANGLES(RAD(MRANDOM(-360,360)), RAD(MRANDOM(-360,360)), RAD(MRANDOM(-360,360))), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = Color3.new(0,0,0), SoundID = 231917744, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 5})
		WACKYEFFECT699({Time = 25, EffectType = "Box", Size = VT(3,0,3), Size2 = VT(6,6.5,6), Transparency = 0, Transparency2 = 1, CFrame = CF(POS,MuzzleFlash.Position) * ANGLES(RAD(MRANDOM(-360,360)), RAD(MRANDOM(-360,360)), RAD(MRANDOM(-360,360))), MoveToPos = nil, RotationX = 0, RotationY = -5, RotationZ = 0, Material = "Neon", Color = Color3.new(0,0,0), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		WACKYEFFECT699({Time = 25, EffectType = "Box", Size = VT(3,0,3), Size2 = VT(6,6.5,6), Transparency = 0, Transparency2 = 1, CFrame = CF(POS,MuzzleFlash.Position) * ANGLES(RAD(MRANDOM(-360,360)), RAD(MRANDOM(-360,360)), RAD(MRANDOM(-360,360))), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = Color3.new(0,0,0), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		WACKYEFFECT699({Time = 25, EffectType = "Round Slash", Size = VT(1,0,1)/74, Size2 = VT(4,4.5,4)/74, Transparency = 0, Transparency2 = 1, CFrame = CF(POS,MuzzleFlash.Position) * ANGLES(RAD(MRANDOM(-360,360)), RAD(MRANDOM(-360,360)), RAD(MRANDOM(-360,360))), MoveToPos = nil, RotationX = 0, RotationY = -5, RotationZ = 0, Material = "Neon", Color = Color3.new(0,0,0), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8, UseBoomerangMath = true, Boomerang = 12, SizeBoomerang = 45})
		WACKYEFFECT699({Time = 25, EffectType = "Round Slash", Size = VT(1,0,1)/74, Size2 = VT(4,4.5,4)/74, Transparency = 0, Transparency2 = 1, CFrame = CF(POS,MuzzleFlash.Position) * ANGLES(RAD(MRANDOM(-360,360)), RAD(MRANDOM(-360,360)), RAD(MRANDOM(-360,360))), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = Color3.new(0,0,0), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8, UseBoomerangMath = true, Boomerang = 12, SizeBoomerang = 45})
	until KEYHOLD == false
	Humanoid.CameraOffset = VT(0,0,0)
	GYRO:remove()	
	ATTACK = false
end

function Shot0()
	ATTACK = true
	Rooted = false
	repeat
		for i=0, 0.08, 0.1 / Animation_Speed do
			Swait()
			turnto(Mouse.Hit.p)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(MRANDOM(-25,25)), RAD(MRANDOM(-25,25)), RAD(MRANDOM(-25,25))), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(15)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.15, 0.5, -0.7) * ANGLES(RAD(90), RAD(90), RAD(MRANDOM(-25,25))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(MRANDOM(-25,25)), RAD(75), RAD(MRANDOM(-25,25))) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(MRANDOM(-25,25)), RAD(-90), RAD(MRANDOM(-25,25))) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		local HIT,POS = CastProperRay(RightArm.Position, Mouse.Hit.p, 1000, Character)
		SpawnTrail(RightArm.Position,POS)
		if HIT ~= nil then
			if HIT.Parent ~= workspace and HIT.Parent.ClassName ~= "Folder" then
				Banish(HIT.Parent)
			elseif YoureFucked == true then
				succ(HIT.Parent)
			end
		end
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = Vector3.new(0.3,0,0.3), Size2 = Vector3.new(1,1.5,1), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame, MoveToPos = RightArm.CFrame*CFrame.new(0,0.5,0).p, RotationX = 0, RotationY = -15, RotationZ = 0, Material = "Neon", Color = Color3.new(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = Vector3.new(0.3,0,0.3), Size2 = Vector3.new(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = Color3.new(1,0,0), SoundID = 904440937, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = Vector3.new(0.3,0,0.3), Size2 = Vector3.new(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = CFrame.new(POS,RightArm.Position) * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0)), MoveToPos = nil, RotationX = 0, RotationY = -5, RotationZ = 0, Material = "Neon", Color = Color3.new(1,0,0), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = Vector3.new(0.3,0,0.3), Size2 = Vector3.new(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = CFrame.new(POS,RightArm.Position) * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0)), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = Color3.new(1,0,0), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		local HIT,POS = CastProperRay(RightArm.Position, Mouse.Hit.p, 1000, Character)
		SpawnTrail(RightArm.Position,POS)
		if HIT ~= nil then
			if HIT.Parent ~= workspace and HIT.Parent.ClassName ~= "Folder" then
				Banish(HIT.Parent)
			elseif YoureFucked == true then
				succ(HIT.Parent)
			end
		end
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = Vector3.new(0.3,0,0.3), Size2 = Vector3.new(1,1.5,1), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame, MoveToPos = RightArm.CFrame*CFrame.new(0,0.5,0).p, RotationX = 0, RotationY = -15, RotationZ = 0, Material = "Neon", Color = Color3.new(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = Vector3.new(0.3,0,0.3), Size2 = Vector3.new(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = Color3.new(1,0,0), SoundID = 904440937, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = Vector3.new(0.3,0,0.3), Size2 = Vector3.new(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = CFrame.new(POS,RightArm.Position) * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0)), MoveToPos = nil, RotationX = 0, RotationY = -5, RotationZ = 0, Material = "Neon", Color = Color3.new(1,0,0), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = Vector3.new(0.3,0,0.3), Size2 = Vector3.new(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = CFrame.new(POS,RightArm.Position) * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0)), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = Color3.new(1,0,0), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		for i=0, 0.08, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(MRANDOM(-25,25)), RAD(MRANDOM(-25,25)),RAD(MRANDOM(-25,25))), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(15)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.15, 0.5, -0.6) * ANGLES(RAD(110), RAD(90), RAD(MRANDOM(-25,25))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(MRANDOM(-25,25)), RAD(75), RAD(MRANDOM(-25,25))) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(MRANDOM(-25,25)), RAD(-90), RAD(MRANDOM(-25,25))) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
	until KEYHOLD == false
	ATTACK = false
	Rooted = false
end

function Heartless()
	local target = nil
	local targettorso = nil
	local targethead = nil
	if mouse.Target.Parent ~= Character and mouse.Target.Parent.Parent ~= Character and mouse.Target.Parent:FindFirstChild("Humanoid") ~= nil then
		if mouse.Target.Parent.Humanoid.PlatformStand == false then
			target = mouse.Target.Parent.Humanoid
			targettorso = mouse.Target.Parent:FindFirstChild("Torso") or mouse.Target.Parent:FindFirstChild("UpperTorso")
			targethead = mouse.Target.Parent:FindFirstChild("Head")
		end
	end
	if target ~= nil then
		targettorso.Anchored = true
		ATTACK = true
		Rooted = true
		RootPart.CFrame = targettorso.CFrame * CF(0,0,3)
		for i = 0,6.2,0.1 do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, -0.1 + 0.1 * COS(SINE / 5)) * ANGLES(RAD(0), RAD(0), RAD(-45)), 0.15)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(20), RAD(0), RAD(45)), 0.3)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.9 - 0.1 * COS(SINE / 20), 0.025 * COS(SINE / 5)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 0.15)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.9 - 0.1 * COS(SINE / 20), 0.025 * COS(SINE / 5)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(-0)), 0.15)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.3, 0.5 + 0.05 * SIN(SINE / 10), 0.025 * COS(SINE / 5)) * ANGLES(RAD(90), RAD(0), RAD(25)) * RIGHTSHOULDERC0, 0.1)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0.05 * SIN(SINE / 10), 0.025 * COS(SINE / 5)) * ANGLES(RAD(25), RAD(0), RAD(-15)) * LEFTSHOULDERC0, 0.1)
		end
		local BloodColor = Color3.new(1, 0, 0)
		local Heart = Instance.new("Part")
		Heart.Parent = workspace
		Heart.Size = Vector3.new(1, 1, 1)
		Heart.Archivable = true
		Heart.Transparency = 0
		Heart.CanCollide = false
		Heart.BrickColor = BrickColor.new("Really red")
		Heart.Material = "Granite"
		Heart.CanCollide = true
		local weld1Heart = Instance.new("Weld")
		weld1Heart.Parent = RightArm
		weld1Heart.Part0 = RightArm
		weld1Heart.Part1 = Heart
		weld1Heart.C1 = CFrame.new(0, 1.3, 0)
		CreateSound(429400881,targettorso,5,1,false)
		CreateSound(131038747,targettorso,5,1,false)
		game:GetService("Debris"):AddItem(Heart, 8)
		for i = 0,8,0.1 do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(1.2, -2.5, -0.2) * ANGLES(RAD(0), RAD(0), RAD(40)), 0.15)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(20), RAD(10), RAD(-45)), 0.3)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.8, -0.4) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(-20)), 0.15)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.8, -0.2) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(56)), 0.15)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.51 + 0.05 * SIN(SINE / 10), 0.025 * COS(SINE / 5)) * ANGLES(RAD(90), RAD(0), RAD(40)) * RIGHTSHOULDERC0, 0.1)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0.05 * SIN(SINE / 10), 0.025 * COS(SINE / 5)) * ANGLES(RAD(25), RAD(0), RAD(-15)) * LEFTSHOULDERC0, 0.1)
		end
		targettorso:BreakJoints()
		game:GetService("Debris"):AddItem(weld1Heart, 1.5)
		for i = 0,9,0.1 do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, -0.1 + 0.1 * COS(SINE / 5)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(20), RAD(0), RAD(-20)), 0.3)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.9 - 0.1 * COS(SINE / 20), 0.025 * COS(SINE / 5)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 0.15)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.9 - 0.1 * COS(SINE / 20), 0.025 * COS(SINE / 5)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(-0)), 0.15)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.05 * SIN(SINE / 10), 0.025 * COS(SINE / 5)) * ANGLES(RAD(90), RAD(0), RAD(15)) * RIGHTSHOULDERC0, 0.1)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0.05 * SIN(SINE / 10), 0.025 * COS(SINE / 5)) * ANGLES(RAD(25), RAD(0), RAD(-15)) * LEFTSHOULDERC0, 0.1)
		end
		targettorso.Anchored = false
		ATTACK = false
		Rooted = false
		RootPart.CFrame = targettorso.CFrame * CF(0,0,3.4)
	end
end

function Smite()
	ATTACK = true
	Rooted = true
	CreateSound(1368573150, RightArm, 3, 1.5)
	for i=0, 2, 0.1 / Animation_Speed do
		Swait()
		WACKYEFFECT({TIME = 15, EffectType = "Block", Size = VT(3,3,3)/3, Size2 = VT(1,1,1)/3, Transparency = 0.5, Transparency2 = 1, CFrame = RightLeg.CFrame*CF(0,-1.3,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = 1, SoundVolume = 5})
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(-15), RAD(0), RAD(40)), 0.5 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(-25)), 3 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.6, 0) * ANGLES(RAD(150), RAD(35), RAD(0))* RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.2*SIZE, 0.5*SIZE, 0) * ANGLES(RAD(0), RAD(30), RAD(85)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE, -0.4*SIZE - 0.05 * COS(SINE / 12), -0.5) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE, -1*SIZE - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(-15), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
	end
	local POWER = 1
	repeat 
		Swait() 
		WACKYEFFECT({EffectType = "Slash", Size = VT(0,0,0), Size2 = VT(0.01*POWER,0,0.01*POWER), Transparency = 0, Transparency2 = 1, CFrame = RightLeg.CFrame*CF(0,-1.3,0) * ANGLES(RAD(MRANDOM(-90,90)), RAD(MRANDOM(-90,90)), RAD(MRANDOM(-90,90))), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = 1, SoundVolume = 0})
		WACKYEFFECT({EffectType = "Block", Size = VT(3,3,3)/3, Size2 = VT(1,1,1)/3, Transparency = 0.5, Transparency2 = 1, CFrame = RightLeg.CFrame*CF(0,-1.3,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = 1, SoundVolume = 5})
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(-15), RAD(0), RAD(40)), 0.5 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(-25)), 3 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.6, 0) * ANGLES(RAD(150), RAD(35), RAD(0))* RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.2*SIZE, 0.5*SIZE, 0) * ANGLES(RAD(0), RAD(30), RAD(85)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE, -0.4*SIZE - 0.05 * COS(SINE / 12), -0.5) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE, -1*SIZE - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(-15), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		POWER = POWER + 0.009
		if POWER >= 6 then
			POWER = 6
		end
	until KEYHOLD == false
	CreateRing2(VT(0,0,0),false,0,45,RootPart.CFrame*ANGLES(RAD(90),RAD(0),RAD(0)),"Crimson",VT(100,100,100))
	CreateSound("1137548130", Effects, 10, 1)
	MagicSphere3(VT(0,0,0),45,Torso.CFrame,"Maroon",VT(500,500,500))
	ApplyAoE4(Torso.Position, 9999, 0, 0, 0, true)
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		WACKYEFFECT({EffectType = "Block", Size = VT(3,3,3)/3, Size2 = VT(1,1,1)/3, Transparency = 0.5, Transparency2 = 1, CFrame = RightLeg.CFrame*CF(0,-1.3,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = 1, SoundVolume = 5})
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.5 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(10), RAD(0), RAD(0)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1.25*SIZE) - 1)) * ANGLES(RAD(35), RAD(0), RAD(0)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.2*SIZE, 0.5*SIZE, 0) * ANGLES(RAD(0), RAD(105), RAD(-85)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.2*SIZE, 0.5*SIZE, 0) * ANGLES(RAD(0), RAD(-105), RAD(85)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE, -0.7*SIZE - 0.05 * COS(SINE / 12), -0.4) * ANGLES(RAD(10), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(20)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE, -1*SIZE - 0.05 * COS(SINE / 12), 0.13) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(35)), 1 / Animation_Speed)
	end
	ATTACK = false
	Rooted = false
end

function Cleave()
	ATTACK = true
	Rooted = false
	local TARGET = nil
	local TORS = nil
	local GYRO = IT("BodyGyro",RootPart)
	GYRO.D = 175
	GYRO.P = 20000
	GYRO.MaxTorque = VT(0,40000,0)
	GYRO.cframe = CF(RootPart.Position,Mouse.Hit.p)
	local RANGE = 5
	CreateSound(541909867, Torso, 7, 1, false)
	WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(12,0.5,12), Transparency = 0, Transparency2 = 1, CFrame = Torso.CFrame * ANGLES(RAD(90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = -15, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		RootPart.CFrame = RootPart.CFrame * CF(0,0,-2)
		GYRO.cframe = CF(RootPart.Position,Mouse.Hit.p)
		local CHILDREN = workspace:GetDescendants()
		for index, CHILD in pairs(CHILDREN) do
			if CHILD.ClassName == "Model" and CHILD ~= Character then
				local HUM = CHILD:FindFirstChildOfClass("Humanoid")
				if HUM then
					local TORSO = CHILD:FindFirstChild("Torso") or CHILD:FindFirstChild("UpperTorso")
					if TORSO then
						if (TORSO.Position - RightArm.Position).Magnitude <= RANGE + TORSO.Size.Magnitude/5 then
							RANGE = (TORSO.Position - RightArm.Position).Magnitude
							TARGET = HUM
							TORS = TORSO
						end
					end
				end
			end
		end
		if TARGET then
			break
		end
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0  + 0.25 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(-80)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(80)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 0.35 + 0.15 * COS(SINE / 12), 0) * ANGLES(RAD(110), RAD(-15 - 2.5 * SIN(SINE / 12)), RAD(35 + 7.5 * SIN(SINE / 12))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(-80)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(-2.5 * SIN(SINE / 12)), RAD(75), RAD(0)) * ANGLES(RAD(-8 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.5, -0.5) * ANGLES(RAD(-2.5 * SIN(SINE / 12)), RAD(-90), RAD(0)) * ANGLES(RAD(-8 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	GYRO:remove()
	if TORS and TARGET then
		chatfunc("hahahAHAHAHA...")
		CreateSound(laughs[MRANDOM(1, #laughs)], Head, 10, 0.9)
		Rooted = true
		local BODYPOSITION = IT("BodyPosition", TORS)
		BODYPOSITION.P = 2000
		BODYPOSITION.D = 100
		BODYPOSITION.maxForce = VT(math.huge, math.huge, math.huge)
		for i=0, 1, 0.1 / Animation_Speed do
			Swait()
			TORS.CFrame = RightArm.CFrame * CF(0,TORS.Size.Z/2,0) * ANGLES(RAD(90), RAD(0), RAD(0))
			BODYPOSITION.Position = TORS.Position
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0  + 0.25 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(-50)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(50)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 0.35 + 0.15 * COS(SINE / 12), 0) * ANGLES(RAD(110), RAD(-15 - 2.5 * SIN(SINE / 12)), RAD(35 + 7.5 * SIN(SINE / 12))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(145), RAD(0), RAD(-50)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(-2.5 * SIN(SINE / 12)), RAD(75), RAD(0)) * ANGLES(RAD(-8 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.5, -0.5) * ANGLES(RAD(-2.5 * SIN(SINE / 12)), RAD(-90), RAD(0)) * ANGLES(RAD(-8 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		for i=0, 0.4, 0.1 / Animation_Speed do
			Swait()
			TORS.CFrame = RightArm.CFrame * CF(0,TORS.Size.Z/2,0) * ANGLES(RAD(90), RAD(0), RAD(0))
			BODYPOSITION.Position = TORS.Position
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0  + 0.25 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(-50)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(50)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, -0.5) * ANGLES(RAD(145), RAD(0), RAD(-65)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(145), RAD(0), RAD(-50)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(-2.5 * SIN(SINE / 12)), RAD(75), RAD(0)) * ANGLES(RAD(-8 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.5, -0.5) * ANGLES(RAD(-2.5 * SIN(SINE / 12)), RAD(-90), RAD(0)) * ANGLES(RAD(-8 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
		end	
		local LOOP = 0
		local LOOP2 = 0
		for i=0, 5, 0.1 / Animation_Speed do
			Swait()
			LOOP = LOOP + 1
			TORS.Anchored = true
			LOOP2 = LOOP2 + 1
			if LOOP2 >= 5 then
				WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(1,1.5,1), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame, MoveToPos = RightArm.CFrame*CF(0,0.5,0).p, RotationX = 0, RotationY = -15, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
				WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame, MoveToPos = nil, RotationX = 0, RotationY = -15, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
				CreateSound(1463566014, RightArm, 7, 1, false)
				SpawnTrail(RightArm.Position,RightArm.CFrame*CF(0,500,0).p)
				LOOP2 = 0
			end
			TORS.CFrame = RightArm.CFrame * CF(0,TORS.Size.Z/2,0) * ANGLES(RAD(90), RAD(0), RAD(0))
			BODYPOSITION.Position = TORS.Position
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0  + 0.25 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(-50)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(50)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, -0.5) * ANGLES(RAD(145 + 2 * SIN(LOOP / 12)), RAD(0), RAD(-65)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(145), RAD(0), RAD(-50)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(-2.5 * SIN(SINE / 12)), RAD(75), RAD(0)) * ANGLES(RAD(-8 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.5, -0.5) * ANGLES(RAD(-2.5 * SIN(SINE / 12)), RAD(-90), RAD(0)) * ANGLES(RAD(-8 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
		end	
		BODYPOSITION:remove()
		if TORS then
			TORS.Anchored = false
			Banish(TORS.Parent)
		end
	end
	ATTACK = false
	Rooted = false
end

function Deathbound()
	chatfunc("hahahAHAHAHA...")
	CreateSound(laughs[MRANDOM(1, #laughs)], Head, 10, 0.9)
	ATTACK = true
	Rooted = true
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1 + 0.25 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 1, 0) * ANGLES(RAD(15), RAD(0), RAD(12)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 1, 0) * ANGLES(RAD(15), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(-35-2.5 * SIN(SINE / 12)), RAD(75), RAD(0)) * ANGLES(RAD(-8 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.5, -0.5) * ANGLES(RAD(-35-2.5 * SIN(SINE / 12)), RAD(-90), RAD(0)) * ANGLES(RAD(-8 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	local DONE = false
	local GATE = nil
	local GATESPIN = true
	coroutine.resume(coroutine.create(function()
		repeat
			Swait()
			if GATE ~= nil then
				GATE.CFrame = GATE.CFrame * ANGLES(RAD(0), RAD(-3), RAD(0))
			end
		until GATESPIN == false
	end))
	coroutine.resume(coroutine.create(function()
		repeat
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0.2 - 0.25 * COS(SINE / 12)) * ANGLES(RAD(15), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.25 * COS(SINE / 12), 0) * ANGLES(RAD(15), RAD(0), RAD(5)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0.25 * COS(SINE / 12), 0) * ANGLES(RAD(15), RAD(0), RAD(-5)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(-35-2.5 * SIN(SINE / 12)), RAD(75), RAD(0)) * ANGLES(RAD(-8 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.5, -0.5) * ANGLES(RAD(-35-2.5 * SIN(SINE / 12)), RAD(-90), RAD(0)) * ANGLES(RAD(-8 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
		until DONE == true
		Swait(50)
		for i = 1, 35 do
			Swait(4)
			local FIRED = false
			local CHILDREN = workspace:GetDescendants()
			for index, CHILD in pairs(CHILDREN) do
				if CHILD.ClassName == "Model" and CHILD ~= Character then
					local HUM = CHILD:FindFirstChildOfClass("Humanoid")
					if HUM then
						local TORSO = CHILD:FindFirstChild("Torso") or CHILD:FindFirstChild("UpperTorso")
						if TORSO then
							if (TORSO.Position - GATE.Position).Magnitude <= GATE.Size.X/2.5 + TORSO.Size.Magnitude/5 then
								local HITFLOOR,HITPOS = Raycast(TORSO.Position, (CF(TORSO.Position, TORSO.Position + VT(0, -1, 0))).lookVector, 15, Character)
								local CFRAME = CF(HITPOS)*ANGLES(RAD(MRANDOM(-15,15)),RAD(MRANDOM(-15,15)),RAD(MRANDOM(-15,15)))
								WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(1,1.5,1), Transparency = 0, Transparency2 = 1, CFrame = CFRAME, MoveToPos = CFRAME*CF(0,0.5,0).p, RotationX = 0, RotationY = -15, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = 1463566014, SoundPitch = 1.5, SoundVolume = 6})
								WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = CFRAME, MoveToPos = nil, RotationX = 0, RotationY = -15, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
								SpawnTrail(CFRAME.p,CFRAME*CF(0,1000,0).p)		
								Banish(CHILD)
								FIRED = true
								break
							end
						end
					end
				end
			end
			if FIRED == false then
				local CFRAME = GATE.CFrame*ANGLES(RAD(0),RAD(MRANDOM(0,360)),RAD(0))*CF(0,0,MRANDOM(2,math.ceil(GATE.Size.X/2.5)))*ANGLES(RAD(MRANDOM(-15,15)),RAD(MRANDOM(-15,15)),RAD(MRANDOM(-15,15)))
				WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(1,1.5,1), Transparency = 0, Transparency2 = 1, CFrame = CFRAME, MoveToPos = CFRAME*CF(0,0.5,0).p, RotationX = 0, RotationY = -15, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = 1463566014, SoundPitch = 1.5, SoundVolume = 6})
				WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = CFRAME, MoveToPos = nil, RotationX = 0, RotationY = -15, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
				SpawnTrail(CFRAME.p,CFRAME*CF(0,1000,0).p)
				local HITBOD = Raycast(CFRAME.p, (CF(CFRAME.p, CFRAME.p + VT(0, 1, 0))).lookVector, 1000, Character)
				if HITBOD ~= nil then
					if HITBOD.Parent:FindFirstChildOfClass("Humanoid") then
						Banish(HITBOD.Parent)
					end
				end
			end
		end
		for i = 1, 45 do
			Swait()
			GATE.Size = GATE.Size - VT(3,0,3)
		end
		GATESPIN = false
		GATE:remove()
	end))
	Swait(15)
	local HITFLOOR,HITPOS = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 15, Character)
	GATE = CreatePart(3, Effects, "Neon", 0, 1, "Really red", "Gate", VT(0,0,0))
	local DECAL = IT("Decal",GATE)
	DECAL.Texture = "http://www.roblox.com/asset/?id=1526406096"
	DECAL.Face = "Top"
	GATE.CFrame = CF(HITPOS)
	CreateSound(160772554, GATE, 7, 1.3, false)
	for i = 1, 45 do
		Swait()
		GATE.Size = GATE.Size + VT(3,0,3)
	end
	CreateSound(1463566014, RightArm, 7, 1, false)
	CreateSound(1463566014, RightArm, 7, 1, false)
	WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,2,2), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame*CF(0,-1,0) * ANGLES(RAD(180), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = -5, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
	WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,2,2), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame*CF(0,-1,0) * ANGLES(RAD(180), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
	ATTACK = false
	Rooted = false
	DONE = true
end


function CreateFlyingDebree2(FLOOR,POSITION,AMOUNT,BLOCKSIZE,SWAIT,STRENGTH)
	if FLOOR ~= nil then
		for i = 1, AMOUNT do
			local DEBREE = CreatePart(3, Effects, "Neon", FLOOR.Reflectance, FLOOR.Transparency, "Peal", "Debree", BLOCKSIZE, false)
			DEBREE.Material = FLOOR.Material
			DEBREE.Color = FLOOR.Color
			DEBREE.CFrame = POSITION * ANGLES(RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360)))
			DEBREE.Velocity = VT(MRANDOM(-STRENGTH,STRENGTH),MRANDOM(-STRENGTH,STRENGTH),MRANDOM(-STRENGTH,STRENGTH))
			coroutine.resume(coroutine.create(function()
				Swait(15)
				DEBREE.Parent = workspace
				DEBREE.CanCollide = true
				Debris:AddItem(DEBREE,SWAIT)
			end))
		end
	end
end

function ShatteredRealities()
	local TARGET = Mouse.Target
	if TARGET ~= nil then
		if TARGET.Parent:FindFirstChildOfClass("Humanoid") then
			local HUM = TARGET.Parent:FindFirstChildOfClass("Humanoid")
			local ROOT = TARGET.Parent:FindFirstChild("HumanoidRootPart") or TARGET.Parent:FindFirstChild("Torso") or TARGET.Parent:FindFirstChild("UpperTorso")
			if ROOT and HUM.Health > 0 then
				local FOE = Mouse.Target.Parent
				local HEAD = FOE:FindFirstChild("Torso")
				local HITFLOOR = Raycast(ROOT.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 4*ROOT.Size.Z, FOE)
				if HEAD and HITFLOOR then
					ATTACK = true
					Rooted = true
					CharacterFade(C3(0, 0, 0), 150)
					RootPart.CFrame = ROOT.CFrame*CF(0,0,2)
					ROOT.Anchored = true
					CreateSound(235097614, Torso, 2, 3, false)
					for i = 0, 0.4, 0.1 / Animation_Speed do
						Swait()
						RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(-25)), 1 / Animation_Speed)
						Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * COS(SINE / 12)), RAD(0), RAD(25)), 1 / Animation_Speed)
						RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(140), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
						LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
						RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(85), RAD(0)) * ANGLES(RAD(-1), RAD(0), RAD(0)), 1 / Animation_Speed)
						LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-65), RAD(0)) * ANGLES(RAD(-1), RAD(0), RAD(0)), 1 / Animation_Speed)
					end
					for i = 0, 0.1, 0.1 / Animation_Speed do
						Swait()
						RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(25)), 1 / Animation_Speed)
						Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * COS(SINE / 12)), RAD(0), RAD(-25)), 1 / Animation_Speed)
						RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(140), RAD(0), RAD(25)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
						LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
						RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(65), RAD(0)) * ANGLES(RAD(-1), RAD(0), RAD(0)), 1 / Animation_Speed)
						LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-1), RAD(0), RAD(0)), 1 / Animation_Speed)
					end
					local DEAD = false
					local CFRAME = RootPart.CFrame
					CreateSound(260411131, Torso, 2, 3, false)
					coroutine.resume(coroutine.create(function()
						repeat
							Swait()
							RootPart.CFrame = CFRAME
							HEAD.CFrame = RightLeg.CFrame*CF(0,-(1+HEAD.Size.Z/2),0) * ANGLES(RAD(-90), RAD(0), RAD(0))
							HEAD.Velocity = VT(0,0,0)
							HUM.PlatformStand = true
						until DEAD == true
					end))
					for i = 0, 0.2, 0.1 / Animation_Speed do
						Swait()
						RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(25)), 1 / Animation_Speed)
						Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * COS(SINE / 12)), RAD(0), RAD(-25)), 1 / Animation_Speed)
						RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45, 0.5, -0.3) * ANGLES(RAD(140), RAD(0), RAD(-15)) * RIGHTSHOULDERC0, 0.3 / Animation_Speed)
						LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
						RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(65), RAD(0)) * ANGLES(RAD(-1), RAD(0), RAD(0)), 1 / Animation_Speed)
						LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-1), RAD(0), RAD(0)), 1 / Animation_Speed)
					end
					for i = 0, 1, 0.1 / Animation_Speed do
						Swait()
						RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(-15)), 1 / Animation_Speed)
						Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(35 - 2.5 * COS(SINE / 12)), RAD(0), RAD(15)), 1 / Animation_Speed)
						RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45, 1, 0) * ANGLES(RAD(60), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
						LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
						RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(85), RAD(0)) * ANGLES(RAD(-1), RAD(0), RAD(0)), 1 / Animation_Speed)
						LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-70), RAD(0)) * ANGLES(RAD(-1), RAD(0), RAD(0)), 1 / Animation_Speed)
					end
					ROOT.Anchored = false
					CreateSound(247615928, Head, 3, 1, false)
					for i = 0, 12, 0.1 do
						Swait()
						RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(-15), RAD(0), RAD(40)), 0.5 / Animation_Speed)
						Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1.25) - 1)) * ANGLES(RAD(35), RAD(0), RAD(-40)), 0.5 / Animation_Speed)
						RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.2, 0.5, 0) * ANGLES(RAD(90), RAD(-45), RAD(-55)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
						LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.2, 0.5, 0) * ANGLES(RAD(0), RAD(30), RAD(85)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
						RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.4 - 0.05 * COS(SINE / 12), -0.5) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
						LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(-15), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
					end
					CreateSound(763717897, Head, 3, 0.5, false)
					CreateSound(239000203, Head, 3, 0.9, false)
					CreateSound(1413550336, Head, 3, 1.1, false)
					CreateSound(1192402877, Head, 2, 0.75, false)
					CreateSound(763718160, Head, 2, 0.75, false)
					CreateSound(1664711478, Head, 2, 1, false)
					local HITFLOOR, HITPOS = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 25, Character)
					CreateFlyingDebree2(HITFLOOR,CF(HITPOS),10,VT(1,1,1),4,125)
					for i = 0, 6, 0.1 do
						Swait()
						WACKYEFFECT({TIME = 60, EffectType = "Sphere", Size = VT(1.2,1.2,1.2), Size2 = VT(0,0,0), Transparency = 0.5, Transparency2 = 1, CFrame = RightArm.CFrame, MoveToPos = RightArm.CFrame*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))*CF(0,0,-4).p, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(0, 0, 0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
						WACKYEFFECT({TIME = 25, EffectType = "Sphere", Size = VT(1.2,1.2,1.2), Size2 = VT(0,0,0), Transparency = 0.5, Transparency2 = 1, CFrame = LeftArm.CFrame, MoveToPos = LeftArm.CFrame*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))*CF(0,0,-4).p, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1, 1, 1), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
						ApplyAoE(HITPOS, math.huge, math.huge, math.huge, math.huge, true)
						WACKYEFFECT({TIME = 4, EffectType = "Wave", Size = VT(i*2,10,i*2), Size2 = VT(i*100,108,i*100), Transparency = 0.9, Transparency2 = 1, CFrame = CF(RootPart.Position-VT(0,3,0)) * ANGLES(RAD(0), RAD(i*5), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = i/8, RotationZ = 0, Material = "Neon", Color = C3(0, 0, 0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
						WACKYEFFECT({TIME = math.ceil(15-(i/10)), EffectType = "Wave", Size = VT(98,108,98), Size2 = VT(i*100,104,i*100), Transparency = 0.8, Transparency2 = 1, CFrame = CF(RootPart.Position-VT(0,3,0)) * ANGLES(RAD(0), RAD(i*5), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = i/8, RotationZ = 0, Material = "Neon", Color = C3(1, 1, 1), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
						WACKYEFFECT({TIME = math.ceil(15-(i/10)), EffectType = "Wave", Size = VT(98,104,98), Size2 = VT(i*99.6,108,i*99.6), Transparency = 0.8, Transparency2 = 1, CFrame = CF(RootPart.Position-VT(0,3,0)) * ANGLES(RAD(MRANDOM(-5,5)), RAD(i*5), RAD(MRANDOM(-5,5))), MoveToPos = nil, RotationX = 0, RotationY = i/8, RotationZ = 0, Material = "Neon", Color = C3(0, 0, 0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
						RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
						Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-15 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
						RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-45), RAD(-45), RAD(45)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
						LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-45), RAD(45), RAD(-45)) * LEFTSHOULDERC0, 1 / Animation_Speed)
						RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(65), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 1 / Animation_Speed)
						LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-65), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 1 / Animation_Speed)
					end
					local ROARCONTINUE = CreateSound(1413550336, Head, 3, 1.1, false)
					ROARCONTINUE.TimePosition = (ROARCONTINUE.TimeLength) / 2
					DEAD = true
					Rooted = false
					ATTACK = false
				end
			end
		end
	end
end



function LimbRip()
	ATTACK = true
	Rooted = false
	local TARGET = nil
	local ROOT = nil
	local HUMAN = nil
	local DIST = 4
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		local CHILDREN = workspace:GetDescendants()
		for index, CHILD in pairs(CHILDREN) do
			if CHILD.ClassName == "Model" and CHILD ~= Character then
				local HUM = CHILD:FindFirstChildOfClass("Humanoid")
				if HUM then
					local TORSO = CHILD:FindFirstChild("HumanoidRootPart") or CHILD:FindFirstChild("Torso") or CHILD:FindFirstChild("UpperTorso")
					if TORSO and HUM.Health > 0 then
						if (TORSO.Position - RightArm.Position).Magnitude <= DIST then
							DIST = (TORSO.Position - RightArm.Position).Magnitude
							ROOT = TORSO
							HUMAN = HUM
							TARGET = CHILD:FindFirstChild("Torso") or CHILD:FindFirstChild("UpperTorso")
						end
					end
				end
			end
		end
		if ROOT then
			break
		end
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(45)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(10), RAD(0), RAD(-25)), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.35, 0.5, -0.4) * ANGLES(RAD(90), RAD(0), RAD(45)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-25), RAD(0), RAD(15)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-70), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	if ROOT then
		CreateSound(305685800,Torso,5,1.3,false)
		Rooted = true
		local GORED = false
		coroutine.resume(coroutine.create(function()
			repeat
				Swait()
				ROOT.Anchored = true
			until GORED == true
			ROOT.Anchored = false
		end))
		RootPart.CFrame = ROOT.CFrame*CF(0,0,2.25)
		if TARGET.Name == "Torso" then
			local RARM = TARGET.Parent:FindFirstChild("Right Arm")
			local LARM = TARGET.Parent:FindFirstChild("Left Arm")
			if RARM and LARM then
				for i=0, 1, 0.1 / Animation_Speed do
					Swait()
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 1 / Animation_Speed)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, -0.4) * ANGLES(RAD(90), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, -0.4) * ANGLES(RAD(90), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
					RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(70), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
					LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-70), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
				end
				for _, c in pairs(TARGET.Parent:GetDescendants()) do
					if c:IsA("JointInstance") then
						if c.Part1 == RARM or c.Part1 == LARM or c.Part0 == RARM or c.Part0 == LARM then
							c:remove()
						end
					end
				end
				CreateSound(363808674, TARGET, 3, MRANDOM(7,9)/10, false)
				CreateWeldOrSnapOrMotor("Weld", RightArm, RightArm, RARM, CF(0,-1.35,0) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
				CreateWeldOrSnapOrMotor("Weld", LeftArm, LeftArm, LARM, CF(0,-1.35,0) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
				for i=0, 1, 0.1 / Animation_Speed do
					Swait()
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 1 / Animation_Speed)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, -0.4) * ANGLES(RAD(160), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, -0.4) * ANGLES(RAD(160), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
					RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(70), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
					LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-70), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
				end
				for i=0, 1, 0.1 / Animation_Speed do
					Swait()
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0.25) * ANGLES(RAD(-25), RAD(0), RAD(80)), 1 / Animation_Speed)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(-30)), 1 / Animation_Speed)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, -0.4) * ANGLES(RAD(160), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, -0.4) * ANGLES(RAD(160), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
					RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.6) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-65), RAD(0), RAD(0)) * CF(0,1.5,0), 1 / Animation_Speed)
					LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-45), RAD(0)) * ANGLES(RAD(-35), RAD(0), RAD(0)), 1 / Animation_Speed)
				end
				for i=0, 0.1, 0.1 / Animation_Speed do
					Swait()
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0.2, 0.25) * ANGLES(RAD(-35), RAD(0), RAD(80)), 1 / Animation_Speed)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(-30)), 1 / Animation_Speed)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, -0.4) * ANGLES(RAD(160), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, -0.4) * ANGLES(RAD(160), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
					RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.6) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-65), RAD(0), RAD(0)) * CF(0,-0.3,0), 1 / Animation_Speed)
					LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-45), RAD(0)) * ANGLES(RAD(-35), RAD(0), RAD(0)), 1 / Animation_Speed)
				end
				GORED = true
				Ragdoll(TARGET.Parent,Torso)
				if ROOT.Name ~= "Torso" then
					ROOT:remove()
				end
				local RGRAB = CreateWeldOrSnapOrMotor("Weld", RightArm, RightArm, RARM, CF(0,-1.35,0) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
				local LGRAB = CreateWeldOrSnapOrMotor("Weld", LeftArm, LeftArm, LARM, CF(0,-1.35,0) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
				local bv = Instance.new("BodyVelocity",TARGET) 
				bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
				bv.velocity = TARGET.CFrame.lookVector*75
				Debris:AddItem(bv,0.05)
				CreateSound(621557962, RightLeg, 1, MRANDOM(7,9)/10, false)
				for i=0, 0.5, 0.1 / Animation_Speed do
					Swait()
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0.2, 0.25) * ANGLES(RAD(-35), RAD(0), RAD(80)), 1 / Animation_Speed)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(-30)), 1 / Animation_Speed)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, -0.4) * ANGLES(RAD(160), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, -0.4) * ANGLES(RAD(160), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
					RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.6) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-65), RAD(0), RAD(0)) * CF(0,-0.3,0), 1 / Animation_Speed)
					LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-45), RAD(0)) * ANGLES(RAD(-35), RAD(0), RAD(0)), 1 / Animation_Speed)
				end
				for i=0, 1, 0.1 / Animation_Speed do
					Swait()
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(25), RAD(0), RAD(0)), 1 / Animation_Speed)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, -0.4) * ANGLES(RAD(0), RAD(0), RAD(90)) * RIGHTSHOULDERC0, 0.6 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, -0.4) * ANGLES(RAD(0), RAD(0), RAD(-90)) * LEFTSHOULDERC0, 0.6 / Animation_Speed)
					RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(70), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
					LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-70), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
				end
				local HITBOX = CreatePart(3, RARM, "Metal", 0, 1, "Really black", "Part", RARM.Size, false)
				HITBOX.CFrame = RARM.CFrame
				HITBOX.CanCollide = true
				weldBetween(RARM,HITBOX)
				local HITBOX = CreatePart(3, LARM, "Metal", 0, 1, "Really black", "Part", RARM.Size, false)
				HITBOX.CFrame = LARM.CFrame
				HITBOX.CanCollide = true
				weldBetween(LARM,HITBOX)
				RGRAB:remove()
				LGRAB:remove()
				for i=0, 0.4, 0.1 / Animation_Speed do
					Swait()
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(25), RAD(0), RAD(0)), 1 / Animation_Speed)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, -0.4) * ANGLES(RAD(0), RAD(0), RAD(110)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, -0.4) * ANGLES(RAD(0), RAD(0), RAD(-110)) * LEFTSHOULDERC0, 1 / Animation_Speed)
					RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(70), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
					LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-70), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
				end
			end
		elseif TARGET.Name == "UpperTorso" then
			if TARGET.Parent:FindFirstChild("RightUpperArm") and TARGET.Parent:FindFirstChild("LeftUpperArm") then
				for i=0, 0.3, 0.1 / Animation_Speed do
					Swait()
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(45)), 1 / Animation_Speed)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(-45)), 1 / Animation_Speed)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45, 0.5, -0.5) * ANGLES(RAD(140), RAD(0), RAD(45)) * ANGLES(RAD(0), RAD(25), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
					RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(70), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
					LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
				end
				for i=0, 1, 0.1 / Animation_Speed do
					Swait()
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(45)), 1 / Animation_Speed)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(-45)), 1 / Animation_Speed)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45, 0.5, -0.5) * ANGLES(RAD(140), RAD(0), RAD(45)) * ANGLES(RAD(0), RAD(25), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
					RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(70), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
					LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
				end
				for i=0, 3, 0.1 / Animation_Speed do
					Swait()
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(45)), 1 / Animation_Speed)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(-45)), 1 / Animation_Speed)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45, 0.5, -0.5) * ANGLES(RAD(15), RAD(0), RAD(45)) * ANGLES(RAD(0), RAD(-25), RAD(0)) * RIGHTSHOULDERC0, 0.1 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
					RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(70), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
					LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
				end
				CreateSound(363808674, TARGET, 3, MRANDOM(7,9)/10, false)
				TARGET.Parent:FindFirstChild("RightUpperArm").RightShoulder:remove()
				for i=0, 1, 0.1 / Animation_Speed do
					Swait()
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(1, 0, 0.3) * ANGLES(RAD(0), RAD(0), RAD(90)), 1 / Animation_Speed)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(-80)), 1 / Animation_Speed)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.45, 0.5, 0) * ANGLES(RAD(140), RAD(0), RAD(90)) * ANGLES(RAD(0), RAD(45), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
					RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(70), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
					LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
				end
				for i=0, 3, 0.1 / Animation_Speed do
					Swait()
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(1, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(90)), 1 / Animation_Speed)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(-80)), 1 / Animation_Speed)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(15)) * ANGLES(RAD(0), RAD(-45), RAD(0)) * RIGHTSHOULDERC0, 0.1 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
					RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(70), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
					LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
				end
				CreateSound(363808674, TARGET, 3, MRANDOM(7,9)/10, false)
				TARGET.Parent:FindFirstChild("LeftUpperArm").LeftShoulder:remove()
				for i=0, 0.5, 0.1 / Animation_Speed do
					Swait()
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0.25) * ANGLES(RAD(-25), RAD(0), RAD(80)), 1 / Animation_Speed)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(-30)), 1 / Animation_Speed)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(45), RAD(0)) * ANGLES(RAD(-25), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-15), RAD(0), RAD(-25)) * LEFTSHOULDERC0, 1 / Animation_Speed)
					RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.6) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-65), RAD(0), RAD(0)) * CF(0,1.5,0), 1 / Animation_Speed)
					LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-45), RAD(0)) * ANGLES(RAD(-35), RAD(0), RAD(0)), 1 / Animation_Speed)
				end
				for i=0, 0.1, 0.1 / Animation_Speed do
					Swait()
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0.2, 0.25) * ANGLES(RAD(-35), RAD(0), RAD(80)), 1 / Animation_Speed)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(-30)), 1 / Animation_Speed)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(45), RAD(0)) * ANGLES(RAD(-32), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-20), RAD(0), RAD(-25)) * LEFTSHOULDERC0, 1 / Animation_Speed)
					RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.6) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-65), RAD(0), RAD(0)) * CF(0,-0.3,0), 1 / Animation_Speed)
					LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-45), RAD(0)) * ANGLES(RAD(-35), RAD(0), RAD(0)), 1 / Animation_Speed)
				end
				GORED = true
				TARGET.Parent:BreakJoints()
				R15Ragdoll(TARGET.Parent)
				if ROOT.Name ~= "Torso" then
					ROOT:remove()
				end
				local bv = Instance.new("BodyVelocity",TARGET) 
				bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
				bv.velocity = TARGET.CFrame.lookVector*75
				Debris:AddItem(bv,0.05)
				CreateSound(621557962, RightLeg, 1, MRANDOM(7,9)/10, false)
				for i=0, 0.3, 0.1 / Animation_Speed do
					Swait()
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0.2, 0.25) * ANGLES(RAD(-35), RAD(0), RAD(80)), 1 / Animation_Speed)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(-30)), 1 / Animation_Speed)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(45), RAD(0)) * ANGLES(RAD(-32), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-20), RAD(0), RAD(-25)) * LEFTSHOULDERC0, 1 / Animation_Speed)
					RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.6) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-65), RAD(0), RAD(0)) * CF(0,-0.3,0), 1 / Animation_Speed)
					LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-45), RAD(0)) * ANGLES(RAD(-35), RAD(0), RAD(0)), 1 / Animation_Speed)
				end
			end
		end
	end
	ATTACK = false
	Rooted = false
end

function FoxRampage()
	bosschatfunc("Your attack is an insult.",BrickColor.new'Really red'.Color,BrickColor.new'Black'.Color,200)
	CreateSound(907332525, Torso, 9999, 1, false)
	wait(1)
	ATTACK = true
	Rooted = false
	for i = 0, 2, 0.1 / Animation_Speed do
		Swait()
		turnto(Mouse.Hit.p)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size + 0.05 * COS(SINE / 12) * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(-85)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(85)), 0.2 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(90+(MRANDOM(-45,45)/10)), RAD(0), RAD(12)) * RIGHTSHOULDERC0, 3 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(90), RAD(0), RAD(-85)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -1 * Player_Size, -0 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -1 * Player_Size, -0 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
	end
	local HITFLOOR = Raycast(RootPart.Position, CF(RootPart.Position, RootPart.Position + VT(0, -1, 0)).lookVector, 4 * Player_Size, Character)
	repeat
		Swait()
		HITFLOOR = Raycast(RootPart.Position, CF(RootPart.Position, RootPart.Position + VT(0, -1, 0)).lookVector, 4 * Player_Size, Character)
	until HITFLOOR ~= nil
	local SOUND = CreateSound("415700134", Effects, 10, 1.6)
	CreateSound("138677306", Effects, 7, 1.2)
	CreateSound("159882598", Effects, 10, MRANDOM(10, 10) / 10)
	bosschatfunc("Die!!!!!",BrickColor.new'Really red'.Color,BrickColor.new'Black'.Color,200)
	coroutine.resume(coroutine.create(function()
		local CFRAME = RootPart.CFrame * CF(0, -1.2, -3)
		local SIZE = 1
		while true do
			Swait()
			for i = 1, 2 do
				MagicSphere(VT(SIZE / 5, SIZE / 5, SIZE * 2), 65, CF(CFRAME * CF(MRANDOM(-5, 5), MRANDOM(-5, 5), MRANDOM(-5, 5)).p, CFRAME.p), "Really red", VT(0.001, 0.001, 0), 0.5)
			end
			do
				local Part = CreatePart(3, Effects, HITFLOOR.Material, 0, 0, HITFLOOR.BrickColor, "Debree", VT(SIZE / 5, SIZE / 5, SIZE / 5))
				Part.CFrame = CFRAME * CF(SIZE / 1.5, -0.7, 0) * ANGLES(RAD(MRANDOM(-180, 180)), RAD(MRANDOM(-180, 180)), RAD(MRANDOM(-180, 180)))
				coroutine.resume(coroutine.create(function()
					Swait(200)
					Part.Anchored = false
				end))
				local Part = CreatePart(3, Effects, HITFLOOR.Material, 0, 0, HITFLOOR.BrickColor, "Debree", VT(SIZE / 5, SIZE / 5, SIZE / 5))
				Part.CFrame = CFRAME * CF(-SIZE / 1.5, -0.7, 0) * ANGLES(RAD(MRANDOM(-180, 180)), RAD(MRANDOM(-180, 180)), RAD(MRANDOM(-180, 180)))
				coroutine.resume(coroutine.create(function()
					Swait(200)
					Part.Anchored = false
				end))
				MagicSphere(VT(SIZE, SIZE, SIZE), 75, CFRAME, "Really red", VT(-SIZE / 75, -SIZE / 75, -SIZE / 75))
				ApplyAoE(CFRAME.Position,SIZE/2,true)
				SIZE = SIZE + 2
				CFRAME = CFRAME * CF(0, 0, -2)
				Swait(150) 
				Part:Remove()
				if SOUND.Playing == false then
					break
				end
			end
		end
	end))
	MagicSphere(VT(0.1, 0.1, 0.1), 45, RightArm.CFrame, "Really red", VT(0.1, 5, 0.1))
	MagicSphere(VT(0.1, 0.1, 0.1), 45, RightArm.CFrame, "Really red", VT(0.05, 5, 0.05))
	for i = 0, 3, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 - 0.04 * SIN(SINE / 24)*SIZE, 0 + 0.04 * SIN(SINE / 12)*SIZE, 0 + 0.05*SIZE * COS(SINE / 12)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0 - 2.5 * SIN(SINE / 24)), RAD(0)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, -0.3) * ANGLES(RAD(85), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE, -1*SIZE + 0.06 * SIN(SINE / 24) - 0.05*SIZE * COS(SINE / 12), -0.01*SIZE) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(75), RAD(0)) * ANGLES(RAD(-2 - 2.5 * SIN(SINE / 24)), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE, -1*SIZE - 0.06 * SIN(SINE / 24) - 0.05*SIZE * COS(SINE / 12), -0.01*SIZE) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(-75), RAD(0)) * ANGLES(RAD(-2 + 2.5 * SIN(SINE / 24)), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	ATTACK = false
	Rooted = false
end


function Rush()
	CharacterFade(Color3.new(0, 0, 0), 150)
	local ORIGIN = RootPart.Position
	local SOUNDPART = CreatePart(3, Effects, "Neon", 0, 1, "Really black", "Sound", Vector3.new(0,0,0))
	SOUNDPART.CFrame = RootPart.CFrame
	Debris:AddItem(SOUNDPART,5)
	CreateSound("1323988914", SOUNDPART, 10, 1)
	RootPart.CFrame = CFrame.new(Mouse.Hit.p+Vector3.new(0,3,0),Vector3.new(ORIGIN.X,Mouse.Hit.p.Y,ORIGIN.Z))
	Swait()
	local SOUNDPART = CreatePart(3, Effects, "Neon", 0, 1, "Really black", "Sound", Vector3.new(0,0,0))
	SOUNDPART.CFrame = RootPart.CFrame
	Debris:AddItem(SOUNDPART,5)
	CreateSound("1323988914", SOUNDPART, 10, 1)
	ATTACK = false
	Rooted = false
end

--//=================================\\
--||	  ASSIGN THINGS TO KEYS
--\\=================================//
CreateSound(144699494,Torso,10,1,false)
chatfunc("Sr SBV4 LMAO")

function MouseDown(Mouse)
	if ATTACK == false then
	end
end

function MouseUp(Mouse)
	HOLD = false
end

function onChatted(msg)
	chatfunc(msg)
end

Player.Chatted:Connect(onChatted)
Player.Chatted:Connect(function(message)
	if MODE == "VIS" or MODE == "chill" then
		if message:sub(1,5) == "play/" then
			sick.SoundId = "rbxassetid://"..message:sub(6)
		elseif message:sub(1,6) == "pitch/" then
			sick.PlaybackSpeed = message:sub(7)
		elseif message:sub(1,4) == "vol/" then
			sick.Volume = message:sub(5) 
		elseif message:sub(1,5) == "skip/" then
			sick.TimePosition = message:sub(6)
		end 
	end
end)

function KeyDown(Key)
	KEYHOLD = true

	if Key == "-" and ATTACK == false then 
		sit()
	end

	if Key == "=" and ATTACK == false then 
		QuickLcKill()
	end

	if Key == "l" and ATTACK == false then
		Rush()
	end

	if Key == "[" and ATTACK == false and MODE ~= "546546987495646784836830698643674039578352677867788" then
		TOBANISH = {}
		warnedpeople(LINES[math.random(1,#LINES)])
	end

	if Key == "1" and ATTACK == false and MODE ~= "Snake God" then
		SnakeGod()
	end

	if Key == "5" and ATTACK == false and MODE ~= "KARMA" then
		karma()
	end

	if Key == "4" and ATTACK == false and MODE ~= "Scary" then
		Spooky()
	end

	if Key == "7" and ATTACK == false and MODE ~= "Undead" then
		undying()
	end

	if Key == "8" and ATTACK == false and MODE ~= "Undertail - phase 2" then
		undertailP2()
	end

	if Key == "2" and ATTACK == false and MODE ~= "test" then
		test()
	end

	if Key == "0" and ATTACK == false and MODE ~= "fuck" then
		fuck_it()
	end

	if Key == "9" and ATTACK == false and MODE ~= "meme" then
		memeGod()
	end

	if Key == "y" and ATTACK == false and MODE ~= "kicksher" then
		kicksher()
	end

	if Key == "3" and ATTACK == false and MODE ~= "nightmare" then
		NIGHTMARE()
	end

	if Key == "6" and ATTACK == false and MODE ~= "Katana" then
		katana()
	end

	if Key == "q" and ATTACK == false and MODE ~= "guy man" then
		fuckyes()
	end

	if Key == "m" and ATTACK == false and MODE ~= "Dear God" and MODE == "Scary" then
		Dear_God()
	end 

	if Key == "m" and ATTACK == false and MODE ~= "HELL" and MODE == "Snake God" then
		h3ll()
	end 

	if Key == "m" and ATTACK == false and MODE ~= "Undertail - phase 3" and MODE == "Undertail - phase 2" then
		undertailP3()
	end

	if Key == "n" and ATTACK == false and MODE ~= "chill" and MODE == "Snake God" then
		chill()
	end 

	if Key == "n" and ATTACK == false and MODE ~= "I A M H A P P Y" and MODE == "Undertail - phase 2" then
		HAPPY()
	end 

	if Key == "m" and ATTACK == false and MODE ~= "depressed" and MODE == "nightmare" then
		depressed()
	end 

	if Key == "m" and ATTACK == false and MODE ~= "VIS" and MODE == "test" then
		visualizer()
	end 

	if Key == "m" and ATTACK == false and MODE ~= "ghost" and MODE == "Undead" then
		Ghost()
	end 

	if Key == "m" and ATTACK == false and MODE ~= "broken" and MODE == "meme" then
		broken() 
	end

	if Key == "n" and ATTACK == false and MODE ~= "Glamour" and MODE == "Undead" then
		Glamour()
	end

	if Key == "b" and ATTACK == false and MODE ~= "Ghaster" and MODE == "Undertail - phase 2" then
		Ghaster()
	end

	if Key == "n" and ATTACK == false and MODE ~= "Insecure" and MODE == "nightmare" then
		Insecure()
	end

	if Key == "b" and ATTACK == false and MODE ~= "Undesired" and MODE == "Undead" then
		Undesired()
	end

	if Key == "z" and ATTACK == false then
		if MODE == "Snake God" then
			FoxRampage()
		elseif MODE == "test" or MODE == "Katana" then
			Fallen_Star()
		elseif MODE == "nightmare" then
			spawnwave(Mouse.Hit.Position)
		elseif MODE == "HELL" then
			ShotRifle()
		elseif MODE == "KARMA" then
			Karma_Beam()
		elseif MODE == "fuck" then
			ShotRifle()
		elseif MODE == "Undead" then
			ShotcrazyBnsh()
		elseif MODE == "Undertail - phase 3" then
			ShotAK()
		elseif MODE == "Dear God" then
			ShotcrazyBnsh()
		elseif MODE == "guy man" then
			ShatteredRealities() 
		elseif MODE == "kicksher" then
			headshot2()
		elseif MODE == "ghost" then
			SubmitNow()
		elseif MODE == "I A M H A P P Y" then
			Karma_Beam()
		elseif MODE == "Undesired" then
			ShatteredHeart()
		end
	end 

	if Key == "x" and ATTACK == false then
		if MODE == "Snake God" then
			Supernova_Grenade()
		elseif MODE == "fuck" then
			Overthrower()
		elseif MODE == "test" then
			lcmurder()
		elseif MODE == "HELL" then
			Absoluteum2()
		elseif MODE == "KARMA" then
			Penumbric_DeathRayKARMA()
		elseif MODE == "Undead" then
			gunlightning()
		elseif MODE == "Katana" then
			Slash()
		elseif MODE == "I A M H A P P Y" then
			Slash()
		elseif MODE == "Dear God" then
			Deathbound()
		elseif MODE == "guy man" then
			Deathbound()
		elseif MODE == "kicksher" then
			headshot()
		elseif MODE == "ghost" then
			Ruler()
		end
	end 

	if Key == "c" and ATTACK == false then
		if MODE == "fuck" then
			Dash()
		elseif MODE == "test" then
			Shot0()
		elseif MODE == "KARMA" then
			Beam()
		elseif MODE == "Dear God" then
			Cleave()
		elseif MODE == "guy man" then
			Cleave()
		elseif MODE == "I A M H A P P Y" then
			Dash()
		end
	end 

	if Key == "v" and ATTACK == false then
		if MODE == "Dear God" then
			Smite()
		elseif MODE == "guy man" then
			Heartless()
		end
	end 

	if Key == "b" and ATTACK == false then
		if MODE == "Dear God" then
			Absoluteum2()
		end
	end 

	if Key == "t" and ATTACK == false then
		if MODE == "I A M H A P P Y" then
			local chatto = {"you should have stopped trying..","You can never beat me","You wont live to say goodbye","You want me to stop? too bad."}
			chatfunc(chatto[MRANDOM(1,#chatto)])
			CreateSound(TAUNTS[MRANDOM(1, #TAUNTS)], Head, 10, 0.9)
		elseif MODE == "Glamour" then
			local chattoe = {"Dance with me honey","Look at all these views..!","Wait a magnificent moment", "I'll make your last moments.. absolutely beautiful"}
			chatfunc(chattoe[MRANDOM(1,#chattoe)])
		end
	end
end 

function KeyUp(Key)
	KEYHOLD = false
end

Mouse.Button1Down:connect(function(NEWKEY)
	MouseDown(NEWKEY)
end)
Mouse.Button1Up:connect(function(NEWKEY)
	MouseUp(NEWKEY)
end)
Mouse.KeyDown:connect(function(NEWKEY)
	KeyDown(NEWKEY)
end)
Mouse.KeyUp:connect(function(NEWKEY)
	KeyUp(NEWKEY)
end)

--//=================================\\
--||        Animation Handler 		 ||
--\\=================================//

function HelpfulAnimHandler()
	if MODE == "fuck" then
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(MRANDOM(10, 50)), RAD(0), RAD(MRANDOM(-20, 20))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
	elseif MODE == "Undertail - phase 3" then
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.2, 0) * ANGLES(RAD(MRANDOM(160, 200)), RAD(0), RAD(-MRANDOM(5, 45))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
	elseif MODE == "" then
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.2, 0) * ANGLES(RAD(MRANDOM(160, 200)), RAD(0), RAD(-MRANDOM(5, 45))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
	elseif MODE == "fuck" then
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(120), RAD(0 - 22.5 * SIN(SINE / 20)), RAD(0 - 3.5 * SIN(SINE / 20))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
	elseif MODE == "" then
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(25), RAD(0), RAD(10 + 1.5 * COS(SINE / 34))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
	elseif MODE == "" then
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.2, 0) * ANGLES(RAD(MRANDOM(160, 200)), RAD(0), RAD(-MRANDOM(5, 45))) * RIGHTSHOULDERC0, 1 / Animation_Speed)	
	end
	if MODE == "" then
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.2, 0) * ANGLES(RAD(MRANDOM(160, 200)), RAD(0), RAD(MRANDOM(5, 45))) * LEFTSHOULDERC0, 1 / Animation_Speed)
	elseif MODE == "" then
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(MRANDOM(10, 50)), RAD(0), RAD(MRANDOM(-20, 20))) * LEFTSHOULDERC0, 1 / Animation_Speed)
	elseif MODE == "fuck" then
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.35, 0) * ANGLES(RAD(MRANDOM(170, 190)), RAD(0), RAD(MRANDOM(15, 35))) * LEFTSHOULDERC0, 1 / Animation_Speed)
	elseif MODE == "Undertail - phase 3" then
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(25), RAD(0), RAD(-10 - 1.5 * COS(SINE / 34))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
	elseif MODE == "" then
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(MRANDOM(10, 50)), RAD(0), RAD(MRANDOM(-20, 20))) * LEFTSHOULDERC0, 1 / Animation_Speed)
	end
	if MODE == "fuck" or MODE == "Undertail - phase 3" or MODE == "I A M H A P P Y" then
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(MRANDOM(-15, 25) - 2.5 * SIN(SINE / 12)), RAD(MRANDOM(-15, 25)), RAD(MRANDOM(-15, 25))), 1 / Animation_Speed)
	else
		Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(-30), RAD(-10 - 2.5 * SIN(SINE / 20)), RAD(20 * COS(SINE / 20))), 1 / Animation_Speed)
	end
end

--//=================================\\
--||        Effect Functions  	     ||
--\\=================================//

function SkullMist(Table)
	for i = 1, Table.Multiplier do
		WACKYEFFECT({Time = MRANDOM(10,30)*2, EffectType = EFFECT, Size = VT(1.5,1.5,1.5)*Table.Multiply, Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = CF(Table.BoxPosition-VT(0,2,0))*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = Table.BoxPosition+VT(0,MRANDOM(15,25)/1.5,0), MRANDOM(-25,25)/35, RotationY = MRANDOM(-25,25)/35, RotationZ = MRANDOM(-25,25)/35, Material = "Neon", Color = C3(255,0,0), SoundID = nil, SoundPitch = MRANDOM(12,16)/10, SoundVolume = 2})
	end
end
function BoxMist(Table)
	for i = 1, Table.Multiplier do
		WACKYEFFECT({Time = MRANDOM(10,30)*2, EffectType = EFFECT, Size = VT(0.41,0.4,0.4)*Table.Multiply, Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = CF(Table.BoxPosition-VT(0,2,0))*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = Table.BoxPosition+VT(0,MRANDOM(15,25)/1.5,0), MRANDOM(-25,25)/35, RotationY = MRANDOM(-25,25)/35, RotationZ = MRANDOM(-25,25)/35, Material = "Neon", Color = C3(255,0,0), SoundID = nil, SoundPitch = MRANDOM(12,16)/10, SoundVolume = 2})
	end
end

--//=================================\\
--||      WRAP UP THE SCRIPT         ||
--\\=================================//

coroutine.wrap(function()
	while 1 do
		Swait()
		if doe <= 360 then
			doe = doe + 2
		else
			doe = 0
		end
	end
end)()
local antivoid = Instance.new("Part")
antivoid.Size = Vector3.new(400,10,400)
antivoid.Anchored = true
antivoid.Transparency = 1
antivoid.Parent = workspace
coroutine.resume(coroutine.create(function()
	while true do
		Swait()
		if not alreadyfixing then
			antivoid.Position = Vector3.new(RootPart.Position.X,workspace.FallenPartsDestroyHeight+5,RootPart.Position.Z)
		end
	end
end))

while true do
	Swait()
	if MODE == "Snake God" then 
		sick.SoundId  = "rbxassetid://5801951770"
	end
	ANIMATOR.Parent = nil
	ANIMATE.Parent = nil
	sine = sine + change
	if MODE == "meme" then
		WACKYEFFECT({Time = 12, EffectType = "Block", Size = Vector3.new(3,3,3)/3, Size2 = Vector3.new(0,0,0), Transparency = .5, Transparency2 = 1, CFrame = LeftArm.CFrame*CF(0,-1.45,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.new( sick.PlaybackLoudness/500,0,0, sick.PlaybackLoudness/500,0,0, sick.PlaybackLoudness/500,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 12, EffectType = "Block", Size = Vector3.new(3,3,3)/3, Size2 = Vector3.new(0,0,0), Transparency = .5, Transparency2 = 1, CFrame = RightArm.CFrame*CF(0,-1.45,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.new( sick.PlaybackLoudness/500,0,0, sick.PlaybackLoudness/500,0,0, sick.PlaybackLoudness/500,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
	elseif MODE == "HELL" then 
		local HITFLOOR,HITPOS = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 4, Character)
		local POSITION = CF(HITPOS)*ANGLES(RAD(0),RAD(MRANDOM(0,360)),RAD(0))*CF(MRANDOM(3,6),0,0).p
		local SPHEREFLOOR,SPHEREPOS = Raycast(POSITION+VT(0,1,0), (CF(POSITION, POSITION + VT(0, -1, 0))).lookVector, 5, Character)
		WACKYEFFECT({Time = MRANDOM(10,30)*2, EffectType = "Sphere", Size = Vector3.new(1.5,1.5,1.5)*1, Size2 = Vector3.new(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = CFrame.new(SPHEREPOS-Vector3.new(0,2,0))*CFrame.Angles(math.rad(MRANDOM(0,360)),math.rad(MRANDOM(0,360)),math.rad(MRANDOM(0,360))), MoveToPos = SPHEREPOS+Vector3.new(0,MRANDOM(15,25)/5,0), MRANDOM(-25,25)/35, RotationY = MRANDOM(-25,25)/35, RotationZ = MRANDOM(-25,25)/35, Material = "Neon", Color = Color3.new(sick.PlaybackLoudness/500,0,0), SoundID = nil, SoundPitch = MRANDOM(12,16)/10, SoundVolume = 2,RED = true})
		WACKYEFFECT({Time = MRANDOM(10,30)*2, EffectType = "Skull", Size = Vector3.new(1.5,1.5,1.5)*3.95, Size2 = Vector3.new(0.425,0.425,0.425), Transparency = 0, Transparency2 = 1, CFrame = CFrame.new(SPHEREPOS-Vector3.new(0,2,0))*CFrame.Angles(math.rad(MRANDOM(0,360)),math.rad(MRANDOM(0,360)),math.rad(MRANDOM(0,360))), MoveToPos = SPHEREPOS+Vector3.new(0,MRANDOM(25,35)/5,0), MRANDOM(-25,25)/35, RotationY = MRANDOM(-25,25)/35, RotationZ = MRANDOM(-25,25)/35, Material = "Neon", Color = Color3.new(sick.PlaybackLoudness/500,0,0), SoundID = nil, SoundPitch = MRANDOM(12,16)/10, SoundVolume = 2,RED = true})			
		if MRANDOM(1,1) == 1 then
			WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(0,0,0), Size2 = VT(7+sick.PlaybackLoudness/25,0.55,7+sick.PlaybackLoudness/25), Transparency = 0.3, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-3,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = RightArm.Color, SoundID = nil, SoundPitch = 1, SoundVolume = 0})
		end
	elseif MODE == "test" then
		local loudness = sick.PlaybackLoudness
		WACKYEFFECT({Time = MRANDOM(15,65),EffectType = "Slash", Size = VT(0,0.05,0), Size2 = VT(0.0625,0.015,0.0625)*MRANDOM(1,8), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-2,0)*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-360,360)),math.rad(math.random(-5,5))), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(0+178*loudness/100,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 12, EffectType = "Block", Size = Vector3.new(19,19,19)/10, Size2 = Vector3.new(0,0,0), Transparency = .5, Transparency2 = 1, CFrame = RightArm.CFrame*CFrame.new(0,-1.45,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.new( sick.PlaybackLoudness/500,0,0, sick.PlaybackLoudness/500,0,0, sick.PlaybackLoudness/500,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
	elseif MODE == "Undead" then
		local loudness = sick.PlaybackLoudness
		WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(4*sick.PlaybackLoudness/75,0,4*sick.PlaybackLoudness/75), Size2 = VT(4*sick.PlaybackLoudness/75,0.5,4*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(0+178*loudness/100,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})	
	elseif MODE == "Snake God" then
		local loudness = sick.PlaybackLoudness
		WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(10*sick.PlaybackLoudness/75,0,1*sick.PlaybackLoudness/75), Size2 = VT(1*sick.PlaybackLoudness/75,0.5,7*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(0+178*loudness/100,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
		WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(1*sick.PlaybackLoudness/75,0,10*sick.PlaybackLoudness/75), Size2 = VT(7*sick.PlaybackLoudness/75,0.69,1*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(0+178*loudness/100,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
		WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(4*sick.PlaybackLoudness/75,0,4*sick.PlaybackLoudness/75), Size2 = VT(4*sick.PlaybackLoudness/75,0.5,4*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(0+178*loudness/100,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})					
	elseif MODE == "KARMA" then
		WACKYEFFECT({Time = 20, EffectType = "Slash", Size = VT(0,0,0), Size2 = VT(0.25,0,0.25)*MRANDOM(1000/1000,1750/1000), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-3,0)*ANGLES(RAD(MRANDOM(-5,5)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-5,5))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-100/100,100/100), RotationZ = 0, Material = "Neon", Color = BrickColor.Random().Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 20, EffectType = "Sphere", Size = VT(0.5,0,0.5), Size2 = VT(0.2,25,0.2), Transparency = 0.3, Transparency2 = 1, CFrame = RootPart.CFrame*ANGLES(RAD(0),RAD(MRANDOM(0,360)),RAD(0))*CF(0,0,MRANDOM(3,25)) * ANGLES(RAD(MRANDOM(-15,15)), RAD(0), RAD(MRANDOM(-15,15))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-1,1)*5, RotationZ = 0, Material = "Neon", Color = BrickColor.Random().Color, UseBoomerangMath = true, SizeBoomerang = 50, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(10*sick.PlaybackLoudness/75,0,1*sick.PlaybackLoudness/75), Size2 = VT(1*sick.PlaybackLoudness/75,0.5,7*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = BrickColor.Random().Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
		WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(1*sick.PlaybackLoudness/75,0,10*sick.PlaybackLoudness/75), Size2 = VT(7*sick.PlaybackLoudness/75,0.69,1*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = BrickColor.Random().Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
		WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(4*sick.PlaybackLoudness/75,0,4*sick.PlaybackLoudness/75), Size2 = VT(4*sick.PlaybackLoudness/75,0.5,4*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = BrickColor.Random().Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
		WACKYEFFECT({Time = MRANDOM(15,65),EffectType = "Slash", Size = VT(0,0.05,0), Size2 = VT(0.01,0.015,0.01)*MRANDOM(1,8), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-3,0)*CFrame.Angles(RAD(math.random(-5,5)),RAD(math.random(-360,360)),RAD(math.random(-5,5))), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = BrickColor.Random().Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
	elseif MODE == "Undertail - phase 2" then
		local loudness = sick.PlaybackLoudness
		local HITFLOOR,HITPOS = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 25, Character)
		if MRANDOM(1,1) == 1 then
			WACKYEFFECT({Time = 1, EffectType = "Wave", Size = VT(5,2,5), Size2 = VT(5,2,5), Transparency = 0, Transparency2 = 0.2, CFrame = CF(HITPOS)*ANGLES(0,0+sine/2,0), MoveToPos = nil, RotationX = 0, RotationY = 1.5, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(0+178*loudness/100,0,0), SoundID = nil, SoundPitch = 0.5, SoundVolume = 6})
		end
		if MRANDOM(0,3) == 1  then
			local POSITION = CF(HITPOS)*ANGLES(RAD(0),RAD(MRANDOM(0,360)),RAD(0))*CF(MRANDOM(75,800),0,0).p
			local BOXFLOOR,BOXPOS = Raycast(POSITION+VT(0,1,0), (CF(POSITION, POSITION + VT(0, -1, 0))).lookVector, 5, Character)
			WACKYEFFECT({Time = 10, EffectType = "Sphere", Size = VT(0.5,0,0.5), Size2 = VT(MRANDOM(0,0),MRANDOM(0,2),MRANDOM(0,0)), Transparency = 0.2, Transparency2 = 1, CFrame = RightArm.CFrame, MoveToPos = nil, RotationX = MRANDOM(-20,20), RotationY = MRANDOM(-20,20), RotationZ = MRANDOM(-20,20), Material = "Neon", Color = Color3.fromRGB(0+178*loudness/100,0,0), SoundID = nil, SoundPitch = 0.5, SoundVolume = 6})
			WACKYEFFECT({Time = 35, EffectType = "Sphere", Size = VT(2,25555,2), Size2 = VT(MRANDOM(0,1),MRANDOM(0,2555555),MRANDOM(0,1)), Transparency = 0.2, Transparency2 = 1, CFrame = CF(BOXPOS), MoveToPos = CF(BOXPOS)*VT(MRANDOM(-80,80),200,MRANDOM(-80,80)), RotationX = MRANDOM(-20,20), RotationY = MRANDOM(-20,-20), RotationZ = MRANDOM(-20,20), Material = "Neon", Color = Color3.fromRGB(0+178*loudness/100,0,0), SoundID = nil, SoundPitch = 0.5, SoundVolume = 6})
		end
		local HITFLOOR,HITPOS = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 25, Character)
		if MRANDOM(0,3) == 1 then
			local POSITION = CF(HITPOS)*ANGLES(RAD(0),RAD(MRANDOM(0,360)),RAD(0))*CF(MRANDOM(5,15),0,0).p
			local BOXFLOOR,BOXPOS = Raycast(POSITION+VT(0,1,0), (CF(POSITION, POSITION + VT(0, -1, 0))).lookVector, 5, Character)
			WACKYEFFECT({Time = 35, EffectType = "Sphere", Size = VT(0.5,0.5,0.5), Size2 = VT(MRANDOM(0,1),MRANDOM(0,1),MRANDOM(0,1)), Transparency = 0.2, Transparency2 = 1, CFrame = CF(BOXPOS), MoveToPos = CF(BOXPOS)*VT(0,18,0), RotationX = MRANDOM(-8,8), RotationY = MRANDOM(-8,-8), RotationZ = MRANDOM(-8,8), Material = "Neon", Color = Color3.fromRGB(0+178*loudness/100,0,0), SoundID = nil, SoundPitch = 0.5, SoundVolume = 6})
		end
		xd = 100
		local HITFLOOR,HITPOS = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 25, Character)
		if MRANDOM(0,3) == 1 then
			local POSITION = CF(HITPOS)*ANGLES(RAD(0),RAD(MRANDOM(0,360)),RAD(0))*CF(MRANDOM(5,15),0,0).p
			local BOXFLOOR,BOXPOS = Raycast(POSITION+VT(0,1,0), (CF(POSITION, POSITION + VT(0, -1, 0))).lookVector, 5, Character)
			WACKYEFFECT({Time = 28, EffectType = "Sphere", Size = VT(1,0,1), Size2 = VT(0,MRANDOM(0,15),0), Transparency = 0.2, Transparency2 = 1, CFrame = CF(BOXPOS), MoveToPos = nil, RotationX = MRANDOM(-8,8), RotationY = MRANDOM(-8,-8), RotationZ = MRANDOM(-8,8), Material = "Neon", Color = Color3.fromRGB(0+178*loudness/100,0,0), SoundID = nil, SoundPitch = 0.5, SoundVolume = 6})
			WACKYEFFECT({Time = 20, EffectType = "Slash", Size = VT(3/xd,0.1/xd,3/xd), Size2 = VT(8/xd,0.5/xd,8/xd), Transparency = 0, Transparency2 = 1, CFrame = CF(HITPOS), MoveToPos = nil, RotationX = MRANDOM(-2,2), RotationY = MRANDOM(-360,360), RotationZ = MRANDOM(-2,2), Material = "Neon", Color = Color3.fromRGB(0+178*loudness/100,0,0), SoundID = nil, SoundPitch = 0.5, SoundVolume = 6})
		end
	elseif MODE == "Katana" then
		local HITFLOOR,HITPOS = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 4, Character)
		local loudness = sick.PlaybackLoudness
		WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(10*sick.PlaybackLoudness/75,0,1*sick.PlaybackLoudness/75), Size2 = VT(1*sick.PlaybackLoudness/75,0.5,7*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(0+178*loudness/100,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
		WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(1*sick.PlaybackLoudness/75,0,10*sick.PlaybackLoudness/75), Size2 = VT(7*sick.PlaybackLoudness/75,0.69,1*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(0+178*loudness/100,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
		WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(4*sick.PlaybackLoudness/75,0,4*sick.PlaybackLoudness/75), Size2 = VT(4*sick.PlaybackLoudness/75,0.5,4*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(0+178*loudness/100,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
		WACKYEFFECT({Time = MRANDOM(15,65),EffectType = "Slash", Size = VT(0,0.05,0), Size2 = VT(0.0625,0.015,0.0625)*MRANDOM(1,8), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-2,0)*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-360,360)),math.rad(math.random(-5,5))), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(0+178*loudness/100,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
		WACKYEFFECT({Time = 30, EffectType = "Sphere", Size = VT(0.5,0,0.5), Size2 = VT(0.2,25,0.2), Transparency = 0.3, Transparency2 = 1, CFrame = CF(HITPOS)*ANGLES(RAD(0),RAD(MRANDOM(0,360)),RAD(0))*CF(0,0,MRANDOM(3,15)) * ANGLES(RAD(MRANDOM(-15,15)), RAD(0), RAD(MRANDOM(-15,15))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-1,1)*5, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(0+178*loudness/100,0,0), UseBoomerangMath = true, SizeBoomerang = 50, SoundID = nil, SoundPitch = nil, SoundVolume = nil})	
		WACKYEFFECT({Time = 50, EffectType = "Skull", Size = Vector3.new(9,9,9)/9, Size2 = Vector3.new(5,5,5), Transparency = .5, Transparency2 = 1, CFrame = RightLeg.CFrame*CF(0,-1.45,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.new( sick.PlaybackLoudness/500,0,0, sick.PlaybackLoudness/500,0,0, sick.PlaybackLoudness/500,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 50, EffectType = "Skull", Size = Vector3.new(9,9,9)/9, Size2 = Vector3.new(5,5,5), Transparency = .5, Transparency2 = 1, CFrame = LeftLeg.CFrame*CF(0,-1.45,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.new( sick.PlaybackLoudness/500,0,0, sick.PlaybackLoudness/500,0,0, sick.PlaybackLoudness/500,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
	elseif MODE == "I A M H A P P Y" then
		if MRANDOM(1,1) == 1 then
			WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(0,0,0), Size2 = VT(2,2,2), Transparency = 0.3, Transparency2 = 1, CFrame = LeftArm.CFrame*CF(0,-1.45,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = RightArm.Color, SoundID = nil, SoundPitch = 1, SoundVolume = 0})
			WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(0,0,0), Size2 = VT(2,2,2), Transparency = 0.3, Transparency2 = 1, CFrame = RightArm.CFrame*CF(0,-1.45,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = RightArm.Color, SoundID = nil, SoundPitch = 1, SoundVolume = 0})
			WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(0,0,0), Size2 = VT(2,2,2), Transparency = 0.3, Transparency2 = 1, CFrame = LeftArm.CFrame*CF(0,-1.45,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = RightArm.Color, SoundID = nil, SoundPitch = 1, SoundVolume = 0})
			WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(0,0,0), Size2 = VT(2,2,2), Transparency = 0.3, Transparency2 = 1, CFrame = RightArm.CFrame*CF(0,-1.45,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = RightArm.Color, SoundID = nil, SoundPitch = 1, SoundVolume = 0})
		end
	elseif MODE == "Glamour" then
		local loudness = sick.PlaybackLoudness
		if MRANDOM(1,1) == 1 then
			WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(0,0,0), Size2 = VT(2,2,2), Transparency = 0.3, Transparency2 = 1, CFrame = LeftArm.CFrame*CF(0,-1.45,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = RightArm.Color, SoundID = nil, SoundPitch = 1, SoundVolume = 0})
			WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(0,0,0), Size2 = VT(2,2,2), Transparency = 0.3, Transparency2 = 1, CFrame = RightArm.CFrame*CF(0,-1.45,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = RightArm.Color, SoundID = nil, SoundPitch = 1, SoundVolume = 0})
		end
		if math.random(1,12)==1 then
			WACKYEFFECT({Time = MRANDOM(15,65),EffectType = "Slash", Size = VT(0,0.05,0), Size2 = VT(0.0625,0.015,0.0625)*MRANDOM(1,8), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-2,0)*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-360,360)),math.rad(math.random(-5,5))), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Torso.Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		end
		if MRANDOM(1,1) == 1 then
			WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(0,0,0), Size2 = VT(7+sick.PlaybackLoudness/25,0.55,7+sick.PlaybackLoudness/25), Transparency = 0.3, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-3,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = RightArm.Color, SoundID = nil, SoundPitch = 1, SoundVolume = 0})
		end
	elseif MODE == "Ghaster" then
		local HITFLOOR,HITPOS = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 4, Character)
		if MRANDOM(0,3) == 1  then
			local POSITION = CF(HITPOS)*ANGLES(RAD(0),RAD(MRANDOM(0,360)),RAD(0))*CF(MRANDOM(75,800),0,0).p
			local BOXFLOOR,BOXPOS = Raycast(POSITION+VT(0,1,0), (CF(POSITION, POSITION + VT(0, -1, 0))).lookVector, 5, Character)
			WACKYEFFECT({Time = 50, EffectType = "Sphere", Size = VT(2,25555,2), Size2 = VT(MRANDOM(0,1),MRANDOM(0,2555555),MRANDOM(0,1)), Transparency = 0.2, Transparency2 = 1, CFrame = CF(BOXPOS), MoveToPos = CF(BOXPOS)*VT(MRANDOM(-80,80),200,MRANDOM(-80,80)), RotationX = MRANDOM(-20,20), RotationY = MRANDOM(-20,-20), RotationZ = MRANDOM(-20,20), Material = "Neon", Color = C3(math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500)), SoundID = nil, SoundPitch = 0.5, SoundVolume = 6})
		end
		WACKYEFFECT({Time = 2.5, EffectType = "Wave", Size = VT(7+sick.PlaybackLoudness/25,0.55,7+sick.PlaybackLoudness/25), Size2 = VT(7+sick.PlaybackLoudness/25,0.55,7+sick.PlaybackLoudness/25), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-3,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Torso.Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 20, EffectType = "Wave", Size = VT(0,0.55,0), Size2 = VT(10,0.55,10), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-3,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Torso.Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 10, EffectType = "Skull", Size = VT(5,5,5), Size2 = VT(1,1,1), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(MRANDOM(-15,15),MRANDOM(-2.5,13.1),MRANDOM(-15,15)), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Torso.Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 12, EffectType = "Block", Size = Vector3.new(3,3,3)/3, Size2 = Vector3.new(0,0,0), Transparency = .5, Transparency2 = 1, CFrame = RightArm.CFrame*CF(0,-1.45,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Torso.Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 12, EffectType = "Block", Size = Vector3.new(3,3,3)/3, Size2 = Vector3.new(0,0,0), Transparency = .5, Transparency2 = 1, CFrame = LeftArm.CFrame*CF(0,-1.45,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Torso.Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 12, EffectType = "Block", Size = Vector3.new(3,3,3)/3, Size2 = Vector3.new(0,0,0), Transparency = .5, Transparency2 = 1, CFrame = RightLeg.CFrame*CF(0,-1.45,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Torso.Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 12, EffectType = "Block", Size = Vector3.new(3,3,3)/3, Size2 = Vector3.new(0,0,0), Transparency = .5, Transparency2 = 1, CFrame = LeftLeg.CFrame*CF(0,-1.45,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Torso.Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 7.5, EffectType = "Swirl", Size = VT(5,5,5), Size2 = VT(1,1,1), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(MRANDOM(-15,15),MRANDOM(-2.5,13.1),MRANDOM(-15,15)), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Torso.Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 10, EffectType = "Ring", Size = VT(5,5,5), Size2 = VT(1,1,1), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(MRANDOM(-15,15),MRANDOM(-2.5,13.1),MRANDOM(-15,15)), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Torso.Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
	elseif MODE == "broken" then
		local loudness = sick.PlaybackLoudness
		WACKYEFFECT({Time = 25, EffectType = "Crystal", Size = VT(0,0,0), Size2 = VT(7+sick.PlaybackLoudness/25,0.55,7+sick.PlaybackLoudness/25), Transparency = 0.3, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-3,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = RightArm.Color, SoundID = nil, SoundPitch = 1, SoundVolume = 0})
	elseif MODE == "guy man" then
		local HITFLOOR,HITPOS = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 4, Character)
		WACKYEFFECT({Time = 30, EffectType = "Sphere", Size = VT(0.5,0,0.5), Size2 = VT(0.2,6,0.2), Transparency = 0.3, Transparency2 = 1, CFrame = CF(HITPOS)*ANGLES(RAD(0),RAD(MRANDOM(0,360)),RAD(0))*CF(0,0,MRANDOM(3,7)) * ANGLES(RAD(MRANDOM(-15,15)), RAD(0), RAD(MRANDOM(-15,15))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-1,1)*5, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(0+178*sick.PlaybackLoudness/100,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 50, EffectType = "Box", Size = VT(0.9,0.55,0.9), Size2 = VT(0,5,0), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(MRANDOM(-15,15),-2.5,MRANDOM(-15,15)), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(0+178*sick.PlaybackLoudness/100,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 10, EffectType = "Skull", Size = VT(5,5,5), Size2 = VT(1,1,1), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(MRANDOM(-15,15),MRANDOM(-2.5,13.1),MRANDOM(-15,15)), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(0+178*sick.PlaybackLoudness/100,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = MRANDOM(15,65),EffectType = "Slash", Size = VT(0,0.05,0), Size2 = VT(0.01,0.015,0.01)*MRANDOM(1,8), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-3,0)*CFrame.Angles(RAD(math.random(-5,5)),RAD(math.random(-360,360)),RAD(math.random(-5,5))), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(0+178*sick.PlaybackLoudness/100,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
	elseif MODE == "fuck" then
		local HITFLOOR,HITPOS = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 4, Character)
		local POSITION = CF(HITPOS)*ANGLES(RAD(0),RAD(MRANDOM(0,360)),RAD(0))*CF(MRANDOM(3,6),0,0).p
		local BOXFLOOR,BOXPOS = Raycast(POSITION+VT(0,1,0), (CF(POSITION, POSITION + VT(0, -1, 0))).lookVector, 5, Character)
		local MULTIPLY = 3
		EFFECT = "Swirl"
		if BOXFLOOR ~= nil then
			if MRANDOM(1,50) == 39 then
				BoxMist({Multiplier = 10, BoxPosition = BOXPOS, Multiply = MULTIPLY})
			end
		end
		if HITFLOOR ~= nil then
			if MRANDOM(1,12) == 1 then
				WACKYEFFECT({Time = 120, EffectType = "Sphere", Size = VT(0,0.55,0), Size2 = VT(10,0.55,10), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-3,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})

			end
			if MRANDOM(1,12) == 1 then
				WACKYEFFECT({Time = 120, EffectType = "Sphere", Size = VT(0,0.55,0), Size2 = VT(10,0.55,10), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-3,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(255,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			end
		end
		if MRANDOM(1,5) == 1 then
			WACKYEFFECT({EffectType = "Wave", Size = VT(4.7,0.3,4.7), Size2 = VT(3.1,3.05,3.1), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-2.5,0), MoveToPos = nil, RotationX = 0, RotationY = 15, RotationZ = 0.4, Material = "Neon", Color = C3(255,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		end
		if MRANDOM(1,5) == 1 then
			WACKYEFFECT({EffectType = "Wave", Size = VT(4.7,0.3,4.7), Size2 = VT(3.1,3.05,3.1), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-2.5,0), MoveToPos = nil, RotationX = 0, RotationY = 15, RotationZ = 0.4, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		end

		if MRANDOM(1,6) == 1 then
			WACKYEFFECT({EffectType = "Swirl", Size = VT(3.4,0.4,3.4), Size2 = VT(2.1,2.05,2.1), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-2.5,0), MoveToPos = nil, RotationX = 0, RotationY = 15, RotationZ = 0.4, Material = "Granite", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		end
		if MRANDOM(1,6) == 1 then
			WACKYEFFECT({EffectType = "Swirl", Size = VT(3.4,0.4,3.4), Size2 = VT(2.1,2.05,2.1), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-2.5,0), MoveToPos = nil, RotationX = 0, RotationY = 15, RotationZ = 0.4, Material = "Granite", Color = C3(255,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		end

		if MRANDOM(1,6) == 1 then
			WACKYEFFECT({EffectType = "Swirl", Size = VT(2,1,2), Size2 = VT(2.1,2.05,2.1), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-2.5,0), MoveToPos = nil, RotationX = 0, RotationY = 15, RotationZ = 0.4, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		end
		if HITFLOOR ~= nil then
			if MRANDOM(1,9) == 1 then
				WACKYEFFECT({EffectType = "Round Slash", Size = VT(0,0.05,0), Size2 = VT(0.1,0.05,0.1), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-2.8,0), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(15,30)/30, RotationZ = 0, Material = "Neon", Color = C3(1,1,1), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			end
		end
		WACKYEFFECT({Time = 12, EffectType = "Block", Size = VT(3,3,3)/3, Size2 = VT(0,0,0), Transparency = .5, Transparency2 = 1, CFrame = LeftArm.CFrame*CF(0,-1.45,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3( sick.PlaybackLoudness/500,0,0, sick.PlaybackLoudness/500,0,0, sick.PlaybackLoudness/500,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 12, EffectType = "Block", Size = VT(3,3,3)/3, Size2 = VT(0,0,0), Transparency = .5, Transparency2 = 1, CFrame = RightLeg.CFrame*CF(0,-1.45,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3( sick.PlaybackLoudness/500,0,0, sick.PlaybackLoudness/500,0,0, sick.PlaybackLoudness/500,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 12, EffectType = "Block", Size = VT(3,3,3)/3, Size2 = VT(0,0,0), Transparency = .5, Transparency2 = 1, CFrame = LeftLeg.CFrame*CF(0,-1.45,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3( sick.PlaybackLoudness/500,0,0, sick.PlaybackLoudness/500,0,0, sick.PlaybackLoudness/500,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
	elseif MODE == "chill" then
		local HITFLOOR,HITPOS = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 4, Character)
		local POSITION = CF(HITPOS)*ANGLES(RAD(0),RAD(MRANDOM(0,360)),RAD(0))*CF(MRANDOM(3,6),0,0).p
		local SPHEREFLOOR,SPHEREPOS = Raycast(POSITION+VT(0,1,0), (CF(POSITION, POSITION + VT(0, -1, 0))).lookVector, 5, Character)
		local FRAME = CF(VT(Torso.Position.X+MRANDOM(-15,15),Torso.Position.Y,Torso.Position.Z+MRANDOM(-15,15)))
		MagicSphere(VT(0.6,0.6,0.6),15,FRAME,"Really black",VT(0.1,2,0.1),0)
		MagicSphere(VT(0.2,0.2,0.2),15,FRAME,C3( sick.PlaybackLoudness/500,0,0, sick.PlaybackLoudness/500,0,0, sick.PlaybackLoudness/500,0,0),VT(0.1,2,0.1),0)
		WACKYEFFECT({Time = MRANDOM(10,30)*2, EffectType = "Sphere", Size = VT(1.5,1.5,1.5)*1, Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = CF(SPHEREPOS-VT(0,2,0))*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = SPHEREPOS+VT(0,MRANDOM(15,25)/5,0), MRANDOM(-25,25)/35, RotationY = MRANDOM(-25,25)/35, RotationZ = MRANDOM(-25,25)/35, Material = "Neon", Color = Color3.new(sick.PlaybackLoudness/500,0,0), SoundID = nil, SoundPitch = MRANDOM(12,16)/10, SoundVolume = 2,RED = true})
		WACKYEFFECT({Time = MRANDOM(10,30)*2, EffectType = "Skull", Size = VT(1.5,1.5,1.5)*3.95, Size2 = VT(0.425,0.425,0.425), Transparency = 0, Transparency2 = 1, CFrame = CF(SPHEREPOS-VT(0,2,0))*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = SPHEREPOS+VT(0,MRANDOM(25,35)/5,0), MRANDOM(-25,25)/35, RotationY = MRANDOM(-25,25)/35, RotationZ = MRANDOM(-25,25)/35, Material = "Neon", Color = Color3.new(sick.PlaybackLoudness/500,0,0), SoundID = nil, SoundPitch = MRANDOM(12,16)/10, SoundVolume = 2,RED = true})
		WACKYEFFECT({Time = 12, EffectType = "Block", Size = VT(sick.PlaybackLoudness/70,sick.PlaybackLoudness/70,sick.PlaybackLoudness/70)/3, Size2 = VT(0,0,0), Transparency = .5, Transparency2 = 1, CFrame = RightArm.CFrame*CF(0,-1.45,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3( sick.PlaybackLoudness/500,0,0, sick.PlaybackLoudness/500,0,0, sick.PlaybackLoudness/500,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 12, EffectType = "Block", Size = VT(sick.PlaybackLoudness/70,sick.PlaybackLoudness/70,sick.PlaybackLoudness/70)/3, Size2 = VT(0,0,0), Transparency = .5, Transparency2 = 1, CFrame = LeftArm.CFrame*CF(0,-1.45,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3( sick.PlaybackLoudness/500,0,0, sick.PlaybackLoudness/500,0,0, sick.PlaybackLoudness/500,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 12, EffectType = "Block", Size = VT(sick.PlaybackLoudness/70,sick.PlaybackLoudness/70,sick.PlaybackLoudness/70)/3, Size2 = VT(0,0,0), Transparency = .5, Transparency2 = 1, CFrame = RightLeg.CFrame*CF(0,-1.45,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3( sick.PlaybackLoudness/500,0,0, sick.PlaybackLoudness/500,0,0, sick.PlaybackLoudness/500,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 12, EffectType = "Block", Size = VT(sick.PlaybackLoudness/70,sick.PlaybackLoudness/70,sick.PlaybackLoudness/70)/3, Size2 = VT(0,0,0), Transparency = .5, Transparency2 = 1, CFrame = LeftLeg.CFrame*CF(0,-1.45,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3( sick.PlaybackLoudness/500,0,0, sick.PlaybackLoudness/500,0,0, sick.PlaybackLoudness/500,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		if MRANDOM(1,1) == 1 then
			local loudness = sick.PlaybackLoudness
			WACKYEFFECT({Time = 2.5, EffectType = "Sphere", Size = VT(7+sick.PlaybackLoudness/25,0.55,7+sick.PlaybackLoudness/25), Size2 = VT(7+sick.PlaybackLoudness/25,0.55,7+sick.PlaybackLoudness/25), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-3,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(0+178*loudness/100,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		end
		if MRANDOM(1,8) == 1 and MODE == "relaxed" then
			local loudness = sick.PlaybackLoudness
			WACKYEFFECT({Time = MRANDOM(10,30)*2, EffectType = "Sphere", Size = VT(1.5,1.5,1.5)*1, Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = CF(SPHEREPOS-VT(0,2,0))*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = SPHEREPOS+VT(0,MRANDOM(15,25)/5,0), MRANDOM(-25,25)/35, RotationY = MRANDOM(-25,25)/35, RotationZ = MRANDOM(-25,25)/35, Material = "Neon", Color = Color3.fromRGB(0+178*loudness/100,0,0), SoundID = nil, SoundPitch = MRANDOM(12,16)/10, SoundVolume = 2,RED = true})
		end
		if MRANDOM(1,14) == 1 and MODE == "relaxed" then
			local loudness = sick.PlaybackLoudness
			WACKYEFFECT({Time = MRANDOM(10,30)*2, EffectType = "Skull", Size = VT(1.5,1.5,1.5)*3.95, Size2 = VT(0.425,0.425,0.425), Transparency = 0, Transparency2 = 1, CFrame = CF(SPHEREPOS-VT(0,2,0))*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360))), MoveToPos = SPHEREPOS+VT(0,MRANDOM(25,35)/5,0), MRANDOM(-25,25)/35, RotationY = MRANDOM(-25,25)/35, RotationZ = MRANDOM(-25,25)/35, Material = "Neon", Color = Color3.fromRGB(0+178*loudness/100,0,0), SoundID = nil, SoundPitch = MRANDOM(12,16)/10, SoundVolume = 2,RED = true})
		end
		if MRANDOM(1,1) == 1 then
			local loudness = sick.PlaybackLoudness
			WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(10*sick.PlaybackLoudness/75,0,1*sick.PlaybackLoudness/75), Size2 = VT(1*sick.PlaybackLoudness/75,0.5,7*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(0+178*loudness/100,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
			WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(1*sick.PlaybackLoudness/75,0,10*sick.PlaybackLoudness/75), Size2 = VT(7*sick.PlaybackLoudness/75,0.69,1*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(0+178*loudness/100,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
			WACKYEFFECT({Time = 12.5, EffectType = "Sphere", Size = VT(4*sick.PlaybackLoudness/75,0,4*sick.PlaybackLoudness/75), Size2 = VT(4*sick.PlaybackLoudness/75,0.5,4*sick.PlaybackLoudness/75), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(RAD(0),RAD(sick.PlaybackLoudness/666),RAD(0)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(0+178*loudness/100,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})		
		end
	elseif MODE == "nightmare" then
		WACKYEFFECT({Time = 2.5, EffectType = "Sphere", Size = VT(7+sick.PlaybackLoudness/25,0.55,7+sick.PlaybackLoudness/25), Size2 = VT(7+sick.PlaybackLoudness/25,0.55,7+sick.PlaybackLoudness/25), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-3,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.new( sick.PlaybackLoudness/500,0,0, sick.PlaybackLoudness/500,0,0, sick.PlaybackLoudness/500,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 12, EffectType = "Block", Size = Vector3.new(3,3,3)/3, Size2 = Vector3.new(0,0,0), Transparency = .5, Transparency2 = 1, CFrame = RightArm.CFrame*CF(0,-1.45,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.new( sick.PlaybackLoudness/500,0,0, sick.PlaybackLoudness/500,0,0, sick.PlaybackLoudness/500,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
	elseif MODE == "depressed" then
		if math.random(1,12)==1 then
			WACKYEFFECT({Time = MRANDOM(15,65),EffectType = "Slash", Size = VT(0,0.05,0), Size2 = VT(0.0625,0.015,0.0625)*MRANDOM(1,8), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-2,0)*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-360,360)),math.rad(math.random(-5,5))), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Torso.Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		end
	elseif MODE == "kicksher" then
		if MRANDOM(1,1) == 1 then
			WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(0,0,0), Size2 = VT(2,2,2), Transparency = 0.3, Transparency2 = 1, CFrame = LeftArm.CFrame*CF(0,-1.45,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = RightArm.Color, SoundID = nil, SoundPitch = 1, SoundVolume = 0})
			WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(0,0,0), Size2 = VT(2,2,2), Transparency = 0.3, Transparency2 = 1, CFrame = LeftArm.CFrame*CF(0,-1.45,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = RightArm.Color, SoundID = nil, SoundPitch = 1, SoundVolume = 0})
			WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(0,0,0), Size2 = VT(2,2,2), Transparency = 0.3, Transparency2 = 1, CFrame = LeftLeg.CFrame*CF(0,-1.45,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = RightArm.Color, SoundID = nil, SoundPitch = 1, SoundVolume = 0})
			WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(0,0,0), Size2 = VT(2,2,2), Transparency = 0.3, Transparency2 = 1, CFrame = RightLeg.CFrame*CF(0,-1.45,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = RightArm.Color, SoundID = nil, SoundPitch = 1, SoundVolume = 0})
		end
	elseif MODE == "ghost" then
		local loudness = sick.PlaybackLoudness
		local HITFLOOR,HITPOS = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 25, Character)
		if MRANDOM(0,3) == 1  then
			local POSITION = CF(HITPOS)*ANGLES(RAD(0),RAD(MRANDOM(0,360)),RAD(0))*CF(MRANDOM(75,800),0,0).p
			local BOXFLOOR,BOXPOS = Raycast(POSITION+VT(0,1,0), (CF(POSITION, POSITION + VT(0, -1, 0))).lookVector, 5, Character)
			WACKYEFFECT({Time = 50, EffectType = "Sphere", Size = VT(2,25555,2), Size2 = VT(MRANDOM(0,1),MRANDOM(0,2555555),MRANDOM(0,1)), Transparency = 0.2, Transparency2 = 1, CFrame = CF(BOXPOS), MoveToPos = CF(BOXPOS)*VT(MRANDOM(-80,80),200,MRANDOM(-80,80)), RotationX = MRANDOM(-20,20), RotationY = MRANDOM(-20,-20), RotationZ = MRANDOM(-20,20), Material = "Neon", Color = C3(math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500)), SoundID = nil, SoundPitch = 0.5, SoundVolume = 6})
		end
		local HITFLOOR,HITPOS = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 25, Character)
		if MRANDOM(0,3) == 1 then
			local POSITION = CF(HITPOS)*ANGLES(RAD(0),RAD(MRANDOM(0,360)),RAD(0))*CF(MRANDOM(5,15),0,0).p
			local high = Raycast(POSITION+VT(0,1,0), (CF(POSITION, POSITION + VT(0, MRANDOM(0,6), 0))).lookVector, 5, Character)
			local BOXFLOOR,BOXPOS = Raycast(POSITION+VT(0,1,0), (CF(POSITION, POSITION + VT(0, -1, 0))).lookVector, 5, Character)
			WACKYEFFECT({Time = 30, EffectType = "Sphere", Size = VT(sick.PlaybackLoudness/25,0.15,sick.PlaybackLoudness/25), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = CF(HITPOS), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500)), SoundID = nil, SoundPitch = 0.5, SoundVolume = 6})
			WACKYEFFECT({Time = 45, EffectType = "Block", Size = VT(0.8,0.8,0.8), Size2 = VT(0,0,0), Transparency = 0.2, Transparency2 = 1, CFrame = CF(BOXPOS), MoveToPos = CF(BOXPOS)*VT(0,15,0), RotationX = MRANDOM(-8,8), RotationY = MRANDOM(-8,-8), RotationZ = MRANDOM(-8,8), Material = "Neon", Color = C3(math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500)), SoundID = nil, SoundPitch = 0.5, SoundVolume = 6})
		end
		local HITFLOOR,HITPOS = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 25, Character)
		if MRANDOM(0,3) == 1 then
			local POSITION = CF(HITPOS)*ANGLES(RAD(0),RAD(MRANDOM(0,360)),RAD(0))*CF(MRANDOM(5,15),0,0).p
			local BOXFLOOR,BOXPOS = Raycast(POSITION+VT(0,1,0), (CF(POSITION, POSITION + VT(0, -1, 0))).lookVector, 5, Character)
			WACKYEFFECT({Time = 35, EffectType = "Sphere", Size = VT(0.5,0.5,0.5), Size2 = VT(MRANDOM(0,1),MRANDOM(0,1),MRANDOM(0,1)), Transparency = 0.2, Transparency2 = 1, CFrame = CF(BOXPOS), MoveToPos = CF(BOXPOS)*VT(0,18,0), RotationX = MRANDOM(-8,8), RotationY = MRANDOM(-8,-8), RotationZ = MRANDOM(-8,8), Material = "Neon", Color = C3(math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500)), SoundID = nil, SoundPitch = 0.5, SoundVolume = 6})
		end
		if math.random(1,3) then
			WACKYEFFECT({Time = 12.5, EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(10,1,10), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CFrame.new(0,-2.9,0)*CFrame.Angles(RAD(0),RAD(0),RAD(0)), RotationX = 0, RotationY = 7, RotationZ = 0, Material = "Neon", Color = Torso.Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})			
		end
		WACKYEFFECT({Time = 15, EffectType = "Sphere", Size = VT(0,0,0), Size2 = VT(2,2,2), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(255,255,255), SoundID = nil, SoundPitch = nil, SoundVolume = 8})
		WACKYEFFECT({Time = 1, EffectType = "Sphere", Size = VT(2,2,2), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 0, CFrame = LeftLeg.CFrame*CF(0,-1.45,0), MoveToPos = nil, RotationX = 1, RotationY = 1, RotationZ = 1, Material = "ForceField", Color = C3(math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500)), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 1, EffectType = "Sphere", Size = VT(1.6,1.6,1.6), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 0, CFrame = LeftLeg.CFrame*CF(0,-1.45,0), MoveToPos = nil, RotationX = 1, RotationY = 1, RotationZ = 1, Material = "ForceField", Color = C3(math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500)), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 1, EffectType = "Block", Size = VT(0.6,0.6,0.6), Size2 = VT(0.6,0.6,0.6), Transparency = 0, Transparency2 = 0, CFrame = LeftLeg.CFrame*CF(0,-1.45,0), MoveToPos = nil, RotationX = 1, RotationY = 1, RotationZ = 1, Material = "Neon", Color = C3(math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500)), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 1, EffectType = "Sphere", Size = VT(2,2,2), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 0, CFrame = RightLeg.CFrame*CF(0,-1.45,0), MoveToPos = nil, RotationX = 1, RotationY = 1, RotationZ = 1, Material = "ForceField", Color = C3(math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500)), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 1, EffectType = "Sphere", Size = VT(1.6,1.6,1.6), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 0, CFrame = RightLeg.CFrame*CF(0,-1.45,0), MoveToPos = nil, RotationX = 1, RotationY = 1, RotationZ = 1, Material = "ForceField", Color = C3(math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500)), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 1, EffectType = "Block", Size = VT(0.6,0.6,0.6), Size2 = VT(0.6,0.6,0.6), Transparency = 0, Transparency2 = 0, CFrame = RightLeg.CFrame*CF(0,-1.45,0), MoveToPos = nil, RotationX = 1, RotationY = 1, RotationZ = 1, Material = "Neon", Color = C3(math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500)), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
	elseif MODE == "VIS" then
		local HITFLOOR,HITPOS = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 4, Character)
		WACKYEFFECT({Time = 30, EffectType = "Sphere", Size = VT(0.5,0,0.5), Size2 = VT(0.2,6,0.2), Transparency = 0.3, Transparency2 = 1, CFrame = CF(HITPOS)*ANGLES(RAD(0),RAD(MRANDOM(0,360)),RAD(0))*CF(0,0,MRANDOM(3,7)) * ANGLES(RAD(MRANDOM(-15,15)), RAD(0), RAD(MRANDOM(-15,15))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-1,1)*5, RotationZ = 0, Material = "Neon", Color = Torso.Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 75 - sick.PlaybackLoudness/85 ,EffectType = "Slash", Size = VT(0,0.05,0), Size2 = VT(0.0625,0.015,0.0625)*MRANDOM(1,8), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-2,0)*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-360,360)),math.rad(math.random(-5,5))), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Torso.Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
	elseif MODE == "Scary" then
		local HITFLOOR,HITPOS = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 4, Character)
		local POSITION = CF(HITPOS)*ANGLES(RAD(0),RAD(MRANDOM(0,360)),RAD(0))*CF(MRANDOM(3,6),0,0).p
		local SPHEREFLOOR,SPHEREPOS = Raycast(POSITION+VT(0,1,0), (CF(POSITION, POSITION + VT(0, -1, 0))).lookVector, 5, Character)
		local loudness = sick.PlaybackLoudness
		WACKYEFFECT({Time = 30, EffectType = "Sphere", Size = VT(0.5,0,0.5), Size2 = VT(0.2,25,0.2), Transparency = 0.3, Transparency2 = 1, CFrame = CF(HITPOS)*ANGLES(RAD(0),RAD(MRANDOM(0,360)),RAD(0))*CF(0,0,MRANDOM(3,15)) * ANGLES(RAD(MRANDOM(-15,15)), RAD(0), RAD(MRANDOM(-15,15))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-1,1)*5, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(0,0,0+178*sick.PlaybackLoudness/100), UseBoomerangMath = true, SizeBoomerang = 50, SoundID = nil, SoundPitch = nil, SoundVolume = nil})	
		WACKYEFFECT({Time = MRANDOM(10,30)*2, EffectType = "Sphere", Size = Vector3.new(1.5,1.5,1.5)*1, Size2 = Vector3.new(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = CFrame.new(SPHEREPOS-Vector3.new(0,2,0))*CFrame.Angles(math.rad(MRANDOM(0,360)),math.rad(MRANDOM(0,360)),math.rad(MRANDOM(0,360))), MoveToPos = SPHEREPOS+Vector3.new(0,MRANDOM(15,25)/5,0), MRANDOM(-25,25)/35, RotationY = MRANDOM(-25,25)/35, RotationZ = MRANDOM(-25,25)/35, Material = "Neon", Color = Color3.fromRGB(0,0,0+178*sick.PlaybackLoudness/100), SoundID = nil, SoundPitch = MRANDOM(12,16)/10, SoundVolume = 2,RED = true})
		WACKYEFFECT({Time = 12, EffectType = "Block", Size = Vector3.new(3,3,3)/3, Size2 = Vector3.new(0,0,0), Transparency = .5, Transparency2 = 1, CFrame = RightArm.CFrame*CF(0,-1.45,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(0,0,0+178*sick.PlaybackLoudness/100), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = MRANDOM(10,30)*2, EffectType = "Skull", Size = Vector3.new(1.5,1.5,1.5)*3.95, Size2 = Vector3.new(0.425,0.425,0.425), Transparency = 0, Transparency2 = 1, CFrame = CFrame.new(SPHEREPOS-Vector3.new(0,2,0))*CFrame.Angles(math.rad(MRANDOM(0,360)),math.rad(MRANDOM(0,360)),math.rad(MRANDOM(0,360))), MoveToPos = SPHEREPOS+Vector3.new(0,MRANDOM(25,35)/5,0), MRANDOM(-25,25)/35, RotationY = MRANDOM(-25,25)/35, RotationZ = MRANDOM(-25,25)/35, Material = "Neon", Color = Color3.fromRGB(0,0,0+178*sick.PlaybackLoudness/100), SoundID = nil, SoundPitch = MRANDOM(12,16)/10, SoundVolume = 2,RED = true})	
	elseif MODE == "Dear God" then
		local loudness = sick.PlaybackLoudness
		local HITFLOOR,HITPOS = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 25, Character)
		if MRANDOM(0,3) == 1 then
			local POSITION = CF(HITPOS)*ANGLES(RAD(0),RAD(MRANDOM(0,360)),RAD(0))*CF(MRANDOM(5,15),0,0).p
			local BOXFLOOR,BOXPOS = Raycast(POSITION+VT(0,1,0), (CF(POSITION, POSITION + VT(0, -1, 0))).lookVector, 5, Character)
			WACKYEFFECT({Time = 35, EffectType = "Sphere", Size = VT(0.5,0.5,0.5), Size2 = VT(MRANDOM(0,1),MRANDOM(0,1),MRANDOM(0,1)), Transparency = 0.2, Transparency2 = 1, CFrame = CF(BOXPOS), MoveToPos = CF(BOXPOS)*VT(0,18,0), RotationX = MRANDOM(-8,8), RotationY = MRANDOM(-8,-8), RotationZ = MRANDOM(-8,8), Material = "Neon", Color = Color3.fromRGB(0+178*loudness/100,0,0), SoundID = nil, SoundPitch = 0.5, SoundVolume = 6})
		end
		local loudness = sick.PlaybackLoudness
		local vis = sick.PlaybackLoudness/70
		WACKYEFFECT({EffectType = "Block", Size = VT(vis,vis,vis)/3, Size2 = VT(1,1,1)/3, Transparency = 0.5, Transparency2 = 1, CFrame = RightArm.CFrame*CF(0,-1.3,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(0+178*loudness/100,0,0), SoundID = nil, SoundPitch = 1, SoundVolume = 5})
		WACKYEFFECT({EffectType = "Block", Size = VT(vis,vis,vis)/3, Size2 = VT(1,1,1)/3, Transparency = 0.5, Transparency2 = 1, CFrame = LeftArm.CFrame*CF(0,-1.3,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(0+178*loudness/100,0,0), SoundID = nil, SoundPitch = 1, SoundVolume = 5})
		local HITFLOOR,HITPOS = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 25, Character)
		local POSITION = CF(HITPOS)*ANGLES(RAD(0),RAD(MRANDOM(0,360)),RAD(0))*CF(MRANDOM(5,15),0,0).p	
		local BOXFLOOR,BOXPOS = Raycast(POSITION+VT(0,1,0), (CF(POSITION, POSITION + VT(0, -1, 0))).lookVector, 5, Character)
		if MRANDOM(0,3) == 1 then
			WACKYEFFECT({Time = 55, EffectType = "Sphere", Size = VT(MRANDOM(7,7.002),0.4,MRANDOM(7,7.002)), Size2 = VT(0,0.1,0), Transparency = 0.07, Transparency2 = 1, CFrame = CF(HITPOS), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(0+178*loudness/100,0,0), SoundID = nil, SoundPitch = 0.5, SoundVolume = 6})
		end
		if MRANDOM(0,3) == 1 then
			WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(0.1,MRANDOM(5,14),0.1), Size2 = VT(0.5,0,0.5), Transparency = 0.5, Transparency2 = 1, CFrame = CF(BOXPOS), MoveToPos = CF(BOXPOS)*VT(0,-0.1,0), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(0+178*loudness/100,0,0), SoundID = nil, SoundPitch = 0.5, SoundVolume = 6})
		end	
	end
	if not alreadyfixing then
		for i,v in pairs(Character:GetChildren()) do
			if v:IsA("BasePart") and v.Anchored == false and v.Position.Y < (workspace.FallenPartsDestroyHeight + 50) then
				local flot = Instance.new("BodyPosition")
				local spen = Instance.new("BodyGyro")
				local hu = math.huge
				flot.MaxForce = Vector3.new(hu,hu,hu)
				spen.MaxTorque = Vector3.new(hu,hu,hu)
				local spown = nil
				for o,b in pairs(workspace:GetDescendants()) do
					if not b:IsDescendantOf(Character) and b:IsA("SpawnLocation") then
						spown = b
					end
				end
				if spown then
					RootPart.CFrame = CFrame.new(spown.Position.X,spown.Position.Y+(spown.Size.Y/2)+3,spown.Position.Z)
				else
					local base = workspace:FindFirstChild("Base")
					if not base then
						base = workspace:FindFirstChild("Baseplate")
					end
					if base then
						RootPart.CFrame = CFrame.new(math.clamp(RootPart.Position.X,-base.Size.X/2,base.Size.X/2),base.Position.Y+(base.Size.Y/2)+3,math.clamp(RootPart.Position.Z,-base.Size.X/2,base.Size.X/2))
					else
						RootPart.CFrame = CFrame.new(math.clamp(RootPart.Position.X,-100,100),20,math.clamp(RootPart.Position.Z,-100,100))
					end
				end
				flot.Position = RootPart.Position
				flot.Parent = RootPart
				spen.CFrame = RootPart.CFrame
				spen.Parent = RootPart
				coroutine.resume(coroutine.create(function()
					game:GetService("Debris"):AddItem(flot,1)
					game:GetService("Debris"):AddItem(spen,1)
				end))
			end
			if Character:FindFirstChild("Safety") == nil then
				local Safety = IT("Script")
				Safety.Name = "Safety"
				Safety.Parent = Character
			end
		end
		if Player == Player then
			Torsovelocity = (RootPart.Velocity * Vector3.new(1,0,1)).magnitude
		end 
		local WALKSPEEDVALUE = 6 / (Humanoid.WalkSpeed / 16)
		sine = sine + change
		SINE = SINE + change
		local hit,pos = rayCast(RootPart.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,4,Character)
		--//=================================\\
		--||           ANIMATIONS 			 ||
		--\\=================================//
		Player_Size = 1
		if Anim == "Walk" and Torsovelocity > 1 then
			if MODE == "test" then

			else
				RootJoint.C1 = Clerp(RootJoint.C1,rc0 * CFrame.new(0,0,0.1 + 0.05 * math.cos(sine / 6)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),2 / 3)
				Neck.C1 = Clerp(Neck.C1,CFrame.new(0,-0.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0) - Head.RotVelocity.Y / 30),0.2 / 3)
				RightHip.C1 = Clerp(RightHip.C1,CFrame.new(0.5,.95-.2*math.sin(sine/12),-.15*math.sin(sine/12)) * CFrame.Angles(math.rad(-5),math.rad(90),math.rad(0)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-10+35 * math.cos(sine / 12))),0.6 / 3)
				LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(-0.5,.95+.2*math.sin(sine/12),.15*math.sin(sine/12)) * CFrame.Angles(math.rad(-5),math.rad(-90),math.rad(0)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(10+35 * math.cos(sine / 12))),0.6 / 3)
			end
		elseif (Anim ~= "Walk") or (Torsovelocity < 1) then
			RootJoint.C1 = Clerp(RootJoint.C1,rc0 * CFrame.new() * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.2 / 3)
			Neck.C1 = Clerp(Neck.C1,CFrame.new(0,-0.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.2 / 3)
			RightHip.C1 = Clerp(RightHip.C1,CFrame.new(0.5,1,0) * CFrame.Angles(math.rad(0),math.rad(90),math.rad(0)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.7 / 3)
			LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(-0.5,1,0) * CFrame.Angles(math.rad(0),math.rad(-90),math.rad(0)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.7 / 3)
		end
		if RootPart.Velocity.y > 1 and hit == nil then 
			Anim = "Jump"
			if ATTACK == false then
				RootJoint.C0 = Clerp(RootJoint.C0,rc0 * CFrame.new(0,0,0 ) * CFrame.Angles(math.rad(-5),math.rad(0),math.rad(0)),1 / 3)
				Neck.C0 = Clerp(Neck.C0,nc0 * CFrame.new(0,0 ,0 + ((1) - 1)) * CFrame.Angles(math.rad(-25),math.rad(0),math.rad(10)),1 / 3)
				RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(-50),math.rad(0),math.rad(0 + 10 * math.cos(sine / 12))) * rscp,1 / 3)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(50),math.rad(0),math.rad(-25 - 10 * math.cos(sine / 12))) * lscp,1 / 3)
				RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-0.4,-0.6) * CFrame.Angles(math.rad(1),math.rad(90),math.rad(0)) * CFrame.Angles(math.rad(-1 * math.sin(sine / 6)),math.rad(0),math.rad(0)),1 / 3)
				LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(0),math.rad(-85),math.rad(0)) * CFrame.Angles(math.rad(-1 * math.sin(sine / 6)),math.rad(0),math.rad(0)),1 / 3)
			end
		elseif RootPart.Velocity.y < -1 and hit == nil then 
			Anim = "Fall"
			if ATTACK == false then
				RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-20), RAD(0), RAD(0)), 0.2 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(45), RAD(0), RAD(25))* RIGHTSHOULDERC0, 0.15 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-40), RAD(0), RAD(-20)) * LEFTSHOULDERC0, 0.2 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.3) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(-20)), 0.2 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.3) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(20)), 0.2 / Animation_Speed)
			end
		elseif Torsovelocity < 1 and hit ~= nil then
			Anim = "Idle"
			if ATTACK == false and MODE == "Snake God" then
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0+.15*SIN(sine/32)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(40), RAD(-10), RAD(0)), 0.15 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(10+5*SIN(sine/24))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-10-5*SIN(sine/24))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1-.15*SIN(sine/32), 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8+2.5*SIN(sine/32)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1-.15*SIN(sine/32), 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8+2.5*SIN(sine/32)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				snap = math.random(1,72)
				if snap == 1 then	
					CreateSound(363808674,Head,3,1.3,false)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(MRANDOM(-100000-sick.PlaybackLoudness/7,100000+sick.PlaybackLoudness/7)), RAD(MRANDOM(-99999-sick.PlaybackLoudness/7,99999+sick.PlaybackLoudness/7)), RAD(MRANDOM(-200-sick.PlaybackLoudness/7,48375935+sick.PlaybackLoudness/7))), 1 / Animation_Speed) 
				end
			end
			if MODE == "test" and ATTACK == false then 
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0,0,3 - .5 * math.sin(sine/50)) * CFrame.Angles(math.rad(20),math.rad(0),math.rad(0)),0.7/3)
				Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(20),math.rad(10*math.cos(sine/100)),math.rad(0)),1)
				if math.random(1,60) == 1 then
					Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(20+math.random(-20,20)),math.rad((10*math.cos(sine/100))+math.random(-20,20)),math.rad(math.random(-20,20))),1)
				end
				RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(-41.6-4*math.sin(sine/50)),math.rad(0),math.rad(0)) * RIGHTSHOULDERC0,0.7/3)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(20),math.rad(0),math.rad(-10-10*math.sin(sine/50))) * LEFTSHOULDERC0,0.7/3)
				RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1,-0.01) * CFrame.Angles(math.rad(10),math.rad(80),math.rad(10+10*math.sin(sine/50))),1/3)
				LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,-0.01) * CFrame.Angles(math.rad(20),math.rad(-80),math.rad(-10-10*math.sin(sine/50))),1/3)
			end
			if MODE == "Dear God" and ATTACK == false then 
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, -0.1, -0.1 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(15), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.025 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(0 - 7.5 * SIN(SINE / 12)), RAD(12 + 7.5 * SIN(SINE / 12))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0.025 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(0 + 7.5 * SIN(SINE / 12)), RAD(-12 - 7.5 * SIN(SINE / 12))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(20), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(5), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(20), RAD(-10 - 2.5 * SIN(SINE / 10)), RAD(20 * COS(SINE / 10))), 1 / Animation_Speed)
			end
			if MODE == "F A T" and ATTACK == false then
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 1 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(180), RAD(0)), 0.15 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(90)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)	
			end
			if MODE == "VIS" and ATTACK == false then 
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0,0,0+.1*COS(SINE / 18))*ANGLES(RAD(0+1*COS(SINE / 18)),RAD(0),RAD(0)), 1 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-1+-2*COS(SINE / 32)), RAD(0), RAD(10)), 1 / Animation_Speed) 
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(10)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(40+sick.PlaybackLoudness/7.5), RAD(0), RAD(-10)) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1-.1*COS(SINE / 18), -0.01) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.-sick.PlaybackLoudness/1000, -0.6) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			end
			if MODE == "ghost" and ATTACK == false then
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1 + .5 * COS(SINE / 23)) * ANGLES(RAD(-20 - 5 *SIN(SINE/23)), RAD(0), RAD(-0)), 1 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(30 - 5.5 * SIN(SINE / 23)), RAD(0), RAD(0)), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 - .1 *SIN(SINE/23), -.3) * ANGLES(RAD(130), RAD(5 *COS(SINE/23)), RAD(-0))* RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, .3) * ANGLES(RAD(-10 -5 *SIN(SINE/23)), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -.4 - 0.05 * COS(SINE / 23), -0.01) * ANGLES(RAD(0), RAD(60), RAD(-20 -5 *SIN(SINE/23))) * ANGLES(RAD(-8), RAD(0), RAD(0)), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 23), -0.01) * ANGLES(RAD(0), RAD(-86), RAD(20 -5 *SIN(SINE/23))) * ANGLES(RAD(-8), RAD(0), RAD(0)), 1 / Animation_Speed)
			end
			if MODE == "kicksher" and ATTACK == false then
				RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, -1.3 + 0.1 * COS(SINE / 24)) * ANGLES(RAD(0 - 4 * SIN(SINE / 24)), RAD(0 + 1 * COS(SINE / 24)), RAD(-10)), 0.1 / Animation_Speed)            
				Neck.C0 = Clerp(Neck.C0, NECKC0* CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(7 - 2 * SIN(SINE / 20)), RAD(-20), RAD(0)), 0.1 / Animation_Speed)              
				RightHip.C0 = Clerp(RightHip.C0, CF(1, 0.1 - 0.1 * COS(SINE / 24) - RAD(0 + 1 * COS(SINE / 24)), -0.3) * ANGLES(RAD(13 - 6 * SIN(SINE / 24)), RAD(90), RAD(0)), 0.1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1.3 - 0.1 * COS(SINE / 24) + RAD(0 + 1 * COS(SINE / 24)), -0.15) * ANGLES(RAD(-90 - 6 * SIN(SINE / 24)), RAD(-90), RAD(0)), 0.1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.8, 0.4 + 0.1 * SIN(SINE / 35), 0.5) * ANGLES(RAD(90), RAD(90), RAD(0)), 0.1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(0.3, 0.7 + 0.1 * SIN(SINE / 35), -1.5) * ANGLES(RAD(80), RAD(0 + 4 * SIN(SINE / 35)), RAD(50 + 3 * SIN(SINE / 35))), 0.1 / Animation_Speed)
			end
			if MODE == "I A M H A P P Y" and ATTACK == false then 
				if MRANDOM(1,10) == 1 then
					Neck.C0=Clerp(Torso.Neck.C0,NECKC0*angles(RAD(23 + MRANDOM(-5,5)),RAD(MRANDOM(-5,5)),RAD(22 + MRANDOM(-5,5))),1)
				end
				if math.random(1,8) == 1 then
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(MRANDOM(-87498,12093847)), RAD(MRANDOM(-123456,3746525)), RAD(MRANDOM(-2134567876,98764356))), 0.15 / Animation_Speed)
				end		
				if MRANDOM(1,10) == 1 then
					Neck.C0=Clerp(Torso.Neck.C0,NECKC0*angles(RAD(23 + MRANDOM(-5,5)),RAD(MRANDOM(-5,5)),RAD(22 + MRANDOM(-5,5))),1)
				end
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , 0 , 00 + 0.2 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(MRANDOM(-25,25)), RAD(0)), 0.15 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(MRANDOM(-25,25)), RAD(15 - 2.5 * SIN(SINE / 12))) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) *  ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(MRANDOM(-25,25)), RAD(-15- 2.5 * SIN(SINE / 12))) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1- 0.2 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1- 0.2 * COS(SINE / 12) , 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)	
			end
			if MODE == "depressed" and ATTACK == false then 
				snap = math.random(1,24)
				if snap == 1 then
					CreateSound(363808674,RootPart,2,math.random(5, 15) / 10,false)
					Neck.C0 = Clerp(Neck.C0,NECKC0*CF(0,0,0+((1)-1))*angles(math.rad(math.random(-100000,100000)),math.rad(math.random(-100000,100000)),math.rad(math.random(-1000,1000))),10/Animation_Speed)
				end
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -1.2+.5*SIN(sine/12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(40), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + .2*SIN(sine / 12), 0) * ANGLES(RAD(0), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + .2 * SIN(sine / 12), 0) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1-.5*SIN(sine/12), -0.5) * ANGLES(RAD(-90), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1-.5*SIN(sine/12), -0.5) * ANGLES(RAD(-90), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)	
			end
			if MODE == "KARMA" and ATTACK == false then 
				if MRANDOM(1,10) == 1 then
					Neck.C0=Clerp(Torso.Neck.C0,NECKC0*angles(RAD(23 + MRANDOM(-5,5)),RAD(MRANDOM(-5,5)),RAD(22 + MRANDOM(-5,5))),1)
				end
				if math.random(1,8) == 1 then
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(MRANDOM(-87498,12093847)), RAD(MRANDOM(-123456,3746525)), RAD(MRANDOM(-2134567876,98764356))), 0.15 / Animation_Speed)
				end
				if(math.random(1,4)==1)then
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(MRANDOM(-99999999,99999999)), RAD(MRANDOM(-99999999,99999999)), RAD(MRANDOM(-99999999,99999999))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(MRANDOM(-99999999,99999999)), RAD(MRANDOM(-99999999,99999999)), RAD(MRANDOM(-99999999,99999999))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
				end	
				if MRANDOM(1,10) == 1 then
					Neck.C0=Clerp(Torso.Neck.C0,NECKC0*angles(RAD(23 + MRANDOM(-5,5)),RAD(MRANDOM(-5,5)),RAD(22 + MRANDOM(-5,5))),1)
				end
				local bouncyboi = sick.PlaybackLoudness / 1200
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, -0.1, -0.1 + 0.05 * COS(SINE / 12) + bouncyboi) * ANGLES(RAD(15), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.025 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(0 - 7.5 * SIN(SINE / 12)), RAD(12 + 7.5 * SIN(SINE / 12))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.7, 0.5 + sick.PlaybackLoudness / 1200, -0.3) * ANGLES(RAD(-200), RAD(0), RAD(30)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12) - bouncyboi, -0.01) * ANGLES(RAD(20), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12) - bouncyboi, -0.01) * ANGLES(RAD(5), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(25 + MRANDOM(-5,5) - 4 * COS(SINE / 12)), RAD(MRANDOM(-5,5)), RAD(15)), 1 / Animation_Speed)--]
				snap = math.random(1,72)
				if snap == 1 then
					CreateSound(363808674,Head,3,1.3,false)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(MRANDOM(-100000-sick.PlaybackLoudness/7,100000+sick.PlaybackLoudness/7)), RAD(MRANDOM(-99999-sick.PlaybackLoudness/7,99999+sick.PlaybackLoudness/7)), RAD(MRANDOM(-200-sick.PlaybackLoudness/7,48375935+sick.PlaybackLoudness/7))), 1 / Animation_Speed) 
				end 
				if MRANDOM(1,20+sick.PlaybackLoudness/7) == 1 then
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(MRANDOM(-90-sick.PlaybackLoudness/7,90+sick.PlaybackLoudness/7)), RAD(MRANDOM(-30-sick.PlaybackLoudness/7,30+sick.PlaybackLoudness/7)), RAD(MRANDOM(-50-sick.PlaybackLoudness/7,50+sick.PlaybackLoudness/7)))* RIGHTSHOULDERC0, 1 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(MRANDOM(-10000-sick.PlaybackLoudness/7,10000+sick.PlaybackLoudness/7)), RAD(MRANDOM(-900-sick.PlaybackLoudness/7,900+sick.PlaybackLoudness/7)), RAD(MRANDOM(-20-sick.PlaybackLoudness/7,20+sick.PlaybackLoudness/7)))* LEFTSHOULDERC0, 1 / Animation_Speed)
				end		   
				if MRANDOM(1, 10) == 1 then
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 + MRANDOM(-25,25) - 4 * COS(SINE / 12)), RAD(MRANDOM(-25,25)), RAD(0)), 1.5 / Animation_Speed)
				end
			end
			if MODE == "fuck" and ATTACK == false then 
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 6.5 * SIN(SINE / 15)), RAD(10 * SIN(SINE/32)), RAD(-10 + 5.5 * SIN(SINE /15))), 3 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0 - 5.5 * SIN(SINE/12)), RAD(5 * SIN(SINE /12)), RAD(22 + 4.4 * SIN(SINE /12))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0- 5.5 * SIN(SINE /12)), RAD(5 * SIN(SINE /12)), RAD(-22 + 4.4 * SIN(SINE/12))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1.5 + 1 * COS(SINE / 39)) * ANGLES(RAD(0), RAD(0), RAD(10)), 0.8 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0) * ANGLES(RAD(0), RAD(80+10* SIN(SINE / 78)), RAD(0)) * ANGLES(RAD(-3+1* SIN(SINE / 58)), RAD(0), RAD(2.5+8 * SIN(SINE / 43))), 0.8 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.5, -0.5) * ANGLES(RAD(0), RAD(-80-10* SIN(SINE / 81)), RAD(0)) * ANGLES(RAD(-3+1* SIN(SINE / 63)), RAD(0), RAD(0+15 * SIN(SINE / 49))), 0.8 / Animation_Speed)
				HelpfulAnimHandler()
			end
			if MODE == "fuck" and ATTACK == false then 
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 6.5 * SIN(SINE / 15)), RAD(10 * SIN(SINE/32)), RAD(-10 + 5.5 * SIN(SINE /15))), 3 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0 - 5.5 * SIN(SINE/12)), RAD(5 * SIN(SINE /12)), RAD(22 + 4.4 * SIN(SINE /12))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0- 5.5 * SIN(SINE /12)), RAD(5 * SIN(SINE /12)), RAD(-22 + 4.4 * SIN(SINE/12))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1.5 + 1 * COS(SINE / 39)) * ANGLES(RAD(0), RAD(0), RAD(10)), 0.8 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0) * ANGLES(RAD(0), RAD(80+10* SIN(SINE / 78)), RAD(0)) * ANGLES(RAD(-3+1* SIN(SINE / 58)), RAD(0), RAD(2.5+8 * SIN(SINE / 43))), 0.8 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.5, -0.5) * ANGLES(RAD(0), RAD(-80-10* SIN(SINE / 81)), RAD(0)) * ANGLES(RAD(-3+1* SIN(SINE / 63)), RAD(0), RAD(0+15 * SIN(SINE / 49))), 0.8 / Animation_Speed)
			end
			if MODE == "broken" and ATTACK == false then
				if MRANDOM(1,10) == 1 then
					Neck.C0=Clerp(Torso.Neck.C0,NECKC0*angles(RAD(23 + MRANDOM(-5,5)),RAD(MRANDOM(-5,5)),RAD(22 + MRANDOM(-5,5))),1)
				end
				if math.random(1,8) == 1 then
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(MRANDOM(-87498,12093847)), RAD(MRANDOM(-123456,3746525)), RAD(MRANDOM(-2134567876,98764356))), 0.15 / Animation_Speed)
				end		
				if MRANDOM(1,10) == 1 then
					Neck.C0=Clerp(Torso.Neck.C0,NECKC0*angles(RAD(23 + MRANDOM(-5,5)),RAD(MRANDOM(-5,5)),RAD(22 + MRANDOM(-5,5))),1)
				end
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , 0 , 00 + 0.2 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(MRANDOM(-25,25)), RAD(0)), 0.15 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(MRANDOM(-25,25)), RAD(15 - 2.5 * SIN(SINE / 12))) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) *  ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(MRANDOM(-25,25)), RAD(-15- 2.5 * SIN(SINE / 12))) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1- 0.2 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1- 0.2 * COS(SINE / 12) , 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)	
			end
			if MODE == "Glamour" and ATTACK == false then
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , 0 , 00 + 0.2 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(30), RAD(0), RAD(0 + 25 * COS(SINE / 20))), 0.15 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.025 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(0 - 7.5 * SIN(SINE / 12)), RAD(15 + 8.5 * SIN(SINE / 12))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0.025 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(0 + 7.5 * SIN(SINE / 12)), RAD(-15 - 8.5 * SIN(SINE / 12))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1- 0.2 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1- 0.2 * COS(SINE / 12) , 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)	
			end
			if MODE ==  "Insecure" and ATTACK == false then
				if(math.random(1,4)==1)then
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(MRANDOM(-9999999,9999999)), RAD(MRANDOM(-9999999,9999999)), RAD(MRANDOM(-9999999,9999999))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
				end	
				local bouncyboi = sick.PlaybackLoudness / 1200
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, -0.1, -0.1 + 0.05 * COS(SINE / 12) + bouncyboi) * ANGLES(RAD(15), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.025 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(0 - 7.5 * SIN(SINE / 12)), RAD(12 + 7.5 * SIN(SINE / 12))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.7, 0.5 + sick.PlaybackLoudness / 1200, -0.3) * ANGLES(RAD(-200), RAD(0), RAD(30)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12) - bouncyboi, -0.01) * ANGLES(RAD(20), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12) - bouncyboi, -0.01) * ANGLES(RAD(5), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * ANGLES(RAD(20), RAD(-10 - 2.5 * SIN(SINE / 10)), RAD(20 * COS(SINE / 10))), 1 / Animation_Speed)   
			end
			if MODE == "Ghaster" and ATTACK == false then
				snap = math.random(1,6)
				if snap == 1 then
					Neck.C0 = Clerp(Neck.C0,NECKC0*cf(0,0,0+((1)-1))*angles(math.rad(math.random(-1000,1000)),math.rad(math.random(-1000,100)),math.rad(math.random(-1000,1000))),1/Animation_Speed)
				end
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 2 + 1 * COS(SINE / 18)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * COS(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.35, 0.5 + 0.1 * COS(SINE / 12), 0.2) * ANGLES(RAD(0), RAD(-25), RAD(25 + 8 * COS(SINE / 12))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.35, 0.5 + 0.1 * COS(SINE / 12), 0.2) * ANGLES(RAD(0), RAD(25), RAD(-25 - 8 * COS(SINE / 12))) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.65 - 0.2 * COS(SINE / 12), -0.35) * ANGLES(RAD(-25 + 6 * COS(SINE / 12)), RAD(80), RAD(0)) * ANGLES(RAD(2 * COS(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.2 * COS(SINE / 12), 0) * ANGLES(RAD(-5 + 2 * COS(SINE / 12)), RAD(-80), RAD(0)) * ANGLES(RAD(2 * COS(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
			end
			if MODE == "Undesired" and ATTACK == false then 
				if MRANDOM(1,10) == 1 then
					Neck.C0=Clerp(Torso.Neck.C0,NECKC0*angles(RAD(23 + MRANDOM(-5,5)),RAD(MRANDOM(-5,5)),RAD(22 + MRANDOM(-5,5))),1)
				end
				if math.random(1,8) == 1 then
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(MRANDOM(-87498,12093847)), RAD(MRANDOM(-123456,3746525)), RAD(MRANDOM(-2134567876,98764356))), 0.15 / Animation_Speed)
				end
				if(math.random(1,4)==1)then
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(MRANDOM(-99999999,99999999)), RAD(MRANDOM(-99999999,99999999)), RAD(MRANDOM(-99999999,99999999))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(MRANDOM(-99999999,99999999)), RAD(MRANDOM(-99999999,99999999)), RAD(MRANDOM(-99999999,99999999))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
				end	
				if MRANDOM(1,10) == 1 then
					Neck.C0=Clerp(Torso.Neck.C0,NECKC0*angles(RAD(23 + MRANDOM(-5,5)),RAD(MRANDOM(-5,5)),RAD(22 + MRANDOM(-5,5))),1)
				end
				if(math.random(1,4)==1)then
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(MRANDOM(-99999999,99999999)), RAD(MRANDOM(-99999999,99999999)), RAD(MRANDOM(-99999999,99999999))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(MRANDOM(-99999999,99999999)), RAD(MRANDOM(-99999999,99999999)), RAD(MRANDOM(-99999999,99999999))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
				end	
				if math.random(1,25) == 1 then
					Neck.C0 = Clerp(Neck.C0,NECKC0*CF(0,0,0+((1)-1))*ANGLES(math.rad(math.random(-10000,10000)),math.rad(math.random(-10000,10000)),math.rad(math.random(-10000,10000))),1.5/Animation_Speed)
				end	
				snap = math.random(1,32)
				if snap == 1 then
					Neck.C0 = Clerp(Neck.C0,NECKC0*cf(0,0,0+((1)-1))*angles(math.rad(math.random(-12093487,10000)),math.rad(math.random(-200,10000)),math.rad(math.random(-999999999,10000))),1/Animation_Speed)
				end
				if MRANDOM(1,10) == 1 then
					Neck.C0=Clerp(Torso.Neck.C0,NECKC0*angles(RAD(23 + MRANDOM(-5,5)),RAD(MRANDOM(-5,5)),RAD(22 + MRANDOM(-5,5))),1)
				end	
				local bouncyboi = sick.PlaybackLoudness / 1200
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.2 * SIN(SINE / 12)) * ANGLES(RAD(0+5*COS(sine/12)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(MRANDOM(-25,25)), RAD(0)), 0.15 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 - .1*COS(sine / 16), 0) * ANGLES(RAD(0), RAD(0), RAD(10 - 7.5*Cos(sine/32))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 - .1 * COS(sine / 16), 0) * ANGLES(RAD(0), RAD(0), RAD(-10 + 7.5*Cos(sine/32))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1- 0.2 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1- 0.2 * COS(SINE / 12) , 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)	
				snap = math.random(1,72)
				if snap == 1 then
					CreateSound(363808674,Head,3,1.3,false)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(MRANDOM(-100000-sick.PlaybackLoudness/7,100000+sick.PlaybackLoudness/7)), RAD(MRANDOM(-99999-sick.PlaybackLoudness/7,99999+sick.PlaybackLoudness/7)), RAD(MRANDOM(-200-sick.PlaybackLoudness/7,48375935+sick.PlaybackLoudness/7))), 1 / Animation_Speed) 
				end 
				if MRANDOM(1,20+sick.PlaybackLoudness/7) == 1 then
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(MRANDOM(-90-sick.PlaybackLoudness/7,90+sick.PlaybackLoudness/7)), RAD(MRANDOM(-30-sick.PlaybackLoudness/7,30+sick.PlaybackLoudness/7)), RAD(MRANDOM(-50-sick.PlaybackLoudness/7,50+sick.PlaybackLoudness/7)))* RIGHTSHOULDERC0, 1 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(MRANDOM(-10000-sick.PlaybackLoudness/7,10000+sick.PlaybackLoudness/7)), RAD(MRANDOM(-900-sick.PlaybackLoudness/7,900+sick.PlaybackLoudness/7)), RAD(MRANDOM(-20-sick.PlaybackLoudness/7,20+sick.PlaybackLoudness/7)))* LEFTSHOULDERC0, 1 / Animation_Speed)
				end		   
				if MRANDOM(1, 10) == 1 then
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 + MRANDOM(-25,25) - 4 * COS(SINE / 12)), RAD(MRANDOM(-25,25)), RAD(0)), 1.5 / Animation_Speed)
				end
			end
			if MODE == "Undead" and ATTACK == false then
				if MRANDOM(1,10) == 1 then
					Neck.C0=Clerp(Torso.Neck.C0,NECKC0*angles(RAD(23 + MRANDOM(-5,5)),RAD(MRANDOM(-5,5)),RAD(22 + MRANDOM(-5,5))),1)
				end
				if math.random(1,8) == 1 then
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(MRANDOM(-87498,12093847)), RAD(MRANDOM(-123456,3746525)), RAD(MRANDOM(-2134567876,98764356))), 0.15 / Animation_Speed)
				end		
				if MRANDOM(1,10) == 1 then
					Neck.C0=Clerp(Torso.Neck.C0,NECKC0*angles(RAD(23 + MRANDOM(-5,5)),RAD(MRANDOM(-5,5)),RAD(22 + MRANDOM(-5,5))),1)
				end
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , 0 , 00 + 0.2 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(MRANDOM(-25,25)), RAD(0)), 0.15 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(MRANDOM(-25,25)), RAD(15 - 2.5 * SIN(SINE / 12))) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) *  ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(MRANDOM(-25,25)), RAD(-15- 2.5 * SIN(SINE / 12))) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1- 0.2 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1- 0.2 * COS(SINE / 12) , 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)	
			end
			if MODE == "Undertail - phase 2" and ATTACK == false then
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0+.15*SIN(sine/32)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(40), RAD(-10), RAD(0)), 0.15 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(10+5*SIN(sine/24))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-10-5*SIN(sine/24))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1-.15*SIN(sine/32), 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8+2.5*SIN(sine/32)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1-.15*SIN(sine/32), 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8+2.5*SIN(sine/32)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			end
			if MODE == "Scary" and ATTACK == false then
				if(math.random(1,4)==1)then
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(MRANDOM(-99999999,99999999)), RAD(MRANDOM(-99999999,99999999)), RAD(MRANDOM(-99999999,99999999))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(MRANDOM(-99999999,99999999)), RAD(MRANDOM(-99999999,99999999)), RAD(MRANDOM(-99999999,99999999))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
				end	
				if math.random(1,25) == 1 then
					Neck.C0 = Clerp(Neck.C0,NECKC0*CF(0,0,0+((1)-1))*ANGLES(math.rad(math.random(-10000,10000)),math.rad(math.random(-10000,10000)),math.rad(math.random(-10000,10000))),1.5/Animation_Speed)
				end	
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.1 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0+MRANDOM(-5,5)), RAD(0+MRANDOM(-5,5)), RAD(0+MRANDOM(-5,5))), 0.35 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(MRANDOM(-25,25)), RAD(12)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(20), RAD(-20)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 1 / Animation_Speed)
				if MRANDOM(1,20+sick.PlaybackLoudness/7) == 1 then
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(MRANDOM(-90-sick.PlaybackLoudness/7,90+sick.PlaybackLoudness/7)), RAD(MRANDOM(-30-sick.PlaybackLoudness/7,30+sick.PlaybackLoudness/7)), RAD(MRANDOM(-50-sick.PlaybackLoudness/7,50+sick.PlaybackLoudness/7)))* RIGHTSHOULDERC0, 1 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(MRANDOM(-10000-sick.PlaybackLoudness/7,10000+sick.PlaybackLoudness/7)), RAD(MRANDOM(-900-sick.PlaybackLoudness/7,900+sick.PlaybackLoudness/7)), RAD(MRANDOM(-20-sick.PlaybackLoudness/7,20+sick.PlaybackLoudness/7)))* LEFTSHOULDERC0, 1 / Animation_Speed)
				end
				if(math.random(1,2)==1)then
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(MRANDOM(-99999999,99999999)), RAD(MRANDOM(-99999999,99999999)), RAD(MRANDOM(-99999999,99999999))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(MRANDOM(-99999999,99999999)), RAD(MRANDOM(-99999999,99999999)), RAD(MRANDOM(-99999999,99999999))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
				end	
			end
			if MODE == "guy man" and ATTACK == false then
				snap = math.random(1,32)
				if snap == 1 then
					Neck.C0 = Clerp(Neck.C0,NECKC0*cf(0,0,0+((1)-1))*angles(math.rad(math.random(-12093487,10000)),math.rad(math.random(-200,10000)),math.rad(math.random(-999999999,10000))),1/Animation_Speed)
				end
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, -0.5, 0.3 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(-14), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(45 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.45 * Player_Size, 0.5 * Player_Size, -1 * Player_Size) * ANGLES(RAD(70), RAD(0), RAD(-70)) * ANGLES(RAD(20), RAD(25), RAD(-15)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-35), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.03 * COS(SINE / 12), -0.01) * ANGLES(RAD(-36), RAD(50), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.03 * COS(SINE / 12), -0.01) * ANGLES(RAD(-45), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			end
			if MODE == "Katana" and ATTACK == false then
				if MRANDOM(1,10) == 1 then
					Neck.C0=Clerp(Torso.Neck.C0,NECKC0*angles(RAD(23 + MRANDOM(-5,5)),RAD(MRANDOM(-5,5)),RAD(22 + MRANDOM(-5,5))),1)
				end
				if math.random(1,8) == 1 then
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(MRANDOM(-87498,12093847)), RAD(MRANDOM(-123456,3746525)), RAD(MRANDOM(-2134567876,98764356))), 0.15 / Animation_Speed)
				end		
				if MRANDOM(1,10) == 1 then
					Neck.C0=Clerp(Torso.Neck.C0,NECKC0*angles(RAD(23 + MRANDOM(-5,5)),RAD(MRANDOM(-5,5)),RAD(22 + MRANDOM(-5,5))),1)
				end
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 2 + 1 * COS(SINE / 18)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(MRANDOM(-25,25)), RAD(0)), 0.15 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(MRANDOM(-25,25)), RAD(12)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(MRANDOM(-25,25)), RAD(-12)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(-17 + 9.4 * COS(sine / 26)), RAD(80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -.5, -0.5) * ANGLES(RAD(-22 + 10.8 * COS(sine / 32)), RAD(-80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
				snap = math.random(1,72)
				if snap == 1 then
					CreateSound(363808674,Head,3,1.3,false)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(MRANDOM(-100000-sick.PlaybackLoudness/7,100000+sick.PlaybackLoudness/7)), RAD(MRANDOM(-99999-sick.PlaybackLoudness/7,99999+sick.PlaybackLoudness/7)), RAD(MRANDOM(-200-sick.PlaybackLoudness/7,48375935+sick.PlaybackLoudness/7))), 1 / Animation_Speed) 
				end
				if MRANDOM(1,20+sick.PlaybackLoudness/7) == 1 then
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(MRANDOM(-90-sick.PlaybackLoudness/7,90+sick.PlaybackLoudness/7)), RAD(MRANDOM(-30-sick.PlaybackLoudness/7,30+sick.PlaybackLoudness/7)), RAD(MRANDOM(-50-sick.PlaybackLoudness/7,50+sick.PlaybackLoudness/7)))* RIGHTSHOULDERC0, 1 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(MRANDOM(-10000-sick.PlaybackLoudness/7,10000+sick.PlaybackLoudness/7)), RAD(MRANDOM(-900-sick.PlaybackLoudness/7,900+sick.PlaybackLoudness/7)), RAD(MRANDOM(-20-sick.PlaybackLoudness/7,20+sick.PlaybackLoudness/7)))* LEFTSHOULDERC0, 1 / Animation_Speed)
				end
			end
			if MODE == "HELL" and ATTACK == false then
				if MRANDOM(1,10) == 1 then
					Neck.C0=Clerp(Torso.Neck.C0,NECKC0*angles(RAD(23 + MRANDOM(-5,5)),RAD(MRANDOM(-5,5)),RAD(22 + MRANDOM(-5,5))),1)
				end
				if math.random(1,8) == 1 then
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(MRANDOM(-87498,12093847)), RAD(MRANDOM(-123456,3746525)), RAD(MRANDOM(-2134567876,98764356))), 0.15 / Animation_Speed)
				end
				if(math.random(1,4)==1)then
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(MRANDOM(-99999999,99999999)), RAD(MRANDOM(-99999999,99999999)), RAD(MRANDOM(-99999999,99999999))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(MRANDOM(-99999999,99999999)), RAD(MRANDOM(-99999999,99999999)), RAD(MRANDOM(-99999999,99999999))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
				end		
				if MRANDOM(1,10) == 1 then
					Neck.C0=Clerp(Torso.Neck.C0,NECKC0*angles(RAD(23 + MRANDOM(-5,5)),RAD(MRANDOM(-5,5)),RAD(22 + MRANDOM(-5,5))),1)
				end	
				bouncyboi = sick.PlaybackLoudness / 1200
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0.1, 1 + 0.5 * COS(SINE / 18)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0 , 0 + ((1) - 1)) * ANGLES(RAD(20), RAD(0), RAD(0)), 0.2 / Animation_Speed)	
				RightShoulder.C0 = Clerp(RightShoulder.C0,CF(1.5,0.5+.1*COS(SINE/36),-.3)*ANGLES(RAD(44.1),RAD(0),RAD(-25))*RIGHTSHOULDERC0,1/Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25, 0.5, 0.5) * ANGLES(RAD(-45), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(0.5, -0.9 - 0.1 * COS(SINE / 1), -0.6) * ANGLES(RAD(0), RAD(-10), RAD(0)) * ANGLES(RAD(75), RAD(0), RAD(5)), 0.1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-0.5, 0.1 - 0.1 * COS(SINE / 1), -0.6) * ANGLES(RAD(0), RAD(-10), RAD(0)) * ANGLES(RAD(25), RAD(0), RAD(-10)), 0.1 / Animation_Speed)
				if MRANDOM(1,20+sick.PlaybackLoudness/7) == 1 then
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(MRANDOM(-90-sick.PlaybackLoudness/7,90+sick.PlaybackLoudness/7)), RAD(MRANDOM(-30-sick.PlaybackLoudness/7,30+sick.PlaybackLoudness/7)), RAD(MRANDOM(-50-sick.PlaybackLoudness/7,50+sick.PlaybackLoudness/7)))* RIGHTSHOULDERC0, 1 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(MRANDOM(-10000-sick.PlaybackLoudness/7,10000+sick.PlaybackLoudness/7)), RAD(MRANDOM(-900-sick.PlaybackLoudness/7,900+sick.PlaybackLoudness/7)), RAD(MRANDOM(-20-sick.PlaybackLoudness/7,20+sick.PlaybackLoudness/7)))* LEFTSHOULDERC0, 1 / Animation_Speed)
				end
			end
			if MODE == "meme" and ATTACK == false then 
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , 0 , 00 + 0.2 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(30), RAD(0), RAD(0 + 25 * COS(SINE / 20))), 0.15 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5+ 0.35 * SIN(SINE / 12), 0) * ANGLES(RAD(180), RAD(-15), RAD(0))* RIGHTSHOULDERC0, 0.15 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0.35 * SIN(SINE / 12), 0) * ANGLES(RAD(0), RAD(0), RAD(-10 + 15 * COS(SINE / 12))) * ANGLES(RAD(0), RAD(15), RAD(0)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1- 0.2 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1- 0.2 * COS(SINE / 12) , 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)	
			end
			if MODE == "Undertail - phase 3" and ATTACK == false then 
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 , 0 , 00 + 0.2 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(30), RAD(0), RAD(0 + 25 * COS(SINE / 20))), 0.15 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5+ 0.35 * SIN(SINE / 12), 0) * ANGLES(RAD(180), RAD(-15), RAD(0))* RIGHTSHOULDERC0, 0.15 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0.35 * SIN(SINE / 12), 0) * ANGLES(RAD(0), RAD(0), RAD(-10 + 15 * COS(SINE / 12))) * ANGLES(RAD(0), RAD(15), RAD(0)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1- 0.2 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1- 0.2 * COS(SINE / 12) , 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)	
				HelpfulAnimHandler()
			end
			if MODE == "nightmare" and ATTACK == false then 
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 3 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.4, 0.35, 0.4) * ANGLES(RAD(135), RAD(0), RAD(3)) * ANGLES(RAD(0 - 1.5 * COS(SINE / 15) + 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 - 0.05 * COS(SINE / 15) + 0.05 * SIN(SINE / 15), 0, 0 + 0.05 * COS(SINE / 20)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.8 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.4, 0.35, 0.4) * ANGLES(RAD(15), RAD(0), RAD(12)) * ANGLES(RAD(0 - 1.5 * COS(SINE / 15) + 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1 - 0.05 * COS(SINE / 15) + 0.05 * SIN(SINE / 15), -1 - 0.05 * COS(SINE / 20), -0.01) * ANGLES(RAD(0), RAD(83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.8 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1- 0.2 * COS(SINE / 12) , 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			end
			if MODE == "chill" and ATTACK == false then 
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(-0.5*COS(SINE / 40),0,3-2*COS(SINE / 40))*ANGLES(RAD(-70 + 20 *COS(SINE / 40)),RAD(0),RAD(0)), 1 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-15 + 25*COS(SINE / 40)), RAD(0), RAD(21 + 2.5 * SIN(SINE / 40))), 1 / Animation_Speed) 
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-20 + 40 * COS(SINE / 40)), RAD(0), RAD(15 + 3 * COS(SINE / 40) - 3 * SIN(SINE / 40))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-20 + 40 * COS(SINE / 40)), RAD(0), RAD(-15 + 3 * COS(SINE / 40) + 3 * SIN(SINE / 40))) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(-20+40*COS(SINE / 40)), RAD(80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(-10+40*COS(SINE / 40)), RAD(-80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			end
		elseif Torsovelocity > 5 and hit ~= nil then
			Anim = "Walk"
			if ATTACK == false then
				if MODE == "Snake God" or MODE == "Insecure" or MODE == "Glamour" or MODE == "broken" or MODE == "ghost" or MODE == "guy man" or MODE == "VIS" or MODE == "chill" or MODE == "depressed" or MODE == "meme" or MODE == "Katana" or MODE == "Scary" or MODE == "KARMA" or MODE == "Undead" or MODE == "Undertail - phase 2" then
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.1) * ANGLES(RAD(5), RAD(0), RAD(0)), 0.15 / Animation_Speed)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(MRANDOM(1, 2) - 2.5 * SIN(SINE / 12)), RAD(MRANDOM(1, 2)), RAD(MRANDOM(1, 2))), 1 / Animation_Speed)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.5, 0.5, 0 + 0.2 * math.cos(sine / 12)) * CFrame.Angles(math.rad(20 - 45 * math.cos(sine / 12)), math.rad(0 + 10 * math.cos(sine / 12)), math.rad(0 - 2.5 * math.cos(sine / 12))) * rscp, 0.35 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0 - 0.2 * math.cos(sine / 12)) * CFrame.Angles(math.rad(20 + 45 * math.cos(sine / 12)), math.rad(0 - 10 * math.cos(sine / 12)), math.rad(0 + 2.5 * math.cos(sine / 12))) * lscp, 1 / 3)
					RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1 - 0.15 * COS(SINE / WALKSPEEDVALUE*2), -0.2+ 0.2 * COS(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-15)), 2 / Animation_Speed)
					LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.15 * COS(SINE / WALKSPEEDVALUE*2), -0.2+ -0.2 * COS(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(15)), 2 / Animation_Speed)
					SINE = 0
				elseif MODE == "test" and ATTACK == false then 
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0,0,3 - .5 * math.sin(sine/50)) * CFrame.Angles(math.rad(20),math.rad(0),math.rad(0)),0.7/3)
					Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),0.7/3)
					RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(-41.6-4*math.sin(sine/50)),math.rad(0),math.rad(0)) * RIGHTSHOULDERC0,0.7/3)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(20),math.rad(0),math.rad(-10-10*math.sin(sine/50))) * LEFTSHOULDERC0,0.7/3)
					RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1,-0.01) * CFrame.Angles(math.rad(-20),math.rad(80),math.rad(10+10*math.sin(sine/50))),1/3)
					LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,-0.01) * CFrame.Angles(math.rad(-10),math.rad(-80),math.rad(-10-10*math.sin(sine/50))),1/3)
				elseif MODE == "Dear God" and ATTACK == false then
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1 + 0.5 * COS(SINE / 12)) * ANGLES(RAD(35), RAD(0), RAD(0)), 0.25 / Animation_Speed)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1.1*SIZE) - 1)) * ANGLES(RAD(-25), RAD(0), RAD(0)), 1 / Animation_Speed)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.9, - 0) * ANGLES(RAD(130), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.9, - 0) * ANGLES(RAD(130), RAD(0), RAD(0)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
					RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE, -0.5*SIZE - 0.05*SIZE * COS(SINE / 12), -0.5*SIZE) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
					LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE, -0.8*SIZE - 0.05*SIZE * COS(SINE / 12), -0.01*SIZE) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				elseif MODE == "Ghaster" and ATTACK == false then
					snap = math.random(1,6)
					if snap == 1 then
						Neck.C0 = Clerp(Neck.C0,NECKC0*cf(0,0,0+((1)-1))*angles(math.rad(math.random(-1000,1000)),math.rad(math.random(-1000,100)),math.rad(math.random(-1000,1000))),1/Animation_Speed)
					end
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 2 + 1 * COS(SINE / 18)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * COS(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.55, 0.5, 0.5) * ANGLES(RAD(250), RAD(20), RAD(-80))* RIGHTSHOULDERC0, 1 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.35, 0.5 + 0.1 * COS(SINE / 12), 0.2) * ANGLES(RAD(0), RAD(25), RAD(-25 - 8 * COS(SINE / 12))) * LEFTSHOULDERC0, 1 / Animation_Speed)
					RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.65 - 0.2 * COS(SINE / 12), -0.35) * ANGLES(RAD(-25 + 6 * COS(SINE / 12)), RAD(80), RAD(0)) * ANGLES(RAD(2 * COS(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
					LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.2 * COS(SINE / 12), 0) * ANGLES(RAD(-5 + 2 * COS(SINE / 12)), RAD(-80), RAD(0)) * ANGLES(RAD(2 * COS(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
				elseif MODE == "Undertail - phase 3" or MODE == "kicksher" or MODE == "HELL" and ATTACK == false then
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.1) * ANGLES(RAD(5), RAD(0), RAD(0)), 0.15 / Animation_Speed)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(MRANDOM(-15, 25) - 2.5 * SIN(SINE / 12)), RAD(MRANDOM(-15, 25)), RAD(MRANDOM(-15, 25))), 1 / Animation_Speed)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.55, 0.5, 0.5) * ANGLES(RAD(250), RAD(20), RAD(-80))* RIGHTSHOULDERC0, 1 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0 - 0.2 * math.cos(sine / 12)) * CFrame.Angles(math.rad(20 + 45 * math.cos(sine / 12)), math.rad(0 - 10 * math.cos(sine / 12)), math.rad(0 + 2.5 * math.cos(sine / 12))) * lscp, 1 / 3)
					RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1 - 0.15 * COS(SINE / WALKSPEEDVALUE*2), -0.2+ 0.2 * COS(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-15)), 2 / Animation_Speed)
					LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.15 * COS(SINE / WALKSPEEDVALUE*2), -0.2+ -0.2 * COS(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(15)), 2 / Animation_Speed)
				elseif MODE == "nightmare" and ATTACK == false then 
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 3 / Animation_Speed)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.1, 0.35, 0.4) * ANGLES(RAD(135), RAD(0), RAD(3)) * ANGLES(RAD(0 - 1.5 * COS(SINE / 15) + 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 - 0.05 * COS(SINE / 15) + 0.05 * SIN(SINE / 15), 0, 0 + 0.05 * COS(SINE / 20)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.8 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.4, 0.35, 0.4) * ANGLES(RAD(15), RAD(0), RAD(12)) * ANGLES(RAD(0 - 1.5 * COS(SINE / 15) + 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
					RightHip.C0 = Clerp(RightHip.C0, CF(1 - 0.05 * COS(SINE / 15) + 0.05 * SIN(SINE / 15), -1 - 0.05 * COS(SINE / 20), -0.01) * ANGLES(RAD(0), RAD(83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.8 / Animation_Speed)
					LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 - 0.05 * COS(SINE / 15) + 0.05 * SIN(SINE / 15), -1 - 0.05 * COS(SINE / 20), -0.01) * ANGLES(RAD(0), RAD(-83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.8 / Animation_Speed)	
				elseif MODE == "I A M H A P P Y" or MODE == "Undesired" then
					if MRANDOM(1,10) == 1 then
						Neck.C0=Clerp(Torso.Neck.C0,NECKC0*angles(RAD(23 + MRANDOM(-5,5)),RAD(MRANDOM(-5,5)),RAD(22 + MRANDOM(-5,5))),1)
					end
					if math.random(1,8) == 1 then
						Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(MRANDOM(-87498,12093847)), RAD(MRANDOM(-123456,3746525)), RAD(MRANDOM(-2134567876,98764356))), 0.15 / Animation_Speed)
					end
					if(math.random(1,4)==1)then
						RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(MRANDOM(-99999999,99999999)), RAD(MRANDOM(-99999999,99999999)), RAD(MRANDOM(-99999999,99999999))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
						LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(MRANDOM(-99999999,99999999)), RAD(MRANDOM(-99999999,99999999)), RAD(MRANDOM(-99999999,99999999))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
					end		
					if MRANDOM(1,10) == 1 then
						Neck.C0=Clerp(Torso.Neck.C0,NECKC0*angles(RAD(23 + MRANDOM(-5,5)),RAD(MRANDOM(-5,5)),RAD(22 + MRANDOM(-5,5))),1)
					end	
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.1) * ANGLES(RAD(5), RAD(0), RAD(0)), 0.15 / Animation_Speed)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.5, 0.5, 0 + 0.2 * math.cos(sine / 12)) * CFrame.Angles(math.rad(20 - 45 * math.cos(sine / 12)), math.rad(0 + 10 * math.cos(sine / 12)), math.rad(0 - 2.5 * math.cos(sine / 12))) * rscp, 0.35 / Animation_Speed)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(MRANDOM(1, 2) - 2.5 * SIN(SINE / 12)), RAD(MRANDOM(1, 2)), RAD(MRANDOM(1, 2))), 1 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0 - 0.2 * math.cos(sine / 12)) * CFrame.Angles(math.rad(20 + 45 * math.cos(sine / 12)), math.rad(0 - 10 * math.cos(sine / 12)), math.rad(0 + 2.5 * math.cos(sine / 12))) * lscp, 1 / 3)
					RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1 - 0.15 * COS(SINE / WALKSPEEDVALUE*2), -0.2+ 0.2 * COS(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-15)), 2 / Animation_Speed)
					LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.15 * COS(SINE / WALKSPEEDVALUE*2), -0.2+ -0.2 * COS(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(15)), 2 / Animation_Speed)
				elseif MODE == "fuck" and ATTACK == false then
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1 + 0.5 * COS(SINE / 12)) * ANGLES(RAD(-25 - 3 * SIN(SINE / 12)), RAD(0), RAD(-25)), 0.15 / Animation_Speed)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1.1*SIZE) - 1)) * ANGLES(RAD(23 - 3 * SIN(SINE / 12)), RAD(0), RAD(30)), 1 / Animation_Speed)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.75*SIZE, 0.5*SIZE, -1*SIZE) * ANGLES(RAD(70), RAD(0), RAD(-70)) * ANGLES(RAD(20), RAD(25), RAD(-15)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1*SIZE, 0.2*SIZE, -0.5*SIZE) * ANGLES(RAD(25), RAD(0), RAD(85)) * LEFTSHOULDERC0, 0.4 / Animation_Speed)
					RightHip.C0 = Clerp(RightHip.C0, CF(1*SIZE, -0.5*SIZE - 0.05*SIZE * COS(SINE / 12), -0.5*SIZE) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
					LeftHip.C0 = Clerp(LeftHip.C0, CF(-1*SIZE, -0.8*SIZE - 0.05*SIZE * COS(SINE / 12), -0.01*SIZE) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				end
			end
			if MODE == "Snake God" then
				sick.SoundId = "rbxassetid://5801951770"
			end
			if MODE == "Undead" then
				sick.SoundId = "rbxassetid://684447468"
			end
			if MODE == "Undertail - phase 3" then
				sick.SoundId = "rbxassetid://5274177517"
			end
		end
	end
end
