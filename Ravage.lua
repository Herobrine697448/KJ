local player = game.Players.LocalPlayer
repeat wait() until player.Character and player.Character:FindFirstChild("Humanoid")
local humanoid = player.Character.Humanoid
local character = player.Character
local UserInputService = game:GetService("UserInputService")
local debounce = false -- Activate debounce

-- Animation setup
local anim = Instance.new("Animation")
anim.AnimationId = "rbxassetid://16945573694"
local playAnim = humanoid:LoadAnimation(anim)

-- Sound setup
local Sound = Instance.new("Sound")
Sound.Parent = character
Sound.SoundId = "rbxassetid://16945495411"
Sound.Playing = true

-- Debounce reset after 1 second
spawn(function()
    wait(1)
    debounce = true
end)

-- Play the initial animation
playAnim:Play()
playAnim:AdjustSpeed(0.3)
wait(0.3)
playAnim:AdjustSpeed(1)

local animationPlayed = false -- Flag to track if the animation has already been played

-- Detect touch on the Weakest Dummy
local dummy = game.Workspace.Live:FindFirstChild("Weakest Dummy")
if dummy and dummy:FindFirstChild("HumanoidRootPart") then
    dummy.HumanoidRootPart.Touched:Connect(function(hit)
        if hit.Parent == character and not debounce and not animationPlayed then
            animationPlayed = true -- Mark the animation as played

            -- Play first animation
            anim.AnimationId = "rbxassetid://16945550029"
            local playAnim2 = humanoid:LoadAnimation(anim)
            playAnim2:Play()
            playAnim2:AdjustSpeed(0.3)

            wait(0.3)
            playAnim2:AdjustSpeed(1)

            -- Set up additional sounds
            local sounds = {
                "rbxassetid://16945517708",
                "rbxassetid://16945593216",
                "rbxassetid://16945691441"
            }

            for _, soundId in ipairs(sounds) do
                local soundInstance = Instance.new("Sound")
                soundInstance.Parent = character
                soundInstance.SoundId = soundId
                soundInstance:Play() -- Start playing the sound immediately
            end

            -- Control character movement
            character.Humanoid.WalkSpeed = 0
            character.Humanoid.AutoRotate = false 
            character:WaitForChild("HumanoidRootPart").CFrame = dummy.HumanoidRootPart.CFrame * CFrame.new(0, 0, -3) * CFrame.Angles(0, math.pi, 0)

            -- Play second animation on the dummy
            local dummyHumanoid = dummy:WaitForChild("Humanoid")
            local animator = dummyHumanoid:WaitForChild("Animator")
            local Anim = Instance.new("Animation")
            Anim.AnimationId = "rbxassetid://16945557433"
            local AnimationTrack = animator:LoadAnimation(Anim)
            AnimationTrack:Play()

            wait(1)

            -- Reset player character properties
            wait(5) -- Wait before resetting debounce
            debounce = false -- Reset debounce
            character.Humanoid.WalkSpeed = 16
            character.Humanoid.AutoRotate = true 
        end
    end)
else
    warn("Weakest Dummy not found in the workspace.")
end
