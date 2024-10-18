game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 10
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

local anim2 = Instance.new("Animation")
anim2.AnimationId = "rbxassetid://16944345619"

local playAnim2 = humanoid:LoadAnimation(anim2)
anim2.AnimationId = "rbxassetid://0"
playAnim2:Play()
wait(1)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16

local function enableParticleEmitters(parent)
    for _, descendant in ipairs(parent:GetDescendants()) do
        if descendant:IsA("ParticleEmitter") then
            descendant.Enabled = true
        end
    end
end

local LegSweepHit1 = game.ReplicatedStorage.Resources.KJEffects["LegSweepHit"].Hit:Clone()
LegSweepHit1.Parent = game.Players.LocalPlayer.Character["Left Leg"]
for _, child in ipairs(LegSweepHit1:GetChildren()) do
    if child:IsA("ParticleEmitter") then
        child:Emit(5)
    end
end

local LegSweepHit2 = game.ReplicatedStorage.Resources.KJEffects["LegSweepHit"].HitTwo:Clone()
LegSweepHit2.Parent = game.Players.LocalPlayer.Character["Left Leg"]
for _, child in ipairs(LegSweepHit2:GetChildren()) do
    if child:IsA("ParticleEmitter") then
        child:Emit(5)
    end
end
