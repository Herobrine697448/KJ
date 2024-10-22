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

local function playHitAnimation(target)
    if debounce then return end
    debounce = true

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
    character:WaitForChild("HumanoidRootPart").CFrame = target.HumanoidRootPart.CFrame * CFrame.new(0, 0, -3) * CFrame.Angles(0, math.pi, 0)

    local targetHumanoid = target:WaitForChild("Humanoid")
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
    
    local hit1 = ReplicatedStorage.Resources.KJEffects["HitParticles"].Hit:Clone()
    hit1.Parent = character["Left Arm"]
    for _, child in ipairs(hit1:GetChildren()) do
        if child:IsA("ParticleEmitter") then
            child:Emit(10)
        end
    end

    wait(2)
    workspace.barrage:Destroy()

    local hit2 = ReplicatedStorage.Resources.KJEffects["HitParticles"].Hit:Clone()
    hit2.Parent = character["Right Arm"]
    for _, child in ipairs(hit2:GetChildren()) do
        if child:IsA("ParticleEmitter") then
            child:Emit(10)
        end
    end

    wait(1)

    local windEffect = ReplicatedStorage.Resources.KJEffects["RUNAROUNDWIND"].RUNAROUNDWIND:Clone()
    windEffect.Parent = character["HumanoidRootPart"]
    for _, child in ipairs(windEffect:GetChildren()) do
        if child:IsA("ParticleEmitter") then
            child:Emit(5)
        end
    end

    wait(1)

    local lastKickEffect = ReplicatedStorage.Resources.KJEffects["lastkick"].Attachment:Clone()
    lastKickEffect.Parent = character["HumanoidRootPart"]
    for _, child in ipairs(lastKickEffect:GetChildren()) do
        if child:IsA("ParticleEmitter") then
            child:Emit(5)
        end
    end

    wait(5)
    debounce = false
    character.Humanoid.WalkSpeed = 16
    character.Humanoid.AutoRotate = true 
end

local proximityDetectionRadius = 4

local function detectNearbyTarget()
    local closestTarget = nil
    local closestDistance = proximityDetectionRadius

    for _, p in ipairs(game.Players:GetPlayers()) do
        if p ~= player and p.Character and p.Character:FindFirstChild("HumanoidRootPart") then
            local distance = (character.HumanoidRootPart.Position - p.Character.HumanoidRootPart.Position).Magnitude
            if distance <= closestDistance then
                closestTarget = p.Character
                closestDistance = distance
            end
        end
    end

    local dummy = game.Workspace.Live:FindFirstChild("Weakest Dummy")
    if dummy and dummy:FindFirstChild("HumanoidRootPart") then
        local distance = (character.HumanoidRootPart.Position - dummy.HumanoidRootPart.Position).Magnitude
        if distance <= closestDistance then
            closestTarget = dummy
        end
    end

    return closestTarget
end

while true do
    local target = detectNearbyTarget()
    if target and not animationPlayed then
        playHitAnimation(target)
    end
    wait(0.1)
end
