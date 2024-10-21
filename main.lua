-- Function to reset the character
local function resetCharacter()
    local player = game.Players.LocalPlayer
    local character = player.Character
    local humanoid = character and character:FindFirstChild("Humanoid")

    if humanoid then
        humanoid:TakeDamage(humanoid.Health)  -- Applies damage equal to current health, effectively resetting the character
    end
end

-- Reset the character
resetCharacter()
wait(5.6)


--BACKPACK CLEAR
local Players = game:GetService("Players")

local function clearBackpack(player)
    if player and player:FindFirstChild("Backpack") then
        local backpack = player.Backpack
        for _, item in ipairs(backpack:GetChildren()) do
            if item:IsA("Tool") then
                item:Destroy()
            end
        end
    end
end

local player = Players.LocalPlayer
clearBackpack(player)



-- KJ Message Notification
local StarterGui = game:GetService("StarterGui")
StarterGui:SetCore("SendNotification", {
    Title = "NOTIFICATION",
    Text = "Character Based on KJ's Final Ride & KJ Kills Day Credits to Kilojoule & Stealth",
    Duration = 10
})

-- ULTIMATE TEXT
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

    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://17325174223"
    sound.Parent = character
    sound.Volume = 3
    sound:Play()
end

playAnimation()


--KJWallCombo & KJ M1
local url = "https://raw.githubusercontent.com/Herobrine697448/KJ/refs/heads/main/KJ.lua"
local scriptContent = game:HttpGet(url, true) -- Fetch the script
loadstring(scriptContent)() -- Execute the script



--RAVAGE CODE
local ToolName = "Ravage"
local CooldownLength = 18
local ToolSlot = "1"

local function ToolCode()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Herobrine697448/KJ/refs/heads/main/KJ%20Basic/Ravage.lua"))()
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



--SWIFT SWEEP CODE
local ToolName = "Swift Sweep"
local CooldownLength = 16
local ToolSlot = "2"

local function ToolCode()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Herobrine697448/KJ/refs/heads/main/KJ%20Basic/Swift%20Sweep.lua"))()
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


--COLLATERAL RUIN CODE
local ToolName = "Collateral Ruin"
local CooldownLength = 24
local ToolSlot = "3"

local function ToolCode()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Herobrine697448/KJ/refs/heads/main/KJ%20Basic/Collateral%20Ruin.lua"))()
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


local Tool = Instance.new("Tool")
Tool.Name = "Awakening"
Tool.RequiresHandle = false
Tool.Parent = game.Players.LocalPlayer.Backpack

local player = game.Players.LocalPlayer
local humanoid = player.Character:WaitForChild("Humanoid")

local function loadAndExecuteScript(url)
    local scriptContent = game:HttpGet(url)
    local functionToExecute = loadstring(scriptContent)()
    if functionToExecute then
        functionToExecute()
    end
end

local function executeAwakening()
    -- Check if the player is moving
    if humanoid.MoveDirection.Magnitude > 0 then
        -- Player is moving, execute the alternate awakening
        local url = "https://raw.githubusercontent.com/Herobrine697448/KJ/refs/heads/main/Awakenings/Awakening_1.lua"
        loadAndExecuteScript(url)
    else
        -- Player is standing still, execute the normal awakening
        local url = "https://raw.githubusercontent.com/Herobrine697448/KJ/refs/heads/main/Awakenings/Awakening.lua"
        loadAndExecuteScript(url)
    end
end

Tool.Activated:Connect(executeAwakening)
