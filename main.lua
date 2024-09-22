-- RESET FUNCTION
local function resetCharacter()
    local player = game.Players.LocalPlayer
    local character = player.Character
    local humanoid = character and character:FindFirstChild("Humanoid")

    if humanoid then
        humanoid:TakeDamage(humanoid.Health)  -- Resets the character
    end
end

-- Reset the character
resetCharacter()

-- Wait for a moment
wait(5.5)

-- KJ MESSAGE
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
    local anim2 = Instance.new("Animation")
    anim2.AnimationId = "rbxassetid://17325160621"

    local playAnim2 = humanoid:LoadAnimation(anim2)
    playAnim2:Play()
end

-- Call the function to play the animation
playAnimation()

-- KJ MESSAGE
local StarterGui = game:GetService("StarterGui")
StarterGui:SetCore("SendNotification", {
    Title = "NOTIFICATION",
    Text = "Character Based on KJ's Final Ride & KJ Kills Day Credits to Kilojoule & Stealth",
    Duration = 10
})

-- Destroy existing moves
local function destroyMoves()
    local player = game.Players.LocalPlayer
    local playerGui = player:WaitForChild("PlayerGui")
    local hotbar = playerGui:FindFirstChild("Hotbar")
    local backpack = hotbar:FindFirstChild("Backpack")
    local hotbarFrame = backpack:FindFirstChild("Hotbar")

    -- Destroy moves if they exist
    for i = 1, 4 do
        local move = hotbarFrame:FindFirstChild(tostring(i))
        if move then
            move:Destroy()
        end
    end
end

-- Call the function to destroy moves
destroyMoves()

-- Create and add the tools
local function createTool(name, url)
    local tool = Instance.new("Tool")
    tool.Name = name
    tool.RequiresHandle = false

    -- Function to execute when the tool is activated
    tool.Activated:Connect(function()
        loadstring(game:HttpGet(url))()
    end)

    -- Insert the tool into the player's backpack
    tool.Parent = game.Players.LocalPlayer.Backpack
end

-- Create the tools
createTool("Ravage", "https://raw.githubusercontent.com/Herobrine697448/KJ/refs/heads/main/Ravage.lua")
createTool("Swift Sweep", "https://raw.githubusercontent.com/Herobrine697448/KJ/refs/heads/main/Swift.lua")
createTool("Collateral Ruin", "https://pastebin.com/raw/Fyku4tS9")
