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
wait(1)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16

--Dummy Animation
local player = game.Workspace.Live["Weakest Dummy"]
repeat wait() until player.Humanoid
local dummyhumanoid = game.Workspace.Live["Weakest Dummy"]["Humanoid"]

local anim2 = Instance.new("Animation")
anim2.AnimationId = "rbxassetid://10471478869"

local playAnim2 = dummyhumanoid:LoadAnimation(anim2)
playAnim2:Play()lay()
