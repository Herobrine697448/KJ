local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")
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
    sound.Volume = 4
    sound:Play()
end

playSound()


--START VFX
wait(3.5)
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
        child:Emit(1)
    end
end

wait(2.1)

-- Destroy the first set of effects
armBurst1:Destroy()
armBurst2:Destroy()
armFX1:Destroy()

-- Eye effect on the Head
local eyeEmit = game.ReplicatedStorage.Resources.FiveSeasonsFX["CharFX"].EyeEmit:Clone()
eyeEmit.Parent = game.Players.LocalPlayer.Character["Head"]
for _, child in ipairs(eyeEmit:GetChildren()) do
    if child:IsA("ParticleEmitter") then
        child:Emit(20)
    end
end

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
        child:Emit(1)
    end
end

wait(1.8)

-- Destroy the second set of effects
armBurst3:Destroy()
armBurst4:Destroy()
armFX2:Destroy()


wait(6)
-- Summon Fists
local Fist = game.ReplicatedStorage.Resources.FiveSeasonsFX["FistsModelMirrored"].Fists:Clone()
Fist.Parent = player.Character["Left Arm"]
for _, child in ipairs(Fist:GetChildren()) do
    if child:IsA("ParticleEmitter") then
        child:Emit(5)
    end
end

wait(2)
Fist:Destroy()
