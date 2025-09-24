-- 3v@nC00l GUI - Simple Delta Compatible Version
-- Execute with loadstring(game:HttpGet("URL"))()

print("Starting 3v@nC00l GUI...")

-- Basic service setup
local Players = game.Players
local player = Players.LocalPlayer

-- Force wait for character
if not player.Character then
    player.CharacterAdded:Wait()
end

-- Simple GUI parent detection
local gui_parent
if player.PlayerGui then
    gui_parent = player.PlayerGui
elseif game.CoreGui then
    gui_parent = game.CoreGui
else
    error("No GUI parent found!")
end

print("GUI Parent:", gui_parent.Name)

-- Clean existing
for _, v in pairs(gui_parent:GetChildren()) do
    if v.Name == "EvAnC00lGUI" then
        v:Destroy()
    end
end

-- Create GUI
local sg = Instance.new("ScreenGui")
sg.Name = "EvAnC00lGUI"
sg.Parent = gui_parent

print("ScreenGui created and parented")

-- Main frame - SUPER SIMPLE
local main = Instance.new("Frame")
main.Name = "Main"
main.Size = UDim2.new(0, 500, 0, 400)
main.Position = UDim2.new(0.5, -250, 0.5, -200)
main.BackgroundColor3 = Color3.new(0, 0, 0)
main.BorderSizePixel = 3
main.BorderColor3 = Color3.fromRGB(0, 150, 255)
main.Active = true
main.Draggable = true
main.Parent = sg

print("Main frame created")

-- Test visibility
local test = Instance.new("TextLabel")
test.Size = UDim2.new(1, 0, 0, 50)
test.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
test.Text = "3v@nC00l GUI LOADED!"
test.TextColor3 = Color3.new(1, 1, 1)
test.TextScaled = true
test.Font = Enum.Font.SourceSansBold
test.Parent = main

print("Test label created")

-- Title
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 40)
title.Position = UDim2.new(0, 0, 0, 50)
title.BackgroundColor3 = Color3.fromRGB(20, 20, 30)
title.BorderSizePixel = 1
title.BorderColor3 = Color3.fromRGB(0, 150, 255)
title.Text = "3v@nC00l GUI - DELTA EDITION"
title.TextColor3 = Color3.fromRGB(0, 200, 255)
title.TextSize = 18
title.Font = Enum.Font.Code
title.Parent = main

-- Close button
local close = Instance.new("TextButton")
close.Size = UDim2.new(0, 30, 0, 30)
close.Position = UDim2.new(1, -35, 0, 5)
close.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
close.BorderSizePixel = 1
close.BorderColor3 = Color3.fromRGB(255, 100, 100)
close.Text = "X"
close.TextColor3 = Color3.new(1, 1, 1)
close.TextSize = 16
close.Font = Enum.Font.SourceSansBold
close.Parent = main

close.MouseButton1Click:Connect(function()
    sg:Destroy()
end)

-- Scripts
local scripts = {
    {"XVC Hub", "https://pastebin.com/raw/Piw5bqGq"},
    {"Kill Script", "https://raw.githubusercontent.com/retpirato/Roblox-Scripts/refs/heads/master/Fe%20Kill%20script%20%5BWorking%5D.lua"},
    {"Natural Disaster Survival", "https://raw.githubusercontent.com/ddario66/Test/refs/heads/main/Nature%20disaster"},
    {"TSB Hub", "https://raw.githubusercontent.com/ZaancOff/TSB-Hub/refs/heads/main/v2.lua"},
    {"Trax Spawner", "https://raw.githubusercontent.com/Estevansit0/KJJK/refs/heads/main/PusarX-loader.lua"}
}

-- Create buttons
for i, script in ipairs(scripts) do
    local y_pos = 90 + (i * 60)
    
    -- Script frame
    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(1, -20, 0, 50)
    frame.Position = UDim2.new(0, 10, 0, y_pos)
    frame.BackgroundColor3 = Color3.fromRGB(15, 15, 25)
    frame.BorderSizePixel = 1
    frame.BorderColor3 = Color3.fromRGB(0, 150, 255)
    frame.Parent = main
    
    -- Script name
    local name = Instance.new("TextLabel")
    name.Size = UDim2.new(1, -100, 1, 0)
    name.Position = UDim2.new(0, 10, 0, 0)
    name.BackgroundTransparency = 1
    name.Text = "► " .. script[1]
    name.TextColor3 = Color3.new(1, 1, 1)
    name.TextSize = 14
    name.Font = Enum.Font.Code
    name.TextXAlignment = Enum.TextXAlignment.Left
    name.Parent = frame
    
    -- Execute button
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(0, 80, 0, 40)
    btn.Position = UDim2.new(1, -90, 0, 5)
    btn.BackgroundColor3 = Color3.fromRGB(0, 120, 0)
    btn.BorderSizePixel = 1
    btn.BorderColor3 = Color3.fromRGB(0, 150, 255)
    btn.Text = "EXECUTE"
    btn.TextColor3 = Color3.new(1, 1, 1)
    btn.TextSize = 12
    btn.Font = Enum.Font.SourceSansBold
    btn.Parent = frame
    
    -- Execute function
    btn.MouseButton1Click:Connect(function()
        btn.Text = "LOADING"
        btn.BackgroundColor3 = Color3.fromRGB(150, 150, 0)
        
        local success, err = pcall(function()
            loadstring(game:HttpGet(script[2]))()
        end)
        
        if success then
            btn.Text = "SUCCESS"
            btn.BackgroundColor3 = Color3.fromRGB(0, 150, 0)
            wait(2)
            btn.Text = "EXECUTE"
            btn.BackgroundColor3 = Color3.fromRGB(0, 120, 0)
        else
            btn.Text = "ERROR"
            btn.BackgroundColor3 = Color3.fromRGB(150, 0, 0)
            print("Error:", err)
            wait(2)
            btn.Text = "EXECUTE"
            btn.BackgroundColor3 = Color3.fromRGB(0, 120, 0)
        end
    end)
end

-- Footer
local footer = Instance.new("TextLabel")
footer.Size = UDim2.new(1, 0, 0, 20)
footer.Position = UDim2.new(0, 0, 1, -25)
footer.BackgroundTransparency = 1
footer.Text = "3v@nC00l GUI | Delta Compatible"
footer.TextColor3 = Color3.fromRGB(100, 150, 200)
footer.TextSize = 10
footer.Font = Enum.Font.Code
footer.Parent = main

print("GUI fully created!")
print("Main frame visible:", main.Visible)
print("Main frame parent:", main.Parent)

-- Visual test - make it flash
spawn(function()
    for i = 1, 5 do
        main.BackgroundColor3 = Color3.fromRGB(50, 0, 0)
        wait(0.2)
        main.BackgroundColor3 = Color3.new(0, 0, 0)
        wait(0.2)
    end
end)

-- Remove test label after 3 seconds
spawn(function()
    wait(3)
    if test then test:Destroy() end
end)
