game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 0
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

local soundeffect = Instance.new("Sound")
soundeffect.SoundId = "rbxassetid://17150550559"
soundeffect.Parent = game.Players.LocalPlayer.Character.Torso
soundeffect:Play()
soundeffect.Volume = 3

local soundeffect = Instance.new("Sound")
soundeffect.SoundId = "rbxassetid://17150550302"
soundeffect.Parent = game.Players.LocalPlayer.Character.Torso
soundeffect:Play()
soundeffect.Volume = 5

local anim = Instance.new("Animation")
anim.AnimationId = "rbxassetid://17140902079"

local playAnim = humanoid:LoadAnimation(anim)
anim.AnimationId = "rbxassetid://0"
playAnim:Play()

local fine = game.ReplicatedStorage.Resources.KJEffects["fine...1"].EnableBatch2:Clone()
fine.Parent = game.Players.LocalPlayer.Character["Torso"]
for _, child in ipairs(fine:GetChildren()) do
    if child:IsA("ParticleEmitter") then
        child:Emit(25)
    end
end

local fine3 = game.ReplicatedStorage.Resources.KJEffects["fine...Emit"].EmitBatch3:Clone()
fine3.Parent = game.Players.LocalPlayer.Character["Torso"]
for _, child in ipairs(fine3:GetChildren()) do
    if child:IsA("ParticleEmitter") then
        child:Emit(1)
    end
end

local red = game.ReplicatedStorage.Resources.KJEffects["fine...1"].REDDDD1:Clone()
red.Parent = game.Players.LocalPlayer.Character["Right Leg"]
for _, child in ipairs(red:GetChildren()) do
    if child:IsA("ParticleEmitter") then
        child:Emit(1)
    end
end

local red2 = game.ReplicatedStorage.Resources.KJEffects["fine...1"].REDDDD2:Clone()
red2.Parent = game.Players.LocalPlayer.Character["Left Leg"]
for _, child in ipairs(red2:GetChildren()) do
    if child:IsA("ParticleEmitter") then
        child:Emit(1)
    end
end

local red3 = game.ReplicatedStorage.Resources.KJEffects["fine...1"].REDDDD3:Clone()
red3.Parent = game.Players.LocalPlayer.Character["Left Leg"]
for _, child in ipairs(red3:GetChildren()) do
    if child:IsA("ParticleEmitter") then
        child:Emit(20)
    end
end

local red4 = game.ReplicatedStorage.Resources.KJEffects["fine...1"].REDDDD4:Clone()
red4.Parent = game.Players.LocalPlayer.Character["Right Leg"]
for _, child in ipairs(red4:GetChildren()) do
    if child:IsA("ParticleEmitter") then
        child:Emit(20)
    end
end

wait(8.2)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
fine:Destroy()
red:Destroy()
red2:Destroy()
red3:Destroy()
red4:Destroy()

local fine2 = game.ReplicatedStorage.Resources.KJEffects["fine...Emit2"].EmitBatch1:Clone()
fine2.Parent = game.Players.LocalPlayer.Character["Right Arm"]
for _, child in ipairs(fine2:GetChildren()) do
    if child:IsA("ParticleEmitter") then
        child:Emit(20)
    end
end
--AWAKENING ENDED

local player = game.Players.LocalPlayer

for _, item in ipairs(player.Backpack:GetChildren()) do
    item:Destroy()
end

--STOIC BOMB
local tool = Instance.new("Tool")
tool.Name = "Stoic Bomb"  -- Updated tool name
tool.RequiresHandle = false  -- No handle required
 
-- Insert the tool into the player's backpack
tool.Parent = game.Players.LocalPlayer.Backpack
 
-- Function to execute when the tool is activated
local function onActivated()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Herobrine697448/KJ/refs/heads/main/Ultimate/Stoic%20Bomb.lua"))()
end
 
-- Connect the activation function to the tool's Activated event
tool.Activated:Connect(onActivated)
 
-- Add the tool to the player's backpack
tool.Parent = game.Players.LocalPlayer.Backpack



-- 20-20-20 DROPKICK
local tool = Instance.new("Tool")
tool.Name = "20-20-20 Dropkick"  -- Updated tool name
tool.RequiresHandle = false  -- No handle required
 
-- Insert the tool into the player's backpack
tool.Parent = game.Players.LocalPlayer.Backpack
 
-- Function to execute when the tool is activated
local function onActivated()
    loadstring(game:HttpGet("https://pastebin.com/raw/g7Xjypk8"))()
end
 
-- Connect the activation function to the tool's Activated event
tool.Activated:Connect(onActivated)
 
-- Add the tool to the player's backpack
tool.Parent = game.Players.LocalPlayer.Backpack


--FIVE SEASONS
local tool = Instance.new("Tool")
tool.Name = "Five Seasons"  -- Updated tool name
tool.RequiresHandle = false  -- No handle required
 
-- Insert the tool into the player's backpack
tool.Parent = game.Players.LocalPlayer.Backpack
 
-- Function to execute when the tool is activated
local function onActivated()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Herobrine697448/KJ/refs/heads/main/Ultimate/Five%20Seasons.lua"))()
end
 
-- Connect the activation function to the tool's Activated event
tool.Activated:Connect(onActivated)
 
-- Add the tool to the player's backpack
tool.Parent = game.Players.LocalPlayer.Backpack
