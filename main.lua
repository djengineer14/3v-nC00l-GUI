-- 3v@nC00l GUI – Delta-Compatible Edition
-- execute via: loadstring(game:HttpGet("URL", true))()

local Players      = game:GetService("Players")
local CoreGui      = game:GetService("CoreGui")
local StarterGui   = game:GetService("StarterGui")
local HttpService  = game:GetService("HttpService")

-- Find local player
local player = Players.LocalPlayer or Players.PlayerAdded:Wait()
local playerGui = player:WaitForChild("PlayerGui")

-- Determine the proper GUI parent for Delta/exploit environments
local function findGuiParent()
    if type(gethui) == "function" then
        return gethui()
    elseif type(get_hidden_gui) == "function" then
        return get_hidden_gui()
    elseif CoreGui then
        return CoreGui
    else
        return playerGui
    end
end

local gui_parent = findGuiParent()
assert(gui_parent, "No valid GUI parent found!")

-- Clean up old GUI if it exists
for _, child in ipairs(gui_parent:GetChildren()) do
    if child.Name == "EvAnC00lGUI" then
        child:Destroy()
    end
end

-- Build ScreenGui
local sg = Instance.new("ScreenGui")
sg.Name           = "EvAnC00lGUI"
sg.ResetOnSpawn   = false
sg.DisplayOrder   = 1e3
sg.Parent         = gui_parent

-- Main window
local main = Instance.new("Frame")
main.Name             = "Main"
main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
main.BorderSizePixel  = 3
main.BorderColor3     = Color3.fromRGB(0, 150, 255)
main.Size             = UDim2.new(0, 500, 0, 400)
main.Position         = UDim2.new(0.5, -250, 0.5, -200)
main.Active           = true
main.Draggable        = true
main.Parent           = sg

-- Header bar
local title = Instance.new("TextLabel")
title.Name             = "Title"
title.Size             = UDim2.new(1, 0, 0, 40)
title.BackgroundColor3 = Color3.fromRGB(20, 20, 30)
title.BorderSizePixel  = 1
title.BorderColor3     = Color3.fromRGB(0, 150, 255)
title.Text             = "3v@nC00l GUI – DELTA EDITION"
title.TextColor3       = Color3.fromRGB(0, 200, 255)
title.Font             = Enum.Font.Code
title.TextSize         = 18
title.Parent           = main

-- Close button
local close = Instance.new("TextButton")
close.Name             = "CloseBtn"
close.Size             = UDim2.new(0, 30, 0, 30)
close.Position         = UDim2.new(1, -35, 0, 5)
close.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
close.BorderSizePixel  = 1
close.BorderColor3     = Color3.fromRGB(255, 100, 100)
close.Text             = "X"
close.TextColor3       = Color3.new(1, 1, 1)
close.Font             = Enum.Font.SourceSansBold
close.TextSize         = 16
close.Parent           = main

close.MouseButton1Click:Connect(function()
    sg:Destroy()
end)

-- Your script list
local scriptList = {
    { name = "XVC Hub",                url = "https://pastebin.com/raw/Piw5bqGq" },
    { name = "Kill Script",            url = "https://raw.githubusercontent.com/retpirato/Roblox-Scripts/refs/heads/master/Fe%20Kill%20script%20%5BWorking%5D.lua" },
    { name = "Natural Disaster Survival", url = "https://raw.githubusercontent.com/ddario66/Test/refs/heads/main/Nature%20disaster" },
    { name = "TSB Hub",                url = "https://raw.githubusercontent.com/ZaancOff/TSB-Hub/refs/heads/main/v2.lua" },
    { name = "Trax Spawner",           url = "https://raw.githubusercontent.com/Estevansit0/KJJK/refs/heads/main/PusarX-loader.lua" },
}

-- Generate buttons
for i, info in ipairs(scriptList) do
    local yOffset = 90 + (i - 1) * 60

    local row = Instance.new("Frame")
    row.Name             = ("Row%d"):format(i)
    row.Size             = UDim2.new(1, -20, 0, 50)
    row.Position         = UDim2.new(0, 10, 0, yOffset)
    row.BackgroundColor3 = Color3.fromRGB(15, 15, 25)
    row.BorderSizePixel  = 1
    row.BorderColor3     = Color3.fromRGB(0, 150, 255)
    row.Parent           = main

    local label = Instance.new("TextLabel")
    label.Name             = "Label"
    label.Size             = UDim2.new(1, -100, 1, 0)
    label.Position         = UDim2.new(0, 10, 0, 0)
    label.BackgroundTransparency = 1
    label.Text             = "► " .. info.name
    label.TextColor3       = Color3.new(1, 1, 1)
    label.Font             = Enum.Font.Code
    label.TextSize         = 14
    label.TextXAlignment   = Enum.TextXAlignment.Left
    label.Parent           = row

    local btn = Instance.new("TextButton")
    btn.Name             = "ExecBtn"
    btn.Size             = UDim2.new(0, 80, 0, 40)
    btn.Position         = UDim2.new(1, -90, 0, 5)
    btn.BackgroundColor3 = Color3.fromRGB(0, 120, 0)
    btn.BorderSizePixel  = 1
    btn.BorderColor3     = Color3.fromRGB(0, 150, 255)
    btn.Text             = "EXECUTE"
    btn.TextColor3       = Color3.new(1, 1, 1)
    btn.Font             = Enum.Font.SourceSansBold
    btn.TextSize         = 12
    btn.Parent           = row

    btn.MouseButton1Click:Connect(function()
        btn.Text             = "LOADING"
        btn.BackgroundColor3 = Color3.fromRGB(150, 150, 0)

        task.spawn(function()
            local ok, err = pcall(function()
                local src = game:HttpGet(info.url, true)
                local fn  = loadstring(src)
                fn()
            end)

            if ok then
                btn.Text             = "SUCCESS"
                btn.BackgroundColor3 = Color3.fromRGB(0, 150, 0)
            else
                btn.Text             = "ERROR"
                btn.BackgroundColor3 = Color3.fromRGB(150, 0, 0)
                warn("Script failed:", err)
            end

            task.wait(2)
            btn.Text             = "EXECUTE"
            btn.BackgroundColor3 = Color3.fromRGB(0, 120, 0)
        end)
    end)
end

-- Footer
local footer = Instance.new("TextLabel")
footer.Name               = "Footer"
footer.Size               = UDim2.new(1, 0, 0, 20)
footer.Position           = UDim2.new(0, 0, 1, -25)
footer.BackgroundTransparency = 1
footer.Text               = "3v@nC00l GUI | Delta Compatible"
footer.Font               = Enum.Font.Code
footer.TextSize           = 10
footer.TextColor3         = Color3.fromRGB(100, 150, 200)
footer.Parent             = main

-- Flash effect
task.spawn(function()
    for i = 1, 5 do
        main.BackgroundColor3 = Color3.fromRGB(50, 0, 0)
        task.wait(0.2)
        main.BackgroundColor3 = Color3.new(0, 0, 0)
        task.wait(0.2)
    end
end)
