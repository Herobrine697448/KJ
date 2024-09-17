-- Clear Backpack Script
local function clearBackpack()
    local player = game.Players.LocalPlayer
    local backpack = player.Backpack

    -- Clear all items in the backpack
    for _, item in pairs(backpack:GetChildren()) do
        item:Destroy()
    end
end

-- Call the function to clear the backpack
clearBackpack()

--ULTIMATE TEXT
local plr = game.Players.LocalPlayer
local gui = plr.PlayerGui
local ulttext = gui.ScreenGui.MagicHealth.TextLabel

ulttext.Text = "20 SERIES"

--KJ SPAWN
local function playAnimation()
    local player = game.Players.LocalPlayer
    repeat wait() until player.Character and player.Character:FindFirstChild("Humanoid")
    local humanoid = player.Character.Humanoid
    local character = player.Character or player.CharacterAdded:Wait()
    local UserInputService = game:GetService("UserInputService")

    local anim2 = Instance.new("Animation")
    anim2.AnimationId = "rbxassetid://17325160621"

    local playAnim2 = humanoid:LoadAnimation(anim2)
    playAnim2:Play()
end

-- Call the function to play the animation when the script is executed
playAnimation()

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

        local AnimAnim = Instance.new("Animation")
        AnimAnim.AnimationId = "rbxassetid://18447913645"
        local Anim = Humanoid:LoadAnimation(AnimAnim)
        AnimAnim.AnimationId = "rbxassetid://0"

        local startTime = 2.9

        Anim:Play()
        Anim:AdjustSpeed(0)
        Anim.TimePosition = startTime
        Anim:AdjustSpeed(1)
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

-- Tool Script for Ravage
local function createRavageTool()
    local tool = Instance.new("Tool")
    tool.Name = "Ravage"
    tool.RequiresHandle = true
    tool.CanBeDropped = true
    tool.Parent = game.Players.LocalPlayer.Backpack

    local handle = Instance.new("Part")
    handle.Name = "Handle"
    handle.Size = Vector3.new(1, 1, 1)
    handle.Anchored = false
    handle.CanCollide = false
    handle.Parent = tool

    local function onActivated()
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 0
        local player = game.Players.LocalPlayer
        repeat wait() until player.Character.Humanoid
        local humanoid = player.Character.Humanoid
        local character = player.Character or player.CharacterAdded:Wait()
        local UserInputService = game:GetService("UserInputService")

        local anim = Instance.new("Animation")
        anim.AnimationId = "rbxassetid://16945573694"

        local playAnim = humanoid:LoadAnimation(anim)
        anim.AnimationId = "rbxassetid://0"
        playAnim:Play()

        wait(0.7)

        local anim2 = Instance.new("Animation")
        anim2.AnimationId = "rbxassetid://16945550029"

        local playAnim2 = humanoid:LoadAnimation(anim2)
        anim2.AnimationId = "rbxassetid://0"
        playAnim2:Play()

        local soundeffect = Instance.new("Sound")
        soundeffect.SoundId = "rbxassetid://17325540665"
        soundeffect.Parent = game.Players.LocalPlayer.Character.Torso
        soundeffect:Play()
        soundeffect.Volume = 1

        local hit1 = game.ReplicatedStorage.Resources.KJEffects["HitParticles"].Hit:Clone()
        hit1.Parent = game.Players.LocalPlayer.Character["Right Arm"]
        for _, child in ipairs(hit1:GetChildren()) do
            if child:IsA("ParticleEmitter") then
                child:Emit(1)
            end
        end

        wait(1.3)

        local soundeffect = Instance.new("Sound")
        soundeffect.SoundId = "rbxassetid://17325540665"
        soundeffect.Parent = game.Players.LocalPlayer.Character.Torso
        soundeffect:Play()
        soundeffect.Volume = 1

        local hit1 = game.ReplicatedStorage.Resources.KJEffects["HitParticles"].Hit:Clone()
        hit1.Parent = game.Players.LocalPlayer.Character["Left Arm"]
        for _, child in ipairs(hit1:GetChildren()) do
            if child:IsA("ParticleEmitter") then
                child:Emit(1)
            end
        end

        wait(0.4)

        local soundeffect = Instance.new("Sound")
        soundeffect.SoundId = "rbxassetid://17325540665"
        soundeffect.Parent = game.Players.LocalPlayer.Character.Torso
        soundeffect:Play()
        soundeffect.Volume = 1

        local hit1 = game.ReplicatedStorage.Resources.KJEffects["HitParticles"].Hit:Clone()
        hit1.Parent = game.Players.LocalPlayer.Character["Right Arm"]
        for _, child in ipairs(hit1:GetChildren()) do
            if child:IsA("ParticleEmitter") then
                child:Emit(1)
            end
        end

        wait(0.4)
        local hit1 = game.ReplicatedStorage.Resources.KJEffects["HitParticles"].Hit:Clone()
        hit1.Parent = game.Players.LocalPlayer.Character["Right Arm"]
        for _, child in ipairs(hit1:GetChildren()) do
            if child:IsA("ParticleEmitter") then
                child:Emit(1)
            end
        end
        wait(0.1)
        local soundeffect = Instance.new("Sound")
        soundeffect.SoundId = "rbxassetid://17799049330"
        soundeffect.Parent = game.Players.LocalPlayer.Character.Torso
        soundeffect:Play()
        soundeffect.Volume = 1
        local hit1 = game.ReplicatedStorage.Resources.KJEffects["HitParticles"].Hit:Clone()
        hit1.Parent = game.Players.LocalPlayer.Character["Right Arm"]
        for _, child in ipairs(hit1:GetChildren()) do
            if child:IsA("ParticleEmitter") then
                child:Emit(1)
            end
        end
        wait(0.1)
        local soundeffect = Instance.new("Sound")
        soundeffect.SoundId = "rbxassetid://17799049330"
        soundeffect.Parent = game.Players.LocalPlayer.Character.Torso
        soundeffect:Play()
        soundeffect.Volume = 1

        local hit1 = game.ReplicStorage.Resources.KJEffects["HitParticles"].Hit:Clone()
        hit1.Parent = game.Players.LocalPlayer.Character["Right Arm"]
        for _, child in ipairs(hit1:GetChildren()) do
            if child:IsA("ParticleEmitter") then
                child:Emit(1)
            end
        end
        wait(0.1)
        local soundeffect = Instance.new("Sound")
        soundeffect.SoundId = "rbxassetid://17799049330"
        soundeffect.Parent = game.Players.LocalPlayer.Character.Torso
        soundeffect:Play()
        soundeffect.Volume = 1

        local hit1 = game.ReplicatedStorage.Resources.KJEffects["HitParticles"].Hit:Clone()
        hit1.Parent = game.Players.LocalPlayer.Character["Left Arm"]
        for _, child in ipairs(hit1:GetChildren()) do
            if child:IsA("ParticleEmitter") then
                child:Emit(1)
            end
        end
        wait(0.5)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
    end

    tool.Activated:Connect(onActivated)
end

createRavageTool()

-- Tool Script for Swift Sweep
local function createSwiftSweepTool()
    local tool = Instance.new("Tool")
    tool.Name = "Swift Sweep"
    tool.RequiresHandle = true
    tool.Parent = game.Players.LocalPlayer.Backpack

    local handle = Instance.new("Part")
    handle.Name = "Handle"
    handle.Size = Vector3.new(1, 1, 1)
    handle.Anchored = false
    handle.CanCollide = false
    handle.Parent = tool

    local function onActivated()
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
    end

    tool.Activated:Connect(onActivated)
end

createSwiftSweepTool()

-- Create the Tool
local tool = Instance.new("Tool")
tool.Name = "Collateral Ruin"
tool.RequiresHandle = true

-- Create the Handle part
local handle = Instance.new("Part")
handle.Name = "Handle"
handle.Size = Vector3.new(1, 1, 1)
handle.Anchored = false
handle.CanCollide = false
handle.Parent = tool

script.Parent = tool
tool.Parent = game.Players.LocalPlayer.Backpack

-- Create the Tool
local tool = Instance.new("Tool")
tool.Name = "Awakening 1"
tool.RequiresHandle = true
tool.Parent = game.Players.LocalPlayer.Backpack

-- Create the Handle part
local handle = Instance.new("Part")
handle.Name = "Handle"
handle.Size = Vector3.new(1, 1, 1) -- Adjust size as needed
handle.Anchored = false
handle.CanCollide = false
handle.Parent = tool

-- Tool script
local function onActivated()
    -- Clear backpack
    local player = game.Players.LocalPlayer
    for _, item in ipairs(player.Backpack:GetChildren()) do
        item:Destroy()
    end
    
    -- Add moves
    local moves = {
        "Stoic Bomb (WIP)",   -- WIP
        "20 20 20 Dropkick", -- Added using external script
        "Five Seasons (WIP)" -- WIP
    }
    
    for _, moveName in ipairs(moves) do
        if moveName ~= "20 20 20 Dropkick" then
            local move = Instance.new("Tool")
            move.Name = moveName
            move.RequiresHandle = true
            move.Parent = player.Backpack
            
            -- Create the Handle part for the move
            local handle = Instance.new("Part")
            handle.Name = "Handle"
            handle.Size = Vector3.new(1, 1, 1) -- Adjust size as needed
            handle.Anchored = false
            handle.CanCollide = false
            handle.Parent = move
        else
            -- Add 20-20-20 Dropkick tool using external script
            local dropkickScript = loadstring(game:HttpGet("https://pastebin.com/raw/KHF0uXdY"))
            dropkickScript()
        end
    end

    -- Animation and Sound effects
    player.Character.Humanoid.WalkSpeed = 0
    repeat wait() until player.Character.Humanoid
    local humanoid = player.Character.Humanoid
    local character = player.Character or player.CharacterAdded:Wait()
    local UserInputService = game:GetService("UserInputService")

    local soundeffect1 = Instance.new("Sound")
    soundeffect1.SoundId = "rbxassetid://17150550559"
    soundeffect1.Parent = game.Players.LocalPlayer.Character.Torso
    soundeffect1:Play()
    soundeffect1.Volume = 3

    local soundeffect2 = Instance.new("Sound")
    soundeffect2.SoundId = "rbxassetid://17150550302"
    soundeffect2.Parent = game.Players.LocalPlayer.Character.Torso
    soundeffect2:Play()
    soundeffect2.Volume = 5

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

    player.Character.Humanoid.WalkSpeed = 16

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
end

tool.Activated:Connect(onActivated)
