-- Animation Handling Script
local Players = game:GetService("Players")

local player = Players.LocalPlayer

local character = player.Character or player.CharacterAdded:Wait()

local humanoid = character:FindFirstChildOfClass("Humanoid")

local animationId = 12447707844

local function stopAnimationTrack(track)
    if track and track.Animation and track.Animation.AnimationId == "rbxassetid://" .. animationId then
        track:Stop()
    end
end

local function checkAndStopAnimation()
    for _, track in pairs(humanoid:GetPlayingAnimationTracks()) do
        stopAnimationTrack(track)
    end
end

humanoid.AnimationPlayed:Connect(checkAndStopAnimation)

checkAndStopAnimation()

local animationId = 15955393872

local player = game.Players.LocalPlayer

local character = player.Character or player.CharacterAdded:Wait()

local humanoid = character:WaitForChild("Humanoid")

local function onAnimationPlayed(animationTrack)
    if animationTrack.Animation.AnimationId == "rbxassetid://" .. animationId then
        local p = game.Players.LocalPlayer
        local Humanoid = p.Character:WaitForChild("Humanoid")

        for _, animTrack in pairs(Humanoid:GetPlayingAnimationTracks()) do
            animTrack:Stop()
        end

        local sound = Instance.new("Sound")
        sound.SoundId = "rbxassetid://18443048724"
        sound.Volume = 3
        sound.Parent = game.Players.LocalPlayer.Character

        local AnimAnim = Instance.new("Animation")
        AnimAnim.AnimationId = "rbxassetid://18447913645"
        local Anim = Humanoid:LoadAnimation(AnimAnim)
        AnimAnim.AnimationId = "rbxassetid://0"
        
        local Origin = game.ReplicatedStorage.Resources.KJEffects.KJWallCombo["FinalImpact"].Origin:Clone()
        Origin.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
        for _, child in ipairs(Origin:GetChildren()) do
           if child:IsA("ParticleEmitter") then
               child:Emit(5)
            end
         end

         local FinalImpact = game.ReplicatedStorage.Resources.KJEffects.KJWallCombo["FinalImpact"].Attachment:Clone()
         FinalImpact.Parent = game.Players.LocalPlayer.Character["Left Arm"]
         for _, child in ipairs(FinalImpact:GetChildren()) do
            if child:IsA("ParticleEmitter") then
                child:Emit(1)
            end
        end
        Anim:Play()
        Anim:AdjustSpeed(0)
        Anim:AdjustSpeed(1)

        sound:Play()
        sound:AdjustSpeed(3)
        sound:AdjustSpeed(4)
    end
end

humanoid.AnimationPlayed:Connect(onAnimationPlayed)

local animationIdsToStop = {
    [10469493270] = true,
    [10469630950] = true,
    [10469639222] = true,
    [10469643643] = true,
}

local replacementAnimations = {
    ["10469643643"] = "rbxassetid://17325537719",
    ["10469639222"] = "rbxassetid://17325522388",
    ["10469630950"] = "rbxassetid://17325513870",
    ["10469493270"] = "rbxassetid://17325510002",
}

local queue = {}
local isAnimating = false

local function playReplacementAnimation(animationId)
    if isAnimating then
        table.insert(queue, animationId)
        return
    end

    isAnimating = true
    local replacementAnimationId = replacementAnimations[tostring(animationId)]
    if replacementAnimationId then
        local AnimAnim = Instance.new("Animation")
        AnimAnim.AnimationId = replacementAnimationId
        local Anim = humanoid:LoadAnimation(AnimAnim)
        AnimAnim.AnimationId = "rbxassetid://0"
        Anim:Play()

        Anim.Stopped:Connect(function()
            isAnimating = false
            if #queue > 0 then
                local nextAnimationId = table.remove(queue, 1)
                playReplacementAnimation(nextAnimationId)
            end
        end)
    else
        isAnimating = false
    end
end

local function stopSpecificAnimations()
    for _, track in ipairs(humanoid:GetPlayingAnimationTracks()) do
        local animationId = tonumber(track.Animation.AnimationId:match("%d+"))
        if animationIdsToStop[animationId] then
            track:Stop()
        end
    end
end

local function onAnimationPlayed(animationTrack)
    local animationId = tonumber(animationTrack.Animation.AnimationId:match("%d+"))
    if animationIdsToStop[animationId] then
        stopSpecificAnimations()
        animationTrack:Stop()

        local replacementAnimationId = replacementAnimations[tostring(animationId)]
        if replacementAnimationId then
            playReplacementAnimation(animationId)
        end
    end
end

humanoid.AnimationPlayed:Connect(onAnimationPlayed)

local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

local function onBodyVelocityAdded(bodyVelocity)
    if bodyVelocity:IsA("BodyVelocity") then
        bodyVelocity.Velocity = Vector3.new(bodyVelocity.Velocity.X, 0, bodyVelocity.Velocity.Z)
    end
end

character.DescendantAdded:Connect(onBodyVelocityAdded)

for _, descendant in pairs(character:GetDescendants()) do
    onBodyVelocityAdded(descendant)
end

player.CharacterAdded:Connect(function(newCharacter)
    character = newCharacter
    humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    character.DescendantAdded:Connect(onBodyVelocityAdded)

    for _, descendant in pairs(character:GetDescendants()) do
        onBodyVelocityAdded(descendant)
    end
end)
 
