local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")
debounce = false -- Activate debounce
local anim = Instance.new("Animation")
anim.AnimationId = "rbxassetid://16945573694" -- Initial animation ID
local playAnim = humanoid:LoadAnimation(anim)
anim.AnimationId = "rbxassetid://0" -- Reset animation ID

local Sound = Instance.new("Sound") -- Creating sound for the animation
Sound.Parent = character
Sound.SoundId = "rbxassetid://16945495411" -- Sound ID for the initial sound
Sound.Playing = true -- Play the sound

spawn(function()
    wait(1) -- Wait before enabling debounce
    debounce = true
end)

playAnim:Play() -- Play initial animation
playAnim:AdjustSpeed(0.3) -- Adjust speed of the animation
wait(0.3) -- Wait for a short duration
playAnim:AdjustSpeed(1) -- Set animation speed back to normal

local Players = game:GetService("Players")
local Character = Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()

local animationPlayed = false -- Flag to track if the animation has already been played

-- WaitForChild Recursive Function
local function waitForAllDescendants(parent)
    for _, child in ipairs(parent:GetChildren()) do
        if child:IsA("Model") or child:IsA("Folder") then
            waitForAllDescendants(child) -- Recursive call for models and folders
        else
            parent:WaitForChild(child.Name) -- Wait for the child to exist
        end
    end
end

-- Wait for everything in Workspace.Live
local workspaceLive = game.Workspace:WaitForChild("Live")
waitForAllDescendants(workspaceLive)

game.Workspace.Live["Weakest Dummy"].HumanoidRootPart.Touched:Connect(function(hit)
    if hit.Parent == Character and not debounce and not animationPlayed then
        animationPlayed = true -- Mark the animation as played

        -- Play first animation
        anim.AnimationId = "rbxassetid://16945550029" -- Set the animation ID for the first animation
        local playAnim = humanoid:LoadAnimation(anim)
        anim.AnimationId = "rbxassetid://0" -- Reset animation ID
        playAnim:Play() -- Play the animation
        playAnim:AdjustSpeed(0.3) -- Adjust speed of the animation

        wait(0.3) -- Wait for a short duration
        playAnim:AdjustSpeed(1) -- Set animation speed back to normal
        
        -- Sound Effects
        local Sound2 = Instance.new("Sound") -- Creating second sound
        Sound2.Parent = character
        Sound2.SoundId = "rbxassetid://16945495411" -- Second sound ID
        Sound2.Playing = true

        local Sound3 = Instance.new("Sound") -- Creating third sound
        Sound3.Parent = character
        Sound3.SoundId = "rbxassetid://16945593216" -- Third sound ID
        Sound3.Playing = true

        local Sound4 = Instance.new("Sound") -- Creating fourth sound
        Sound4.Parent = character
        Sound4.SoundId = "rbxassetid://16945691441" -- Fourth sound ID
        Sound4.Playing = true

        -- Player's Humanoid properties
        character.Humanoid.WalkSpeed = 0 -- Disable walk speed
        character.Humanoid.AutoRotate = false -- Disable auto-rotation
        character:WaitForChild("HumanoidRootPart").CFrame = game.Workspace.Live["Weakest Dummy"].HumanoidRootPart.CFrame * CFrame.new(0, 0, -3) * CFrame.Angles(0, math.pi, 0)

        -- Play second animation on the dummy
        local dummyHumanoid = game.Workspace.Live["Weakest Dummy"]:WaitForChild("Humanoid")
        local animator = dummyHumanoid:WaitForChild("Animator")
        local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://16945557433" -- Second animation ID
        local AnimationTrack = animator:LoadAnimation(Anim)
        AnimationTrack:Play() -- Play the animation
        wait(1) -- Wait for the animation to finish

        -- Create speedlines effect
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local Workspace = game:GetService("Workspace")
    
        -- Wait for the player to load
        local pchar = game.Workspace.Live:FindFirstChild("Weakest Dummy")
        local player = game.Players.LocalPlayer or player.CharacterAdded:Wait()
        local rootPart = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
        local LeftArm = game.Players.LocalPlayer.Character:WaitForChild("Left Arm")  -- Assuming Left Arm exists in your character model
    
        -- Check for Resources folder in ReplicatedStorage
        local resourcesFolder = ReplicatedStorage:WaitForChild("Resources")
    
        -- Check for KJEffects folder inside Resources
        local kjEffectsFolder = resourcesFolder:WaitForChild("KJEffects")
    
        -- Check for speedlinesandstuff part inside KJEffects
        local speedlinesandstuffPart = kjEffectsFolder:WaitForChild("barrage")
    
        -- Duplicate the speedlinesandstuff part
        local speedlinesandstuffClone = speedlinesandstuffPart:Clone()
    
        -- Calculate the desired CFrame using the player's LeftArm position
        local desiredCFrame = CFrame.new(LeftArm.Position)
    
        -- Set the desired CFrame for the clone
        speedlinesandstuffClone.CFrame = desiredCFrame
    
        -- Put the duplicate in Workspace
        speedlinesandstuffClone.Parent = Workspace
    
        -- Function to enable all ParticleEmitters
        local function enableParticleEmitters(parent)
            for _, descendant in ipairs(parent:GetDescendants()) do
                if descendant:IsA("ParticleEmitter") then
                    descendant.Enabled = true -- Enable particle emitters
                end
            end
        end
    
        -- Example usage after your dash effect completes
        spawn(function()
            wait(1)  -- Adjust the wait time as needed
        
            -- Enable all ParticleEmitters inside speedlinesandstuffClone
            enableParticleEmitters(speedlinesandstuffClone)
        end)

        -- Emit particles from left arm
        local hit1 = game.ReplicatedStorage.Resources.KJEffects["HitParticles"].Hit:Clone()
        hit1.Parent = game.Players.LocalPlayer.Character["Left Arm"]
        for _, child in ipairs(hit1:GetChildren()) do
            if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                child:Emit(25) -- Emit 25 particles
            end
        end
        wait(2) -- Wait for particles to show
        speedlinesandstuffClone:Destroy() -- Destroy the speedlines clone after use
        
        -- Emit particles from right arm
        local hit1 = game.ReplicatedStorage.Resources.KJEffects["HitParticles"].Hit:Clone()
        hit1.Parent = game.Players.LocalPlayer.Character["Right Arm"]
        for _, child in ipairs(hit1:GetChildren()) do
            if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                child:Emit(30) -- Emit 30 particles
            end
        end
        
        wait(1) -- Wait before the next effect
        -- Emit wind effect
        local hit1 = game.ReplicatedStorage.Resources.KJEffects["RUNAROUNDWIND"].RUNAROUNDWIND:Clone()
        hit1.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
        for _, child in ipairs(hit1:GetChildren()) do
            if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                child:Emit(20) -- Emit 20 particles
            end
        end
    
        wait(1) -- Wait before the next effect
    
        wait(0.1) -- Short delay before next effect
    
        -- Emit last kick effect
        local hit1 = game.ReplicatedStorage.Resources.KJEffects["lastkick"].Attachment:Clone()
        hit1.Parent = game.Players.LocalPlayer.Character["Torso"]
        for _, child in ipairs(hit1:GetChildren()) do
            if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                child:Emit(10) -- Emit 10 particles
            end
        end
        
        wait(5) -- Wait before resetting debounce
        debounce = false -- Reset debounce
        character.Humanoid.WalkSpeed = 16 -- Reset walk speed
        character.Humanoid.AutoRotate = true -- Enable auto-rotation again
    end
end)
