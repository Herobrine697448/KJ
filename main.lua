-- Player reference
local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local hotbar = playerGui:FindFirstChild("Hotbar")
local backpack = hotbar:FindFirstChild("Backpack")
local hotbarFrame = backpack:FindFirstChild("Hotbar")
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

-- RESET FUNCTION
local function resetCharacter()
    if humanoid then
        humanoid:TakeDamage(humanoid.Health)  -- Resets the character
    end
end

-- Reset the character
resetCharacter()

-- Wait for 5.5 seconds
wait(5.5)

-- KJ MESSAGE
local StarterGui = game:GetService("StarterGui")
StarterGui:SetCore("SendNotification", {
    Title = "NOTIFICATION",
    Text = "Character Based on KJ's Final Ride & KJ Kills Day Credits to Kilojoule & Stealth",
    Duration = 10
})

-- ULTIMATE TEXT
local ulttext = playerGui.ScreenGui.MagicHealth.TextLabel
ulttext.Text = "20 SERIES"

-- KJ SPAWN
local function playAnimation()
    repeat wait() until humanoid
    local anim2 = Instance.new("Animation")
    anim2.AnimationId = "rbxassetid://17325160621"
    local playAnim2 = humanoid:LoadAnimation(anim2)
    playAnim2:Play()
end

-- Call the function to play the animation
playAnimation()

-- Function to destroy moves 1, 2, and 4
local function destroyMoves()
    if hotbarFrame then
        local move1 = hotbarFrame:FindFirstChild("1")
        local move2 = hotbarFrame:FindFirstChild("2")
        local move4 = hotbarFrame:FindFirstChild("4")
        
        if move1 then move1:Destroy() end
        if move2 then move2:Destroy() end
        if move4 then move4:Destroy() end
    end
end

-- Call the function to destroy moves
destroyMoves()

-- Create the Ravage tool
local ravageTool = Instance.new("Tool")
ravageTool.Name = "Ravage"
ravageTool.RequiresHandle = false

-- Function to execute when the Ravage tool is activated
local function onRavageActivated()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Herobrine697448/KJ/refs/heads/main/Ravage.lua"))()
end

-- Connect the activation function to the Ravage tool's Activated event
ravageTool.Activated:Connect(onRavageActivated)
ravageTool.Parent = backpack

-- Modify the 3rd move (BaseButton)
local baseButton = hotbarFrame:FindFirstChild("3")
if baseButton and baseButton:FindFirstChild("Base") then
    local toolNameLabel = baseButton.Base.ToolName
    toolNameLabel.Text = "Swift Sweep"

    -- Function to execute when the Swift Sweep tool is activated
    local function onSwiftSweepActivated()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Herobrine697448/KJ/refs/heads/main/Swift.lua"))()
    end

    -- Connect the activation function to the Swift Sweep button
    baseButton.MouseButton1Click:Connect(onSwiftSweepActivated)
else
    warn("Base button not found in hotbar.")
end

-- Animation handling code can be optimized and cleaned up further if needed


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

