getgenv().IIlllIllII = {
    isBusy = false
}

function unlockGamepasses()
    game:GetService("Players").LocalPlayer.Gamepasses.Has2XRisk.Value = true
    game:GetService("Players").LocalPlayer.Gamepasses.HasTrident.Value = true
    game:GetService("Players").LocalPlayer.Gamepasses.HasBlowDryer.Value = true
    game:GetService("Players").LocalPlayer.Gamepasses.HasResearcher.Value = true
end

local SafePart = Instance.new("Part")
    
SafePart.Parent = Workspace
SafePart.Name = "xxxmnvc"
SafePart.Position = Vector3.new(-26.6815929, -2382.2605, 26.1416397)
SafePart.Anchored = true
SafePart.Transparency = 0


function tpToSafePart()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(
        -26.6815929, -2379.2605, 26.1416397, 
        0.999289989, 0.00411206204, -0.0374512412, 
        -6.36438413e-09, 0.994026184, 0.10914167, 
        0.037676312, -0.109064177, 0.993320465
    )
end

tpToSafePart()

-------------------------------
-- Get imune of tsunamis
coroutine.wrap(function()
    while task.wait() do
        for k, v in pairs(game:GetService("Workspace").ActiveTsunamis:GetChildren()) do
            print("Tsunami detected")
            v:Destroy()
        end
    end
end)()


--------------------------------
-- Collect points

while task.wait() do
    for k, v in pairs(game:GetService("Workspace").CurrentPointCoins:GetChildren()) do
        if v:IsA("Folder") and v.Name == "CoinFolder" then
            print("Found Coinfolder")
            firetouchinterest(
                game:GetService("Players").LocalPlayer.Character.Head, 
                game:GetService("Workspace").CurrentPointCoins.CoinFolder.CoinCollision, 
                0
            )
        end
    end
end
