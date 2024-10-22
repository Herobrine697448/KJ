local player = game.Players.LocalPlayer

for _, item in ipairs(player.Backpack:GetChildren()) do
    item:Destroy()
end

task.spawn(function()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")

    local anim = Instance.new("Animation")
    anim.AnimationId = "rbxassetid://18445236460"

    local playAnim = humanoid:LoadAnimation(anim)
    anim.AnimationId = "rbxassetid://0"
    playAnim:Play()
end)

task.spawn(function()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

    local teleportDistance = 0.4 -- The distance to teleport forward each step
    local teleportInterval = 0 -- Time interval between each teleport (in seconds)
    local totalDuration = 1.55 -- Total duration of the teleportation (in seconds)

    local timeElapsed = 0
    local startTime = tick() -- Record the start time

    while timeElapsed < totalDuration do
        humanoidRootPart.CFrame = humanoidRootPart.CFrame * CFrame.new(0, 0, -teleportDistance)
        wait(teleportInterval)
        timeElapsed = tick() - startTime -- Update the elapsed time
    end
end)

task.spawn(function()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humRp = character:WaitForChild("HumanoidRootPart")

    -- Create and play sound effects
    local function playSounds()
        local soundSFX = Instance.new("Sound")
        soundSFX.SoundId = "rbxassetid://18445228824"
        soundSFX.Volume = 2
        soundSFX.Name = "SFX"
        soundSFX.Parent = humRp
        soundSFX:Play()

        local soundSFX2 = Instance.new("Sound")
        soundSFX2.SoundId = "rbxassetid://18445228136"
        soundSFX2.Volume = 2
        soundSFX2.Name = "SFX2"
        soundSFX2.Parent = humRp
        soundSFX2:Play()

        local soundSFX1 = Instance.new("Sound")
        soundSFX1.SoundId = "rbxassetid://18445227792"
        soundSFX1.Volume = 2
        soundSFX1.Name = "SFX1"
        soundSFX1.Parent = humRp
        soundSFX1:Play()
    end

    local function createEffects()
        -- Create and configure the fine effect
        wait(1.7)
        local actuallyNice = game.ReplicatedStorage.Resources.KJEffects["fine...1"]:Clone()
        actuallyNice.CFrame = humRp.CFrame
        actuallyNice.CanCollide = false

        -- Create and configure the emit effects
        local boom = game.ReplicatedStorage.Resources.KJEffects["fine...Emit"]:Clone()
        boom.Parent = workspace
        boom.CanCollide = false
        boom.CFrame = humRp.CFrame * CFrame.new(0, -0.65, 0)

        local boom2 = game.ReplicatedStorage.Resources.KJEffects["fine...Emit2"]:Clone()
        boom2.Parent = workspace
        boom2.CanCollide = false
        boom2.CFrame = humRp.CFrame * CFrame.new(0, -0.65, 0)

        -- Emit particles from the first effect
        delay(0.16, function()
            for _, Particles in pairs(boom:GetDescendants()) do
                if Particles:IsA("ParticleEmitter") then
                    actuallyNice.Parent = workspace
                    Particles:Emit(Particles:GetAttribute("EmitCount"))
                end
            end
        end)

        -- Cleanup after 8.17 seconds
        delay(8.17, function()
            for _, Particles in pairs(boom2:GetDescendants()) do
                if Particles:IsA("ParticleEmitter") then
                    Particles:Emit(Particles:GetAttribute("EmitCount"))
                end
            end

            boom2:Destroy()
        end)
    end

    local function executeVFX()
        -- Play sound effects and create visual effects
        playSounds()
        createEffects()
    end

    -- Execute the VFX when the script runs
    executeVFX()
end)


--BACKPACK CLEAR
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
local CooldownLength = 999
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
