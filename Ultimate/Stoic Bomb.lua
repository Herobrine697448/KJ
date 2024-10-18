local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")
local anim = Instance.new("Animation")
anim.AnimationId = "rbxassetid://17141153099"
local playAnim = humanoid:LoadAnimation(anim)
anim.AnimationId = "rbxassetid://0"
playAnim:Play()

--START SOUND
local function playSound()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://17149593018"
    sound.Parent = character
    sound.Volume = 4
    sound:Play()
end

playSound()

--START WORDS KJ STOIC BOMB
wait(0.1)
local function playSound()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://17141392676"
    sound.Parent = character
    sound.Volume = 3
    sound:Play()
end
playSound()

--GO DOWN
wait(0.2)
local function playSound()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://17141392513"
    sound.Parent = character
    sound.Volume = 3
    sound:Play()
end
playSound()

--EXPLOSION START
wait(0.3)
local function playSound()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://17141392976"
    sound.Parent = character
    sound.Volume = 3
    sound:Play()
end
playSound()


--EXPLOSION END
wait(2.8)
local function playSound()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://17141392854"
    sound.Parent = character
    sound.Volume = 3
    sound:Play()
end
playSound()
