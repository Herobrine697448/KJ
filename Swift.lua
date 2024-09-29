game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 0
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

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
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16

-- New part for Weakest Dummy proximity check
local dummy = game.Workspace.Live["Weakest Dummy"]
repeat wait() until dummy.Humanoid
local dummyhumanoid = dummy.Humanoid

local dummyAnim = Instance.new("Animation")
dummyAnim.AnimationId = "rbxassetid://10471478869"

local playDummyAnim = dummyhumanoid:LoadAnimation(dummyAnim)

-- Check distance before playing dummy animation
local function playAnimationIfClose()
    local playerPosition = character.PrimaryPart.Position
    local dummyPosition = dummy.PrimaryPart.Position
    local distance = (playerPosition - dummyPosition).magnitude

    if distance <= 5 then -- Punching range is around 5 studs
        playDummyAnim:Play()
    end
end

-- Monitor player's proximity to the dummy
while wait(0.1) do
    playAnimationIfClose()
end
