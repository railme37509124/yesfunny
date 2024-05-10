local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/railme37509124/NoviLibrary/main/library.lua"), true)().NewLibrary()

local Gui = Library:NewGui("CrystalHub [V1.1 | Running Novi Library]", {Corners = false, DragSpeed = 5, Gradient = {false}})

local Godmode = Gui:NewTab("Godmode")
local Main = Gui:NewTab("Blocks")
local Discord = Gui:NewTab("Credits")

local fl = false;

function giveItem(item, amount)
    workspace:WaitForChild("place"):FireServer(item, amount)    
end

function hp(amount)
    pcall(function()
        game:GetService("Players").LocalPlayer.Character.takedamage:FireServer(hp)
    end)
end

task.spawn(function()
    repeat task.wait()
        if fl then
            hp(-10)
        end
    until (nil)
end)

Godmode:NewToggle("Godmode", {
	Callback = function(state)
		fl = state;
	end
})

local selectedBlock

Main:NewDropDown("Block", {
    List = {"wood", "cobblestone", "glowstone", "glass", "scaffolding", "obsidian", "iron"},
    SelectCallback = function(sel)
        selectedBlock = sel
    end
})

Main:NewButton("Give Infinite of Item", {
	Callback = function(pressed)
        giveItem(selectedBlock, math.random(9999, 86238321))
	end
})

Discord:NewButton("Copy Discord (discord.gg/FJQXYfaAh2)", {
	Callback = function(pressed)
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Made by uwy (@uwy5)";
            Text = "discord.gg/FJQXYfaAh2 (copied to clipboard)";
            Duration = 5;
        })
        local suc, res = pcall(function() setclipboard("https://discord.gg/FJQXYfaAh2") end)
        if res and not suc then
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Setclipboard issue";
                Text = "Failed to copy \"discord.gg/FJQXYfaAh2\" to clipboard";
                Duration = 5;
            })
        end
	end
})
