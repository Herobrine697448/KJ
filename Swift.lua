-- Function to play a sound
local function playSound()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://18654280691" -- Replace with the sound asset ID
    sound.Parent = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") -- Ensure the sound plays at the character's position
    sound:Play()
    sound.Ended:Connect(function() sound:Destroy() end) -- Clean up the sound after it finishes
end

-- Set the player's walk speed to 0
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 0

local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

-- Play the sound
playSound()

local anim2 = Instance.new("Animation")
anim2.AnimationId = "rbxassetid://16944345619"

local playAnim2 = humanoid:LoadAnimation(anim2)
anim2.AnimationId = "rbxassetid://0"
playAnim2:Play()

-- Wait for 1 second
wait(1)

-- Restore the player's walk speed to 16
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16

--Dummy Animation
local player = game.Workspace.Live["Weakest Dummy"]
repeat wait() until player.Humanoid
local dummyhumanoid = game.Workspace.Live["Weakest Dummy"]["Humanoid"]

local anim2 = Instance.new("Animation")
anim2.AnimationId = "rbxassetid://10471478869"

local playAnim2 = dummyhumanoid:LoadAnimation(anim2)
playAnim2:Play()lay()
