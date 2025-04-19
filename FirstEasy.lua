local humanoid = script.Parent:FindFirstChildOfClass("Humanoid")

game.Players.PlayerAdded:Connect(function(player)
    player.Chatted:Connect(function(msg)
        if msg == "/fly" then
            player.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Flying)
        end
    end)
end)
game.Players.PlayerAdded:Connect(function(player)
    player.Chatted:Connect(function(msg)
        if msg == "/unfly" then
            player.Character.Humanoid:ChangeState(Enum.HumanoidStateType.None)
        end
    end)
end)
game.Players.PlayerAdded:Connect(function(player)
    player.Chatted:Connect(function(msg)
        if msg == "/autojump" then
            player.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end)
end)
game.Players.PlayerAdded:Connect(function(player)
    player.Chatted:Connect(function(msg)
        if msg == "/unautojump" then
            player.Character.Humanoid:ChangeState(Enum.HumanoidStateType.None)
        end
    end)
end)
game.Players.PlayerAdded:Connect(function(player)
    player.Chatted:Connect(function(msg)
        if msg == "/reset" then
            player.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Dead)
        end
    end)
end)
game.Players.PlayerAdded:Connect(function(player)
    player.Chatted:Connect(function(msg)
        if msg == "/god" then
            if player.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Dead) then
                player.Character.Humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
            end
        end
    end)
end)
game.Players.PlayerAdded:Connect(function(player)
    player.Chatted:Connect(function(msg)
        if msg == "/ragdoll" then
            player.Character.Humanoid:ChangeState(Enum.HumanoidStateType.FallingDown)
        end
    end)
end)