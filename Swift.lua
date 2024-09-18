

--Dummy Animation
local player = game.Workspace.Live["Weakest Dummy"]
repeat wait() until player.Humanoid
local dummyhumanoid = game.Workspace.Live["Weakest Dummy"]["Humanoid"]

local anim2 = Instance.new("Animation")
anim2.AnimationId = "rbxassetid://10471478869"
local playAnim2 = dummyhumanoid:LoadAnimation(anim2)
playAnim2:Play()lay()
