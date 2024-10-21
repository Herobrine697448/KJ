local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local torso = character:FindFirstChild("Torso")
local workspace = game:GetService("Workspace")


--START OF FIVESEASONS JUMPFX
local resourcesFolder = ReplicatedStorage:FindFirstChild("Resources")
if not resourcesFolder then return end


local fiveSeasonsFX = resourcesFolder:FindFirstChild("FiveSeasonsFX")
if not fiveSeasonsFX then return end


local jumpFXModel = fiveSeasonsFX:FindFirstChild("JumpFX")
if not jumpFXModel then return end


local jumpFXPart = jumpFXModel:FindFirstChild("JumpFX")
if not jumpFXPart then return end


local clonedJumpFX = jumpFXPart:Clone()
clonedJumpFX.Parent = workspace


local function emitParticles(instance)
    for _, child in ipairs(instance:GetDescendants()) do
        if child:IsA("ParticleEmitter") then
            child.Enabled = true
            child:Emit(1)
            child.Enabled = false
        end
    end
end


local function positionOnFloor(part)
    if torso then
        local torsoPosition = torso.Position
        local rayOrigin = torsoPosition + Vector3.new(0, 10, 0)
        local rayDirection = Vector3.new(0, -20, 0)
        local raycastResult = workspace:Raycast(rayOrigin, rayDirection)


        if raycastResult then
            part.Position = raycastResult.Position - Vector3.new(0, 0.9, 0)
        end
    end
end


emitParticles(clonedJumpFX)
positionOnFloor(clonedJumpFX)
--END OF FIVE SEASONS JUMPFX


--FIVE SEASONS ANIMATION START
wait(0.2)
local anim = Instance.new("Animation")
anim.AnimationId = "rbxassetid://18462892217"
local playAnim = humanoid:LoadAnimation(anim)
anim.AnimationId = "rbxassetid://0"
playAnim:Play()

--START SOUND
local function playSound()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://18460863844"
    sound.Parent = character
    sound.Volume = 2
    sound:Play()
end

playSound()

--KJ FIVE SEASONS MUSIC VARIANT 1
local function playSound()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://18460952794"
    sound.Parent = character
    sound.Volume = 0.8
    sound:Play()
end

playSound() 



--KJ TALK
wait(1.4)
local function playSound()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://18460893321"
    sound.Parent = character
    sound.Volume = 1
    sound:Play()
end

playSound()

--START VFX
wait(1.2)
-- First burst of effects on the Left Arm
local armBurst1 = game.ReplicatedStorage.Resources.FiveSeasonsFX["CharFX"].ArmBurst.Attachment:Clone()
armBurst1.Parent = game.Players.LocalPlayer.Character["Left Arm"]
for _, child in ipairs(armBurst1:GetChildren()) do
    if child:IsA("ParticleEmitter") then
        child:Emit(20)
    end
end

local armBurst2 = game.ReplicatedStorage.Resources.FiveSeasonsFX["CharFX"].ArmBurst.a:Clone()
armBurst2.Parent = game.Players.LocalPlayer.Character["Left Arm"]
for _, child in ipairs(armBurst2:GetChildren()) do
    if child:IsA("ParticleEmitter") then
        child:Emit(20)
    end
end

local armFX1 = game.ReplicatedStorage.Resources.FiveSeasonsFX["CharFX"].ArmFX:Clone()
armFX1.Parent = game.Players.LocalPlayer.Character["Left Arm"]
for _, child in ipairs(armFX1:GetChildren()) do
    if child:IsA("ParticleEmitter") then
        child:Emit(20)
    end
end

wait(1.5)

-- Destroy the first set of effects
armBurst1:Destroy()
armBurst2:Destroy()
armFX1:Destroy()

-- Second burst of effects on the Left Arm
local armBurst3 = game.ReplicatedStorage.Resources.FiveSeasonsFX["CharFX"].ArmBurst.Attachment:Clone()
armBurst3.Parent = game.Players.LocalPlayer.Character["Left Arm"]
for _, child in ipairs(armBurst3:GetChildren()) do
    if child:IsA("ParticleEmitter") then
        child:Emit(20)
    end
end

local armBurst4 = game.ReplicatedStorage.Resources.FiveSeasonsFX["CharFX"].ArmBurst.a:Clone()
armBurst4.Parent = game.Players.LocalPlayer.Character["Left Arm"]
for _, child in ipairs(armBurst4:GetChildren()) do
    if child:IsA("ParticleEmitter") then
        child:Emit(20)
    end
end

local armFX2 = game.ReplicatedStorage.Resources.FiveSeasonsFX["CharFX"].ArmFX:Clone()
armFX2.Parent = game.Players.LocalPlayer.Character["Left Arm"]
for _, child in ipairs(armFX2:GetChildren()) do
    if child:IsA("ParticleEmitter") then
        child:Emit(20)
    end
end

wait(1.3)
-- Eye effect on the Head
local eyeEmit = game.ReplicatedStorage.Resources.FiveSeasonsFX["CharFX"].EyeEmit:Clone()
eyeEmit.Parent = game.Players.LocalPlayer.Character["Head"]
for _, child in ipairs(eyeEmit:GetChildren()) do
    if child:IsA("ParticleEmitter") then
        child:Emit(45)
    end
end

--KJ FIVESEASONS TPTHING SOUND
wait(2.5)
local function playSound()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://18461671633"
    sound.Parent = character
    sound.Volume = 4
    sound:Play()
end

playSound()

wait(1)
-- Destroy the second set of effects
armBurst3:Destroy()
armBurst4:Destroy()
armFX2:Destroy()

--FIVE SEASONS FINISH & SUMMON FISTS
local anim = Instance.new("Animation")
anim.AnimationId = "rbxassetid://18462894593"
local playAnim = humanoid:LoadAnimation(anim)
anim.AnimationId = "rbxassetid://0"
playAnim:Play()

-- Summon Fists
local Fist = game.ReplicatedStorage.Resources.FiveSeasonsFX["FistsModelMirrored"].Fists:Clone()
Fist.Parent = player.Character["HumanoidRootPart"]
for _, child in ipairs(Fist:GetChildren()) do
    if child:IsA("ParticleEmitter") then
        child:Emit(5)
    end
end

wait(2)
Fist:Destroy()
