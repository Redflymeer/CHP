local Players = game:GetService("Players")

local function handleCommand(player, msg)
    local character = player.Character
    if not character then return end
    
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    if not humanoid then return end

    -- Основные команды
    if msg == "/fly" then
        if humanoid:GetState() == Enum.HumanoidStateType.Flying then
            humanoid:ChangeState(Enum.HumanoidStateType.None)
        else
            humanoid:ChangeState(Enum.HumanoidStateType.Flying)
        end
        
    elseif msg == "/jump" then
        humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
        
    elseif msg == "/reset" then
        humanoid.Health = 0
        
    elseif msg == "/ragdoll" then
        humanoid:ChangeState(Enum.HumanoidStateType.FallingDown)
        wait(2)
        humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
        
    elseif msg == "/speed 50" then
        humanoid.WalkSpeed = 50
        
    elseif msg == "/speed 16" then
        humanoid.WalkSpeed = 16
    end
end

-- Обработчик подключения игроков
Players.PlayerAdded:Connect(function(player)
    -- Ожидание появления персонажа
    player.CharacterAdded:Connect(function(character)
        character:WaitForChild("Humanoid")
    end)
    
    -- Обработчик чата
    player.Chatted:Connect(function(msg)
        handleCommand(player, msg)
    end)
end)
