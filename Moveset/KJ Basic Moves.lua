local player = game.Players.LocalPlayer
local backpack = player.Backpack

for _, item in ipairs(backpack:GetChildren()) do
    if item:IsA("Tool") then
        item:Destroy()
    end
end

