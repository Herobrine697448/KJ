local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()

local anim2 = Instance.new("Animation")
anim2.AnimationId = "rbxassetid://16944345619"

local playAnim2 = humanoid:LoadAnimation(anim2)
anim2.AnimationId = "rbxassetid://0"
playAnim2:Play()

-- Add sound
local sound = Instance.new("Sound", character)
sound.SoundId = "rbxassetid://18654280691"
sound:Play()

wait(1)

-- New part for Weakest Dummy proximity check
local dummy = game.Workspace.Live["Weakest Dummy"]
repeat wait() until dummy.Humanoid
local dummyhumanoid = dummy.Humanoid

local dummyAnim = Instance.new("Animation")
dummyAnim.AnimationId = "rbxassetid://10471478869"

local playDummyAnim = dummyhumanoid:LoadAnimation(dummyAnim)

-- Function to play the animation
local function playDummyAnimation()
    if not playDummyAnim.IsPlaying then
        playDummyAnim:Play()
    end
end

-- Check the player's proximity to the dummy and trigger animation when using the tool
local tool = Instance.new("Tool") -- Your tool that triggers this script
tool.Activated:Connect(function()
    local playerPosition = character.PrimaryPart.Position
    local dummyPosition = dummy.PrimaryPart.Position
    local distance = (playerPosition - dummyPosition).magnitude

    if distance <= 5 then -- Check if within range (5 studs)
        playDummyAnimation()
    end
end)

-- Stop the animation once it completes
playDummyAnim.Stopped:Connect(function()
    playDummyAnim:Stop()
end)
