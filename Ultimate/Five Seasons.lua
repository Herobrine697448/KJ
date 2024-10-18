local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")
local anim = Instance.new("Animation")
anim.AnimationId = "rbxassetid://18462892217"
local playAnim = humanoid:LoadAnimation(anim)
anim.AnimationId = "rbxassetid://0"
playAnim:Play()

--START SOUND
local function playSound()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://18460863844"
    sound.Parent = character
    sound.Volume = 4
    sound:Play()
end

playSound()
