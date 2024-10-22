game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 10
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

local function enableParticleEmitters(parent)
    for _, descendant in ipairs(parent:GetDescendants()) do
        if descendant:IsA("ParticleEmitter") then
            descendant.Enabled = true
        end
    end
end

--PARTILE EMITTERS & EFFECTS

local function applyDamageToNearestTarget()
    local closestTarget = nil
    local closestDistance = 4

    for _, otherPlayer in ipairs(game.Players:GetPlayers()) do
        if otherPlayer ~= player and otherPlayer.Character and otherPlayer.Character:FindFirstChild("HumanoidRootPart") then
            local distance = (player.Character.HumanoidRootPart.Position - otherPlayer.Character.HumanoidRootPart.Position).Magnitude

            if distance <= closestDistance then
                closestDistance = distance
                closestTarget = otherPlayer.Character
            end
        end
    end

    local dummy = game.Workspace.Live:FindFirstChild("Weakest Dummy")
    if dummy and dummy:FindFirstChild("HumanoidRootPart") then
        local distance = (player.Character.HumanoidRootPart.Position - dummy.HumanoidRootPart.Position).Magnitude
        if distance <= closestDistance then
            closestTarget = dummy
        end
    end

    if closestTarget then
        local humanoid = closestTarget:FindFirstChild("Humanoid")
        if humanoid then
            humanoid:TakeDamage(math.random(10, 14))

            local targetAnimator = humanoid:FindFirstChild("Animator")
            if targetAnimator then
                local hitAnim = Instance.new("Animation")
                hitAnim.AnimationId = "rbxassetid://16945557433"
                local playHitAnim = targetAnimator:LoadAnimation(hitAnim)
                playHitAnim:Play()
            end
        end
    end
end

applyDamageToNearestTarget()
