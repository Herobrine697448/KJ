--RESET FUNCTION
-- Function to reset the character
local function resetCharacter()
    local player = game.Players.LocalPlayer
    local character = player.Character
    local humanoid = character and character:FindFirstChild("Humanoid")

    if humanoid then
        humanoid:TakeDamage(humanoid.Health)  -- Applies damage equal to current health, effectively resetting the character
    end
end

-- Reset the character
resetCharacter()

-- Wait for 2 seconds
wait(2)

-- Load and execute the next script
loadstring(game:HttpGet("https://raw.githubusercontent.com/Herobrine697448/KJ/refs/heads/main/main.lua"))()
