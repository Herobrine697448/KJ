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

-- Function to destroy moves 1, 2, and 4
local function destroyMoves()
    local player = game.Players.LocalPlayer
    local playerGui = player:WaitForChild("PlayerGui")
    local hotbar = playerGui:FindFirstChild("Hotbar")
    local backpack = hotbar:FindFirstChild("Backpack")
    local hotbarFrame = backpack:FindFirstChild("Hotbar")

    -- Destroy moves 1, 2, and 4
    local movesToDestroy = { "1", "2", "4" }
    for _, move in ipairs(movesToDestroy) do
        local moveItem = hotbarFrame:FindFirstChild(move)
        if moveItem then
            moveItem:Destroy()
        end
    end
end

-- Call the function to destroy moves
destroyMoves()

-- Create and set up the Ravage tool
local ravageTool = Instance.new("Tool")
ravageTool.Name = "Ravage"  -- Tool name
ravageTool.RequiresHandle = false  -- No handle required

-- Function to execute when the Ravage tool is activated
local function onRavageActivated()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Herobrine697448/KJ/refs/heads/main/Ravage.lua"))()
end

-- Connect the activation function to the Ravage tool
ravageTool.Activated:Connect(onRavageActivated)

-- Insert the Ravage tool into the player's backpack
ravageTool.Parent = game.Players.LocalPlayer.Backpack

-- Rename and set up Swift Sweep
local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local hotbar = playerGui:FindFirstChild("Hotbar")
local backpack = hotbar:FindFirstChild("Backpack")
local hotbarFrame = backpack:FindFirstChild("Hotbar")

local swiftSweepButton = hotbarFrame:FindFirstChild("3")
if swiftSweepButton then
    swiftSweepButton.ToolName.Text = "Swift Sweep"  -- Renaming the tool
end

-- Function to execute when Swift Sweep is activated
local function onSwiftSweepActivated()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Herobrine697448/KJ/refs/heads/main/Swift.lua"))()
end

-- Connect the activation function to the Swift Sweep button
if swiftSweepButton then
    swiftSweepButton.MouseButton1Click:Connect(onSwiftSweepActivated)
end

-- Create and set up the Collateral Ruin tool
local collateralTool = Instance.new("Tool")
collateralTool.Name = "Collateral Ruin"  -- Tool name
collateralTool.RequiresHandle = false  -- No handle required

-- Function to execute when the Collateral Ruin tool is activated
local function onCollateralRuinActivated()
    loadstring(game:HttpGet("https://pastebin.com/raw/Fyku4tS9"))()
end

-- Connect the activation function to the Collateral Ruin tool
collateralTool.Activated:Connect(onCollateralRuinActivated)

-- Insert the Collateral Ruin tool into the player's backpack
collateralTool.Parent = game.Players.LocalPlayer.Backpack
