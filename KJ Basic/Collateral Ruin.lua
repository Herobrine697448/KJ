local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
    
local anim = Instance.new("Animation")
anim.AnimationId = "rbxassetid://17325254223"
local playAnim = humanoid:LoadAnimation(anim)
anim.AnimationId = "rbxassetid://0"
playAnim:Play()


local sound = Instance.new("Sound")
sound.SoundId = "rbxassetid://17325303798"
sound.Parent = character
sound.Volume = 3
sound:Play()
wait(1)


local boom1 = game.ReplicatedStorage.Resources.KJEffects["spinnerthing"].spinningpartysmoke:Clone()
boom1.Parent = game.Players.LocalPlayer.Character["Torso"]
    for _, child in ipairs(boom1:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(3) -- Emit 20 particles
        end
    end
local collateral1 = game.ReplicatedStorage.Resources.KJEffects["spinnyweenyspinner"].Attachment:Clone()
collateral1.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
    for _, child in ipairs(collateral1:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(2) -- Emit 20 particles
        end
    end
local collateral2 = game.ReplicatedStorage.Resources.KJEffects["spinnyweenyspinner"].Emit:Clone()
collateral2.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
    for _, child in ipairs(collateral2:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(2) -- Emit 20 particles
        end
    end
local collateral3 = game.ReplicatedStorage.Resources.KJEffects["spinnerthing"].spinningparty:Clone()
collateral3.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
    for _, child in ipairs(collateral3:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(2) -- Emit 20 particles
        end
    end
local collateral4 = game.ReplicatedStorage.Resources.KJEffects["spinnerthing"].spinningpartysmoke:Clone()
collateral4.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
    for _, child in ipairs(collateral4:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(2) -- Emit 20 particles
        end
    end


wait(0.2)


playAnim:AdjustSpeed(0)


wait(0.3)


playAnim:AdjustSpeed(1)


local player = game.Players.LocalPlayer
local playerCharacter = player.Character or player.CharacterAdded:Wait()

local boom1 = game.ReplicatedStorage.Resources.KJEffects["SpinningSmoke"].Smoke:Clone()
boom1.Parent = game.Players.LocalPlayer.Character["Torso"]
    for _, child in ipairs(boom1:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(60) -- Emit 20 particles
        end
    end
local leap1 = game.ReplicatedStorage.Resources.KJEffects["LeapParticles"].Leap:Clone()
leap1.Parent = game.Players.LocalPlayer.Character["Torso"]
    for _, child in ipairs(leap1:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(20) -- Emit 20 particles
        end
    end
local collateral1 = game.ReplicatedStorage.Resources.KJEffects["spinnyweenyspinner"].Attachment:Clone()
collateral1.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
    for _, child in ipairs(collateral1:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(2) -- Emit 20 particles
        end
    end
local collateral2 = game.ReplicatedStorage.Resources.KJEffects["spinnyweenyspinner"].Emit:Clone()
collateral2.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
    for _, child in ipairs(collateral2:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(2) -- Emit 20 particles
        end
    end
local collateral3 = game.ReplicatedStorage.Resources.KJEffects["spinnerthing"].spinningparty:Clone()
collateral3.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
    for _, child in ipairs(collateral3:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(2) -- Emit 20 particles
        end
    end
local collateral4 = game.ReplicatedStorage.Resources.KJEffects["spinnerthing"].spinningpartysmoke:Clone()
collateral4.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
    for _, child in ipairs(collateral4:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(2) -- Emit 20 particles
        end
    end
local collateral5 = game.ReplicatedStorage.Resources.KJEffects["spinbeam"].beam2:Clone()
collateral5.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
    for _, child in ipairs(collateral5:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(2) -- Emit 20 particles
        end
    end
local collateral6 = game.ReplicatedStorage.Resources.KJEffects["ColateralImapct"].HitTwo:Clone()
collateral6.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
    for _, child in ipairs(collateral6:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(12) -- Emit 20 particles
        end
    end
local collateral7 = game.ReplicatedStorage.Resources.KJEffects["ColateralImapctTest"].HitTwo:Clone()
collateral7.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
    for _, child in ipairs(collateral7:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(12) -- Emit 20 particles
        end
    end
local collateral8 = game.ReplicatedStorage.Resources.KJEffects["ColateralImapctTest2"].HitTwo:Clone()
collateral8.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
    for _, child in ipairs(collateral8:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(10) -- Emit 20 particles
    end
 end
local boom1 = game.ReplicatedStorage.Resources.KJEffects["ImpactEffect2"].Attachment:Clone()
boom1.Parent = game.Players.LocalPlayer.Character["Torso"]
    for _, child in ipairs(boom1:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(20) -- Emit 20 particles
        end
    end

local boom1 = game.ReplicatedStorage.Resources.KJEffects["SpinningSmoke"].Smoke:Clone()
boom1.Parent = game.Players.LocalPlayer.Character["Torso"]
    for _, child in ipairs(boom1:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(20) -- Emit 20 particles
        end
    end

local boom1 = game.ReplicatedStorage.Resources.KJEffects["spinnerthing"].spinningpartysmoke:Clone()
boom1.Parent = game.Players.LocalPlayer.Character["Torso"]
    for _, child in ipairs(boom1:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(3) -- Emit 20 particles
        end
end
