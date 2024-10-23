local player = game.Players.LocalPlayer

for _, item in ipairs(player.Backpack:GetChildren()) do
    item:Destroy()
end


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


--AWAKENING VFX
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humRp = character:WaitForChild("HumanoidRootPart")

local fine = game.ReplicatedStorage.Resources.KJEffects["fine...1"].EnableBatch2:Clone()
fine.Parent = character["Torso"]
for _, child in ipairs(fine:GetChildren()) do
    if child:IsA("ParticleEmitter") then
        child:Emit(25)
    end
end

-- Create and configure the boom effect
local boom = game.ReplicatedStorage.Resources.KJEffects["fine...Emit"]:Clone()
boom.Parent = workspace
boom.CanCollide = false
boom.CFrame = humRp.CFrame * CFrame.new(0, -0.65, 0)  -- Set the position of the boom effect

-- Emit particles from the boom effect
delay(0.16, function()
    for _, Particles in pairs(boom:GetDescendants()) do
        if Particles:IsA("ParticleEmitter") then
            Particles:Emit(Particles:GetAttribute("EmitCount"))
        end
    end
end)

local red = game.ReplicatedStorage.Resources.KJEffects["fine...1"].REDDDD1:Clone()
red.Parent = character["Right Leg"]
for _, child in ipairs(red:GetChildren()) do
    if child:IsA("ParticleEmitter") then
        child:Emit(1)
    end
end

local red2 = game.ReplicatedStorage.Resources.KJEffects["fine...1"].REDDDD2:Clone()
red2.Parent = character["Left Leg"]
for _, child in ipairs(red2:GetChildren()) do
    if child:IsA("ParticleEmitter") then
        child:Emit(1)
    end
end

local red3 = game.ReplicatedStorage.Resources.KJEffects["fine...1"].REDDDD3:Clone()
red3.Parent = character["Left Leg"]
for _, child in ipairs(red3:GetChildren()) do
    if child:IsA("ParticleEmitter") then
        child:Emit(20)
    end
end

local red4 = game.ReplicatedStorage.Resources.KJEffects["fine...1"].REDDDD4:Clone()
red4.Parent = character["Right Leg"]
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
boom:Destroy() -- Ensure to destroy the boom effect after use

local fine2 = game.ReplicatedStorage.Resources.KJEffects["fine...Emit2"].EmitBatch1:Clone()
fine2.Parent = character["Right Arm"]
for _, child in ipairs(fine2:GetChildren()) do
    if child:IsA("ParticleEmitter") then
        child:Emit(20)
    end
end

local fine3 = game.ReplicatedStorage.Resources.KJEffects["fine...Emit2"].EmitBatch2:Clone()
fine3.Parent = character["Right Leg"]
for _, child in ipairs(fine3:GetChildren()) do
    if child:IsA("ParticleEmitter") then
        child:Emit(1)
    end
end

local fine4 = game.ReplicatedStorage.Resources.KJEffects["fine...Emit2"].EmitBatch2:Clone()
fine4.Parent = character["Left Leg"]
for _, child in ipairs(fine4:GetChildren()) do
    if child:IsA("ParticleEmitter") then
        child:Emit(1)
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
local ToolName = "Five Seasons"
local CooldownLength = 99999
local ToolSlot = "3"

local function ToolCode()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Herobrine697448/KJ/refs/heads/main/Ultimate/Five%20Seasons.lua"))()
    delay(0, function() end)
end

local player = game.Players.LocalPlayer
local tool = Instance.new("Tool")
tool.Name = ToolName
tool.RequiresHandle = false
tool.Parent = player.Backpack

local debounce = false

tool.Equipped:Connect(function()
    if not debounce then
        debounce = true

        local players = game:GetService("Players")
        local player = players.LocalPlayer
        local character = player.Character
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            humanoid:UnequipTools()
        end

        delay(CooldownLength, function()
            debounce = false
        end)

        local hotbar = player.PlayerGui.Hotbar.Backpack.Hotbar[ToolSlot]
        local cooldown = player.PlayerGui.Hotbar.Backpack.LocalScript.Cooldown:Clone()

        cooldown.Parent = hotbar

        local tweenService = game:GetService("TweenService")
        local tweenInfo = TweenInfo.new(CooldownLength, Enum.EasingStyle.Linear)
        local tweenGoal = {Size = UDim2.new(cooldown.Size.X.Scale, cooldown.Size.X.Offset, 0, 0)}

        local tween = tweenService:Create(cooldown, tweenInfo, tweenGoal)
        tween:Play()

        tween.Completed:Connect(function()
            cooldown:Destroy()
        end)

        delay(0, function()
            ToolCode()
        end)
    end
end)
