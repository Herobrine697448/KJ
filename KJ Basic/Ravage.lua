local ReplicatedStorage = game:GetService("ReplicatedStorage")
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")
debounce = false
local anim = Instance.new("Animation")
anim.AnimationId = "rbxassetid://16945573694"
local playAnim = humanoid:LoadAnimation(anim)
anim.AnimationId = "rbxassetid://0"
local Sound = Instance.new("Sound")
Sound.Parent = character
Sound.SoundId = "rbxassetid://16945495411"
Sound.Playing = true
spawn(function()
    wait(1)
    debounce = true
end)
playAnim:Play()
playAnim:AdjustSpeed(0.3)
wait(0.3)
playAnim:AdjustSpeed(1)

local function playHitAnimation(targetPlayer)
    if debounce or animationPlayed then return end
    debounce = true
    animationPlayed = true

    anim.AnimationId = "rbxassetid://16945550029"
    local playAnim = humanoid:LoadAnimation(anim)
    anim.AnimationId = "rbxassetid://0"
    playAnim:Play()

    local Sound2 = Instance.new("Sound")
    Sound2.Parent = character
    Sound2.SoundId = "rbxassetid://16945517708"
    Sound2:Play()
    
    local Sound3 = Instance.new("Sound")
    Sound3.Parent = character
    Sound3.SoundId = "rbxassetid://16945593216"
    Sound3:Play()
    
    local Sound4 = Instance.new("Sound")
    Sound4.Parent = character
    Sound4.SoundId = "rbxassetid://16945691441"
    Sound4:Play()

    character.Humanoid.WalkSpeed = 0
    character.Humanoid.AutoRotate = false 
    character:WaitForChild("HumanoidRootPart").CFrame = targetPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -3) * CFrame.Angles(0, math.pi, 0)

    local targetHumanoid = targetPlayer.Character:WaitForChild("Humanoid")
    local targetAnimator = targetHumanoid:WaitForChild("Animator")
    local targetAnim = Instance.new("Animation")
    targetAnim.AnimationId = "rbxassetid://16945557433"
    local targetAnimationTrack = targetAnimator:LoadAnimation(targetAnim)
    targetAnimationTrack:Play()

    wait(1)
    local resourcesFolder = ReplicatedStorage:WaitForChild("Resources")
    local kjEffectsFolder = resourcesFolder:WaitForChild("KJEffects")
    local speedlinesandstuffPart = kjEffectsFolder:WaitForChild("barrage")
    local speedlinesandstuffClone = speedlinesandstuffPart:Clone()
    local desiredCFrame = CFrame.new(character["Left Arm"].Position)
    speedlinesandstuffClone.CFrame = desiredCFrame
    speedlinesandstuffClone.Parent = Workspace

    local function enableParticleEmitters(parent)
        for _, descendant in ipairs(parent:GetDescendants()) do
            if descendant:IsA("ParticleEmitter") then
                descendant.Enabled = true
            end
        end
    end

    spawn(function()
        wait(1)
        enableParticleEmitters(speedlinesandstuffClone)
    end)

    local hitEffect = game.ReplicatedStorage.Resources.KJEffects["HitParticles"].Hit:Clone()
    hitEffect.Parent = character["HumanoidRootPart"]
    for _, child in ipairs(hitEffect:GetChildren()) do
        if child:IsA("ParticleEmitter") then
            child:Emit(20)
        end
    end

    wait(2)
    speedlinesandstuffClone:Destroy()

    local windEffect = game.ReplicatedStorage.Resources.KJEffects["RUNAROUNDWIND"].RUNAROUNDWIND:Clone()
    windEffect.Parent = character["HumanoidRootPart"]
    for _, child in ipairs(windEffect:GetChildren()) do
        if child:IsA("ParticleEmitter") then
            child:Emit(20)
        end
    end

    wait(1)
    local lastKickEffect = game.ReplicatedStorage.Resources.KJEffects["lastkick"].Attachment:Clone()
    lastKickEffect.Parent = character["HumanoidRootPart"]
    for _, child in ipairs(lastKickEffect:GetChildren()) do
        if child:IsA("ParticleEmitter") then
            child:Emit(15)
        end
    end

    wait(5)
    debounce = false
    character.Humanoid.WalkSpeed = 16
    character.Humanoid.AutoRotate = true 
end

local proximityDetectionRadius = 10

local function detectNearbyPlayer()
    for _, p in ipairs(game.Players:GetPlayers()) do
        if p ~= player and p.Character and p.Character:FindFirstChild("HumanoidRootPart") then
            local distance = (character.HumanoidRootPart.Position - p.Character.HumanoidRootPart.Position).Magnitude
            if distance <= proximityDetectionRadius then
                return p
            end
        end
    end
    return nil
end

while true do
    local targetPlayer = detectNearbyPlayer()
    if targetPlayer and not animationPlayed then
        playHitAnimation(targetPlayer)
    end
    wait(0.1)
end
