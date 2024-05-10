local x = 0
local y = 0
local z = 0

function b()
    local plr = game.Players:GetPlayers()[math.random(1, #game.Players:GetPlayers())]
    x = plr.Character.HumanoidRootPart.Position.X
    y = plr.Character.HumanoidRootPart.Position.Y
    z = plr.Character.HumanoidRootPart.Position.Z
    local args = {
        [1] = Vector3.new(x, y, z),
        [2] = Enum.NormalId.Top,
        [3] = workspace:WaitForChild("map"):WaitForChild("grass"),
        [4] = "wood"
    }

    game:GetService("Players").LocalPlayer.Character.Build.RemoteEvent:FireServer(unpack(args))
    local args = {
        [1] = Vector3.new(x, y, z),
        [2] = Enum.NormalId.Top,
        [3] = workspace:WaitForChild("map"):WaitForChild("grass"),
        [4] = "iron"
    }

    game:GetService("Players").LocalPlayer.Character.Build.RemoteEvent:FireServer(unpack(args))
    local args = {
        [1] = Vector3.new(x, y, z),
        [2] = Enum.NormalId.Top,
        [3] = workspace:WaitForChild("map"):WaitForChild("grass"),
        [4] = "glass"
    }

    game:GetService("Players").LocalPlayer.Character.Build.RemoteEvent:FireServer(unpack(args))
    local args = {
        [1] = Vector3.new(x, y, z),
        [2] = Enum.NormalId.Top,
        [3] = workspace:WaitForChild("map"):WaitForChild("grass"),
        [4] = "obsidian"
    }

    game:GetService("Players").LocalPlayer.Character.Build.RemoteEvent:FireServer(unpack(args))
end

while wait() do
    b()
end
