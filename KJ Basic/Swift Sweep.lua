local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()

local anim2 = Instance.new("Animation")
anim2.AnimationId = "rbxassetid://16944345619"

local playAnim2 = humanoid:LoadAnimation(anim2)
anim2.AnimationId = "rbxassetid://0"
playAnim2:Play()

local function enableParticleEmitters(parent)
    for _, descendant in ipairs(parent:GetDescendants()) do
        if descendant:IsA("ParticleEmitter") then
            descendant.Enabled = true
        end
    end
end

local LegSweepHit1 = game.ReplicatedStorage.Resources.KJEffects["LegSweepHit"].Hit:Clone()
LegSweepHit1.Parent = game.Players.LocalPlayer.Character["Left Arm"]
for _, child in ipairs(LegSweepHit1:GetChildren()) do
    if child:IsA("ParticleEmitter") then
        child:Emit(25)
    end
end
wait(2)
