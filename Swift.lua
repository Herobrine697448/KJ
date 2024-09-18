local function swiftSweep()
    -- Set the character's walk speed to 0
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 0
    
    local player = game.Players.LocalPlayer
    repeat wait() until player.Character.Humanoid
    local humanoid = player.Character.Humanoid
    local character = player.Character or player.CharacterAdded:Wait()
    local UserInputService = game:GetService("UserInputService")

    -- Define and play the sound
    local soundId = 18654280691 -- Correct sound ID
    local sound = Instance.new("Sound")
    sound.Name = "Swift_Sweep" -- Name of the sound instance
    sound.SoundId = "rbxassetid://" .. soundId
    sound.Volume = 1
    sound.Pitch = 1.0
    sound.PlaybackSpeed = 1.0
    sound.Parent = character.Torso
    sound:Play()
    
    -- Define and play the animation
    local anim2 = Instance.new("Animation")
    anim2.AnimationId = "rbxassetid://16944345619"
    local playAnim2 = humanoid:LoadAnimation(anim2)
    anim2.AnimationId = "rbxassetid://0"
    playAnim2:Play()
    
    -- Wait for the animation to complete
    wait(1)
    
    -- Reset the character's walk speed
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
end

--Dummy Animation
local player = game.Workspace.Live["Weakest Dummy"]
repeat wait() until player.Humanoid
local dummyhumanoid = game.Workspace.Live["Weakest Dummy"]["Humanoid"]

local anim2 = Instance.new("Animation")
anim2.AnimationId = "rbxassetid://10471478869"

local playAnim2 = dummyhumanoid:LoadAnimation(anim2)
playAnim2:Play()lay()
