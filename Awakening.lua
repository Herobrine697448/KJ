local Tool = Instance.new("Tool")
Tool.Name = "Awakening"
Tool.RequiresHandle = false
Tool.Parent = game.Players.LocalPlayer.Backpack

Tool.Activated:Connect(function()
    local player = game.Players.LocalPlayer
    player.Character.Humanoid.WalkSpeed = 0
    repeat wait() until player.Character.Humanoid
    local humanoid = player.Character.Humanoid
    local character = player.Character or player.CharacterAdded:Wait()
    local UserInputService = game:GetService("UserInputService")

    local soundeffect1 = Instance.new("Sound")
    soundeffect1.SoundId = "rbxassetid://17150550559"
    soundeffect1.Parent = character.Torso
    soundeffect1.Volume = 3
    soundeffect1:Play()

    local soundeffect2 = Instance.new("Sound")
    soundeffect2.SoundId = "rbxassetid://17150550302"
    soundeffect2.Parent = character.Torso
    soundeffect2.Volume = 5
    soundeffect2:Play()

    local anim = Instance.new("Animation")
    anim.AnimationId = "rbxassetid://17140902079"
    local playAnim = humanoid:LoadAnimation(anim)
    playAnim:Play()

    local fine = game.ReplicatedStorage.Resources.KJEffects["fine...1"].EnableBatch2:Clone()
    fine.Parent = character["Torso"]
    for _, child in ipairs(fine:GetChildren()) do
        if child:IsA("ParticleEmitter") then
            child:Emit(1)
        end
    end

    local fine3 = game.ReplicatedStorage.Resources.KJEffects["fine...Emit"].EmitBatch3:Clone()
    fine3.Parent = character["Torso"]
    for _, child in ipairs(fine3:GetChildren()) do
        if child:IsA("ParticleEmitter") then
            child:Emit(1)
        end
    end

    local red = game.ReplicatedStorage.Resources.KJEffects["fine...1"].REDDDD1:Clone()
    red.Parent = character["Right Leg"]
    for _, child in ipairs(red:GetChildren()) do
        if child:IsA("ParticleEmitter") then
            child:Emit(1)
        end
    end

    local red2 = game.ReplicatedStorage.Resources.KJEffects["fine...1"].REDDDD2:Clone()
    red2.Parent = character["Left Leg"]
    for _, child in ipairs(red2:GetChildren()) do
        if child:IsA("ParticleEmitter") then
            child:Emit(1)
        end
    end

    local red3 = game.ReplicatedStorage.Resources.KJEffects["fine...1"].REDDDD3:Clone()
    red3.Parent = character["Left Leg"]
    for _, child in ipairs(red3:GetChildren()) do
        if child:IsA("ParticleEmitter") then
            child:Emit(1)
        end
    end

    local red4 = game.ReplicatedStorage.Resources.KJEffects["fine...1"].REDDDD4:Clone()
    red4.Parent = character["Right Leg"]
    for _, child in ipairs(red4:GetChildren()) do
        if child:IsA("ParticleEmitter") then
            child:Emit(1)
        end
    end

    wait(8.2)
    player.Character.Humanoid.WalkSpeed = 16
    fine:Destroy()
    red:Destroy()
    red2:Destroy()
    red3:Destroy()
    red4:Destroy()

    local fine2 = game.ReplicatedStorage.Resources.KJEffects["fine...Emit2"].EmitBatch1:Clone()
    fine2.Parent = character["Right Arm"]
    for _, child in ipairs(fine2:GetChildren()) do
        if child:IsA("ParticleEmitter") then
            child:Emit(1)
        end
    end

    -- Clear backpack
    local backpack = player.Backpack
    for _, item in ipairs(backpack:GetChildren()) do
        if item:IsA("Tool") then
            item:Destroy()
        end
    end

    -- Add moves
    local moves = {
        {name = "Stoic Bomb", script = "loadstring(game:HttpGet('https://your_script_url_for_stoic_bomb'))()"},
        {name = "20-20-20 Dropkick", script = "loadstring(game:HttpGet('https://your_script_url_for_202020_dropkick'))()"},
        {name = "Five Seasons", script = "loadstring(game:HttpGet('https://your_script_url_for_five_seasons'))()"},
    }

    for _, move in ipairs(moves) do
        local moveTool = Instance.new("Tool")
        moveTool.Name = move.name
        moveTool.RequiresHandle = false
        moveTool.Parent = backpack

        moveTool.Activated:Connect(function()
            loadstring(move.script)()
        end)
    end
end)
