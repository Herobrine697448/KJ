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
wait(5.5)


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


--KJ M1 CHANGE (FE)
local url = "https://raw.githubusercontent.com/Herobrine697448/KJ/refs/heads/main/KJ%20M1.lua"
local scriptContent = game:HttpGet(url, true) -- Fetch the script
loadstring(scriptContent)() -- Execute the script



--RAVAGE CODE
-- Create the tool
local tool = Instance.new("Tool")
tool.Name = "Ravage"  -- Updated tool name
tool.RequiresHandle = false  -- No handle required
 
-- Insert the tool into the player's backpack
tool.Parent = game.Players.LocalPlayer.Backpack
 
-- Function to execute when the tool is activated
local function onActivated()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Herobrine697448/KJ/refs/heads/main/KJ%20Basic/Ravage.lua"))()
end
 
-- Connect the activation function to the tool's Activated event
tool.Activated:Connect(onActivated)
 
-- Add the tool to the player's backpack
tool.Parent = game.Players.LocalPlayer.Backpack



--SWIFT SWEEP CODE
-- Create the tool
local tool = Instance.new("Tool")
tool.Name = "Swift Sweep"  -- Updated tool name
tool.RequiresHandle = false  -- No handle required
 
-- Insert the tool into the player's backpack
tool.Parent = game.Players.LocalPlayer.Backpack
 
-- Function to execute when the tool is activated
local function onActivated()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Herobrine697448/KJ/refs/heads/main/KJ%20Basic/Swift%20Sweep.lua"))()
end
 
-- Connect the activation function to the tool's Activated event
tool.Activated:Connect(onActivated)
 
-- Add the tool to the player's backpack
tool.Parent = game.Players.LocalPlayer.Backpack


--COLLATERAL RUIN CODE
-- Create the tool
local tool = Instance.new("Tool")
tool.Name = "Collateral Ruin"  -- Updated tool name
tool.RequiresHandle = false  -- No handle required
 
-- Insert the tool into the player's backpack
tool.Parent = game.Players.LocalPlayer.Backpack
 
-- Function to execute when the tool is activated
local function onActivated()
    loadstring(game:HttpGet("https://pastebin.com/raw/Fyku4tS9"))()
end
 
-- Connect the activation function to the tool's Activated event
tool.Activated:Connect(onActivated)
 
-- Add the tool to the player's backpack
tool.Parent = game.Players.LocalPlayer.Backpack


local Tool = Instance.new("Tool")
Tool.Name = "Awakening"
Tool.RequiresHandle = false
Tool.Parent = game.Players.LocalPlayer.Backpack

local function executeAwakening()
    local url = "https://raw.githubusercontent.com/Herobrine697448/KJ/refs/heads/main/Awakenings/Awakening.lua" -- Replace with the actual URL
    local scriptContent = game:HttpGet(url) -- Fetch the content from the URL
    local functionToExecute = loadstring(scriptContent)()
    if functionToExecute then
        functionToExecute()
    end
end

Tool.Activated:Connect(executeAwakening)
