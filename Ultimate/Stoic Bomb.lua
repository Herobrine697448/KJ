local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")
local anim = Instance.new("Animation")
anim.AnimationId = "rbxassetid://17141153099"
local playAnim = humanoid:LoadAnimation(anim)
anim.AnimationId = "rbxassetid://0"
playAnim:Play()

--START SOUND
local function playSound()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://17149593018"
    sound.Parent = character
    sound.Volume = 4
    sound:Play()
end

playSound()

--START WORDS KJ STOIC BOMB
wait(0.1)
local function playSound()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://17141392676"
    sound.Parent = character
    sound.Volume = 3
    sound:Play()
end
playSound()

--GO DOWN
wait(0.2)
local function playSound()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://17141392513"
    sound.Parent = character
    sound.Volume = 3
    sound:Play()
end
playSound()

--EXPLOSION START
wait(0.2)
local function playSound()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://17141392976"
    sound.Parent = character
    sound.Volume = 3
    sound:Play()
end
playSound()
wait(1.2)


local HEAT = game.ReplicatedStorage.Resources.StoicBomb.HEAT["Part"].Attachment:Clone()
HEAT.Parent = game.Players.LocalPlayer.Character["Torso"]
for _, child in ipairs(HEAT:GetChildren()) do
    if child:IsA("ParticleEmitter") then
        child:Emit(5)
    end
end
wait(1)
HEAT:Destroy(2)

local Pre = game.ReplicatedStorage.Resources.StoicBomb.pre["Part"].Attachment:Clone()
Pre.Parent = game.Players.LocalPlayer.Character["Torso"]
for _, child in ipairs(Pre:GetChildren()) do
    if child:IsA("ParticleEmitter") then
        child:Emit(10)
    end
end

local Main = game.ReplicatedStorage.Resources.StoicBomb.Main["Part"].Attachment:Clone()
Main.Parent = game.Players.LocalPlayer.Character["Torso"]
for _, child in ipairs(Main:GetChildren()) do
    if child:IsA("ParticleEmitter") then
        child:Emit(8)
    end
end

local OHNO = game.ReplicatedStorage.Resources.StoicBomb.Impact["Part"].Attachment:Clone()
OHNO.Parent = game.Players.LocalPlayer.Character["Torso"]
for _, child in ipairs(OHNO:GetChildren()) do
    if child:IsA("ParticleEmitter") then
        child:Emit(30)
    end
end

--EXPLOSION END
wait(0.7)
local function playSound()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://17141392854"
    sound.Parent = character
    sound.Volume = 3
    sound:Play()
end
playSound()

--EXPLOSION VFX SMOKE
local StoicSmoke = game.ReplicatedStorage.Resources.KJEffects["stoic bomb boom entrance"].THEACTUALBOOM:Clone()
StoicSmoke.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
for _, child in ipairs(StoicSmoke:GetChildren()) do
    if child:IsA("ParticleEmitter") then
        child:Emit(8)
    end
end
