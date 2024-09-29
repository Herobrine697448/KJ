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
        child:Emit(1)
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
        child:Emit(1)
    end
end

local red4 = game.ReplicatedStorage.Resources.KJEffects["fine...1"].REDDDD4:Clone()
red4.Parent = game.Players.LocalPlayer.Character["Right Leg"]
for _, child in ipairs(red4:GetChildren()) do
    if child:IsA("ParticleEmitter") then
        child:Emit(1)
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
        child:Emit(1)
    end
end

-- Loadstring for moves
local moves = {
    {name = "Stoic Bomb", id = "rbxassetid://YourStoicBombScriptID"}, 
    {name = "20-20-20 Dropkick", id = "rbxassetid://Your202020DropkickScriptID"},
    {name = "Five Seasons", id = "rbxassetid://YourFiveSeasonsScriptID"}
}

for _, move in ipairs(moves) do
    local moveTool = Instance.new("Tool")
    moveTool.Name = move.name
    moveTool.Parent = player.Backpack
    local script = Instance.new("Script", moveTool)
    script.Source = [[
        loadstring(game:GetService("ReplicatedStorage").Moves.]] .. move.id .. [[:GetContent())()
    ]]
end
