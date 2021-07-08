local script = game:GetObjects("rbxassetid://5914288751")[1]

local Plr = game.Players.LocalPlayer

local MainFdr = Instance.new("Folder")
MainFdr.Parent = Plr.Character

local Mouse = Instance.new("RemoteEvent")
Mouse.Name = "Mouse"
Mouse.Parent = MainFdr
local MouseInformation = script.MInfo
MouseInformation.Parent = MainFdr

local SyncingFolder = Instance.new("Folder")
SyncingFolder.Name = "ServerSync"
SyncingFolder.Parent = MainFdr

local SyncingFolder = Instance.new("Folder")
SyncingFolder.Name = "ServerSync"
SyncingFolder.Parent = MainFdr

local mPos = Instance.new("CFrameValue")
mPos.Name = "mHit"
mPos.Parent = MainFdr

local mTarget = Instance.new("ObjectValue")
mTarget.Name = "mTarget"
mTarget.Parent = MainFdr

local LoopType = Instance.new("StringValue")
LoopType.Name = "LoopingSpeed"
LoopType.Value = "Custom"
LoopType.Parent = MainFdr

local CurrentModeRem = Instance.new("RemoteEvent")
CurrentModeRem.Name = "CurModeRemote"
CurrentModeRem.Parent = MainFdr

local CurrentModeVal = Instance.new("StringValue")
CurrentModeVal.Name = "CurModeVal"
CurrentModeVal.Value = "Corrupt"
CurrentModeVal.Parent = MainFdr

local MoveType = Instance.new("StringValue")
MoveType.Name = "MovingType"
MoveType.Value = "Smooth"
MoveType.Parent = MainFdr

local Movement = Instance.new("RemoteEvent")
Movement.Name = "MovingEvent"
Movement.Parent = MainFdr

local DamageRemote = Instance.new("RemoteEvent")
DamageRemote.Name = "DamagerRemote"
DamageRemote.Parent = MainFdr

local WeldRemote = Instance.new("RemoteFunction")
WeldRemote.Name = "WeldRemote"
WeldRemote.Parent = MainFdr

local FinishRemote = Instance.new("RemoteEvent")
FinishRemote.Name = "EndRemote"
FinishRemote.Parent = MainFdr
local LoopType = Instance.new("StringValue")
LoopType.Name = "LoopingSpeed"
LoopType.Value = "Custom"
LoopType.Parent = MainFdr

local CurrentModeRem = Instance.new("RemoteEvent")
CurrentModeRem.Name = "CurModeRemote"
CurrentModeRem.Parent = MainFdr

local CurrentModeVal = Instance.new("StringValue")
CurrentModeVal.Name = "CurModeVal"
CurrentModeVal.Value = "Corrupt"
CurrentModeVal.Parent = MainFdr

local MoveType = Instance.new("StringValue")
MoveType.Name = "MovingType"
MoveType.Value = "Smooth"
MoveType.Parent = MainFdr

local Movement = Instance.new("RemoteEvent")
Movement.Name = "MovingEvent"
Movement.Parent = MainFdr

local DamageRemote = Instance.new("RemoteEvent")
DamageRemote.Name = "DamagerRemote"
DamageRemote.Parent = MainFdr

local WeldRemote = Instance.new("RemoteFunction")
WeldRemote.Name = "WeldRemote"
WeldRemote.Parent = MainFdr

local FinishRemote = Instance.new("RemoteEvent")
FinishRemote.Name = "EndRemote"
FinishRemote.Parent = MainFdr

--[[ Functions -- 

-- SAZERENOS' ARTIFICIAL HEARTBEAT	--]]
Frame_Speed = 1 / 60 -- (1 / 30) OR (1 / 60)

AHB = Instance.new("BindableEvent", script)
AHB.Name = "AHB"

script:WaitForChild("AHB")

frame = Frame_Speed
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
script.AHB:Fire()

game:GetService("RunService").Heartbeat:connect(function(s, p)
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			script.AHB:Fire()
			lastframe = tick()
		else
			for i = 1, math.floor(tf / frame) do
				script.AHB:Fire()
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

function Swait(NUMBER)
		if NUMBER == 0 or NUMBER == nil then
		AHB.Event:wait()
	else
		for i = 1, NUMBER do
			AHB.Event:wait()
		end
	end
end

local newWeld=function(name,p0,p1,c0,c1)
	local w=Instance.new('Weld',p0)
	w.Name=name
	w.Part0=p0
	w.Part1=p1
	w.C0=c0
	w.C1=c1
	return w
end
local MainFolder = Plr.Character.Folder
local Player = game:GetService("Players").LocalPlayer
local lplr = game:GetService("Players").LocalPlayer
local SyncFolder = MainFolder.ServerSync
local LoopType = MainFolder.LoopingSpeed
local StopRemote = MainFolder.EndRemote
local DamageRemote = MainFolder.DamagerRemote
local Mover = MainFolder.MovingEvent
local MoverSpeed = MainFolder.MovingType
local CurMode = MainFolder.CurModeRemote
local ModeVal = MainFolder.CurModeVal
local lMouse = Player:GetMouse()
local HB = game:GetService("RunService").Heartbeat
local Remote = MainFolder.Mouse
local Remote2 = MainFolder.MInfo



local Mouse = Plr:GetMouse()
	


--//===================================================\\
--||       Edit By Godcat567     Template By Shackluster
--\\===================================================//

Character = Player.Character
PlayerGui = Player.PlayerGui
Cam = workspace.CurrentCamera
Backpack = Player.Backpack
Humanoid = Character.Humanoid
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
local TIME = 0
local sick = Instance.new("Sound",Torso)
sick.SoundId = "rbxassetid://2685404504"
sick.PlaybackSpeed = .8
sick.EmitterSize = 66666666
sick.MaxDistance = 66666666
sick.Volume = 3
sick.Looped = true
sick.Parent = Torso
sick:resume()

IT = Instance.new
CF = CFrame.new
VT = Vector3.new
RAD = math.rad
C3 = Color3.new
UD2 = UDim2.new
BRICKC = BrickColor.new
ANGLES = CFrame.Angles
EULER = CFrame.fromEulerAnglesXYZ
COS = math.cos
ACOS = math.acos
SIN = math.sin
ASIN = math.asin
ABS = math.abs
MRANDOM = math.random
FLOOR = math.floor


--Lunekoo's Code
radian = math.rad
random = math.random
Vec3 = Vector3.new
Inst = Instance.new
cFrame = CFrame.new
Euler = CFrame.fromEulerAnglesXYZ
vt = Vector3.new
bc = BrickColor.new
br = BrickColor.random
it = Instance.new
cf = CFrame.new
angles = CFrame.Angles
Cf = CFrame.new
Cos = math.cos
Sin = math.sin
Abs = math.abs
Rad = math.rad
--//=================================\\
--|| 	      USEFUL VALUES
--\\=================================//

Animation_Speed = 3
Frame_Speed = 1 / 60 -- (1 / 30) OR (1 / 60)
local Speed = 20
local ROOTC0 = CF(0, 0, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local NECKC0 = CF(0, 1, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local RIGHTSHOULDERC0 = CF(-0.5, 0, 0) * ANGLES(RAD(0), RAD(90), RAD(0))
local LEFTSHOULDERC0 = CF(0.5, 0, 0) * ANGLES(RAD(0), RAD(-90), RAD(0))
local DAMAGEMULTIPLIER = 1
local ANIM = "Idle"
local ATTACK = false
local EQUIPPED = false
local HOLD = false
local COMBO = 1
local Rooted = false
local SINE = 0
local sine = 0
local vissine = 0
local KEYHOLD = false
local CHANGE = 2 / Animation_Speed
local WALKINGANIM = false
local VALUE1 = false
local VALUE2 = false
local WEAPONGUI = script.killtimeGUI
WEAPONGUI.Parent = Player.PlayerGui
WEAPONGUI.Enabled = true
local Weapon = IT("Model")
local InsanityGun = IT("Model")
InsanityGun.Name = "Crazy Gunner"
local Bnsh = IT("Model")
Bnsh.Name = "Damage & Banish Gun"
local Effects = IT("Folder", Weapon)
Effects.Name = "Effects"
local UNANCHOR = true
local TOBANISH = {}
local TAIL = {}
local VSONGS = {322621962,569026863,502771070,408862087,1471935327,236336857,2280063143,334259331,344685843,1479420512,297754476,591661590,1571736139,2988953773,130768805,2516100492,580535766,213546066,555947343,394236634,195822354,224584376,1576288222,199265353}
local NK = {271068069,247967952,265024602,252591491,252591097,316039490,1222970152,1222970152}
local mde = "Corrupt"
local Hue = 0
AntiBullet = true


--//=================================\\
--|| SAZERENOS' ARTIFICIAL HEARTBEAT
--\\=================================//

ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "ArtificialHB"

script:WaitForChild("ArtificialHB")

frame = Frame_Speed
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
script.ArtificialHB:Fire()

game:GetService("RunService").Heartbeat:connect(function(s, p)
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			script.ArtificialHB:Fire()
			lastframe = tick()
		else
			for i = 1, math.floor(tf / frame) do
				script.ArtificialHB:Fire()
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

--//=================================\\
--\\=================================//

--//=================================\\
--||         RAINBOW FUNCTION
--\\=================================//
local cR=255
local cG=0
local cB=0
local flg5=1 local omgidk=1
local add=15
game:GetService("RunService").Stepped:connect(function()
	if omgidk>10000 then omgidk=0 end
	omgidk=omgidk+1
	if cR>=255 then flg5=1 end
	if cG>=255 then flg5=2 end
	if cB>=255 then flg5=3 end
	if flg5==1 then cR=cR-add cG=cG+add end
	if flg5==2 then cG=cG-add cB=cB+add end
	if flg5==3 then cB=cB-add cR=cR+add end
	color=Color3.fromRGB(cR,cG,cB)
end)

--//=================================\\
--|| 	      SOME FUNCTIONS
--\\=================================//

function Raycast(POSITION, DIRECTION, RANGE, IGNOREDECENDANTS)
	return workspace:FindPartOnRay(Ray.new(POSITION, DIRECTION.unit * RANGE), IGNOREDECENDANTS)
end

function PositiveAngle(NUMBER)
	if NUMBER >= 0 then
		NUMBER = 0
	end
	return NUMBER
end

function NegativeAngle(NUMBER)
	if NUMBER <= 0 then
		NUMBER = 0
	end
	return NUMBER
end

function Swait(NUMBER)
	if NUMBER == 0 or NUMBER == nil then
		ArtificialHB.Event:wait()
	else
		for i = 1, NUMBER do
			ArtificialHB.Event:wait()
		end
	end
end

function CreateMesh(MESH, PARENT, MESHTYPE, MESHID, TEXTUREID, SCALE, OFFSET)
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

	local function weldBetween(a, b)
	    local weldd = Instance.new("ManualWeld")
	    weldd.Part0 = a
	    weldd.Part1 = b
	    weldd.C0 = CFrame.new()
	    weldd.C1 = b.CFrame:inverse() * a.CFrame
	    weldd.Parent = a
	    return weldd
	end


function QuaternionFromCFrame(cf)
	local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components()
	local trace = m00 + m11 + m22
	if trace > 0 then 
		local s = math.sqrt(1 + trace)
		local recip = 0.5 / s
		return (m21 - m12) * recip, (m02 - m20) * recip, (m10 - m01) * recip, s * 0.5
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
			return 0.5 * s, (m10 + m01) * recip, (m20 + m02) * recip, (m21 - m12) * recip
		elseif i == 1 then
			local s = math.sqrt(m11 - m22 - m00 + 1)
			local recip = 0.5 / s
			return (m01 + m10) * recip, 0.5 * s, (m21 + m12) * recip, (m02 - m20) * recip
		elseif i == 2 then
			local s = math.sqrt(m22 - m00 - m11 + 1)
			local recip = 0.5 / s return (m02 + m20) * recip, (m12 + m21) * recip, 0.5 * s, (m10 - m01) * recip
		end
	end
end
 
function QuaternionToCFrame(px, py, pz, x, y, z, w)
	local xs, ys, zs = x + x, y + y, z + z
	local wx, wy, wz = w * xs, w * ys, w * zs
	local xx = x * xs
	local xy = x * ys
	local xz = x * zs
	local yy = y * ys
	local yz = y * zs
	local zz = z * zs
	return CFrame.new(px, py, pz, 1 - (yy + zz), xy - wz, xz + wy, xy + wz, 1 - (xx + zz), yz - wx, xz - wy, yz + wx, 1 - (xx + yy))
end
 
function QuaternionSlerp(a, b, t)
	local cosTheta = a[1] * b[1] + a[2] * b[2] + a[3] * b[3] + a[4] * b[4]
	local startInterp, finishInterp;
	if cosTheta >= 0.0001 then
		if (1 - cosTheta) > 0.0001 then
			local theta = ACOS(cosTheta)
			local invSinTheta = 1 / SIN(theta)
			startInterp = SIN((1 - t) * theta) * invSinTheta
			finishInterp = SIN(t * theta) * invSinTheta
		else
			startInterp = 1 - t
			finishInterp = t
		end
	else
		if (1 + cosTheta) > 0.0001 then
			local theta = ACOS(-cosTheta)
			local invSinTheta = 1 / SIN(theta)
			startInterp = SIN((t - 1) * theta) * invSinTheta
			finishInterp = SIN(t * theta) * invSinTheta
		else
			startInterp = t - 1
			finishInterp = t
		end
	end
	return a[1] * startInterp + b[1] * finishInterp, a[2] * startInterp + b[2] * finishInterp, a[3] * startInterp + b[3] * finishInterp, a[4] * startInterp + b[4] * finishInterp
end

function Clerp(a, b, t)
	local qa = {QuaternionFromCFrame(a)}
	local qb = {QuaternionFromCFrame(b)}
	local ax, ay, az = a.x, a.y, a.z
	local bx, by, bz = b.x, b.y, b.z
	local _t = 1 - t
	return QuaternionToCFrame(_t * ax + t * bx, _t * ay + t * by, _t * az + t * bz, QuaternionSlerp(qa, qb, t))
end

function CreateFrame(PARENT, TRANSPARENCY, BORDERSIZEPIXEL, POSITION, SIZE, COLOR, BORDERCOLOR, NAME)
	local frame = IT("Frame")
	frame.BackgroundTransparency = TRANSPARENCY
	frame.BorderSizePixel = BORDERSIZEPIXEL
	frame.Position = POSITION
	frame.Size = SIZE
	frame.BackgroundColor3 = COLOR
	frame.BorderColor3 = BORDERCOLOR
	frame.Name = NAME
	frame.Parent = PARENT
	return frame
end

function CreateLabel(PARENT, TEXT, TEXTCOLOR, TEXTFONTSIZE, TEXTFONT, TRANSPARENCY, BORDERSIZEPIXEL, STROKETRANSPARENCY, NAME)
	local label = IT("TextLabel")
	label.BackgroundTransparency = 1
	label.Size = UD2(1, 0, 1, 0)
	label.Position = UD2(0, 0, 0, 0)
	label.TextColor3 = TEXTCOLOR
	label.TextStrokeTransparency = STROKETRANSPARENCY
	label.TextTransparency = TRANSPARENCY
	label.FontSize = TEXTFONTSIZE
	label.Font = TEXTFONT
	label.BorderSizePixel = BORDERSIZEPIXEL
	label.TextScaled = false
	label.Text = TEXT
	label.Name = NAME
	label.Parent = PARENT
	return label
end

function NoOutlines(PART)
	PART.TopSurface, PART.BottomSurface, PART.LeftSurface, PART.RightSurface, PART.FrontSurface, PART.BackSurface = 10, 10, 10, 10, 10, 10
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

local S = IT("Sound")
function CreateSound(ID, PARENT, VOLUME, PITCH, DOESLOOP)
	local NEWSOUND = nil
	coroutine.resume(coroutine.create(function()
		NEWSOUND = S:Clone()
		NEWSOUND.Parent = PARENT
		NEWSOUND.Volume = VOLUME
		NEWSOUND.Pitch = PITCH
		NEWSOUND.SoundId = "http://www.roblox.com/asset/?id="..ID
		NEWSOUND:play()
		if DOESLOOP == true then
			NEWSOUND.Looped = true
		else
			repeat wait(1) until NEWSOUND.Playing == false or NEWSOUND.Parent ~= PARENT
			NEWSOUND:remove()
		end
	end))
	return NEWSOUND
end

function CFrameFromTopBack(at, top, back)
	local right = top:Cross(back)
	return CF(at.x, at.y, at.z, right.x, top.x, back.x, right.y, top.y, back.y, right.z, top.z, back.z)
end

--WACKYEFFECT({EffectType = "", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = CF(), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,1,1), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
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
			MSH = CreateMesh("SpecialMesh", EFFECT, "Sphere", "", "", SIZE, VT(0,0,0))
		elseif TYPE == "Block" then
			MSH = IT("BlockMesh",EFFECT)
			MSH.Scale = VT(SIZE.X,SIZE.X,SIZE.X)
		elseif TYPE == "Wave" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "20329976", "", SIZE, VT(0,0,-SIZE.X/8))
		elseif TYPE == "Ring" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "559831844", "", VT(SIZE.X,SIZE.X,0.1), VT(0,0,0))
		elseif TYPE == "Slash" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "662586858", "", VT(SIZE.X/10,0,SIZE.X/10), VT(0,0,0))
		elseif TYPE == "Round Slash" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "662585058", "", VT(SIZE.X/10,0,SIZE.X/10), VT(0,0,0))
		elseif TYPE == "Swirl" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "1051557", "", SIZE, VT(0,0,0))
		elseif TYPE == "Skull" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "4770583", "", SIZE, VT(0,0,0))
		elseif TYPE == "Crystal" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "9756362", "", SIZE, VT(0,0,0))
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

function SpawnTrail(FROM,TO,BIG)
	local TRAIL = CreatePart(3, Effects, "Neon", 0, 0.5, "Really black", "Trail", VT(0,0,0))
	MakeForm(TRAIL,"Cyl")
	local DIST = (FROM - TO).Magnitude
	if BIG == true then
		TRAIL.Size = VT(0.5,DIST,0.5)
	else
		TRAIL.Size = VT(0.25,DIST,0.25)
	end
	TRAIL.CFrame = CF(FROM, TO) * CF(0, 0, -DIST/2) * ANGLES(RAD(90),RAD(0),RAD(0))
	coroutine.resume(coroutine.create(function()
		for i = 1, 5 do
			Swait()
			TRAIL.Transparency = TRAIL.Transparency + 0.1
		end
		TRAIL:remove()
	end))
end

function SpawnTrail2(FROM2,TO2,BIG2)
	local TRAIL = CreatePart(3, Effects, "Neon", 0, 0.5, BrickColor.Random(), "Trail", VT(0,0,0))
	MakeForm(TRAIL,"Cyl")
	local DIST = (FROM2 - TO2).Magnitude
	if BIG2 == true then
		TRAIL.Size = VT(5,DIST,5)
	else
		TRAIL.Size = VT(5,DIST,5)
	end
	TRAIL.CFrame = CF(FROM2, TO2) * CF(0, 0, -DIST/2) * ANGLES(RAD(90),RAD(0),RAD(0))
	coroutine.resume(coroutine.create(function()
		for i = 1, 5 do
			Swait()
			TRAIL.Transparency = TRAIL.Transparency + 0.1
		end
		TRAIL:remove()
	end))
end
Debris = game:GetService("Debris")

function CastProperRay(StartPos, EndPos, Distance, Ignore)
	local DIRECTION = CF(StartPos,EndPos).lookVector
	return Raycast(StartPos, DIRECTION, Distance, Ignore)
end

function turnto(position)
	RootPart.CFrame=CFrame.new(RootPart.CFrame.p,VT(position.X,RootPart.Position.Y,position.Z)) * CFrame.new(0, 0, 0)
end

--//=================================\\
--||	     WEAPON CREATION
--\\=================================//
local LASTPART = Head
for i = 1, 40 do
	local MATH = (1-(i/25))
	if LASTPART == Head then
		local Horn = CreatePart(3, Character, "Neon", 0, 0, "Dirt brown", "Horn", VT(0.25*MATH,0.25,0.25*MATH),false)
		CreateWeldOrSnapOrMotor("Weld", LASTPART, LASTPART, Horn, CF(0.3, 0.7, -0.35) * ANGLES(RAD(-55), RAD(15), RAD(-15)), CF(0, 0, 0))
		LASTPART = Horn
		coroutine.resume(coroutine.create(function()
		while true do
		Swait()
	    wait()
		if mde == "Corrupt" then	
		local val = MRANDOM(1,255)
		Horn.Color = Color3.fromRGB(val,val,val)
		elseif mde == "Relaxed" then
		Horn.Color = color
		elseif mde == "Insanity" or mde == "krma" then
		Horn.Color = BrickColor.Random().Color
		elseif mde == "Vis" or mde == 'poisoned' then
		Horn.Color = Color3.fromRGB(0+170*sick.PlaybackLoudness/1000,0,0+170*sick.PlaybackLoudness/1000)
		elseif mde == "Sit" then
		Horn.Color = Color3.fromHSV(Hue/360,1,math.clamp(sick.PlaybackLoudness/950,0,1))
		elseif mde == 'error' then
		Horn.Color = Color3.fromRGB(0,math.random(0,255),0)
		elseif mde == 'nebula' or mde == 'edgialization' or mde == 'Geno' then
		Horn.Color = Color3.fromRGB(math.random(0,255),0,0)
		elseif mde == "???" then
		Horn.Color = Color3.fromRGB(0,0,0+178*sick.PlaybackLoudness/100)
		elseif mde == 'Rev' or mde == 'unholy' then
		Horn.Color = Color3.fromRGB(0+178*sick.PlaybackLoudness/100,0,0)
		elseif mde == 'mnlght' then
		Horn.Color = Color3.fromRGB(0,0+89*sick.PlaybackLoudness/100,0+18*sick.PlaybackLoudness/100)
		elseif mde == 'death' then
		Horn.Color = C3(98/255 + sick.PlaybackLoudness/1000, 37/255 + sick.PlaybackLoudness/1000, 209/255 + sick.PlaybackLoudness/1000)
		elseif mde == 'uncolored' or mde == 'unknown' or mde == 'depressed' then
		Horn.Color = C3(math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500))
		end
		end
		end))
	else
		local Horn = CreatePart(3, Character, "Neon", 0, 0, "Dirt brown", "Horn", VT(0.25*MATH,0.25,0.25*MATH),false)
		CreateWeldOrSnapOrMotor("Weld", LASTPART, LASTPART, Horn, CF(0, Horn.Size.Y/1.8, 0) * ANGLES(RAD(6), RAD(-2.5), RAD(0)), CF(0, 0, 0))
		LASTPART = Horn
		coroutine.resume(coroutine.create(function()
		while true do
		Swait()
		if mde == "Corrupt" then	
		local val = MRANDOM(1,255)
		Horn.Color = Color3.fromRGB(val,val,val)
		elseif mde == "Relaxed" then
		Horn.Color = color
		elseif mde == "Insanity" or mde == "krma" then
		Horn.Color = BrickColor.Random().Color
		elseif mde == "Vis" or mde == 'poisoned' then
		Horn.Color = Color3.fromRGB(0+170*sick.PlaybackLoudness/1000,0,0+170*sick.PlaybackLoudness/1000)
		elseif mde == "Sit" then
		Horn.Color = Color3.fromHSV(Hue/360,1,math.clamp(sick.PlaybackLoudness/950,0,1))
		elseif mde == 'error' then
		Horn.Color = Color3.fromRGB(0,math.random(0,255),0)
		elseif mde == 'nebula' or mde == 'edgialization' or mde == 'Geno' then
		Horn.Color = Color3.fromRGB(math.random(0,255),0,0)
		elseif mde == "???" then
		Horn.Color = Color3.fromRGB(0,0,0+178*sick.PlaybackLoudness/100)
		elseif mde == 'Rev' or mde == 'unholy' then
		Horn.Color = Color3.fromRGB(0+178*sick.PlaybackLoudness/100,0,0)
		elseif mde == 'mnlght' then
		Horn.Color = Color3.fromRGB(0,0+89*sick.PlaybackLoudness/100,0+18*sick.PlaybackLoudness/100)
		elseif mde == 'death' then
		Horn.Color = C3(98/255 + sick.PlaybackLoudness/1000, 37/255 + sick.PlaybackLoudness/1000, 209/255 + sick.PlaybackLoudness/1000)
		elseif mde == 'uncolored' or mde == 'unknown' or mde == 'depressed' then
		Horn.Color = C3(math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500))
		end
		end
		end))
	end
end
local LASTPART = Head
for i = 1, 40 do
	local MATH = (1-(i/25))
	if LASTPART == Head then
		local Horn = CreatePart(3, Character, "Neon", 0, 0, "Dirt brown", "Horn", VT(0.25*MATH,0.25,0.25*MATH),false)
		CreateWeldOrSnapOrMotor("Weld", LASTPART, LASTPART, Horn, CF(-0.3, 0.7, -0.35) * ANGLES(RAD(-55), RAD(-15), RAD(15)), CF(0, 0, 0))
		LASTPART = Horn
		coroutine.resume(coroutine.create(function()
		while true do
		Swait()
		if mde == "Corrupt" then	
		local val = MRANDOM(1,255)
		Horn.Color = Color3.fromRGB(val,val,val)
		elseif mde == "Relaxed" then
		Horn.Color = color
		elseif mde == "Insanity" or mde == "krma" then
		Horn.Color = BrickColor.Random().Color
		elseif mde == "Vis" or mde == 'poisoned' then
		Horn.Color = Color3.fromRGB(0+170*sick.PlaybackLoudness/1000,0,0+170*sick.PlaybackLoudness/1000)
		elseif mde == "Sit" then
		Horn.Color = Color3.fromHSV(Hue/360,1,math.clamp(sick.PlaybackLoudness/950,0,1))
		elseif mde == 'error' then
		Horn.Color = Color3.fromRGB(0,math.random(0,255),0)
		elseif mde == 'nebula' or mde == 'edgialization' or mde == 'Geno' then
		Horn.Color = Color3.fromRGB(math.random(0,255),0,0)
		elseif mde == "???" then
		Horn.Color = Color3.fromRGB(0,0,0+178*sick.PlaybackLoudness/100)
		elseif mde == 'Rev' or mde == 'unholy' then
		Horn.Color = Color3.fromRGB(0+178*sick.PlaybackLoudness/100,0,0)
		elseif mde == 'mnlght' then
		Horn.Color = Color3.fromRGB(0,0+89*sick.PlaybackLoudness/100,0+18*sick.PlaybackLoudness/100)
		elseif mde == 'death' then
		Horn.Color = C3(98/255 + sick.PlaybackLoudness/1000, 37/255 + sick.PlaybackLoudness/1000, 209/255 + sick.PlaybackLoudness/1000)
		elseif mde == 'uncolored' or mde == 'unknown' or mde == 'depressed' then
		Horn.Color = C3(math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500))
		end
		end
		end))
	else
		local Horn = CreatePart(3, Character, "Neon", 0, 0, "Dirt brown", "Horn", VT(0.25*MATH,0.25,0.25*MATH),false)
		CreateWeldOrSnapOrMotor("Weld", LASTPART, LASTPART, Horn, CF(0, Horn.Size.Y/1.8, 0) * ANGLES(RAD(6), RAD(2.5), RAD(0)), CF(0, 0, 0))
		LASTPART = Horn
		coroutine.resume(coroutine.create(function()
		while true do
		Swait()
		if mde == "Corrupt" then	
		local val = MRANDOM(1,255)
		Horn.Color = Color3.fromRGB(val,val,val)
		elseif mde == "Relaxed" then
		Horn.Color = color
		elseif mde == "Insanity" or mde == "krma" then
		Horn.Color = BrickColor.Random().Color
		elseif mde == "Vis" or mde == 'poisoned' then
		Horn.Color = Color3.fromRGB(0+170*sick.PlaybackLoudness/1000,0,0+170*sick.PlaybackLoudness/1000)
		elseif mde == "Sit" then
		Horn.Color = Color3.fromHSV(Hue/360,1,math.clamp(sick.PlaybackLoudness/950,0,1))
		elseif mde == 'error' then
		Horn.Color = Color3.fromRGB(0,math.random(0,255),0)
		elseif mde == 'nebula' or mde == 'edgialization' or mde == 'Geno' then
		Horn.Color = Color3.fromRGB(math.random(0,255),0,0)
		elseif mde == "???" then
		Horn.Color = Color3.fromRGB(0,0,0+178*sick.PlaybackLoudness/100)
		elseif mde == 'Rev' or mde == 'unholy' then
		Horn.Color = Color3.fromRGB(0+178*sick.PlaybackLoudness/100,0,0)
		elseif mde == 'mnlght' then
		Horn.Color = Color3.fromRGB(0,0+89*sick.PlaybackLoudness/100,0+18*sick.PlaybackLoudness/100)
		elseif mde == 'death' then
		Horn.Color = C3(98/255 + sick.PlaybackLoudness/1000, 37/255 + sick.PlaybackLoudness/1000, 209/255 + sick.PlaybackLoudness/1000)
		elseif mde == 'uncolored' or mde == 'unknown' or mde == 'depressed' then
		Horn.Color = C3(math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500))
		end
		end
		end))
	end
end

local LASTPART = Torso
for i = 1, 45 do
	local MATH = 1 - i / 60
	if LASTPART == Torso then
		local Tail = CreatePart(3, Character, "Neon", 0, 0, "New Yeller", "Tail", VT(0.25 * MATH, 0.25, 0.25 * MATH), false)
		local WLD = CreateWeldOrSnapOrMotor("Weld", LASTPART, LASTPART, Tail, CF(0, -0.75, 0.5) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
		LASTPART = Tail
		coroutine.resume(coroutine.create(function()
		while true do
		Swait()
		if mde == "Corrupt" then	
		local val = MRANDOM(1,255)
		Tail.Color = Color3.fromRGB(val,val,val)
		elseif mde == "Relaxed" then
		Tail.Color = color
		elseif mde == "Insanity" or mde == "krma" then
		Tail.Color = BrickColor.Random().Color
		elseif mde == "Vis" or mde == 'poisoned' then
		Tail.Color = Color3.fromRGB(0+170*sick.PlaybackLoudness/1000,0,0+170*sick.PlaybackLoudness/1000)
		elseif mde == "Sit" then
		Tail.Color = Color3.fromHSV(Hue/360,1,math.clamp(sick.PlaybackLoudness/950,0,1))
		elseif mde == 'error' then
		Tail.Color = Color3.fromRGB(0,math.random(0,255),0)
		elseif mde == 'nebula' or mde == 'edgialization' or mde == 'Geno' then
		Tail.Color = Color3.fromRGB(math.random(0,255),0,0)
		elseif mde == "???" then
		Tail.Color = Color3.fromRGB(0,0,0+178*sick.PlaybackLoudness/100)
		elseif mde == 'Rev' or mde == 'unholy' then
		Tail.Color = Color3.fromRGB(0+178*sick.PlaybackLoudness/100,0,0)
		elseif mde == 'mnlght' then
		Tail.Color = Color3.fromRGB(0,0+89*sick.PlaybackLoudness/100,0+18*sick.PlaybackLoudness/100)
		elseif mde == 'death' then
		Tail.Color = C3(98/255 + sick.PlaybackLoudness/1000, 37/255 + sick.PlaybackLoudness/1000, 209/255 + sick.PlaybackLoudness/1000)
		elseif mde == 'uncolored' or mde == 'unknown' or mde == 'depressed' then
		Tail.Color = C3(math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500))
		end
		end
		end))
		table.insert(TAIL, WLD)
	else
		local Tail = CreatePart(3, Character, "Neon", 0, 0, "New Yeller", "Tail", VT(0.25 * MATH, 0.25, 0.25 * MATH), false)
		local WLD = CreateWeldOrSnapOrMotor("Weld", LASTPART, LASTPART, Tail, CF(0, Tail.Size.Y / 2, 0) * ANGLES(RAD(-1.2), RAD(0), RAD(0)), CF(0, 0, 0))
		LASTPART = Tail
		coroutine.resume(coroutine.create(function()
		while true do
		Swait()
		if mde == "Corrupt" then	
		local val = MRANDOM(1,255)
		Tail.Color = Color3.fromRGB(val,val,val)
		elseif mde == "Relaxed" then
		Tail.Color = color
		elseif mde == "Insanity" or mde == "krma" then
		Tail.Color = BrickColor.Random().Color
		elseif mde == "Vis" or mde == 'poisoned' then
		Tail.Color = Color3.fromRGB(0+170*sick.PlaybackLoudness/1000,0,0+170*sick.PlaybackLoudness/1000)
		elseif mde == "Sit" then
		Tail.Color = Color3.fromHSV(Hue/360,1,math.clamp(sick.PlaybackLoudness/950,0,1))
		elseif mde == 'error' then
		Tail.Color = Color3.fromRGB(0,math.random(0,255),0)
		elseif mde == 'nebula' or mde == 'edgialization' or mde == 'Geno' then
		Tail.Color = Color3.fromRGB(math.random(0,255),0,0)
		elseif mde == "???" then
		Tail.Color = Color3.fromRGB(0,0,0+178*sick.PlaybackLoudness/100)
		elseif mde == 'Rev' or mde == 'unholy' then
		Tail.Color = Color3.fromRGB(0+178*sick.PlaybackLoudness/100,0,0)
		elseif mde == 'mnlght' then
		Tail.Color = Color3.fromRGB(0,0+89*sick.PlaybackLoudness/100,0+18*sick.PlaybackLoudness/100)
		elseif mde == 'death' then
		Tail.Color = C3(98/255 + sick.PlaybackLoudness/1000, 37/255 + sick.PlaybackLoudness/1000, 209/255 + sick.PlaybackLoudness/1000)
		elseif mde == 'uncolored' or mde == 'unknown' or mde == 'depressed' then
		Tail.Color = C3(math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500))
		end
		end
		end))
		table.insert(TAIL, WLD)
	end
end



local val = MRANDOM(1,255)
local Particle = IT("ParticleEmitter",nil)
Particle.Enabled = false
Particle.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0.3),NumberSequenceKeypoint.new(0.3,0),NumberSequenceKeypoint.new(1,1)})
Particle.LightEmission = 0.5
Particle.Rate = 150
Particle.ZOffset = 0.2
Particle.Rotation = NumberRange.new(-180, 180)
Particle.RotSpeed = NumberRange.new(-180, 180)
Particle.Texture = "http://www.roblox.com/asset/?id=304437537"
Particle.Color = ColorSequence.new(Color3.fromRGB(val,val,val),Color3.fromRGB(val,val,val))

function ParticleEmitter(Table)
	local PRTCL = Particle:Clone()
	local Speed = Table.Speed or 5
	local Drag = Table.Drag or 0
	local Size1 = Table.Size1 or 1
	local Size2 = Table.Size2 or 5
	local Lifetime1 = Table.Lifetime1 or 1
	local Lifetime2 = Table.Lifetime2 or 1.5
	local Parent = Table.Parent or Torso
	local Emit = Table.Emit or 100
	local Offset = Table.Offset or 360
	local Acel = Table.Acel or VT(0,0,0)
	local Enabled = Table.Enabled or false
	PRTCL.Parent = Parent
	PRTCL.Size = NumberSequence.new(Size1,Size2)
	PRTCL.Lifetime = NumberRange.new(Lifetime1,Lifetime2)
	PRTCL.Speed = NumberRange.new(Speed)
	PRTCL.VelocitySpread = Offset
	PRTCL.Drag = Drag
	PRTCL.Acceleration = Acel
	if Enabled == false then
		PRTCL:Emit(Emit)
		Debris:AddItem(PRTCL,Lifetime2)
	else
		PRTCL.Enabled = true
	end
	return PRTCL
end

local Handle = CreatePart(3, Weapon, "Metal", 0, 0, "Mid gray", "Part", VT(0.2,0.6,0.2),false)
local ThiccHole = CreatePart(3, Weapon, "Metal", 0, 0, "Mid gray", "Eye", VT(0.24,0,0.24),false)
MakeForm(ThiccHole,"Cyl")
CreateWeldOrSnapOrMotor("Weld", Handle, Barrel, ThiccHole, CF(0, 2.45, 0), CF(0, 0, 0))

ParticleEmitter({Speed = 0.2, Drag = 0, Size1 = 0.1, Size2 = 0, Lifetime1 = 0.3, Lifetime2 = 0.5, Parent = ThiccHole, Emit = 100, Offset = 360, Enabled = true, Acel = VT(0,5,0)})
Weapon.Parent = Character
for _, c in pairs(Weapon:GetChildren()) do
	if c.ClassName == "Part" then
		c.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
	end
end

local Handle = CreatePart(3, InsanityGun, "Metal", 0, 0, "Mid gray", "Part", VT(0.2,0.6,0.2),false)
local Hole = CreatePart(3, InsanityGun, "Metal", 0, 0, "Mid gray", "Eye", VT(0.125,0,0.125),false)
MakeForm(Hole,"Cyl")
local Hole3 = CreatePart(3, Bnsh, "Metal", 0, 0, "Mid gray", "Eye", VT(0.235,0,0.235),false)
MakeForm(Hole3,"Cyl")
CreateWeldOrSnapOrMotor("Weld", Handle, Barrel, Hole3, CF(0, 0.98, 0), CF(0, 0, 0))


coroutine.resume(coroutine.create(function()
while true do
Swait()		
for _, c in pairs(Bnsh:GetDescendants()) do
	if c.ClassName == "Part" and c.Name ~= "Eye" and c.Parent ~= Effects and c.Parent.Parent ~= Effects then
		if mde == 'death' then
		c.Material = "Glass"
		c.Color = C3(0,0,0)
		elseif mde == 'Geno' then
		c.Material = "Glass"
		c.Color = Color3.fromRGB(math.random(0,255),0,0)
		end
	elseif c.ClassName == "Part" and c.Name == "Eye" then
		if mde == 'death' then
		c.Color = C3(98/255 + sick.PlaybackLoudness/1000, 37/255 + sick.PlaybackLoudness/1000, 209/255 + sick.PlaybackLoudness/1000)
		c.Material = "Neon"
		elseif mde == 'Geno' then
		c.Color = Color3.fromRGB(math.random(0,255),0,0)
		c.Material = "Neon"
		end
	end
end
end
end))

Bnsh.Parent = nil
InsanityGun.Parent = nil
for _, c in pairs(InsanityGun:GetChildren()) do
	if c.ClassName == "Part" then
		c.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
	end
end
Humanoid.Died:connect(function()
	ATTACK = true
CreateSound(907330011, Torso, 10, 1, false)
end)

--Anti-Respawn--
Humanoid:SetStateEnabled("Dead",false)
Humanoid:SetStateEnabled(Enum.HumanoidStateType.Dead,false)
--end--

--anti ragdoll--
Humanoid:SetStateEnabled("GettingUp",true)
Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,true)
Humanoid:SetStateEnabled("Ragdoll",false)
Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,false)
--end--
local OVMID = 853518668
local OVMPIT = 1
local OVMVOL = 1
local BASECOLOR = C3(0/255, 0/255, 255/255)
local SKILLFONT = "Fantasy"
local SKILLTEXTSIZE = 5

local PlayerSize = 1
local FT,FRA,FLA,FRL,FLL = Instance.new("SpecialMesh"),Instance.new("SpecialMesh"),Instance.new("SpecialMesh"),Instance.new("SpecialMesh"),Instance.new("SpecialMesh")
FT.MeshId,FT.Scale = "rbxasset://fonts/torso.mesh",Vector3.new(PlayerSize,PlayerSize,PlayerSize)
FRA.MeshId,FRA.Scale = "rbxasset://fonts/rightarm.mesh",Vector3.new(PlayerSize,PlayerSize,PlayerSize)
FLA.MeshId,FLA.Scale = "rbxasset://fonts/leftarm.mesh",Vector3.new(PlayerSize,PlayerSize,PlayerSize)
FRL.MeshId,FRL.Scale = "rbxasset://fonts/rightleg.mesh",Vector3.new(PlayerSize,PlayerSize,PlayerSize)
FLL.MeshId,FLL.Scale = "rbxasset://fonts/leftleg.mesh",Vector3.new(PlayerSize,PlayerSize,PlayerSize)

function printbye(Name)
	local MESSAGES = {"You cannot struggle, ","Your existance is an insult, ","Fade, ","Your existance is not desired, ","You are not permitted here, ","You are not to decide your fate, ","Be gone, ","You are already dead, ","Your live is an anomaly, ","Don't dare to return, ","Why are you resisting, ","You cannot exist here, ","Why are you struggling, ","Your fate was already decided, ","Goodbye, ","You cannot ignore my command, ","You cannot resist my command, ","You already died, "}
	chatfunc(MESSAGES[MRANDOM(1,#MESSAGES)]..Name)	
end

local unbanishtaunts = {"I have set you free","You are free to go","Just go","Becareful Next Time"}
--//=================================\\
--||			DAMAGING
--\\=================================//

function Banish(Foe)
    --[[]]
end

function Death(POSITION,RANGE)
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
				WACKYEFFECT({EffectType = "Sphere", Size = VT(55,100000,55), Size2 = VT(0,100000,0), Transparency = 0, Transparency2 = 1, CFrame = CF(EMITPOS) * ANGLES(RAD(MRANDOM(-15,15)), RAD(0), RAD(MRANDOM(-15,15))), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(val,val,val), SoundID = nil, SoundPitch = 1, SoundVolume = 5})
        WACKYEFFECT({TIME = MRANDOM(0,44), EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(77 + 7 * COS(SINE/4),2 + 6 * COS(SINE/4),77 + 4 * COS(SINE/4)), Transparency = 0, Transparency2 = 1, CFrame = CF(EMITPOS), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-22,22), RotationZ = 0, Material = "ForceField", Color = Color3.fromRGB(val,val,val), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		for i = 1, 5 do
			local TOPOS = CF(EMITPOS)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))*CF(0,0,12)
			WACKYEFFECT({TIME = MRANDOM(0,44), EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(77 + 7 * COS(SINE/4),2 + 6 * COS(SINE/4),77 + 4 * COS(SINE/4)), Transparency = 0, Transparency2 = 1, CFrame = CF(EMITPOS,TOPOS.p), MoveToPos = TOPOS.p, RotationX = 0, RotationY = MRANDOM(-22,22), RotationZ = 0, Material = "ForceField", Color = Color3.fromRGB(val,val,val), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		end
	end
end

function spawnwave2(POS)
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
				WACKYEFFECT({EffectType = "Sphere", Size = VT(55,100000,55), Size2 = VT(0,100000,0), Transparency = 0, Transparency2 = 1, CFrame = CF(EMITPOS) * ANGLES(RAD(MRANDOM(-15,15)), RAD(0), RAD(MRANDOM(-15,15))), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(255,0,0), SoundID = nil, SoundPitch = 1, SoundVolume = 5})
        WACKYEFFECT({TIME = MRANDOM(0,44), EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(77 + 7 * COS(SINE/4),2 + 6 * COS(SINE/4),77 + 4 * COS(SINE/4)), Transparency = 0, Transparency2 = 1, CFrame = CF(EMITPOS), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-22,22), RotationZ = 0, Material = "ForceField", Color = Color3.fromRGB(255,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		for i = 1, 5 do
			local TOPOS = CF(EMITPOS)*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))*CF(0,0,12)
			WACKYEFFECT({TIME = MRANDOM(0,44), EffectType = "Wave", Size = VT(0,0,0), Size2 = VT(77 + 7 * COS(SINE/4),2 + 6 * COS(SINE/4),77 + 4 * COS(SINE/4)), Transparency = 0, Transparency2 = 1, CFrame = CF(EMITPOS,TOPOS.p), MoveToPos = TOPOS.p, RotationX = 0, RotationY = MRANDOM(-22,22), RotationZ = 0, Material = "ForceField", Color = Color3.fromRGB(255,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		end
	end
end


function Kill(Char)
    --[[]]
end

--//=================================\\
--||	ATTACK FUNCTIONS AND STUFF
--\\=================================//

function Taunt()
	ATTACK = true
	Rooted = true
	CreateSound(1076231331,Head,80,1,false)
	for i = 1, 21 do
		Swait()
RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0.1, -0.1 + 0.05 * SIN(SINE / 12)) * ANGLES(RAD(1), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5 - 2.5 * SIN(SINE / 12)), RAD(1 * COS(SINE / 24)), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(130), RAD(0), RAD(15)) * ANGLES(RAD(20), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.3 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(130), RAD(0), RAD(-15)) * ANGLES(RAD(20), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(1), RAD(80), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(1), RAD(-80), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	for i = 1, 21 do
		Swait()
RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0.1, -0.1 + 0.05 * SIN(SINE / 12)) * ANGLES(RAD(1), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5 - 2.5 * SIN(SINE / 12)), RAD(7 * COS(SINE / 24)), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(100), RAD(0), RAD(15)) * ANGLES(RAD(20), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.3 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(100), RAD(0), RAD(-15)) * ANGLES(RAD(20), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(1), RAD(80), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(1), RAD(-80), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
		for i = 0.8, 18 do
		Swait()
RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0.1, -0.1 + 0.05 * SIN(SINE / 12)) * ANGLES(RAD(1), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5 - 2.5 * SIN(SINE / 12)), RAD(1 * COS(SINE / 24)), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(130), RAD(0), RAD(15)) * ANGLES(RAD(20), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.3 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(130), RAD(0), RAD(-15)) * ANGLES(RAD(20), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(1), RAD(80), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(1), RAD(-80), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	for i = 0.7, 16 do
		Swait()
RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0.1, -0.1 + 0.05 * SIN(SINE / 12)) * ANGLES(RAD(1), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5 - 2.5 * SIN(SINE / 12)), RAD(7 * COS(SINE / 24)), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(80), RAD(0), RAD(15)) * ANGLES(RAD(20), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.3 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(80), RAD(0), RAD(-15)) * ANGLES(RAD(20), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(1), RAD(80), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(1), RAD(-80), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
		for i = 0.1, 4 do
		Swait()
RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0.1, -0.1 + 0.05 * SIN(SINE / 12)) * ANGLES(RAD(1), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5 - 2.5 * SIN(SINE / 12)), RAD(1 * COS(SINE / 24)), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(130), RAD(0), RAD(15)) * ANGLES(RAD(20), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.3 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(130), RAD(0), RAD(-15)) * ANGLES(RAD(20), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(1), RAD(80), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(1), RAD(-80), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	for i = 0.1, 4 do
		Swait()
RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0.1, -0.1 + 0.05 * SIN(SINE / 12)) * ANGLES(RAD(1), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5 - 2.5 * SIN(SINE / 12)), RAD(7 * COS(SINE / 24)), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(80), RAD(0), RAD(15)) * ANGLES(RAD(20), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.3 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(80), RAD(0), RAD(-15)) * ANGLES(RAD(20), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(1), RAD(80), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(1), RAD(-80), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
			for i = 0.1, 4 do
		Swait()
RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0.1, -0.1 + 0.05 * SIN(SINE / 12)) * ANGLES(RAD(1), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5 - 2.5 * SIN(SINE / 12)), RAD(1 * COS(SINE / 24)), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(130), RAD(0), RAD(15)) * ANGLES(RAD(20), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.3 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(130), RAD(0), RAD(-15)) * ANGLES(RAD(20), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(1), RAD(80), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(1), RAD(-80), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	for i = 0.1, 4 do
		Swait()
RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0.1, -0.1 + 0.05 * SIN(SINE / 12)) * ANGLES(RAD(1), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5 - 2.5 * SIN(SINE / 12)), RAD(1 * COS(SINE / 24)), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(80), RAD(0), RAD(15)) * ANGLES(RAD(20), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.3 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(80), RAD(0), RAD(-15)) * ANGLES(RAD(20), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(1), RAD(80), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(1), RAD(-80), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
		for i = 0.1, 4 do
		Swait()
RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0.1, -0.1 + 0.05 * SIN(SINE / 12)) * ANGLES(RAD(1), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5 - 2.5 * SIN(SINE / 12)), RAD(1 * COS(SINE / 24)), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(80), RAD(0), RAD(15)) * ANGLES(RAD(20), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.3 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(80), RAD(0), RAD(-15)) * ANGLES(RAD(20), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(1), RAD(80), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(1), RAD(-80), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
			for i = 0.1, 4 do
		Swait()
RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0.1, -0.1 + 0.05 * SIN(SINE / 12)) * ANGLES(RAD(1), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5 - 2.5 * SIN(SINE / 12)), RAD(1 * COS(SINE / 24)), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(130), RAD(0), RAD(15)) * ANGLES(RAD(20), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.3 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(130), RAD(0), RAD(-15)) * ANGLES(RAD(20), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(1), RAD(80), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(1), RAD(-80), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	for i = 0.1, 4 do
		Swait()
RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0.1, -0.1 + 0.05 * SIN(SINE / 12)) * ANGLES(RAD(1), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5 - 2.5 * SIN(SINE / 12)), RAD(1 * COS(SINE / 24)), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(80), RAD(0), RAD(15)) * ANGLES(RAD(20), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.3 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(80), RAD(0), RAD(-15)) * ANGLES(RAD(20), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(1), RAD(80), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(1), RAD(-80), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
				for i = 0.1, 4 do
		Swait()
RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0.1, -0.1 + 0.05 * SIN(SINE / 12)) * ANGLES(RAD(1), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5 - 2.5 * SIN(SINE / 12)), RAD(1 * COS(SINE / 24)), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(130), RAD(0), RAD(15)) * ANGLES(RAD(20), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.3 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(130), RAD(0), RAD(-15)) * ANGLES(RAD(20), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(1), RAD(80), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(1), RAD(-80), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	for i = 0.1, 4 do
		Swait()
RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0.1, -0.1 + 0.05 * SIN(SINE / 12)) * ANGLES(RAD(1), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5 - 2.5 * SIN(SINE / 12)), RAD(1 * COS(SINE / 24)), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(80), RAD(0), RAD(15)) * ANGLES(RAD(20), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.3 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(80), RAD(0), RAD(-15)) * ANGLES(RAD(20), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(1), RAD(80), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(1), RAD(-80), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
				for i = 0.1, 4 do
		Swait()
RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0.1, -0.1 + 0.05 * SIN(SINE / 12)) * ANGLES(RAD(1), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5 - 2.5 * SIN(SINE / 12)), RAD(1 * COS(SINE / 24)), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(130), RAD(0), RAD(15)) * ANGLES(RAD(20), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.3 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(130), RAD(0), RAD(-15)) * ANGLES(RAD(20), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(1), RAD(80), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(1), RAD(-80), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	for i = 0.1, 4 do
		Swait()
RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0.1, -0.1 + 0.05 * SIN(SINE / 12)) * ANGLES(RAD(1), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5 - 2.5 * SIN(SINE / 12)), RAD(1 * COS(SINE / 24)), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(80), RAD(0), RAD(15)) * ANGLES(RAD(20), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.3 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(80), RAD(0), RAD(-15)) * ANGLES(RAD(20), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(1), RAD(80), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(1), RAD(-80), RAD(0)) * ANGLES(RAD(-3), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	ATTACK = false
	Rooted = false
end


function shot_lol_die_minecrft_csdfbgvsdfbngjdsgvvsdfgvdfgvgfsddhijsukzc()
	ATTACK = true
	Rooted = false
	for i=0, 0.005, 0.05 / Animation_Speed do
		Swait()
		turnto(Mouse.Hit.p)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 2+1*COS(SINE/18)) * ANGLES(RAD(0), RAD(0), RAD(60)), 0.5 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)), 0.5 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(60)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
	end
	repeat
		for i=0, 0.005, 0.05 / Animation_Speed do
			Swait()
			turnto(Mouse.Hit.p)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 2+1*COS(SINE/18)) * ANGLES(RAD(0), RAD(0), RAD(60)), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-60)), 0.5 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(60)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		end
		local val = MRANDOM(1,255)
		local HIT,POS = CastProperRay(ThiccHole.Position, Mouse.Hit.p, 1000, Character)
		SpawnTrail(ThiccHole.Position,POS)
		if HIT ~= nil then
			if HIT.Parent ~= workspace and HIT.Parent.ClassName ~= "Folder" then
					Banish(HIT.Parent)
			end
		end
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(1,1.5,1), Transparency = 0, Transparency2 = 1, CFrame = ThiccHole.CFrame, MoveToPos = ThiccHole.CFrame*CF(0,0.5,0).p, RotationX = 0, RotationY = -15, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(val,val,val), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = ThiccHole.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(val,val,val), SoundID = 136523485, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = CF(POS,ThiccHole.Position) * ANGLES(RAD(-90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = -5, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(val,val,val), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = CF(POS,ThiccHole.Position) * ANGLES(RAD(-90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(val,val,val), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		for i=0, 0.005, 0.05 / Animation_Speed do
			Swait()
			turnto(Mouse.Hit.p)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 2+1*COS(SINE/18)) * ANGLES(RAD(-5), RAD(0), RAD(60)), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-60)), 0.25 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(130), RAD(15), RAD(90)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		end
	until KEYHOLD == false
	ATTACK = false
	Rooted = false
end

function REEEEEEEEE()
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
		local val = MRANDOM(1,255)
		local HIT2,POS2 = CastProperRay(Hole.Position, Mouse.Hit.p, 1000, Character)
		SpawnTrail2(Hole.Position,POS2)
		if HIT2 ~= nil then
			if HIT2.Parent ~= workspace and HIT2.Parent.ClassName ~= "Folder" then
			end
		end
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(1,1.5,1), Transparency = 0, Transparency2 = 1, CFrame = Hole.CFrame, MoveToPos = Hole.CFrame*CF(0,0.5,0).p, RotationX = 0, RotationY = -15, RotationZ = 0, Material = "Neon", Color = BrickColor.Random().Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = Hole.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = BrickColor.Random().Color, SoundID = 136523485, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = CF(POS2,Hole.Position) * ANGLES(RAD(-90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = -5, RotationZ = 0, Material = "Neon", Color = BrickColor.Random().Color, SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = CF(POS2,Hole.Position) * ANGLES(RAD(-90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = BrickColor.Random().Color, SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		for i=0, 0.005, 0.05 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(-5), RAD(0), RAD(60)), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-60)), 0.25 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(130 + MRANDOM(-90,90)), RAD(15+MRANDOM(-90,90)), RAD(90+MRANDOM(-90,90))) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		end
	until KEYHOLD == false
	ATTACK = false
	Rooted = false
end

function Karma_Beam()
	chatfunc("Karma Beam")
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

function hand_bullet()
	ATTACK = true
	Rooted = false
	for i=0, 0.005, 0.05 / Animation_Speed do
		Swait()
		turnto(Mouse.Hit.p)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(60)), 0.5 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)), 0.5 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(60)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
	end
	repeat
		for i=0, 0.005, 0.05 / Animation_Speed do
			Swait()
			turnto(Mouse.Hit.p)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(60)), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-60)), 0.5 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(60)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		end
		local val = MRANDOM(1,255)
		local HIT3,POS3 = CastProperRay(RightArm.Position, Mouse.Hit.p, 1000, Character)
		SpawnTrail(RightArm.Position,POS3)
		if HIT3 ~= nil then
			if HIT3.Parent ~= workspace and HIT3.Parent.ClassName ~= "Folder" then
			end
		end
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(1,1.5,1), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame, MoveToPos = RightArm.CFrame*CF(0,0.5,0).p, RotationX = 0, RotationY = -15, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(math.random(0,255),0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(math.random(0,255),0,0), SoundID = 3264923, SoundPitch = MRANDOM(12,16)/10, SoundVolume = 8})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = CF(POS3,RightArm.Position) * ANGLES(RAD(-90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = -5, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(math.random(0,255),0,0), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = CF(POS3,RightArm.Position) * ANGLES(RAD(-90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(math.random(0,255),0,0), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
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

function shot()
	ATTACK = true
	Rooted = false
	for i=0, 0.005, 0.05 / Animation_Speed do
		Swait()
		turnto(Mouse.Hit.p)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 2+1*COS(SINE/26)) * ANGLES(RAD(0), RAD(0), RAD(60)), 0.5 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)), 0.5 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(60)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
	end
	repeat
		for i=0, 0.005, 0.05 / Animation_Speed do
			Swait()
			turnto(Mouse.Hit.p)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 2+1*COS(SINE/26)) * ANGLES(RAD(0), RAD(0), RAD(60)), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-60)), 0.5 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(60)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		end
		local HIT,POS = CastProperRay(Hole3.Position, Mouse.Hit.p, 1000, Character)
		SpawnTrail(Hole3.Position,POS)
		if HIT ~= nil then
			if HIT.Parent ~= workspace and HIT.Parent.ClassName ~= "Folder" then
					Banish(HIT.Parent)
			end
		end
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(1,1.5,1), Transparency = 0, Transparency2 = 1, CFrame = Hole3.CFrame, MoveToPos = Hole3.CFrame*CF(0,0.5,0).p, RotationX = 0, RotationY = -15, RotationZ = 0, Material = "Neon", Color = C3(98/255 + sick.PlaybackLoudness/1000, 37/255 + sick.PlaybackLoudness/1000, 209/255 + sick.PlaybackLoudness/1000), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = Hole3.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(98/255 + sick.PlaybackLoudness/1000, 37/255 + sick.PlaybackLoudness/1000, 209/255 + sick.PlaybackLoudness/1000), SoundID = 136523485, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = CF(POS,Hole3.Position) * ANGLES(RAD(-90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = -5, RotationZ = 0, Material = "Neon", Color = C3(98/255 + sick.PlaybackLoudness/1000, 37/255 + sick.PlaybackLoudness/1000, 209/255 + sick.PlaybackLoudness/1000), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = CF(POS,Hole3.Position) * ANGLES(RAD(-90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(98/255 + sick.PlaybackLoudness/1000, 37/255 + sick.PlaybackLoudness/1000, 209/255 + sick.PlaybackLoudness/1000), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		for i=0, 0.005, 0.05 / Animation_Speed do
			Swait()
			turnto(Mouse.Hit.p)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 2+1*COS(SINE/26)) * ANGLES(RAD(-5), RAD(0), RAD(60)), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-60)), 0.25 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(130), RAD(15), RAD(90)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		end
	until KEYHOLD == false
	ATTACK = false
	Rooted = false
end

function geno_shot()
	ATTACK = true
	Rooted = false
	for i=0, 0.5, 0.05 / Animation_Speed do
		Swait()
		turnto(Mouse.Hit.p)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
	end
	repeat
		for i=0, 0.5, 0.05 / Animation_Speed do
			Swait()
			turnto(Mouse.Hit.p)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		end
		local HIT,POS = CastProperRay(Hole3.Position, Mouse.Hit.p, 1000, Character)
		SpawnTrail(Hole3.Position,POS)
		if HIT ~= nil then
			if HIT.Parent ~= workspace and HIT.Parent.ClassName ~= "Folder" then
					Banish(HIT.Parent)
			end
		end
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(1,1.5,1), Transparency = 0, Transparency2 = 1, CFrame = Hole3.CFrame, MoveToPos = Hole3.CFrame*CF(0,0.5,0).p, RotationX = 0, RotationY = -15, RotationZ = 0, Material = "Neon", Color = C3(98/255 + sick.PlaybackLoudness/1000, 37/255 + sick.PlaybackLoudness/1000, 209/255 + sick.PlaybackLoudness/1000), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = Hole3.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(98/255 + sick.PlaybackLoudness/1000, 37/255 + sick.PlaybackLoudness/1000, 209/255 + sick.PlaybackLoudness/1000), SoundID = 136523485, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = CF(POS,Hole3.Position) * ANGLES(RAD(-90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = -5, RotationZ = 0, Material = "Neon", Color = C3(98/255 + sick.PlaybackLoudness/1000, 37/255 + sick.PlaybackLoudness/1000, 209/255 + sick.PlaybackLoudness/1000), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = CF(POS,Hole3.Position) * ANGLES(RAD(-90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(98/255 + sick.PlaybackLoudness/1000, 37/255 + sick.PlaybackLoudness/1000, 209/255 + sick.PlaybackLoudness/1000), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		for i=0, 0.5, 0.05 / Animation_Speed do
			Swait()
			turnto(Mouse.Hit.p)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(120), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		end
	until KEYHOLD == false
	ATTACK = false
	Rooted = false
end

function AttackTemplate()
	ATTACK = true
	Rooted = false
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(12)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
	end
	ATTACK = false
	Rooted = false
end

function mUrDeR()
	ATTACK = true
	Rooted = false
	repeat
	for i=0, 2, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 3 + 1 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(180), RAD(0), RAD(5)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(-10), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(-10), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		spawnwave2(Mouse.Hit.p)
	end
	until KEYHOLD == false
	ATTACK = false
	Rooted = false
end


function beam()
	ATTACK = true
	Rooted = false
chatfunc("Eat My Corrupted Beams")
for i=0,2,.5 / Animation_Speed do
Swait()
spawnwave(Mouse.Hit.p)
end
for i=0,2,.5 / Animation_Speed do
Swait()
spawnwave(Mouse.Hit.p)
end
for i=0,2,.5 / Animation_Speed do
Swait()
spawnwave(Mouse.Hit.p)
end
for i=0,2,.5 / Animation_Speed do
Swait()
spawnwave(Mouse.Hit.p)
end
for i=0,2,.5 / Animation_Speed do
Swait()
spawnwave(Mouse.Hit.p)
end
for i=0,2,.5 / Animation_Speed do
Swait()
spawnwave(Mouse.Hit.p)
end
for i=0,2,.5 / Animation_Speed do
Swait()
spawnwave(Mouse.Hit.p)
end
for i=0,2,.5 / Animation_Speed do
Swait()
spawnwave(Mouse.Hit.p)
end
for i=0,2,.5 / Animation_Speed do
Swait()
spawnwave(Mouse.Hit.p)
end
for i=0,2,.5 / Animation_Speed do
Swait()
spawnwave(Mouse.Hit.p)
end
for i=0,2,.5 / Animation_Speed do
Swait()
spawnwave(Mouse.Hit.p)
end
for i=0,2,.5 / Animation_Speed do
Swait()
spawnwave(Mouse.Hit.p)
end
ATTACK = false
Rooted = false
end

function beam2()
	ATTACK = true
	Rooted = false
	for i=0,2,.5 / Animation_Speed do
		spawnwave(Mouse.Hit.p)
	end
ATTACK = false
Rooted = false
end

function switch()
	ATTACK = true
	Rooted = false
	if mde == "Corrupt" then
		CreateSound(147722227, Torso, 10, 1.3, false)
		for i=0, 0.6, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(-15)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(35), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-30), RAD(0), RAD(-15)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.2) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		Weapon.Parent = nil
        WACKYEFFECT({Time = 50, EffectType = "Block", Size = VT(2.5,2.5,2.5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(val,val,val), SoundID = nil, SoundPitch = 1, SoundVolume = 4})
		for i=0, 0.8, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(35), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(25)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.15, 0.5, 0.5) * ANGLES(RAD(-35 - 4 * COS(SINE / 12)), RAD(0), RAD(45)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
 		Speed = 40
		mde = "Relaxed"
		sick.SoundId = 2805006430
	elseif mde == "Relaxed" then
		Weapon.Parent = Character
		for i=0, 0.3, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(25)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-25)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		for i=0, 0.3, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 0.5, -0.5) * ANGLES(RAD(0), RAD(0), RAD(-80)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25, 0.35, -0.35) * ANGLES(RAD(0), RAD(0), RAD(80)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		CreateSound(363808674, Torso, 10, 1, false)
		for i=0, 0.6, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5), RAD(25), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 0.5, -0.5) * ANGLES(RAD(100), RAD(0), RAD(-50)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25, 0.35, -0.35) * ANGLES(RAD(70), RAD(0), RAD(60)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		CreateSound(363808674, Torso, 10, 1, false)
		for i=0, 0.6, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5), RAD(-25), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 0.5, -0.5) * ANGLES(RAD(100), RAD(0), RAD(-90)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25, 0.35, -0.35) * ANGLES(RAD(70), RAD(0), RAD(90)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		Speed = 20
		mde = "Corrupt"
		sick.SoundId = "rbxassetid://1416035124"
	end
	ATTACK = false
	Rooted = false
end

function switch2()
ATTACK = true
Rooted = true
if mde == "Corrupt" then
CreateSound(363808674, Torso, 10, 1, false)
for i=0, 0.2, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5), RAD(25), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 0.5, -0.5) * ANGLES(RAD(100), RAD(0), RAD(-50)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25, 0.35, -0.35) * ANGLES(RAD(70), RAD(0), RAD(60)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		CreateSound(363808674, Torso, 10, 1, false)
		for i=0, 0.2, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5), RAD(-25), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 0.5, -0.5) * ANGLES(RAD(100), RAD(0), RAD(-90)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25, 0.35, -0.35) * ANGLES(RAD(70), RAD(0), RAD(90)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		CreateSound(363808674, Torso, 10, 1, false)
		for i=0, 0.2, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5), RAD(25), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 0.5, -0.5) * ANGLES(RAD(100), RAD(0), RAD(-50)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25, 0.35, -0.35) * ANGLES(RAD(70), RAD(0), RAD(60)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		CreateSound(363808674, Torso, 10, 1, false)
		for i=0, 0.2, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5), RAD(-25), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 0.5, -0.5) * ANGLES(RAD(100), RAD(0), RAD(-90)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25, 0.35, -0.35) * ANGLES(RAD(70), RAD(0), RAD(90)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		CreateSound(363808674, Torso, 10, 1, false)
		for i=0, 0.2, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5), RAD(25), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 0.5, -0.5) * ANGLES(RAD(100), RAD(0), RAD(-50)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25, 0.35, -0.35) * ANGLES(RAD(70), RAD(0), RAD(60)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		CreateSound(363808674, Torso, 10, 1, false)
		for i=0, 0.2, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5), RAD(-25), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 0.5, -0.5) * ANGLES(RAD(100), RAD(0), RAD(-90)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25, 0.35, -0.35) * ANGLES(RAD(70), RAD(0), RAD(90)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		CreateSound(363808674, Torso, 10, 1, false)
		for i=0, 0.2, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5), RAD(25), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 0.5, -0.5) * ANGLES(RAD(100), RAD(0), RAD(-50)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25, 0.35, -0.35) * ANGLES(RAD(70), RAD(0), RAD(60)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		CreateSound(363808674, Torso, 10, 1, false)
		for i=0, 0.2, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5), RAD(-25), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 0.5, -0.5) * ANGLES(RAD(100), RAD(0), RAD(-90)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25, 0.35, -0.35) * ANGLES(RAD(70), RAD(0), RAD(90)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		CreateSound(363808674, Torso, 10, 1, false)
		for i=0, 0.2, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5), RAD(25), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 0.5, -0.5) * ANGLES(RAD(100), RAD(0), RAD(-50)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25, 0.35, -0.35) * ANGLES(RAD(70), RAD(0), RAD(60)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		CreateSound(363808674, Torso, 10, 1, false)
		for i=0, 0.2, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5), RAD(-25), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 0.5, -0.5) * ANGLES(RAD(100), RAD(0), RAD(-90)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25, 0.35, -0.35) * ANGLES(RAD(70), RAD(0), RAD(90)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		CreateSound(363808674, Torso, 10, 1, false)
		for i=0, 0.2, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5), RAD(25), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 0.5, -0.5) * ANGLES(RAD(100), RAD(0), RAD(-50)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25, 0.35, -0.35) * ANGLES(RAD(70), RAD(0), RAD(60)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		CreateSound(363808674, Torso, 10, 1, false)
		for i=0, 0.2, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5), RAD(-25), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 0.5, -0.5) * ANGLES(RAD(100), RAD(0), RAD(-90)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25, 0.35, -0.35) * ANGLES(RAD(70), RAD(0), RAD(90)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
Weapon.Parent = nil
InsanityGun.Parent = Character
Speed = 80
mde = "Insanity"
sick.SoundId = 2297862957
elseif mde == "Insanity" then
		CreateSound(147722227, Torso, 10, 1.3, false)
		for i=0, 0.6, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(-15)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(35), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-30), RAD(0), RAD(-15)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.2) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		Weapon.Parent = Character
		InsanityGun.Parent = nil
        WACKYEFFECT({Time = 50, EffectType = "Block", Size = VT(2.5,2.5,2.5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(val,val,val), SoundID = nil, SoundPitch = 1, SoundVolume = 4})
		for i=0, 0.8, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(35), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(25)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.15, 0.5, 0.5) * ANGLES(RAD(-35 - 4 * COS(SINE / 12)), RAD(0), RAD(45)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		Speed = 20
		mde = "Corrupt"
		sick.SoundId = "rbxassetid://1416035124"
	end
	ATTACK = false
	Rooted = false
end

function switch3()
	ATTACK = true
	Rooted = false
if mde == "Corrupt" then
		CreateSound(147722227, Torso, 10, 1.3, false)
		for i=0, 0.6, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(-15)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(35), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-30), RAD(0), RAD(-15)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.2) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		Weapon.Parent = nil
        WACKYEFFECT({Time = 50, EffectType = "Block", Size = VT(2.5,2.5,2.5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(val,val,val), SoundID = nil, SoundPitch = 1, SoundVolume = 4})
		for i=0, 0.8, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(35), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(25)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.15, 0.5, 0.5) * ANGLES(RAD(-35 - 4 * COS(SINE / 12)), RAD(0), RAD(45)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		Speed = 100
		mde = "Vis"
		sick.SoundId = 4475894410
elseif mde == "Vis" then	
		Weapon.Parent = Character
		for i=0, 0.3, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(25)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-25)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		for i=0, 0.3, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 0.5, -0.5) * ANGLES(RAD(0), RAD(0), RAD(-80)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25, 0.35, -0.35) * ANGLES(RAD(0), RAD(0), RAD(80)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		CreateSound(363808674, Torso, 10, 1, false)
		for i=0, 0.6, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5), RAD(25), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 0.5, -0.5) * ANGLES(RAD(100), RAD(0), RAD(-50)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25, 0.35, -0.35) * ANGLES(RAD(70), RAD(0), RAD(60)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		CreateSound(363808674, Torso, 10, 1, false)
		for i=0, 0.6, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5), RAD(-25), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 0.5, -0.5) * ANGLES(RAD(100), RAD(0), RAD(-90)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25, 0.35, -0.35) * ANGLES(RAD(70), RAD(0), RAD(90)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		Speed = 20
		mde = "Corrupt"
		sick.SoundId = "rbxassetid://1416035124"
	end
	ATTACK = false
	Rooted = false
end

function switch4()
	ATTACK = true
	Rooted = false
if mde == "Corrupt" then
		CreateSound(147722227, Torso, 10, 1.3, false)
		for i=0, 0.6, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(-15)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(35), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-30), RAD(0), RAD(-15)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.2) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		Weapon.Parent = nil
        WACKYEFFECT({Time = 50, EffectType = "Block", Size = VT(2.5,2.5,2.5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(val,val,val), SoundID = nil, SoundPitch = 1, SoundVolume = 4})
		for i=0, 0.8, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(35), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(25)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.15, 0.5, 0.5) * ANGLES(RAD(-35 - 4 * COS(SINE / 12)), RAD(0), RAD(45)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		Speed = 50
		mde = "Sit"
		sick.SoundId = 269408035
elseif mde == "Sit" then	
		Weapon.Parent = Character
		for i=0, 0.3, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(25)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-25)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		for i=0, 0.3, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 0.5, -0.5) * ANGLES(RAD(0), RAD(0), RAD(-80)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25, 0.35, -0.35) * ANGLES(RAD(0), RAD(0), RAD(80)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		CreateSound(363808674, Torso, 10, 1, false)
		for i=0, 0.6, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5), RAD(25), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 0.5, -0.5) * ANGLES(RAD(100), RAD(0), RAD(-50)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25, 0.35, -0.35) * ANGLES(RAD(70), RAD(0), RAD(60)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		CreateSound(363808674, Torso, 10, 1, false)
		for i=0, 0.6, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5), RAD(-25), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 0.5, -0.5) * ANGLES(RAD(100), RAD(0), RAD(-90)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25, 0.35, -0.35) * ANGLES(RAD(70), RAD(0), RAD(90)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		Speed = 20
		mde = "Corrupt"
		sick.SoundId = "rbxassetid://1416035124"
	end
	ATTACK = false
	Rooted = false
end

function switch5()
	ATTACK = true
	Rooted = false
	if mde == "Corrupt" then
		CreateSound(147722227, Torso, 10, 1.3, false)
		for i=0, 0.6, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(-15)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(35), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-30), RAD(0), RAD(-15)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.2) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		Weapon.Parent = nil
        WACKYEFFECT({Time = 50, EffectType = "Block", Size = VT(2.5,2.5,2.5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(val,val,val), SoundID = nil, SoundPitch = 1, SoundVolume = 4})
		for i=0, 0.8, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(35), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(25)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.15, 0.5, 0.5) * ANGLES(RAD(-35 - 4 * COS(SINE / 12)), RAD(0), RAD(45)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
 		Speed = 70
		mde = "error"
		sick.SoundId = 481104377
	elseif mde == "error" then
		Weapon.Parent = Character
		for i=0, 0.3, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(25)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-25)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		for i=0, 0.3, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 0.5, -0.5) * ANGLES(RAD(0), RAD(0), RAD(-80)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25, 0.35, -0.35) * ANGLES(RAD(0), RAD(0), RAD(80)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		CreateSound(363808674, Torso, 10, 1, false)
		for i=0, 0.6, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5), RAD(25), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 0.5, -0.5) * ANGLES(RAD(100), RAD(0), RAD(-50)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25, 0.35, -0.35) * ANGLES(RAD(70), RAD(0), RAD(60)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		CreateSound(363808674, Torso, 10, 1, false)
		for i=0, 0.6, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5), RAD(-25), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 0.5, -0.5) * ANGLES(RAD(100), RAD(0), RAD(-90)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25, 0.35, -0.35) * ANGLES(RAD(70), RAD(0), RAD(90)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		Speed = 20
		mde = "Corrupt"
		sick.SoundId = "rbxassetid://1416035124"
	end
	ATTACK = false
	Rooted = false
end

function BanishmentBeam()
	ATTACK = true
	Rooted = false
	CreateSound("93724183", RightArm, 5, 1, false)
	for i=1, 35 do
		Swait()
		WACKYEFFECT({Time = 5, EffectType = "Block", Size = VT(5,5,5), Size2 = VT(0,0,0), Transparency = 1, Transparency2 = 0.25, CFrame = RightArm.CFrame*CF(0,-5,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(0,0,0), SoundID = nil, SoundPitch = 0.6, SoundVolume = 6})
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.25 * COS(SINE / 12)) * ANGLES(RAD(4 + 2.5 * SIN(SINE / 12)), RAD(0), RAD(45)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 + 4.5 * SIN(SINE / 12)), RAD(0), RAD(-45 - 4 * SIN(SINE / 12))), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.025 * COS(SINE / 12), -0.5) * ANGLES(RAD(90), RAD(0 - 7.5 * SIN(SINE / 12)), RAD(45 + 7.5 * SIN(SINE / 12))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0.025 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(0 + 7.5 * SIN(SINE / 12)), RAD(-12 - 7.5 * SIN(SINE / 12))) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(-7.5 * SIN(SINE / 12)), RAD(75), RAD(0)) * ANGLES(RAD(-8 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.5, -0.5) * ANGLES(RAD(-7.5 * SIN(SINE / 12)), RAD(-90), RAD(0)) * ANGLES(RAD(-8 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	local BEAM = CreatePart(3, Effects, "Neon", 0, 1, "Lime green", "Lazer", VT(0,0,0))
	local LOOP = CreateSound("162209821", RightArm, 5, 1, false)
	local TOCH = BEAM.Touched:Connect(function(hit)
		if hit.Anchored == false and hit.Parent ~= Head and  hit.Parent ~= Character and hit.Parent ~= Effects then
			Kill(hit)
		end
	end)
	local I = 0
	repeat
		Swait()
		I = I + 1
		if I <= 10 then
			BEAM.Transparency = BEAM.Transparency - 0.1
		end
		local STARTPOS = RightArm.CFrame*CF(0,-4,0).Position
		local ENDHIT,ENDPOS = CastProperRay(STARTPOS,Mouse.Hit.p,650,Character)
		local DISTANCE = (STARTPOS - ENDPOS).Magnitude
		BEAM.CFrame = CF(STARTPOS,ENDPOS)*CF(0,0,-DISTANCE/2)*ANGLES(RAD(0),RAD(0),RAD(I*5))
		BEAM.Size = VT(2,2,DISTANCE)
		WACKYEFFECT({Time = 5, EffectType = "Box", Size = VT(1,1,1), Size2 = VT(1,1,1), Transparency = 0, Transparency2 = 1, CFrame = CF(ENDPOS), MoveToPos = CF(ENDPOS)*ANGLES(RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)))*CF(0,15,0).p, RotationX = MRANDOM(-5,5), RotationY = MRANDOM(-5,5), RotationZ = MRANDOM(-5,5), Material = "Neon", Color = SKILLTEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 5, EffectType = "Block", Size = VT(5,5,5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 0.25, CFrame = RightArm.CFrame*CF(0,-4,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = SKILLTEXTCOLOR, SoundID = nil, SoundPitch = 0.6, SoundVolume = 6})
		WACKYEFFECT({Time = 5, EffectType = "Block", Size = VT(5,5,5), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 0.25, CFrame = CF(ENDPOS), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = SKILLTEXTCOLOR, SoundID = nil, SoundPitch = 0.6, SoundVolume = 6})
		GYRO.cframe = CF(RootPart.Position,Mouse.Hit.p)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.25 * COS(SINE / 12)) * ANGLES(RAD(4 + 2.5 * SIN(SINE / 12)), RAD(0), RAD(45)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 + 4.5 * SIN(SINE / 12)), RAD(0), RAD(-45 - 4 * SIN(SINE / 12))), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.025 * COS(SINE / 12), -0.5) * ANGLES(RAD(90), RAD(0 - 7.5 * SIN(SINE / 12)), RAD(45 + 7.5 * SIN(SINE / 12))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0.025 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(0 + 7.5 * SIN(SINE / 12)), RAD(-12 - 7.5 * SIN(SINE / 12))) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(-7.5 * SIN(SINE / 12)), RAD(75), RAD(0)) * ANGLES(RAD(-8 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.5, -0.5) * ANGLES(RAD(-7.5 * SIN(SINE / 12)), RAD(-90), RAD(0)) * ANGLES(RAD(-8 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
	until LOOP.Playing == false
	BEAM:remove()
	ATTACK = false
	Rooted = false
end

function PoisonedTaunt()
	ATTACK = true
	Rooted = false
	chatfunc("I  n e e d  a  c u r e")
	for i=1, 170 do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.25 * COS(SINE / 12)) * ANGLES(RAD(20), RAD(0), RAD(0)), 1 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(MRANDOM(-45,45))), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.025 * COS(SINE / 12), 0) * ANGLES(RAD(20), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0.025 * COS(SINE / 12), 0) * ANGLES(RAD(20), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.25 * COS(sine / 12), -0.01) * ANGLES(RAD(20), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.25 * COS(sine / 12), -0.01) * ANGLES(RAD(20), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
	ATTACK = false
	Rooted = false
end

function switch6()
ATTACK = true
Rooted = true
if mde == "Corrupt" then
	for i=1, 333 / Animation_Speed do
		Swait()
		WACKYEFFECT({TIME = 56, EffectType = "Sphere", Size = VT(3 + 2 * COS(SINE/4),3 + 2 * COS(SINE/4),3 + 2 * COS(SINE/4)), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = -11, CFrame = CF(RootPart.Position-VT(MRANDOM(-4,4),-2.5,MRANDOM(-4,4))), MoveToPos = Torso.Position*VT(MRANDOM(-9,9),2,MRANDOM(-9,9)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "ForceField", Color = C3(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({TIME = 23, EffectType = "Wave", Size = VT(6 + 2 * COS(SINE/4),4 + 2 * COS(SINE/4),6 + 2 * COS(SINE/4)), Size2 = VT(11,4,11), Transparency = 0, Transparency2 = -11, CFrame = CF(RootPart.Position-VT(0,2.5,0)), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "ForceField", Color = C3(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({TIME = 56, EffectType = "Sphere", Size = VT(3 + 2 * COS(SINE/4),3 + 2 * COS(SINE/4),3 + 2 * COS(SINE/4)), Size2 = VT(15,15,15), Transparency = 0, Transparency2 = -11, CFrame = CF(RootPart.Position-VT(0,0,0)), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "ForceField", Color = C3(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -1.5) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-15 - 2.5 * SIN(SINE / 12)), RAD(-15), RAD(0)), 0.15 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1, 0.5, -0.6) * ANGLES(RAD(165), RAD(0), RAD(-50)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1, 0.5, -0.6) * ANGLES(RAD(165), RAD(0), RAD(50)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, 0.5, -0.75) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(5), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.4) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(5), RAD(0), RAD(90)), 0.5 / Animation_Speed)
	end
		WACKYEFFECT({TIME = 435, EffectType = "Sphere", Size = VT(3 + 2 * COS(SINE/4),7 + 2 * COS(SINE/4),3 + 2 * COS(SINE/4)), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = -11, CFrame = CF(RootPart.Position-VT(MRANDOM(-4,4),0,MRANDOM(-4,4)))*ANGLES(RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360))), MoveToPos = Torso.Position*VT(MRANDOM(-54,54),MRANDOM(-54,54),MRANDOM(-54,54)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "ForceField", Color = C3(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({TIME = 453, EffectType = "Sphere", Size = VT(3 + 2 * COS(SINE/4),7 + 2 * COS(SINE/4),3 + 2 * COS(SINE/4)), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = -11, CFrame = CF(RootPart.Position-VT(MRANDOM(-4,4),0,MRANDOM(-4,4)))*ANGLES(RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360))), MoveToPos = Torso.Position*VT(MRANDOM(-54,54),MRANDOM(-54,54),MRANDOM(-54,54)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "ForceField", Color = C3(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({TIME = 453, EffectType = "Sphere", Size = VT(3 + 2 * COS(SINE/4),7 + 2 * COS(SINE/4),3 + 2 * COS(SINE/4)), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = -11, CFrame = CF(RootPart.Position-VT(MRANDOM(-4,4),0,MRANDOM(-4,4)))*ANGLES(RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360))), MoveToPos = Torso.Position*VT(MRANDOM(-54,54),MRANDOM(-54,54),MRANDOM(-54,54)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "ForceField", Color = C3(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({TIME = 443, EffectType = "Sphere", Size = VT(3 + 2 * COS(SINE/4),7 + 2 * COS(SINE/4),3 + 2 * COS(SINE/4)), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = -11, CFrame = CF(RootPart.Position-VT(MRANDOM(-4,4),0,MRANDOM(-4,4)))*ANGLES(RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360))), MoveToPos = Torso.Position*VT(MRANDOM(-54,54),MRANDOM(-54,54),MRANDOM(-54,54)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "ForceField", Color = C3(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({TIME = 564, EffectType = "Sphere", Size = VT(3 + 2 * COS(SINE/4),7 + 2 * COS(SINE/4),3 + 2 * COS(SINE/4)), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = -11, CFrame = CF(RootPart.Position-VT(MRANDOM(-4,4),0,MRANDOM(-4,4)))*ANGLES(RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360))), MoveToPos = Torso.Position*VT(MRANDOM(-54,54),MRANDOM(-54,54),MRANDOM(-54,54)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "ForceField", Color = C3(0,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		Weapon.Parent = nil
mde = 'nebula'
sick.SoundId = 1138324365
Speed = 16
elseif mde == 'nebula' then
	for i=1, 660 / Animation_Speed do
		Swait()
		WACKYEFFECT({TIME = 56, EffectType = "Sphere", Size = VT(3 + 2 * COS(SINE/4),3 + 2 * COS(SINE/4),3 + 2 * COS(SINE/4)), Size2 = VT(15,15,15), Transparency = 0, Transparency2 = -11, CFrame = CF(RootPart.Position-VT(0,0,0)), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "ForceField", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.1 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(0), RAD(0), RAD(5)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(0), RAD(0), RAD(-5)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(60), RAD(0)) * ANGLES(RAD(-11), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(-60), RAD(0)) * ANGLES(RAD(-11), RAD(0), RAD(0)), 1 / Animation_Speed)
	end
		WACKYEFFECT({TIME = 435, EffectType = "Sphere", Size = VT(3 + 2 * COS(SINE/4),7 + 2 * COS(SINE/4),3 + 2 * COS(SINE/4)), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = -11, CFrame = CF(RootPart.Position-VT(MRANDOM(-4,4),0,MRANDOM(-4,4)))*ANGLES(RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360))), MoveToPos = Torso.Position*VT(MRANDOM(-54,54),MRANDOM(-54,54),MRANDOM(-54,54)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "ForceField", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({TIME = 453, EffectType = "Sphere", Size = VT(3 + 2 * COS(SINE/4),7 + 2 * COS(SINE/4),3 + 2 * COS(SINE/4)), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = -11, CFrame = CF(RootPart.Position-VT(MRANDOM(-4,4),0,MRANDOM(-4,4)))*ANGLES(RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360))), MoveToPos = Torso.Position*VT(MRANDOM(-54,54),MRANDOM(-54,54),MRANDOM(-54,54)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "ForceField", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({TIME = 453, EffectType = "Sphere", Size = VT(3 + 2 * COS(SINE/4),7 + 2 * COS(SINE/4),3 + 2 * COS(SINE/4)), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = -11, CFrame = CF(RootPart.Position-VT(MRANDOM(-4,4),0,MRANDOM(-4,4)))*ANGLES(RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360))), MoveToPos = Torso.Position*VT(MRANDOM(-54,54),MRANDOM(-54,54),MRANDOM(-54,54)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "ForceField", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({TIME = 443, EffectType = "Sphere", Size = VT(3 + 2 * COS(SINE/4),7 + 2 * COS(SINE/4),3 + 2 * COS(SINE/4)), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = -11, CFrame = CF(RootPart.Position-VT(MRANDOM(-4,4),0,MRANDOM(-4,4)))*ANGLES(RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360))), MoveToPos = Torso.Position*VT(MRANDOM(-54,54),MRANDOM(-54,54),MRANDOM(-54,54)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "ForceField", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({TIME = 564, EffectType = "Sphere", Size = VT(3 + 2 * COS(SINE/4),7 + 2 * COS(SINE/4),3 + 2 * COS(SINE/4)), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = -11, CFrame = CF(RootPart.Position-VT(MRANDOM(-4,4),0,MRANDOM(-4,4)))*ANGLES(RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360))), MoveToPos = Torso.Position*VT(MRANDOM(-54,54),MRANDOM(-54,54),MRANDOM(-54,54)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "ForceField", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({TIME = 435, EffectType = "Sphere", Size = VT(3 + 2 * COS(SINE/4),7 + 2 * COS(SINE/4),3 + 2 * COS(SINE/4)), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = -11, CFrame = CF(RootPart.Position-VT(MRANDOM(-4,4),0,MRANDOM(-4,4)))*ANGLES(RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360))), MoveToPos = Torso.Position*VT(MRANDOM(-54,54),MRANDOM(-54,54),MRANDOM(-54,54)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "ForceField", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({TIME = 453, EffectType = "Sphere", Size = VT(3 + 2 * COS(SINE/4),7 + 2 * COS(SINE/4),3 + 2 * COS(SINE/4)), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = -11, CFrame = CF(RootPart.Position-VT(MRANDOM(-4,4),0,MRANDOM(-4,4)))*ANGLES(RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360))), MoveToPos = Torso.Position*VT(MRANDOM(-54,54),MRANDOM(-54,54),MRANDOM(-54,54)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "ForceField", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({TIME = 453, EffectType = "Sphere", Size = VT(3 + 2 * COS(SINE/4),7 + 2 * COS(SINE/4),3 + 2 * COS(SINE/4)), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = -11, CFrame = CF(RootPart.Position-VT(MRANDOM(-4,4),0,MRANDOM(-4,4)))*ANGLES(RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360))), MoveToPos = Torso.Position*VT(MRANDOM(-54,54),MRANDOM(-54,54),MRANDOM(-54,54)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "ForceField", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({TIME = 443, EffectType = "Sphere", Size = VT(3 + 2 * COS(SINE/4),7 + 2 * COS(SINE/4),3 + 2 * COS(SINE/4)), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = -11, CFrame = CF(RootPart.Position-VT(MRANDOM(-4,4),0,MRANDOM(-4,4)))*ANGLES(RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360))), MoveToPos = Torso.Position*VT(MRANDOM(-54,54),MRANDOM(-54,54),MRANDOM(-54,54)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "ForceField", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({TIME = 564, EffectType = "Sphere", Size = VT(3 + 2 * COS(SINE/4),7 + 2 * COS(SINE/4),3 + 2 * COS(SINE/4)), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = -11, CFrame = CF(RootPart.Position-VT(MRANDOM(-4,4),0,MRANDOM(-4,4)))*ANGLES(RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360))), MoveToPos = Torso.Position*VT(MRANDOM(-54,54),MRANDOM(-54,54),MRANDOM(-54,54)), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "ForceField", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
Weapon.Parent = Character
mde = "Corrupt"
sick.SoundId = "rbxassetid://1416035124"
Speed = 20
end
ATTACK = false
Rooted = false
end
MODESWITCHFUNCTIONS={}
function MODESWITCHFUNCTIONS.Relaxed(changeto)
	CreateSound(155202884, Torso, 2, 1.4, false)
		local POS = RootPart.Position
				for i = 1, 5 do
					WACKYEFFECT({
						Time = 25,
						EffectType = "Sphere",
						Size = VT(2, 2, 2),
						Size2 = VT(0, 0, 500),
						Transparency = 1,
						Transparency2 = 0,
						CFrame = CF(POS),
						MoveToPos = nil,
						RotationX = MRANDOM(-2, 2),
						RotationY = MRANDOM(-12, 12),
						RotationZ = MRANDOM(-2, 2),
						Material = "Neon",
						Color = color,
						SoundID = nil,
						SoundPitch = nil,
						SoundVolume = nil
					})
				end
			WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(0,0,0), Size2 = VT(30,30,30), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = color, SoundID = nil, SoundPitch = 1, SoundVolume = 0})
	if changeto then
		mde=changeto
	end
	Weapon.Parent = nil
	InsanityGun.Parent = nil
	WEAPONGUI.Mode.mdename.Text = "Mode: Relaxed"
	WEAPONGUI.uwu.uwu2.Text = "No Attacks Here"
	sick.SoundId = 'rbxassetid://2805006430'
	sick.PlaybackSpeed = .8
	Speed = 40
end
function MODESWITCHFUNCTIONS.Insanity(changeto)
	CreateSound(155202884, Torso, 2, 1.4, false)
		local POS = RootPart.Position
				for i = 1, 5 do
					WACKYEFFECT({
						Time = 25,
						EffectType = "Sphere",
						Size = VT(2, 2, 2),
						Size2 = VT(0, 0, 500),
						Transparency = 1,
						Transparency2 = 0,
						CFrame = CF(POS),
						MoveToPos = nil,
						RotationX = MRANDOM(-2, 2),
						RotationY = MRANDOM(-12, 12),
						RotationZ = MRANDOM(-2, 2),
						Material = "Neon",
						Color = BrickColor.Random().Color,
						SoundID = nil,
						SoundPitch = nil,
						SoundVolume = nil
					})
				end
			WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(0,0,0), Size2 = VT(30,30,30), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = BrickColor.Random().Color, SoundID = nil, SoundPitch = 1, SoundVolume = 0})
	if changeto then
		mde=changeto
	end
	Weapon.Parent = nil
	InsanityGun.Parent = Character
	sick.SoundId = 'rbxassetid://2297862957'
	WEAPONGUI.Mode.mdename.Text = "Mode: Insanity"
	WEAPONGUI.uwu.uwu2.Text = "Q - Damage Bullet"
	sick.PlaybackSpeed = .9
	Speed = 80
end
function MODESWITCHFUNCTIONS.Vis(changeto)
	CreateSound(155202884, Torso, 2, 1.4, false)
		local POS = RootPart.Position
				for i = 1, 5 do
					WACKYEFFECT({
						Time = 25,
						EffectType = "Sphere",
						Size = VT(2, 2, 2),
						Size2 = VT(0, 0, 500),
						Transparency = 1,
						Transparency2 = 0,
						CFrame = CF(POS),
						MoveToPos = nil,
						RotationX = MRANDOM(-2, 2),
						RotationY = MRANDOM(-12, 12),
						RotationZ = MRANDOM(-2, 2),
						Material = "Neon",
						Color = RightArm.Color,
						SoundID = nil,
						SoundPitch = nil,
						SoundVolume = nil
					})
				end
			WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(0,0,0), Size2 = VT(30,30,30), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = RightArm.Color, SoundID = nil, SoundPitch = 1, SoundVolume = 0})
	if changeto then
		mde=changeto
	end
	Weapon.Parent = nil
	InsanityGun.Parent = nil
	sick.SoundId = 'rbxassetid://2683294752'
	sick.Loudness = 2
	sick.PlaybackSpeed = .85
	WEAPONGUI.Mode.mdename.Text = "Mode: Vis"
	WEAPONGUI.uwu.uwu2.Text = "N - Music Change"
	Speed = 100
end
function MODESWITCHFUNCTIONS.Sit(changeto)
	CreateSound(155202884, Torso, 2, 1.4, false)
	local POS = RootPart.Position
			for i = 1, 5 do
				WACKYEFFECT({
					Time = 25,
					EffectType = "Sphere",
					Size = VT(2, 2, 2),
					Size2 = VT(0, 0, 500),
					Transparency = 1,
					Transparency2 = 0,
					CFrame = CF(POS),
					MoveToPos = nil,
					RotationX = MRANDOM(-2, 2),
					RotationY = MRANDOM(-12, 12),
					RotationZ = MRANDOM(-2, 2),
					Material = "Neon",
					Color = RightArm.Color,
					SoundID = nil,
					SoundPitch = nil,
					SoundVolume = nil
				})
			end
		WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(0,0,0), Size2 = VT(30,30,30), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = RightArm.Color, SoundID = nil, SoundPitch = 1, SoundVolume = 0})
	if changeto then
		mde=changeto
	end
	Weapon.Parent = nil
	InsanityGun.Parent = nil
	sick.SoundId = 'rbxassetid://183142252'
	WEAPONGUI.Mode.mdename.Text = "Mode: Sit"
	WEAPONGUI.uwu.uwu2.Text = "M - Music Change"
	sick.PlaybackSpeed = .8
	Speed = 50
end
function MODESWITCHFUNCTIONS.error(changeto)
	CreateSound(155202884, Torso, 2, 1.4, false)
	local POS = RootPart.Position
			for i = 1, 5 do
				WACKYEFFECT({
					Time = 25,
					EffectType = "Sphere",
					Size = VT(2, 2, 2),
					Size2 = VT(0, 0, 500),
					Transparency = 1,
					Transparency2 = 0,
					CFrame = CF(POS),
					MoveToPos = nil,
					RotationX = MRANDOM(-2, 2),
					RotationY = MRANDOM(-12, 12),
					RotationZ = MRANDOM(-2, 2),
					Material = "Neon",
					Color = RightArm.Color,
					SoundID = nil,
					SoundPitch = nil,
					SoundVolume = nil
				})
			end
		WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(0,0,0), Size2 = VT(30,30,30), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = RightArm.Color, SoundID = nil, SoundPitch = 1, SoundVolume = 0})
	if changeto then
		mde=changeto
	end
	Weapon.Parent = nil
	InsanityGun.Parent = nil
	sick.SoundId = "rbxassetid://481104377"
	sick.PlaybackSpeed = 1
	WEAPONGUI.Mode.mdename.Text = "Mode: Error"
	WEAPONGUI.uwu.uwu2.Text = "Z - Banishment Beam"
	Speed = 70
end
function MODESWITCHFUNCTIONS.nebula(changeto)
	CreateSound(155202884, Torso, 2, 1.4, false)
	local POS = RootPart.Position
			for i = 1, 5 do
				WACKYEFFECT({
					Time = 25,
					EffectType = "Sphere",
					Size = VT(2, 2, 2),
					Size2 = VT(0, 0, 500),
					Transparency = 1,
					Transparency2 = 0,
					CFrame = CF(POS),
					MoveToPos = nil,
					RotationX = MRANDOM(-2, 2),
					RotationY = MRANDOM(-12, 12),
					RotationZ = MRANDOM(-2, 2),
					Material = "Neon",
					Color = RightArm.Color,
					SoundID = nil,
					SoundPitch = nil,
					SoundVolume = nil
				})
			end
	WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(0,0,0), Size2 = VT(30,30,30), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = RightArm.Color, SoundID = nil, SoundPitch = 1, SoundVolume = 0})
	if changeto then
		mde=changeto
	end
	Weapon.Parent = nil
	InsanityGun.Parent = nil
	sick.SoundId = 'rbxassetid://1138324365'
	WEAPONGUI.Mode.mdename.Text = "Mode: Nebula"
	WEAPONGUI.uwu.uwu2.Text = "No Attacks Here .w."
	sick.PlaybackSpeed = 1
	Speed = 16
end
MODESWITCHFUNCTIONS["???"] = function(changeto)
	CreateSound(155202884, Torso, 2, 1.4, false)
	local POS = RootPart.Position
			for i = 1, 5 do
				WACKYEFFECT({
					Time = 25,
					EffectType = "Sphere",
					Size = VT(2, 2, 2),
					Size2 = VT(0, 0, 500),
					Transparency = 1,
					Transparency2 = 0,
					CFrame = CF(POS),
					MoveToPos = nil,
					RotationX = MRANDOM(-2, 2),
					RotationY = MRANDOM(-12, 12),
					RotationZ = MRANDOM(-2, 2),
					Material = "Neon",
					Color = RightArm.Color,
					SoundID = nil,
					SoundPitch = nil,
					SoundVolume = nil
				})
			end
	WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(0,0,0), Size2 = VT(30,30,30), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = RightArm.Color, SoundID = nil, SoundPitch = 1, SoundVolume = 0})
	if changeto then
		mde=changeto
	end
	Weapon.Parent = nil
	InsanityGun.Parent = nil
	sick.SoundId = "rbxassetid://521953625"
	WEAPONGUI.Mode.mdename.Text = "Mode: ???"
	WEAPONGUI.uwu.uwu2.Text = "No Attacks Here"
	sick.PlaybackSpeed = 1
	Speed = 100
end
function MODESWITCHFUNCTIONS.Rev(changeto)
	CreateSound(155202884, Torso, 2, 1.4, false)
	local POS = RootPart.Position
			for i = 1, 5 do
				WACKYEFFECT({
					Time = 25,
					EffectType = "Sphere",
					Size = VT(2, 2, 2),
					Size2 = VT(0, 0, 500),
					Transparency = 1,
					Transparency2 = 0,
					CFrame = CF(POS),
					MoveToPos = nil,
					RotationX = MRANDOM(-2, 2),
					RotationY = MRANDOM(-12, 12),
					RotationZ = MRANDOM(-2, 2),
					Material = "Neon",
					Color = RightArm.Color,
					SoundID = nil,
					SoundPitch = nil,
					SoundVolume = nil
				})
			end
		WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(0,0,0), Size2 = VT(30,30,30), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = RightArm.Color, SoundID = nil, SoundPitch = 1, SoundVolume = 0})
	if changeto then
		mde=changeto
	end
	Weapon.Parent = nil
	InsanityGun.Parent = nil
	sick.SoundId = "rbxassetid://1526854945"
	WEAPONGUI.Mode.mdename.Text = "Mode: Rev"
	WEAPONGUI.uwu.uwu2.Text = "No Attacks Here"
	sick.PlaybackSpeed = 1
	Speed = 10
end
function MODESWITCHFUNCTIONS.mnlght(changeto)
	CreateSound(155202884, Torso, 2, 1.4, false)
	local POS = RootPart.Position
			for i = 1, 5 do
				WACKYEFFECT({
					Time = 25,
					EffectType = "Sphere",
					Size = VT(2, 2, 2),
					Size2 = VT(0, 0, 500),
					Transparency = 1,
					Transparency2 = 0,
					CFrame = CF(POS),
					MoveToPos = nil,
					RotationX = MRANDOM(-2, 2),
					RotationY = MRANDOM(-12, 12),
					RotationZ = MRANDOM(-2, 2),
					Material = "Neon",
					Color = RightArm.Color,
					SoundID = nil,
					SoundPitch = nil,
					SoundVolume = nil
				})
			end
		WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(0,0,0), Size2 = VT(30,30,30), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = RightArm.Color, SoundID = nil, SoundPitch = 1, SoundVolume = 0})
	if changeto then
		mde=changeto
	end
	Weapon.Parent = nil
	InsanityGun.Parent = nil
	sick.SoundId = "rbxassetid://445023353"
	WEAPONGUI.Mode.mdename.Text = "Mode: Moonlight"
	WEAPONGUI.uwu.uwu2.Text = "No Attacks Here"
	sick.PlaybackSpeed = 1
end
--[[function MODESWITCHFUNCTIONS.krma(changeto)
	CreateSound(155202884, Torso, 2, 1.4, false)
	local POS = RootPart.Position
			for i = 1, 5 do
				WACKYEFFECT({
					Time = 25,
					EffectType = "Sphere",
					Size = VT(2, 2, 2),
					Size2 = VT(0, 0, 500),
					Transparency = 1,
					Transparency2 = 0,
					CFrame = CF(POS),
					MoveToPos = nil,
					RotationX = MRANDOM(-2, 2),
					RotationY = MRANDOM(-12, 12),
					RotationZ = MRANDOM(-2, 2),
					Material = "Neon",
					Color = BrickColor.Random().Color,
					SoundID = nil,
					SoundPitch = nil,
					SoundVolume = nil
				})
			end
		WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(0,0,0), Size2 = VT(30,30,30), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = BrickColor.Random().Color, SoundID = nil, SoundPitch = 1, SoundVolume = 0})
	if changeto then
		mde=changeto
	end
	Weapon.Parent = nil
	InsanityGun.Parent = nil
	sick.SoundId = "rbxassetid://733456981"
	WEAPONGUI.Mode.mdename.Text = "Mode: Karma"
	WEAPONGUI.uwu.uwu2.Text = "No Attacks Here"
	sick.PlaybackSpeed = 1
	Speed = 150
end--]]
function MODESWITCHFUNCTIONS.death(changeto)
	CreateSound(155202884, Torso, 2, 1.4, false)
	local POS = RootPart.Position
			for i = 1, 5 do
				WACKYEFFECT({
					Time = 25,
					EffectType = "Sphere",
					Size = VT(2, 2, 2),
					Size2 = VT(0, 0, 500),
					Transparency = 1,
					Transparency2 = 0,
					CFrame = CF(POS),
					MoveToPos = nil,
					RotationX = MRANDOM(-2, 2),
					RotationY = MRANDOM(-12, 12),
					RotationZ = MRANDOM(-2, 2),
					Material = "Neon",
					Color = RightArm.Color,
					SoundID = nil,
					SoundPitch = nil,
					SoundVolume = nil
				})
			end
		WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(0,0,0), Size2 = VT(30,30,30), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = RightArm.Color, SoundID = nil, SoundPitch = 1, SoundVolume = 0})
	if changeto then
		mde=changeto
	end
	Weapon.Parent = nil
	InsanityGun.Parent = nil
	sick.PlaybackSpeed = .94
	Bnsh.Parent = Character
	WEAPONGUI.Mode.mdename.Text = "Mode: Death"
	WEAPONGUI.uwu.uwu2.Text = "Z - Banish Bullet"
	sick.SoundId = "rbxassetid://1426355953"
	Speed=200+sick.PlaybackLoudness/1000
end
function MODESWITCHFUNCTIONS.poisoned(changeto)
	CreateSound(155202884, Torso, 2, 1.4, false)
	local POS = RootPart.Position
			for i = 1, 5 do
				WACKYEFFECT({
					Time = 25,
					EffectType = "Sphere",
					Size = VT(2, 2, 2),
					Size2 = VT(0, 0, 500),
					Transparency = 1,
					Transparency2 = 0,
					CFrame = CF(POS),
					MoveToPos = nil,
					RotationX = MRANDOM(-2, 2),
					RotationY = MRANDOM(-12, 12),
					RotationZ = MRANDOM(-2, 2),
					Material = "Neon",
					Color = RightArm.Color,
					SoundID = nil,
					SoundPitch = nil,
					SoundVolume = nil
				})
			end
		WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(0,0,0), Size2 = VT(30,30,30), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = RightArm.Color, SoundID = nil, SoundPitch = 1, SoundVolume = 0})
	if changeto then
		mde=changeto
	end
	Weapon.Parent = nil
	InsanityGun.Parent = nil
	sick.PlaybackSpeed = 1
	WEAPONGUI.Mode.mdename.Text = "Mode: Poisoned"
	WEAPONGUI.uwu.uwu2.Text = "R - Taunt"
	Bnsh.Parent = nil
	sick.SoundId = "rbxassetid://717080852"
	Speed = 100+sick.PlaybackLoudness/1000
end
function MODESWITCHFUNCTIONS.unholy(changeto)
	CreateSound(155202884, Torso, 2, 1.4, false)
	local POS = RootPart.Position
			for i = 1, 5 do
				WACKYEFFECT({
					Time = 25,
					EffectType = "Sphere",
					Size = VT(2, 2, 2),
					Size2 = VT(0, 0, 500),
					Transparency = 1,
					Transparency2 = 0,
					CFrame = CF(POS),
					MoveToPos = nil,
					RotationX = MRANDOM(-2, 2),
					RotationY = MRANDOM(-12, 12),
					RotationZ = MRANDOM(-2, 2),
					Material = "Neon",
					Color = RightArm.Color,
					SoundID = nil,
					SoundPitch = nil,
					SoundVolume = nil
				})
			end
		WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(0,0,0), Size2 = VT(30,30,30), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = RightArm.Color, SoundID = nil, SoundPitch = 1, SoundVolume = 0})
	if changeto then
		mde=changeto
	end
	Weapon.Parent = nil
	InsanityGun.Parent = nil
	WEAPONGUI.Mode.mdename.Text = "Mode: 0NH3LY"
	WEAPONGUI.uwu.uwu2.Text = "Z - 234857654"
	sick.SoundId = "rbxassetid://2954216473"
	sick.PlaybackSpeed = 1.25
	chatfunc("h3lp m3Ee3")
	Speed = 30+sick.PlaybackLoudness/1000
end
function MODESWITCHFUNCTIONS.uncolored(changeto)
CreateSound(155202884, Torso, 2, 1.4, false)
	local POS = RootPart.Position
			for i = 1, 5 do
				WACKYEFFECT({
					Time = 25,
					EffectType = "Sphere",
					Size = VT(2, 2, 2),
					Size2 = VT(0, 0, 500),
					Transparency = 1,
					Transparency2 = 0,
					CFrame = CF(POS),
					MoveToPos = nil,
					RotationX = MRANDOM(-2, 2),
					RotationY = MRANDOM(-12, 12),
					RotationZ = MRANDOM(-2, 2),
					Material = "Neon",
					Color = RightArm.Color,
					SoundID = nil,
					SoundPitch = nil,
					SoundVolume = nil
				})
			end
	WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(0,0,0), Size2 = VT(30,30,30), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = RightArm.Color, SoundID = nil, SoundPitch = 1, SoundVolume = 0})
	if changeto then
		mde=changeto
	end
	Weapon.Parent = nil
	InsanityGun.Parent = nil
	WEAPONGUI.Mode.mdename.Text = 'Mode: Uncolored'
	WEAPONGUI.uwu.uwu2.Text = 'No Attacks Here'
	sick.SoundId = "rbxassetid://844654533"
	sick.PlaybackSpeed = .75
	Speed = 120
	chatfunc("I've Lost My Color")
end
function MODESWITCHFUNCTIONS.edgialization(changeto)
CreateSound(155202884, Torso, 2, 1.4, false)
	local POS = RootPart.Position
			for i = 1, 5 do
				WACKYEFFECT({
					Time = 25,
					EffectType = "Sphere",
					Size = VT(2, 2, 2),
					Size2 = VT(0, 0, 500),
					Transparency = 1,
					Transparency2 = 0,
					CFrame = CF(POS),
					MoveToPos = nil,
					RotationX = MRANDOM(-2, 2),
					RotationY = MRANDOM(-12, 12),
					RotationZ = MRANDOM(-2, 2),
					Material = "Neon",
					Color = RightArm.Color,
					SoundID = nil,
					SoundPitch = nil,
					SoundVolume = nil
				})
			end
	WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(0,0,0), Size2 = VT(30,30,30), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = RightArm.Color, SoundID = nil, SoundPitch = 1, SoundVolume = 0})
	if changeto then
		mde=changeto
	end
	Weapon.Parent = nil
	InsanityGun.Parent = nil
	sick.SoundId = "rbxassetid://2154918218"
	sick.Pitch = 1.5
	sick.PlaybackSpeed = .75
	WEAPONGUI.Mode.mdename.Text = 'Mode: Edgialization'
	WEAPONGUI.uwu.uwu2.Text = 'No Attacks Here'
	Speed = 400
end
function MODESWITCHFUNCTIONS.unknown(changeto)
	CreateSound(155202884, Torso, 2, 1.4, false)
	local POS = RootPart.Position
			for i = 1, 5 do
				WACKYEFFECT({
					Time = 25,
					EffectType = "Sphere",
					Size = VT(2, 2, 2),
					Size2 = VT(0, 0, 500),
					Transparency = 1,
					Transparency2 = 0,
					CFrame = CF(POS),
					MoveToPos = nil,
					RotationX = MRANDOM(-2, 2),
					RotationY = MRANDOM(-12, 12),
					RotationZ = MRANDOM(-2, 2),
					Material = "Neon",
					Color = RightArm.Color,
					SoundID = nil,
					SoundPitch = nil,
					SoundVolume = nil
				})
			end
	WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(0,0,0), Size2 = VT(30,30,30), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = RightArm.Color, SoundID = nil, SoundPitch = 1, SoundVolume = 0})
	if changeto then
		mde=changeto
	end
	Weapon.Parent = nil
	InsanityGun.Parent = nil
	sick.SoundId = "rbxassetid://1066182620"
	sick.PlaybackSpeed = 1
	Speed = 32
end
function MODESWITCHFUNCTIONS.depressed(changeto)
CreateSound(155202884, Torso, 2, 1.4, false)
	local POS = RootPart.Position
			for i = 1, 5 do
				WACKYEFFECT({
					Time = 25,
					EffectType = "Sphere",
					Size = VT(2, 2, 2),
					Size2 = VT(0, 0, 500),
					Transparency = 1,
					Transparency2 = 0,
					CFrame = CF(POS),
					MoveToPos = nil,
					RotationX = MRANDOM(-2, 2),
					RotationY = MRANDOM(-12, 12),
					RotationZ = MRANDOM(-2, 2),
					Material = "Neon",
					Color = RightArm.Color,
					SoundID = nil,
					SoundPitch = nil,
					SoundVolume = nil
				})
			end
	WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(0,0,0), Size2 = VT(30,30,30), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = RightArm.Color, SoundID = nil, SoundPitch = 1, SoundVolume = 0})
	if changeto then
		mde=changeto
	end
	Weapon.Parent = nil
	InsanityGun.Parent = nil
	sick.SoundId = "rbxassetid://4475894410"
	sick.PlaybackSpeed = .86
	Speed=54
end
function MODESWITCHFUNCTIONS.Geno(changeto)
CreateSound(155202884, Torso, 2, 1.4, false)
	local POS = RootPart.Position
			for i = 1, 5 do
				WACKYEFFECT({
					Time = 25,
					EffectType = "Sphere",
					Size = VT(2, 2, 2),
					Size2 = VT(0, 0, 500),
					Transparency = 1,
					Transparency2 = 0,
					CFrame = CF(POS),
					MoveToPos = nil,
					RotationX = MRANDOM(-2, 2),
					RotationY = MRANDOM(-12, 12),
					RotationZ = MRANDOM(-2, 2),
					Material = "Neon",
					Color = RightArm.Color,
					SoundID = nil,
					SoundPitch = nil,
					SoundVolume = nil
				})
			end
	WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(0,0,0), Size2 = VT(30,30,30), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = RightArm.Color, SoundID = nil, SoundPitch = 1, SoundVolume = 0})
	if changeto then
		mde=changeto
	end
	Weapon.Parent = nil
	InsanityGun.Parent = nil
	Bnsh.Parent = Character
	sick.SoundId = "rbxassetid://583415095"
	sick.PlaybackSpeed = .54
	Speed=16
end
function MODESWITCHFUNCTIONS.Corrupt(changeto)
CreateSound(155202884, Torso, 2, 1.4, false)
	local POS = RootPart.Position
			for i = 1, 5 do
				WACKYEFFECT({
					Time = 25,
					EffectType = "Sphere",
					Size = VT(2, 2, 2),
					Size2 = VT(0, 0, 500),
					Transparency = 1,
					Transparency2 = 0,
					CFrame = CF(POS),
					MoveToPos = nil,
					RotationX = MRANDOM(-2, 2),
					RotationY = MRANDOM(-12, 12),
					RotationZ = MRANDOM(-2, 2),
					Material = "Neon",
					Color = RightArm.Color,
					SoundID = nil,
					SoundPitch = nil,
					SoundVolume = nil
				})
			end
	WACKYEFFECT({Time = 25, EffectType = "Sphere", Size = VT(0,0,0), Size2 = VT(30,30,30), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = RightArm.Color, SoundID = nil, SoundPitch = 1, SoundVolume = 0})
	if changeto then
		mde=changeto
	end
	InsanityGun.Parent = nil
	Bnsh.Parent = nil
	Weapon.Parent = Character
	WEAPONGUI.Mode.mdename.Text = "Mode: Corrupt"
	WEAPONGUI.uwu.uwu2.Text = "Z - Banish Bullet"
	sick.SoundId = "rbxassetid://2685404504"
	sick.PlaybackSpeed = .8
	Speed = 20
end
function modetoggle()
if mde == "Corrupt" then
MODESWITCHFUNCTIONS["Relaxed"]("Relaxed")
elseif mde == "Relaxed" then
MODESWITCHFUNCTIONS["Insanity"]("Insanity")
elseif mde == "Insanity" then
MODESWITCHFUNCTIONS["Vis"]("Vis")
elseif mde == "Vis" then
MODESWITCHFUNCTIONS["Sit"]("Sit")
elseif mde == "Sit" then
MODESWITCHFUNCTIONS["error"]("error")
elseif mde == "error" then
MODESWITCHFUNCTIONS["nebula"]("nebula")
elseif mde == "nebula" then
MODESWITCHFUNCTIONS["???"]("???")
elseif mde == "???" then
MODESWITCHFUNCTIONS["Rev"]("Rev")
elseif mde == "Rev" then
MODESWITCHFUNCTIONS["mnlght"]("mnlght")
elseif mde == "mnlght" then
MODESWITCHFUNCTIONS["death"]("death")
elseif mde == "death" then
MODESWITCHFUNCTIONS["poisoned"]("poisoned")
elseif mde == "poisoned" then
MODESWITCHFUNCTIONS["unholy"]("unholy")
elseif mde == "unholy" then
MODESWITCHFUNCTIONS["uncolored"]("uncolored")
elseif mde == 'uncolored' then
MODESWITCHFUNCTIONS["edgialization"]("edgialization")
elseif mde == 'edgialization' then
MODESWITCHFUNCTIONS["unknown"]("unknown")
elseif mde == 'unknown' then
MODESWITCHFUNCTIONS["depressed"]("depressed")
elseif mde == 'depressed' then
MODESWITCHFUNCTIONS["Geno"]("Geno")
elseif mde == 'Geno' then
MODESWITCHFUNCTIONS["Corrupt"]("Corrupt")
end
end
local BODY = {}
for _, c in pairs(Character:GetDescendants()) do
	if c:IsA("BasePart") and c.Name ~= "Handle" and not c:IsDescendantOf(Effects) then
		if c ~= RootPart and c ~= Torso and c ~= Head and c ~= RightArm and c ~= LeftArm and c ~= RightLeg and c ~= LeftLeg then
			c.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
		end
		table.insert(BODY,{c,c.Parent,c.Material,c.Color,c.Transparency,c.Size,c.Name})
	elseif c:IsA("JointInstance") then
		table.insert(BODY,{c,c.Parent,nil,nil,nil,nil,nil})
	end
end
for e = 1, #BODY do
	if BODY[e] ~= nil then
		do
			local STUFF = BODY[e]
			local PART = STUFF[1]
			local PARENT = STUFF[2]
			local MATERIAL = STUFF[3]
			local COLOR = STUFF[4]
			local TRANSPARENCY = STUFF[5]
			if PART.ClassName == "Part" and PART ~= RootPart then
				PART.Material = MATERIAL
				PART.Transparency = TRANSPARENCY
			end
			--[[PART.AncestryChanged:Connect(function()
				PART.Parent = PARENT
			end)--]]
		end
	end
end
local Regen = {}
for e = 1, #Regen do
	if Regen[e] ~= nil then
		local STUFF = Regen[e]
		local PART = STUFF[1]
		local PARENT = STUFF[2]
		local MATERIAL = STUFF[3]
		local COLOR = STUFF[4]
		local TRANSPARENCY = STUFF[5]
		if PART.ClassName == "Part" and PART ~= BODY.RootPart then
			PART.Material = MATERIAL
			PART.Color = COLOR
			PART.Transparency = TRANSPARENCY
		end
		--[[PART.AncestryChanged:Connect(function()
			PART.Parent = PARENT
		end)--]]
	end
end
function Refit()
	coroutine.resume(coroutine.create(function()
	wait()
	Humanoid.Died:connect(Refit)	
	end))
	for i = 1,#Regen do
		local E = Regen[i]
		local PART = E[1]
		local PARENT = E[2]
		local COLOR = E[3]
		local SIZE = E[4]
		local MATERIAL = E[5]
		if PART:IsA("BasePart") and PART.Parent ~= PARENT then
			PART.Color = COLOR
			PART.Size = SIZE
			PART.Material = MATERIAL
		end
		if PART.Parent ~= PARENT then
			Humanoid.Parent = nil
			PART.Parent = PARENT
			Humanoid.Parent = Character
		end
	end
	Humanoid.Parent = Character
end
Effects.Parent = Character
local States = {
	"FallingDown";
	"PlatformStanding";
	"Physics";
	"Swimming";
	"Dead";
	"Ragdoll";
	"Seated";
}
for i,v in pairs(States) do
	Humanoid:SetStateEnabled(v,false)
end
--//=================================\\
--||        CHAT FUNCTION
--\\=================================//
function chatfunc(text)
	local chat = coroutine.wrap(function()
	if Character:FindFirstChild("TalkingBillBoard")~= nil then
		Character:FindFirstChild("TalkingBillBoard"):destroy()
	end
	local Bill = Instance.new("BillboardGui",Character)
	Bill.Size = UDim2.new(0,100,0,40)
	Bill.StudsOffset = Vector3.new(0,3,0)
	Bill.Adornee = Character.Head
	Bill.Name = "TalkingBillBoard"
	local Hehe = Instance.new("TextLabel",Bill)
	Hehe.BackgroundTransparency = 1
	Hehe.BorderSizePixel = 0
	Hehe.Text = ""
	Hehe.Font = "Garamond"
	Hehe.TextSize = 40
	Hehe.TextStrokeTransparency = 0
	Hehe.Size = UDim2.new(1,0,0.5,0)
	coroutine.resume(coroutine.create(function()
		while Hehe ~= nil do
			Swait()	
			Hehe.Position = UDim2.new(0,math.random(-1.5,1.5),0,math.random(-1.5,1.5))	
			Hehe.Rotation = 0-2*math.random(-1.5,1.5)
			if mde == "Corrupt" then
			local val = MRANDOM(1,255)
			Hehe.TextColor3 = Color3.fromRGB(val,val,val)
			Hehe.TextStrokeColor3 = Color3.fromRGB(val,val,val)
			elseif mde == "Relaxed" then
			Hehe.TextColor3 = color
			Hehe.TextStrokeColor3 = color
			elseif mde == "Insanity" or mde == "krma" then
			Hehe.TextColor3 = BrickColor.Random().Color
			Hehe.TextStrokeColor3 = BrickColor.Random().Color
			elseif mde == "Vis" or mde == 'poisoned' then
			Hehe.TextColor3 = Color3.fromRGB(0+170*sick.PlaybackLoudness/1000,0,0+170*sick.PlaybackLoudness/1000)
			Hehe.TextStrokeColor3 = Color3.fromRGB(0+170*sick.PlaybackLoudness/1000,0,0+170*sick.PlaybackLoudness/1000)
			elseif mde == "Sit" then
			Hehe.TextColor3 = Color3.fromHSV(Hue/360,1,math.clamp(sick.PlaybackLoudness/950,0,1))
			Hehe.TextStrokeColor3 = Color3.fromHSV(Hue/360,1,math.clamp(sick.PlaybackLoudness/950,0,1))
			elseif mde == "error" then
			Hehe.TextColor3 = Color3.fromRGB(0,math.random(0,255),0)
			Hehe.TextStrokeColor3 = Color3.fromRGB(0,math.random(0,255),0)
			elseif mde == 'nebula' or mde == 'edgialization' or mde == 'Geno' then
			Hehe.TextColor3 = Color3.fromRGB(math.random(0,255),0,0)
			Hehe.TextStrokeColor3 = Color3.fromRGB(math.random(0,255),0,0)
			elseif mde == "???" then
			Hehe.TextColor3 = Color3.fromRGB(0,0,0+178*sick.PlaybackLoudness/100)
			Hehe.TextStrokeColor3 = Color3.fromRGB(0,0,0+178*sick.PlaybackLoudness/100)
			elseif mde == 'Rev' or mde == 'unholy' then
			Hehe.TextColor3 = Color3.fromRGB(0+178*sick.PlaybackLoudness/100,0,0)
			Hehe.TextStrokeColor3 = Color3.fromRGB(0+178*sick.PlaybackLoudness/100,0,0)
			elseif mde == 'mnlght' then
			Hehe.TextColor3 = Color3.fromRGB(0,0+89*sick.PlaybackLoudness/100,0+18*sick.PlaybackLoudness/100)
			Hehe.TextStrokeColor3 = Color3.fromRGB(0,0+89*sick.PlaybackLoudness/100,0+18*sick.PlaybackLoudness/100)
			elseif mde == 'death' then
			Hehe.TextColor3 = C3(98/255 + sick.PlaybackLoudness/1000, 37/255 + sick.PlaybackLoudness/1000, 209/255 + sick.PlaybackLoudness/1000)
			Hehe.TextStrokeColor3 = C3(98/255 + sick.PlaybackLoudness/1000, 37/255 + sick.PlaybackLoudness/1000, 209/255 + sick.PlaybackLoudness/1000)
			elseif mde == 'uncolored' or mde == 'unknown' or mde == 'depressed' then
			Hehe.TextColor3 = C3(math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500))
			Hehe.TextStrokeColor3 = C3(math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500))
			end	
		end
	end))
	for i = 1,string.len(text),1 do
		Swait()
		Hehe.Text = string.sub(text,1,i)
	end
Swait(30)
local rrot = math.random(1,2)
if rrot == 1 then
	Hehe.Text = ""
CreateSound(749189256,RootPart,2,math.random(5, 15) / 10,false)
	for i = 1, 100 do
Swait()
Hehe.Text = Hehe.Text.. string.char(math.random(0,126)) -- Encodes The Chat String After You Say Something With It
Hehe.Position = Hehe.Position - UDim2.new(math.random(-.4,.4),math.random(-5,5),.05,math.random(-5,5))
Hehe.Rotation = Hehe.Rotation - .8
Hehe.TextStrokeTransparency = Hehe.TextStrokeTransparency +.02
Hehe.TextTransparency = Hehe.TextTransparency + .02
end
elseif rrot == 2 then
	Hehe.Text = ""
CreateSound(749189256,RootPart,2,math.random(5, 15) / 10,false)
	for i = 1, 100 do
Swait()
Hehe.Text = Hehe.Text.. string.char(math.random(0,126))
Hehe.Position = Hehe.Position - UDim2.new(math.random(-.4,.4),math.random(-5,5),.05,math.random(-5,5))
Hehe.Rotation = Hehe.Rotation - .8
Hehe.TextStrokeTransparency = Hehe.TextStrokeTransparency +.02
Hehe.TextTransparency = Hehe.TextTransparency + .02
end
end
Bill:Destroy()
end)
chat()
end

function onChatted(msg)
	chatfunc(msg)
end

Player.Chatted:connect(onChatted)

Player.Chatted:connect(function(message)
	if mde == 'Vis' then
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

--[[chatfunc("The Mysterious Banisher created By lstroud07 and Converted to a kickisher by Godcat567")
wait(2)
chatfunc("If You Leak This Or Log Me Your  D  E  A  D")
wait(2)--]]

local owner = "Godcat567"
local devmsg = "This taunt is currently disabled by "..owner
--//=================================\\
--||	  ASSIGN THINGS TO KEYS
--\\=================================//

function MouseDown(Mouse)
	if ATTACK == false and mde == "Corrupt" then
		--beam() :nutting:
	end
end

function MouseUp(Mouse)
HOLD = false
end

function KeyDown(Key)
	KEYHOLD = true
	if Key == "z" and ATTACK == false and mde == "Corrupt" then
		shot_lol_die_minecrft_csdfbgvsdfbngjdsgvvsdfgvdfgvgfsddhijsukzc()
	end

	if Key == "t" and ATTACK == false then
	chatfunc(devmsg)
        end

	if Key == "e" and ATTACK == false then
		modetoggle()
	end
	
	if Key == "x" and ATTACK == false and mde == "Relaxed" then
		chatfunc("L e t s  c h i l l  o u t  d u d e")
	end
	
	if Key == "x" and ATTACK == false and mde == 'death' then
		chatfunc("Leave me alone")
	end
	
	if Key  == "x" and ATTACK == false and mde == "Corrupt" then
		chatfunc("Corruption")
	end
	
	if Key == "q" and ATTACK == false and mde == "Insanity" then
		REEEEEEEEE()
	end
	
	if Key == "n" and ATTACK == false and mde == "Vis" then
		sick.SoundId = "rbxassetid://"..VSONGS[MRANDOM(1,24)]
	end
	
	if Key == "m" and ATTACK == false and mde == "Sit" then
		sick.SoundId = "rbxassetid://"..NK[MRANDOM(1,8)]
	end
	
	if Key == "z" and ATTACK == false and mde == 'error' then
		BanishmentBeam()
	end 
	
	if Key == "z" and ATTACK == false and mde == 'nebula' then
		hand_bullet()
	end
	
	if Key == "z" and ATTACK == false and mde == 'death'then
		shot()
	end
	
	if Key == "r" and ATTACK == false and mde == 'poisoned' then
		PoisonedTaunt()
	end
	
	if Key == 'z' and ATTACK == false and mde == 'Geno' then
		geno_shot()
	end
	
	if Key == "z" and ATTACK == false and mde == 'unholy' then
		mUrDeR()
	end
		
	if Key == "z" and ATTACK == false and mde == 'unknown' then
		beam2()
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
--\\=================================//
local FakeVel = Vector3.new(0,0,0)

--//=================================\\
--||	WRAP THE WHOLE SCRIPT UP
--\\=================================//
Humanoid.Changed:connect(function(Jump)
	if Jump == "Jump" and (Disable_Jump == true) then
		Humanoid.Jump = false
	elseif Jump == "Jump" and (Disable_Jump == false) and DOUBLED == false then
		wait(0.1)
		READYTODOUBLE = true
	end
end)

coroutine.resume(coroutine.create(function()
while true do
Swait()
if mde == "Corrupt" then
if MRANDOM(1,8) == 1 then
WACKYEFFECT({Time = MRANDOM(15,65),EffectType = "Slash", Size = VT(0,0.05,0), Size2 = VT(0.0625,0.015,0.0625)*MRANDOM(1,8), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-2,0)*CFrame.Angles(math.rad(math.random(-5,5)),math.rad(math.random(-360,360)),math.rad(math.random(-5,5))), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(val,val,val), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
end
elseif mde == "Relaxed" then
WACKYEFFECT({Time = 5, EffectType = "Sphere", Size = VT(3,3,3), Size2 = VT(0,0,0), Transparency = 1, Transparency2 = .25, CFrame = RightLeg.CFrame*CF(0,-1.45,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
WACKYEFFECT({Time = 5, EffectType = "Sphere", Size = VT(3,3,3), Size2 = VT(0,0,0), Transparency = 1, Transparency2 = .25, CFrame = LeftLeg.CFrame*CF(0,-1.45,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
WACKYEFFECT({Time = 5, EffectType = "Sphere", Size = VT(3,3,3), Size2 = VT(0,0,0), Transparency = 1, Transparency2 = .25, CFrame = RightArm.CFrame*CF(0,-1.45,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
WACKYEFFECT({Time = 5, EffectType = "Sphere", Size = VT(3,3,3), Size2 = VT(0,0,0), Transparency = 1, Transparency2 = .25, CFrame = LeftArm.CFrame*CF(0,-1.45,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
elseif mde == "Insanity" then
WACKYEFFECT({Time = 12, EffectType = "Block", Size = VT(3,3,3)/3, Size2 = VT(1,1,1)/3, Transparency = .5, Transparency2 = 1, CFrame = LeftArm.CFrame*CF(0,-1.45,0), MoveToPos = nil, RotationX = nil, RotationY = 0, RotationZ = 0, Material = "Neon", Color = BrickColor.Random().Color, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
elseif mde == "Sit" then
if MRANDOM(1,1) == 1 then
WACKYEFFECT({Time = 2.5, EffectType = "Sphere", Size = VT(7+sick.PlaybackLoudness/25,0.55,7+sick.PlaybackLoudness/25), Size2 = VT(7+sick.PlaybackLoudness/25,0.55,7+sick.PlaybackLoudness/25), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-3,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.fromHSV(Hue/360,1,math.clamp(sick.PlaybackLoudness/950,0,1)), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
end
end
end
end))

while true do
	Swait()
	coroutine.wrap(function()
		if ModeVal.Value ~= mde then
			if lplr == Player then
				CurMode:FireServer(mde)
			else
				local chang = false
				local connection = ModeVal.Changed:Connect(function(ch)
					if ch=="Value" then
						chang = true
					end
				end)
				Swait(4)
				connection:Disconnect()
				if ModeVal.Value ~= mde and not(chang) then
					MODESWITCHFUNCTIONS[ModeVal.Value](ModeVal.Value)
				end
			end
		end	
	end)()
	if AntiBullet == true then
if workspace:FindFirstChild("EnCorrupt") == nil then
Shield = Instance.new("MeshPart",workspace)
Shield.Name = "EnCorrupt"
Shield.CanCollide = false
Shield.Transparency = 1
Shield.Material = "Neon"
Shield.Color = Color3.fromRGB(val,val,val)
Shield.Massless = true
Shield.Size = Vector3.new(5,5,5)
Shield.CFrame = Torso.CFrame
local GlitchWeld = Instance.new("Weld",Shield)
GlitchWeld.Part0 = Shield
GlitchWeld.Part1 = Torso
end
	end
	if Character:FindFirstChild("Safety") == nil then
		local Safety = IT("Script")
		Safety.Name = "Safety"
		Safety.Parent = Character
	end
	for T = 1, #TAIL do
		if TAIL[T] ~= nil then
			TAIL[T].C1 = Clerp(TAIL[T].C1, CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(3.5 * SIN(SINE / 12))), 1 / Animation_Speed)
		end
	end
	for _,v in next, Humanoid:GetPlayingAnimationTracks() do
	    v:Stop();
	end
	SINE = SINE + CHANGE
	vissine = vissine + CHANGE * sick.PlaybackLoudness/150
	sine = sine + CHANGE
	Hue = Hue + 1
	if (Hue>360) then Hue = 0 end
	local TORSOVELOCITY = (FakeVel * VT(1, 0, 1)).magnitude
	local TORSOVERTICALVELOCITY = FakeVel.y
	if lplr == Player then
		TORSOVELOCITY = (RootPart.Velocity * VT(1, 0, 1)).magnitude
		TORSOVERTICALVELOCITY = RootPart.Velocity.y
	end
	local HITFLOOR,HITPOS = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 4, Character)
	local WALKSPEEDVALUE = 12 / (Humanoid.WalkSpeed / 16)
	if TORSOVERTICALVELOCITY > 1 and HITFLOOR == nil then
		ANIM = "Jump"
		if ATTACK == false then
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 ) * ANGLES(RAD(-5), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0 , 0 + ((1) - 1)) * ANGLES(RAD(-45), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(180), RAD(0), RAD(15 + 5 * COS(SINE / 12))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-35), RAD(0), RAD(-25 - 10 * COS(SINE / 12))) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.4, -0.6) * ANGLES(RAD(1), RAD(90), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
	elseif TORSOVERTICALVELOCITY < -1 and HITFLOOR == nil then
		ANIM = "Fall"
		if ATTACK == false then
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 ) * ANGLES(RAD(15), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0 , 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(180 - 4 * COS(SINE / 6)), RAD(0), RAD(15 + 10 * COS(SINE / 12))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(35 - 4 * COS(SINE / 6)), RAD(0), RAD(-45 - 10 * COS(SINE / 12))) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.3, -0.7) * ANGLES(RAD(-25 + 5 * SIN(SINE / 12)), RAD(90), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.8, -0.3) * ANGLES(RAD(-10), RAD(-80), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
	elseif TORSOVELOCITY < 1 and HITFLOOR ~= nil then
		ANIM = "Idle"
		DOUBLED = false
		READYTODOUBLE = false
		if ATTACK == false then
			if mde == "Corrupt" then
				if VALUE1 == false and math.random(1,55) == 1 then
					coroutine.resume(coroutine.create(function()
						VALUE1 = true
						for i=1,25 do
							Swait()
							FT.Parent = Torso
							FRA.Parent = RightArm
							FLA.Parent = LeftArm
							FRL.Parent = RightLeg
							FLL.Parent = LeftLeg
					for _,v in next, Character:GetDescendants() do
						if(v:IsA'DataModelMesh')then
							v.Offset = VT(math.random(-50,50)/100,math.random(-50,50)/100,math.random(-50,50)/100)
						end
					end		
						end
						VALUE1 = false
						FT.Parent = nil
						FRA.Parent = nil
						FLA.Parent = nil
						FRL.Parent = nil
						FLL.Parent = nil
					for _,v in next, Character:GetDescendants() do
						if(v:IsA'DataModelMesh')then
							v.Offset = VT(0,0,0)
						end
					end	
					end))
				end
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 2 + 1 * COS(SINE / 18)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed) 
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(160 + 4 * COS(SINE / 62)), RAD(0), RAD(15 - 3 * COS(SINE / 12))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(0), RAD(0), RAD(-15 + 3 * COS(SINE / 12))) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(-17 + 9.4 * COS(sine / 26)), RAD(80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -.5, -0.5) * ANGLES(RAD(-22 + 10.8 * COS(sine / 32)), RAD(-80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			if MRANDOM(1,32+sick.PlaybackLoudness/7) == 1 then
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(MRANDOM(-100000-sick.PlaybackLoudness/7,100000+sick.PlaybackLoudness/7)), RAD(MRANDOM(-99999-sick.PlaybackLoudness/7,99999+sick.PlaybackLoudness/7)), RAD(MRANDOM(-200-sick.PlaybackLoudness/7,48375935+sick.PlaybackLoudness/7))), 1 / Animation_Speed) 
			end
			if MRANDOM(1,20+sick.PlaybackLoudness/7) == 1 then
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(MRANDOM(-90-sick.PlaybackLoudness/7,90+sick.PlaybackLoudness/7)), RAD(MRANDOM(-30-sick.PlaybackLoudness/7,30+sick.PlaybackLoudness/7)), RAD(MRANDOM(-50-sick.PlaybackLoudness/7,50+sick.PlaybackLoudness/7)))* RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + 0.05 * SIN(SINE / 12), 0) * ANGLES(RAD(MRANDOM(-10000-sick.PlaybackLoudness/7,10000+sick.PlaybackLoudness/7)), RAD(MRANDOM(-900-sick.PlaybackLoudness/7,900+sick.PlaybackLoudness/7)), RAD(MRANDOM(-20-sick.PlaybackLoudness/7,20+sick.PlaybackLoudness/7)))* LEFTSHOULDERC0, 1 / Animation_Speed)
			end
			elseif mde == "Relaxed" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(-0.5*COS(SINE / 40),0,3-2*COS(SINE / 40))*ANGLES(RAD(-70 + 20 *COS(SINE / 40)),RAD(0),RAD(0)), 1 / Animation_Speed)
	        Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-15 + 25*COS(SINE / 40)), RAD(0), RAD(21 + 2.5 * SIN(SINE / 40))), 1 / Animation_Speed) 
	        RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-20 + 40 * COS(SINE / 40)), RAD(0), RAD(15 + 3 * COS(SINE / 40) - 3 * SIN(SINE / 40))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
	        LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-20 + 40 * COS(SINE / 40)), RAD(0), RAD(-15 + 3 * COS(SINE / 40) + 3 * SIN(SINE / 40))) * LEFTSHOULDERC0, 1 / Animation_Speed)
		    RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(-20+40*COS(SINE / 40)), RAD(80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		    LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(-10+40*COS(SINE / 40)), RAD(-80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			elseif mde == "Insanity" then
			snap = math.random(1,6)
			if snap == 1 then
			Neck.C0 = Clerp(Neck.C0,NECKC0*cf(0,0,0+((1)-1))*angles(math.rad(math.random(-10000,10000)),math.rad(math.random(-10000,10000)),math.rad(math.random(-10000,10000))),1/Animation_Speed)
			end
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0,0,-.2+.05*COS(SINE / 12))*ANGLES(RAD(1+2*COS(SINE / 12)),RAD(0),RAD(0)), 1 / Animation_Speed)
	        Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-2.5+1*COS(SINE / 12)), RAD(MRANDOM(-5,5)), RAD(0)), 1 / Animation_Speed) 
	        RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(15 + 3 * COS(SINE / 40) - 3 * SIN(SINE / 40) + MRANDOM(-35,35))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
	        LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-15 + 3 * COS(SINE / 40) + 3 * SIN(SINE / 40) - MRANDOM(-35,35))) * LEFTSHOULDERC0, 1 / Animation_Speed)
		    RightHip.C0 = Clerp(RightHip.C0, CF(1, -1-.05*COS(SINE / 12), -0.01) * ANGLES(RAD(1-2*COS(sine/12)), RAD(80), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 1 / Animation_Speed)
		    LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1-.05*COS(SINE  / 12), -0.01) * ANGLES(RAD(1-2*COS(sine/12)), RAD(-80), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 1 / Animation_Speed)
			elseif mde == "Vis" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0,0,0+.1*COS(SINE / 18))*ANGLES(RAD(0+1*COS(SINE / 18)),RAD(0),RAD(0)), 1 / Animation_Speed)
	        Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-1+-2*COS(SINE / 32)), RAD(0), RAD(10)), 1 / Animation_Speed) 
	        RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(10)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
	        LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(40+sick.PlaybackLoudness/7.5), RAD(0), RAD(-10)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		    RightHip.C0 = Clerp(RightHip.C0, CF(1, -1-.1*COS(SINE / 18), -0.01) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		    LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.-sick.PlaybackLoudness/1000, -0.6) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			elseif mde == "Sit" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0*CF(0,0,-1.2+.05*COS(SINE/36))*ANGLES(RAD(10-1.5*COS(SINE/36)),RAD(0),RAD(0)), 1/Animation_Speed)
			Neck.C0 = Clerp(Neck.C0,NECKC0*CF(0,0,0+((1)-1))*ANGLES(RAD(-10),RAD(0),RAD(0+3*COS(SINE/36))), 1/Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0,CF(1.5,0.5+.1*COS(SINE/36),-.3)*ANGLES(RAD(44.1),RAD(0),RAD(-25))*RIGHTSHOULDERC0,1/Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0,CF(-1.5,0.5+.1*COS(SINE/36),-.3)*ANGLES(RAD(44.1),RAD(0),RAD(25))*LEFTSHOULDERC0,1/Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0,CF(1,-1.4-.05*COS(SINE/36),.3)*ANGLES(RAD(100+1.5*COS(SINE/36)),RAD(90),RAD(0))*ANGLES(RAD(-15),RAD(0),RAD(0)),1/Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0,CF(-1,-1.4-.05*COS(SINE/36),.3)*ANGLES(RAD(100+1.5*COS(SINE/36)),RAD(-90),RAD(0))*ANGLES(RAD(-15),RAD(0),RAD(0)),1/Animation_Speed)
			elseif mde == "error" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0,0,1+.25*COS(SINE / 12))*ANGLES(RAD(1+2.5*COS(SINE / 12)),RAD(0),RAD(0)), 1 / Animation_Speed)
	        Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(1-2.5*COS(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed) 
	        RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
	        LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-.75, 0.5, -.7) * ANGLES(RAD(0), RAD(0), RAD(90)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		    RightHip.C0 = Clerp(RightHip.C0, CF(1, -1-.05*COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(-8-2.5*COS(SINE/12)), RAD(0), RAD(0)), 1 / Animation_Speed)
		    LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -.5-.05*COS(SINE  / 12), -0.5) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(-8-2.5*COS(SINE/12)), RAD(0), RAD(0)), 1 / Animation_Speed)
			elseif mde == "nebula" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0,0,0+.25*COS(SINE / 12))*ANGLES(RAD(0),RAD(0),RAD(0)), 1 / Animation_Speed)
	        Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(17-2.5*COS(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed) 
	        RightShoulder.C0 = Clerp(RightShoulder.C0, CF(.95, 0.5, 0.3) * ANGLES(RAD(-20), RAD(0), RAD(-35)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
	        LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-.95, 0.5, 0.3) * ANGLES(RAD(-20), RAD(0), RAD(35)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		    RightHip.C0 = Clerp(RightHip.C0, CF(1, -1-.25*COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(80-5*math.cos(SINE/12)), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		    LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1-.25*COS(SINE  / 12), -0.01) * ANGLES(RAD(0), RAD(-80 + 5*math.cos(SINE/12)), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			elseif mde == "???" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0,0,2+0.5*COS(SINE / 7))*ANGLES(RAD(0+2*COS(SINE / 12)),RAD(0),RAD(0)), 1 / Animation_Speed)
	        Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-1+-2*COS(SINE / 32)), RAD(0), RAD(10)), 1 / Animation_Speed) 
	        RightShoulder.C0 = Clerp(RightShoulder.C0, CF(.75, 0.5, -0.8) * ANGLES(RAD(0), RAD(0), RAD(-85)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
	        LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-.75, 0.5, -0.7) * ANGLES(RAD(0), RAD(0), RAD(95)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		    RightHip.C0 = Clerp(RightHip.C0, CF(1, -1-.001*COS(SINE / 7), -0.01) * ANGLES(RAD(-10-2.5*math.cos(sine/12)), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		    LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -.5-.001*math.cos(sine/7), -0.5) * ANGLES(RAD(-25-2.5*math.cos(sine/12)), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			elseif mde == 'Rev' then
			snap = math.random(1,32)
			if snap == 1 then
			Neck.C0 = Clerp(Neck.C0,NECKC0*cf(0,0,0+((1)-1))*angles(math.rad(math.random(-12093487,10000)),math.rad(math.random(-200,10000)),math.rad(math.random(-999999999,10000))),1/Animation_Speed)
			end
			WACKYEFFECT({Time = 30, EffectType = "Sphere", Size = VT(0.5,0,0.5), Size2 = VT(0.2,6,0.2), Transparency = 0.3, Transparency2 = 1, CFrame = CF(HITPOS)*ANGLES(RAD(0),RAD(MRANDOM(0,360)),RAD(0))*CF(0,0,MRANDOM(3,7)) * ANGLES(RAD(MRANDOM(-15,15)), RAD(0), RAD(MRANDOM(-15,15))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-1,1)*5, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(0+178*sick.PlaybackLoudness/100,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
         WACKYEFFECT({Time = 50, EffectType = "Box", Size = VT(0.9,0.55,0.9), Size2 = VT(0,5,0), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(MRANDOM(-15,15),-2.5,MRANDOM(-15,15)), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(0+178*sick.PlaybackLoudness/100,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
         WACKYEFFECT({Time = 10, EffectType = "Skull", Size = VT(5,5,5), Size2 = VT(1,1,1), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(MRANDOM(-15,15),MRANDOM(-2.5,13.1),MRANDOM(-15,15)), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(0+178*sick.PlaybackLoudness/100,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
            RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 - 0.3 * COS(SINE / 2)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
            Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5), RAD(0), RAD(-45)), 1 / Animation_Speed)
            RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1, 0.5, 0.5) * ANGLES(RAD(-20), RAD(-.6), RAD(-43)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
            LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1, 0.5, 0.5) * ANGLES(RAD(-20), RAD(-.6), RAD(43)) * LEFTSHOULDERC0, 1 / Animation_Speed)
            RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 + 0.3 * COS(SINE / 2),-0.01) * ANGLES(RAD(0), RAD(85), RAD(0)) * ANGLES(RAD(-6), RAD(0), RAD(0)), 0.5 / Animation_Speed)
            LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 + 0.3 * COS(SINE / 2),-0.01) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-6), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			elseif mde == "mnlght" then
			bouncyboi = sick.PlaybackLoudness / 1200
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 2 + 0.5 * COS(SINE / 12) + bouncyboi) * ANGLES(RAD(-60 + 2.5 * SIN(SINE / 12)), RAD(0), RAD(5 + 1 * SIN(SINE / 12))), 1 / Animation_Speed)
		    Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0 + 4.5 * SIN(SINE / 12)), RAD(0), RAD(-5 - 2.5 * SIN(SINE / 12))), 1 / Animation_Speed)
		    RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.15, 0.50 + 0.05 * COS(SINE / 99), 0.4) * ANGLES(RAD(-43), RAD(0 - 2.5 * SIN(SINE / 99)), RAD(-45 + 7.5 * SIN(SINE / 99))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.15, 0.50 + 0.05 * COS(SINE / 99), 0.4) * ANGLES(RAD(-43), RAD(0 + 2.5 * SIN(SINE / 99)), RAD(45 - 7.5 * SIN(SINE / 99))) * LEFTSHOULDERC0, 1 / Animation_Speed)
		    RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.15 * COS(SINE / 12) - bouncyboi, -0.05) * ANGLES(RAD(35 - 7.5 * SIN(SINE / 12)), RAD(75), RAD(0)) * ANGLES(RAD(-8 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
		    LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.15 * COS(SINE / 12) - bouncyboi, -0.05) * ANGLES(RAD(35 - 7.5 * SIN(SINE / 12)), RAD(-90), RAD(0)) * ANGLES(RAD(-8 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
--[[			elseif mde == "krma" then
				local bouncyboi = sick.PlaybackLoudness / 1200
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, -0.1, -0.1 + 0.05 * COS(SINE / 12) + bouncyboi) * ANGLES(RAD(15), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + 0.025 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(0 - 7.5 * SIN(SINE / 12)), RAD(12 + 7.5 * SIN(SINE / 12))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.7, 0.5 + sick.PlaybackLoudness / 1200, -0.3) * ANGLES(RAD(-200), RAD(0), RAD(30)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12) - bouncyboi, -0.01) * ANGLES(RAD(20), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12) - bouncyboi, -0.01) * ANGLES(RAD(5), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(25 + MRANDOM(-5,5) - 4 * COS(SINE / 12)), RAD(MRANDOM(-5,5)), RAD(15)), 1 / Animation_Speed)--]]
				if MRANDOM(1, 10) == 1 then
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 + MRANDOM(-25,25) - 4 * COS(SINE / 12)), RAD(MRANDOM(-25,25)), RAD(0)), 1.5 / Animation_Speed)
				end
			elseif mde == "death" then
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 4 + 1 * SIN(SINE / 26)) * ANGLES(RAD(-5 - 2.5*SIN(SINE/48/2)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(0 + 2.5 *COS(SINE / 12)), RAD(0)), 0.15 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-20 - 13*SIN(SINE/12)), RAD(0), RAD(12 - 4.10 * SIN(SINE / 12))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-20 - 13*SIN(SINE/12)), RAD(0), RAD(-12 + 4.10 * SIN(SINE / 12))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -.5 - 0.02 * SIN(SINE / 12), -0.5) * ANGLES(RAD(-10 - 2.5 * SIN(SINE / 21)), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.02 * SIN(SINE / 12), -0.01) * ANGLES(RAD(-20 - 2.5 * SIN(SINE / 16)), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)	
					elseif mde == 'poisoned' then
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 3 + 1 * SIN(sine / 26)) * ANGLES(RAD(-10 - 2.5*SIN(sine/24)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12*5)), RAD(0), RAD(0+2.5*SIN(SINE/12))), 0.15 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(120 - 13*SIN(sine/12)), RAD(0), RAD(12 - 4.10 * SIN(sine / 12*3))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-40 - 13*SIN(sine/52)), RAD(0), RAD(-12 + 4.10 * SIN(sine / 31))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -.5 - 0.02 * SIN(SINE / 12), -0.5) * ANGLES(RAD(-20 - 2.5 * SIN(sine / 12*2)), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.02 * SIN(SINE / 12), -0.01) * ANGLES(RAD(-40 - 2.5 * SIN(sine / 16)), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			elseif mde == 'unholy' then
			snap = math.random(1,6)
			if snap == 1 then
			Neck.C0 = Clerp(Neck.C0,NECKC0*cf(0,0,0+((1)-1))*angles(math.rad(math.random(-10000,10000)),math.rad(math.random(-10000,10000)),math.rad(math.random(-10000,10000))),1/Animation_Speed)
			end
			local chatto = {"H3LP","D13","3ND M3","F8D3"}
			if(math.random(1,320)==1)then
				chatfunc(chatto[math.random(1,#chatto)])
			end
			snap2 = math.random(1,2)
			if snap2 == 1 then
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1, 0.5, -0.6) * ANGLES(math.rad(math.random(-10000,10000)),math.rad(math.random(-10000,10000)),math.rad(math.random(-10000,10000))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1, 0.5, -0.6) * ANGLES(math.rad(math.random(-10000,10000)),math.rad(math.random(-10000,10000)),math.rad(math.random(-10000,10000))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			end
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 3 + 1 * SIN(sine / 26)) * ANGLES(RAD(25 - 2.5*SIN(sine/24)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-15 - 2.5 * SIN(SINE / 12*5)), RAD(0), RAD(math.random(-5,5))), 0.15 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1, 0.5, -0.6) * ANGLES(RAD(165), RAD(0), RAD(-50)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1, 0.5, -0.6) * ANGLES(RAD(165), RAD(0), RAD(50)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -.5 - 0.02 * SIN(SINE / 12), -0.5) * ANGLES(RAD(-70 - 2.5 * SIN(sine / 32)), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.02 * SIN(SINE / 12), -0.01) * ANGLES(RAD(-70 - 2.5 * SIN(sine / 16)), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			elseif mde == 'uncolored' then
			snap = math.random(1,6)
			distort = 0
			if snap == 1 then
			Neck.C0 = Clerp(Neck.C0,NECKC0*cf(0,0,0+((1)-1))*angles(math.rad(math.random(-10000,10000)),math.rad(math.random(-10000,10000)),math.rad(math.random(-10000,10000))),1/Animation_Speed)
			end
			if math.random(1,45) == 1 then
				distort = distort + math.random(6,12)
			end
			if distort > 0 then
				distort = distort - 1
				sick.PlaybackSpeed = math.random(2,5)/5
			else
				distort = 0	
				sick.PlaybackSpeed = .75
			end
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0,0,2+.5*COS(SINE / 32))*ANGLES(RAD(-25 + 2*Cos(sine/42)),RAD(0),RAD(0)), 1 / Animation_Speed)
	        Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-2.5+1*COS(SINE / 12)), RAD(MRANDOM(-5,5)), RAD(0)), 1 / Animation_Speed) 
	        RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-30), RAD(0), RAD(15 - 5.5 * COS(SINE / 20))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
	        LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-30), RAD(0), RAD(-15 + 5.5 * COS(SINE / 20))) * LEFTSHOULDERC0, 1 / Animation_Speed)
		    RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.2) * ANGLES(RAD(-30+2*Cos(sine/32)), RAD(80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		    LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.2) * ANGLES(RAD(-30+2*Cos(sine/46)), RAD(-80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			elseif mde == 'edgialization' then
			snappy = math.random(1,8)/8
			if snappy == 1 then
			Neck.C0 = Clerp(Neck.C0,NECKC0*cf(0,0,0+((1)-1))*angles(math.rad(math.random(-10000,10000)),math.rad(math.random(-10000,10000)),math.rad(math.random(-10000,10000))),1/Animation_Speed)
			end
			snappy2=math.random(1,3)/3
			if snappy2==1 then
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(math.rad(math.random(-10000,10000)),math.rad(math.random(-10000,10000)),math.rad(math.random(-10000,10000))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(math.rad(math.random(-10000,10000)),math.rad(math.random(-10000,10000)),math.rad(math.random(-10000,10000))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			end
			chats={"Die","Burn in hell","Fade from Existance","Eradicate Yourself","Live in the Void"}
			if math.random(1,320)==1 then
				chatfunc(chats[math.random(1,#chats)])
			end
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0,0,0+.15*COS(SINE / 32))*ANGLES(RAD(25),RAD(0),RAD(0)), 1 / Animation_Speed)
	        Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15.5+1*COS(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed) 
	        RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(180), RAD(0), RAD(-15)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
	        LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(180), RAD(0), RAD(15)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		    RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - .15*COS(sine/32), 0) * ANGLES(RAD(25), RAD(80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		    LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - .15*COS(sine/32), 0) * ANGLES(RAD(25), RAD(-80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			elseif mde == 'unknown' then
				if math.random(1,8)/8 == 1 then
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(math.rad(math.random(-10000,10000)),math.rad(math.random(-10000,10000)),math.rad(math.random(-10000,10000))), 0.15 / Animation_Speed)
				end
		if(math.random(1,32)/32==1)then
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(math.rad(math.random(-10000,10000)),math.rad(math.random(-10000,10000)),math.rad(math.random(-10000,10000))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(math.rad(math.random(-10000,10000)),math.rad(math.random(-10000,10000)),math.rad(math.random(-10000,10000))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
		end
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.2 * SIN(SINE / 12)) * ANGLES(RAD(0+5*COS(sine/12)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(MRANDOM(-25,25)), RAD(0)), 0.15 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 - .1*COS(sine / 16), 0) * ANGLES(RAD(0), RAD(0), RAD(10 - 7.5*Cos(sine/32))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 - .1 * COS(sine / 16), 0) * ANGLES(RAD(0), RAD(0), RAD(-10 + 7.5*Cos(sine/32))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.2 * SIN(SINE / 12), -0.01) * ANGLES(RAD(0-5*COS(sine/12)), RAD(65), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.2 * SIN(SINE / 12), -0.01) * ANGLES(RAD(0-5*COS(sine/12)), RAD(-65), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)	
			elseif mde == 'depressed' then
			snap = math.random(1,76)
			if snap == 1 then
			CreateSound(363808674,Head,3,1.3,false)
			Neck.C0 = Clerp(Neck.C0,NECKC0*cf(0,0,0+((1)-1))*angles(math.rad(math.random(-10000,10000)),math.rad(math.random(-10000,10000)),math.rad(math.random(-10000,10000))),1/Animation_Speed)
			end
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -1.2+.5*SIN(sine/12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(40), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 + .2*SIN(sine / 12), 0) * ANGLES(RAD(0), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 + .2 * SIN(sine / 12), 0) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1-.5*SIN(sine/12), -0.5) * ANGLES(RAD(-90), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1-.5*SIN(sine/12), -0.5) * ANGLES(RAD(-90), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)	
			elseif mde == 'Geno' then
				if VALUE1 == false and math.random(1,55) == 1 then
					coroutine.resume(coroutine.create(function()
						VALUE1 = true
						for i=1,25 do
							Swait()
							FT.Parent = Torso
							FRA.Parent = RightArm
							FLA.Parent = LeftArm
							FRL.Parent = RightLeg
							FLL.Parent = LeftLeg
							sick.PlaybackSpeed = .54+math.random(600,1000)/1000
					for _,v in next, Character:GetDescendants() do
						if(v:IsA'DataModelMesh')then
							v.Offset = VT(math.random(-50,50)/100,math.random(-50,50)/100,math.random(-50,50)/100)
						end
					end		
						end
						VALUE1 = false
						FT.Parent = nil
						FRA.Parent = nil
						FLA.Parent = nil
						FRL.Parent = nil
						FLL.Parent = nil
						sick.PlaybackSpeed = .54
					for _,v in next, Character:GetDescendants() do
						if(v:IsA'DataModelMesh')then
							v.Offset = VT(0,0,0)
						end
					end	
					end))
				end
			snap = math.random(1,6)
			if snap == 1 then
			Neck.C0 = Clerp(Neck.C0,NECKC0*cf(0,0,0+((1)-1))*angles(math.rad(math.random(-10000,10000)),math.rad(math.random(-10000,10000)),math.rad(math.random(-10000,10000))),1/Animation_Speed)
			end
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0+.15*SIN(sine/32)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(40), RAD(-10), RAD(0)), 0.15 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(10+5*SIN(sine/24))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-10-5*SIN(sine/24))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1-.15*SIN(sine/32), 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8+2.5*SIN(sine/32)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1-.15*SIN(sine/32), 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8+2.5*SIN(sine/32)), RAD(0), RAD(0)), 0.15 / Animation_Speed)	
			 end
		end
	elseif TORSOVELOCITY > 1 and HITFLOOR ~= nil then
		ANIM = "Walk"
		DOUBLED = false
		READYTODOUBLE = false
		if ATTACK == false then
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 + .25*Cos(sine/63)+.92*Sin(sine/95), 0, 1 + 1 * SIN(SINE / 53)) * ANGLES(RAD(70), RAD(0-RootPart.RotVelocity.y), RAD(0 - RootPart.RotVelocity.Y * 4.5 + 3 * COS(SINE / 47))), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(12 - 4.10 * SIN(SINE / 12))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12 + 4.10 * SIN(SINE / 12))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -.5 - 0.02 * SIN(SINE / 12), -0.5) * ANGLES(RAD(-10 - 2.5 * SIN(SINE / 21)), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.02 * SIN(SINE / 12), -0.01) * ANGLES(RAD(-20 - 2.5 * SIN(SINE / 51)), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)	
		if mde == 'Corrupt' then	
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 - .25*Cos(sine/63)+.92*Sin(sine/95), 0, 4 - 2 * SIN(SINE / 53)) * ANGLES(RAD(70), RAD(0-RootPart.RotVelocity.y), RAD(0 - RootPart.RotVelocity.Y * 4.5 + 3 * COS(SINE / 47))), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(12 - 4.10 * SIN(SINE / 12))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-.75, 0.5, 0.5) * ANGLES(RAD(-25+math.random(-23,23)), RAD(0+math.random(-23,23)), RAD(45+math.random(-23,23))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -.5 - 0.02 * SIN(SINE / 12), -0.5) * ANGLES(RAD(-10 - 2.5 * SIN(SINE / 21)), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.02 * SIN(SINE / 12), -0.01) * ANGLES(RAD(-20 - 2.5 * SIN(SINE / 51)), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)	
		end
if mde == 'error' then
	RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1 + 0.25 * COS(SINE / 28)) * ANGLES(RAD(25+2.5*COS(SINE/28)), RAD(0), RAD(0)), 1 / Animation_Speed)
	Neck.C0 = Clerp(Neck.C0,NECKC0*CF(0,0,0+((1)-1))*ANGLES(RAD(-5+3.4*COS(SINE/28)),RAD(3*COS(SINE/28)),RAD(0)),1/Animation_Speed)
	RightShoulder.C0 = Clerp(RightShoulder.C0,CF(1.5, 0.5, 0)*ANGLES(RAD(-90-5*COS(SINE/28)),RAD(0),RAD(0))* RIGHTSHOULDERC0,1/Animation_Speed)
	LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-.75, 0.5, -.7) * ANGLES(RAD(0), RAD(0), RAD(90)) * LEFTSHOULDERC0, 1 / Animation_Speed)
	RightHip.C0 = Clerp(RightHip.C0, CF(1, -1-.05*COS(SINE / 28), -0.01) * ANGLES(RAD(-4), RAD(80), RAD(0)) * ANGLES(RAD(-8-2.5*COS(SINE/28)), RAD(0), RAD(0)), 1 / Animation_Speed)
	LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -.5-.05*COS(SINE  / 28), -0.5) * ANGLES(RAD(-8), RAD(-80), RAD(0)) * ANGLES(RAD(-8-2.5*COS(SINE/28)), RAD(0), RAD(0)), 1 / Animation_Speed)
end
if mde == '???' then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0,0,2+0.5*COS(SINE / 12))*ANGLES(RAD(25+2.5*COS(SINE / 12)),RAD(0-RootPart.RotVelocity.y),RAD(0 - RootPart.RotVelocity.Y * 4.5 + 3 * COS(SINE / 47))), 1 / Animation_Speed)
	        Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-1+-2*COS(SINE / 32)), RAD(0), RAD(10)), 1 / Animation_Speed) 
	        RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-90-10*math.cos(sine/7)), RAD(0), RAD(10)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
	        LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-90-10*math.cos(sine/7)), RAD(0), RAD(-10)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		    RightHip.C0 = Clerp(RightHip.C0, CF(1, -1-.001*COS(SINE / 7), -0.01) * ANGLES(RAD(-10-2.5*math.cos(sine/7)), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		    LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -.5-.001*math.cos(sine/7), -0.5) * ANGLES(RAD(-25-2.5*math.cos(sine/7)), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
end
if mde == 'death' then
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 4 + 1 * SIN(SINE / 26)) * ANGLES(RAD(25 - 2.5*SIN(SINE/48/2)), RAD(0-RootPart.RotVelocity.y), RAD(0 - RootPart.RotVelocity.Y * 4.5 + 3 * COS(SINE / 47))), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(0 + 2.5 *COS(SINE / 12)), RAD(0)), 0.15 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-20 - 13*SIN(SINE/12)), RAD(0), RAD(12 - 4.10 * SIN(SINE / 12))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-20 - 13*SIN(SINE/12)), RAD(0), RAD(-12 + 4.10 * SIN(SINE / 12))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -.5 - 0.02 * SIN(SINE / 12), -0.5) * ANGLES(RAD(-10 - 2.5 * SIN(SINE / 21)), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.02 * SIN(SINE / 12), -0.01) * ANGLES(RAD(-20 - 2.5 * SIN(SINE / 16)), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)	
end
if mde == 'unholy' then
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 3 + 1 * SIN(sine / 26)) * ANGLES(RAD(25 - 2.5*SIN(sine/24)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15), RAD(0), RAD(math.random(-5,5))), 0.15 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(10), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(10), RAD(0), RAD(0)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -.5 - 0.02 * SIN(SINE / 12), -0.5) * ANGLES(RAD(-70 - 2.5 * SIN(sine / 32)), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.02 * SIN(SINE / 12), -0.01) * ANGLES(RAD(-70 - 2.5 * SIN(sine / 16)), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
end
if mde == 'edgialization' then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 2 - 0.1 * COS(SINE / 15)) * ANGLES(RAD(30), RAD(0), RAD(0)), 0.5 / Animation_Speed)
            Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 - 0.1 * COS(SINE / 3) + ((1) - 1)) * ANGLES(RAD(-10 - 2.5 * SIN(SINE / 12)), RAD(4 * COS(SINE / 24)), RAD(0)), 0.5 / Animation_Speed)
            RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.45 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(-30), RAD(0), RAD(15 - 7.5 * COS(SINE / 12))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
            LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.45 - 0.05 * COS(SINE / 12), 0.3) * ANGLES(RAD(-30), RAD(0), RAD(-15 + 7.5 * COS(SINE / 12))) * LEFTSHOULDERC0, 1 / Animation_Speed)
            RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(-15 - 2.5 * COS(SINE / 12)), RAD(80), RAD(0)) * ANGLES(RAD(-8 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -.5, -0.5) * ANGLES(RAD(-25 - 2.5 * COS(SINE / 12)), RAD(-80), RAD(0)) * ANGLES(RAD(-8 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 1 / Animation_Speed)
end
if mde == 'unknown' or mde == 'nebula' then
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(10 - 2* SIN(SINE / 6)), RAD(0), RAD(0)), 0.8 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0-60* SIN(SINE / 12)), RAD(0), RAD(12)) * RIGHTSHOULDERC0, 0.8 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0+60* SIN(SINE / 12)), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 0.8 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.1+0.1* SIN(SINE / 6)) * ANGLES(RAD(0), RAD(0), RAD(0+5 * SIN(SINE / 12))), 0.8 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0-0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-5 + 60 * SIN(SINE / 12))), 0.8 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0+0.07*SIN(SINE/12)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(5 + 60 * SIN(SINE / 12))), 0.8 / Animation_Speed)
end
if mde == 'Geno' then
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(40 - 4.2* SIN(SINE / WALKSPEEDVALUE)), RAD(0), RAD(0)), 0.8 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0-30* SIN(SINE / WALKSPEEDVALUE)), RAD(0), RAD(12)) * RIGHTSHOULDERC0, 0.8 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0+30* SIN(SINE / WALKSPEEDVALUE)), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 0.8 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.1+0.1* SIN(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.8 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0-0.07*SIN(SINE/WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-5 + 30 * SIN(SINE / WALKSPEEDVALUE))), 0.8 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0+0.07*SIN(SINE/WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(5 + 30 * SIN(SINE / WALKSPEEDVALUE))), 0.8 / Animation_Speed)
end
		end
	end
	if mde == "Corrupt" then
	local val = MRANDOM(1,255)
	RightArm.Color = Color3.fromRGB(val,val,val)
	LeftArm.Color = Color3.fromRGB(val,val,val)
	Head.Color = Color3.fromRGB(val,val,val)
	Torso.Color = Color3.fromRGB(val,val,val)
	LeftLeg.Color = Color3.fromRGB(val,val,val)
	RightLeg.Color = Color3.fromRGB(val,val,val)
	end
	if mde == "Relaxed" then
	RightArm.Color = color
	LeftArm.Color = color
	Head.Color = color
	Torso.Color = color
	LeftLeg.Color = color
	RightLeg.Color = color
	end
	if mde == "Insanity" or mde == "krma" then
		RightArm.Color = BrickColor.Random().Color
		LeftArm.Color = BrickColor.Random().Color
		Head.Color = BrickColor.Random().Color
		Torso.Color = BrickColor.Random().Color
		LeftLeg.Color = BrickColor.Random().Color
		RightLeg.Color = BrickColor.Random().Color
	end
	if mde == "Vis" or mde == 'poisoned' then
	RightArm.Color = Color3.fromRGB(0+170*sick.PlaybackLoudness/1000,0,0+170*sick.PlaybackLoudness/1000)
	LeftArm.Color = Color3.fromRGB(0+170*sick.PlaybackLoudness/1000,0,0+170*sick.PlaybackLoudness/1000)
	Head.Color = Color3.fromRGB(0+170*sick.PlaybackLoudness/1000,0,0+170*sick.PlaybackLoudness/1000)
	Torso.Color = Color3.fromRGB(0+170*sick.PlaybackLoudness/1000,0,0+170*sick.PlaybackLoudness/1000)
	LeftLeg.Color = Color3.fromRGB(0+170*sick.PlaybackLoudness/1000,0,0+170*sick.PlaybackLoudness/1000)
	RightLeg.Color = Color3.fromRGB(0+170*sick.PlaybackLoudness/1000,0,0+170*sick.PlaybackLoudness/1000)
	end
	if mde == "Sit" then
	RightArm.Color = Color3.fromHSV(Hue/360,1,math.clamp(sick.PlaybackLoudness/950,0,1))
	LeftArm.Color = Color3.fromHSV(Hue/360,1,math.clamp(sick.PlaybackLoudness/950,0,1))
	Head.Color = Color3.fromHSV(Hue/360,1,math.clamp(sick.PlaybackLoudness/950,0,1))
	Torso.Color = Color3.fromHSV(Hue/360,1,math.clamp(sick.PlaybackLoudness/950,0,1))
	LeftLeg.Color = Color3.fromHSV(Hue/360,1,math.clamp(sick.PlaybackLoudness/950,0,1))
	RightLeg.Color = Color3.fromHSV(Hue/360,1,math.clamp(sick.PlaybackLoudness/950,0,1))
	end
	if mde == 'error' then
	RightArm.Color = Color3.fromRGB(0,math.random(0,255),0)
	LeftArm.Color = Color3.fromRGB(0,math.random(0,255),0)
	Head.Color = Color3.fromRGB(0,math.random(0,255),0)
	Torso.Color = Color3.fromRGB(0,math.random(0,255),0)
	LeftLeg.Color = Color3.fromRGB(0,math.random(0,255),0)
	RightLeg.Color = Color3.fromRGB(0,math.random(0,255),0)
	end
	if mde == 'nebula' or mde == 'edgialization' or mde == "Geno" then
	RightArm.Color = Color3.fromRGB(math.random(0,255),0,0)
	LeftArm.Color = Color3.fromRGB(math.random(0,255),0,0)
	Head.Color = Color3.fromRGB(math.random(0,255),0,0)
	Torso.Color = Color3.fromRGB(math.random(0,255),0,0)
	LeftLeg.Color = Color3.fromRGB(math.random(0,255),0,0)
	RightLeg.Color = Color3.fromRGB(math.random(0,255),0,0)
	end
	if mde == "???" then
	RightArm.Color = Color3.fromRGB(0,0,0+178*sick.PlaybackLoudness/100)
	LeftArm.Color = Color3.fromRGB(0,0,0+178*sick.PlaybackLoudness/100)
	Head.Color = Color3.fromRGB(0,0,0+178*sick.PlaybackLoudness/100)
	Torso.Color = Color3.fromRGB(0,0,0+178*sick.PlaybackLoudness/100)
	LeftLeg.Color = Color3.fromRGB(0,0,0+178*sick.PlaybackLoudness/100)
	RightLeg.Color = Color3.fromRGB(0,0,0+178*sick.PlaybackLoudness/100)
	end
	if mde == 'Rev' or mde == 'unholy' then
	RightArm.Color = Color3.fromRGB(0+178*sick.PlaybackLoudness/100,0,0)
	LeftArm.Color = Color3.fromRGB(0+178*sick.PlaybackLoudness/100,0,0)
	Head.Color = Color3.fromRGB(0+178*sick.PlaybackLoudness/100,0,0)
	Torso.Color = Color3.fromRGB(0+178*sick.PlaybackLoudness/100,0,0)
	LeftLeg.Color = Color3.fromRGB(0+178*sick.PlaybackLoudness/100,0,0)
	RightLeg.Color = Color3.fromRGB(0+178*sick.PlaybackLoudness/100,0,0)
	end
	if mde == "mnlght" then
	RightArm.Color = Color3.fromRGB(0,0+89*sick.PlaybackLoudness/100,0+18*sick.PlaybackLoudness/100)
	LeftArm.Color = Color3.fromRGB(0,0+89*sick.PlaybackLoudness/100,0+18*sick.PlaybackLoudness/100)
	Head.Color = Color3.fromRGB(0,0+89*sick.PlaybackLoudness/100,0+18*sick.PlaybackLoudness/100)
	Torso.Color = Color3.fromRGB(0,0+89*sick.PlaybackLoudness/100,0+18*sick.PlaybackLoudness/100)
	LeftLeg.Color = Color3.fromRGB(0,0+89*sick.PlaybackLoudness/100,0+18*sick.PlaybackLoudness/100)
	RightLeg.Color = Color3.fromRGB(0,0+89*sick.PlaybackLoudness/100,0+18*sick.PlaybackLoudness/100)
	end
	if mde == 'death' then
	RightArm.Color = C3(98/255 + sick.PlaybackLoudness/1000, 37/255 + sick.PlaybackLoudness/1000, 209/255 + sick.PlaybackLoudness/1000)
	LeftArm.Color = C3(98/255 + sick.PlaybackLoudness/1000, 37/255 + sick.PlaybackLoudness/1000, 209/255 + sick.PlaybackLoudness/1000)
	Head.Color = C3(98/255 + sick.PlaybackLoudness/1000, 37/255 + sick.PlaybackLoudness/1000, 209/255 + sick.PlaybackLoudness/1000)
	Torso.Color = C3(98/255 + sick.PlaybackLoudness/1000, 37/255 + sick.PlaybackLoudness/1000, 209/255 + sick.PlaybackLoudness/1000)
	LeftLeg.Color = C3(98/255 + sick.PlaybackLoudness/1000, 37/255 + sick.PlaybackLoudness/1000, 209/255 + sick.PlaybackLoudness/1000)
	RightLeg.Color = C3(98/255 + sick.PlaybackLoudness/1000, 37/255 + sick.PlaybackLoudness/1000, 209/255 + sick.PlaybackLoudness/1000)
	end
	if mde == 'uncolored' or mde == 'unknown' or mde == 'depressed' then
	RightArm.Color = C3(math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500))
	LeftArm.Color = C3(math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500))
	Head.Color = C3(math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500))
	Torso.Color = C3(math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500))
	LeftLeg.Color = C3(math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500))
	RightLeg.Color = C3(math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500))
	end

if mde == 'error' then
if math.random(1,3) == 1 then
WACKYEFFECT({TIME = MRANDOM(15,25)*2, EffectType = "Sphere", Size = VT(3 + 2 * COS(SINE/4),3 + 2 * COS(SINE/4),3 + 2 * COS(SINE/4)), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = -11, CFrame = CF(RootPart.Position-VT(MRANDOM(-20,20),2,MRANDOM(-20,20))), MoveToPos = Torso.Position+VT(0,MRANDOM(45,145)/1.5,0), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(0,math.random(0,255),0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
WACKYEFFECT({TIME = MRANDOM(0,22), EffectType = "Sphere", Size = VT(2 + 2 * COS(SINE/4),5 + 2 * COS(SINE/4),2 + 2 * COS(SINE/4)), Size2 = VT(-3,-6,-4), Transparency = 0, Transparency2 = 1, CFrame = RightArm.CFrame*CF(0,-1,0) * ANGLES(RAD(MRANDOM(-360,360)), RAD(MRANDOM(-360,360)), RAD(MRANDOM(-360,360))), MoveToPos = nil, RotationX = 0, RotationY = MRANDOM(-22,22), RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(0,math.random(0,255),0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
end
end

if mde == 'depressed' then
if MRANDOM(1,1) == 1 then
WACKYEFFECT({Time = 2.5, EffectType = "Sphere", Size = VT(7+sick.PlaybackLoudness/25,0.55,7+sick.PlaybackLoudness/25), Size2 = VT(7+sick.PlaybackLoudness/25,0.55,7+sick.PlaybackLoudness/25), Transparency = 0, Transparency2 = 1, CFrame = RootPart.CFrame*CF(0,-3,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500)), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
end
if math.random(1,3) == 1 then
WACKYEFFECT({TIME = MRANDOM(15,25)*2, EffectType = "Sphere", Size = VT(3 + 2 * COS(SINE/4),3 + 2 * COS(SINE/4),3 + 2 * COS(SINE/4)), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = -11, CFrame = CF(RootPart.Position+VT(MRANDOM(-20,20),2,MRANDOM(-20,20))), MoveToPos = Torso.Position-VT(0,MRANDOM(45,145)/1.5,0), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500)), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
end
end

if mde == '???' then
if math.random(1,3) then
WACKYEFFECT({TIME = MRANDOM(15,25)*2, EffectType = "Block", Size = VT(3 + 2 * COS(SINE/4),3 + 2 * COS(SINE/4),3 + 2 * COS(SINE/4)), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = -11, CFrame = CF(RootPart.Position-VT(MRANDOM(-40,40),2,MRANDOM(-40,40))), MoveToPos = Torso.Position+VT(0,MRANDOM(85,185)/2.5,0), RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(0,0,0+178*sick.PlaybackLoudness/100), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
end
end

if mde == 'uncolored' then
if math.random(1,3) == 1 then
WACKYEFFECT({TIME = MRANDOM(15,25)*2, EffectType = "Block", Size = VT(3 + 2 * COS(SINE/4),3 + 2 * COS(SINE/4),3 + 2 * COS(SINE/4)), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = -11, CFrame = CF(RootPart.Position-VT(MRANDOM(-40,40),2,MRANDOM(-40,40))), MoveToPos = Torso.Position+VT(0,MRANDOM(85,185)/2.5,0), RotationX = 360*Cos(sine/2), RotationY = 360*Cos(sine/2), RotationZ = 360*Cos(sine/2), Material = "Neon", Color = C3(math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500),math.min(1,sick.PlaybackLoudness/500)), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
end
end

if mde == 'death' then
WACKYEFFECT({Time = 12, EffectType = "Block", Size = VT(3,3,3)/3, Size2 = VT(0,0,0), Transparency = .5, Transparency2 = 1, CFrame = RightLeg.CFrame*CF(0,-1.45,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(98/255 + sick.PlaybackLoudness/1000, 37/255 + sick.PlaybackLoudness/1000, 209/255 + sick.PlaybackLoudness/1000), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
WACKYEFFECT({Time = 12, EffectType = "Block", Size = VT(3,3,3)/3, Size2 = VT(0,0,0), Transparency = .5, Transparency2 = 1, CFrame = LeftLeg.CFrame*CF(0,-1.45,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(98/255 + sick.PlaybackLoudness/1000, 37/255 + sick.PlaybackLoudness/1000, 209/255 + sick.PlaybackLoudness/1000), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
end



if mde == 'poisoned' then
WACKYEFFECT({Time = 12, EffectType = "Block", Size = VT(3,3,3)/3, Size2 = VT(0,0,0), Transparency = .5, Transparency2 = 1, CFrame = RightLeg.CFrame*CF(0,-1.45,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(0+170*sick.PlaybackLoudness/1000,0,0+170*sick.PlaybackLoudness/1000), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
WACKYEFFECT({Time = 12, EffectType = "Block", Size = VT(3,3,3)/3, Size2 = VT(0,0,0), Transparency = .5, Transparency2 = 1, CFrame = LeftLeg.CFrame*CF(0,-1.45,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(0+170*sick.PlaybackLoudness/1000,0,0+170*sick.PlaybackLoudness/1000), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
WACKYEFFECT({Time = 12, EffectType = "Block", Size = VT(3,3,3)/3, Size2 = VT(0,0,0), Transparency = .5, Transparency2 = 1, CFrame = LeftArm.CFrame*CF(0,-1.45,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(0+170*sick.PlaybackLoudness/1000,0,0+170*sick.PlaybackLoudness/1000), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
WACKYEFFECT({Time = 12, EffectType = "Block", Size = VT(3,3,3)/3, Size2 = VT(0,0,0), Transparency = .5, Transparency2 = 1, CFrame = RightArm.CFrame*CF(0,-1.45,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = Color3.fromRGB(0+170*sick.PlaybackLoudness/1000,0,0+170*sick.PlaybackLoudness/1000), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
end
end
