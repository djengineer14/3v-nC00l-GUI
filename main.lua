-- 3v@nC00l GUI - Delta Executor Compatible
-- Execute with: loadstring(game:HttpGet("YOUR_URL"))()

-- Delta Executor compatibility checks
local Players = game:GetService("Players") or game.Players
local TweenService = game:GetService("TweenService") or game.TweenService
local UserInputService = game:GetService("UserInputService") or game.UserInputService
local RunService = game:GetService("RunService") or game.RunService
local CoreGui = game:GetService("CoreGui") or game.CoreGui

-- Get player and GUI parent (Delta compatibility)
local player = Players.LocalPlayer
local guiParent

-- Try different GUI parents for Delta compatibility
if gethui then
    guiParent = gethui()
elseif syn and syn.protect_gui then
    guiParent = CoreGui
    syn.protect_gui(guiParent)
elseif CoreGui then
    guiParent = CoreGui
else
    guiParent = player.PlayerGui
end

-- Clean up existing GUI
local existingGui = guiParent:FindFirstChild("EvAnC00lGUI")
if existingGui then
    existingGui:Destroy()
end

print("[DELTA] Creating 3v@nC00l GUI...")

-- Create ScreenGui with Delta-specific settings
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "EvAnC00lGUI"
screenGui.DisplayOrder = 999999
screenGui.ResetOnSpawn = false
screenGui.IgnoreGuiInset = true
screenGui.Parent = guiParent

-- Main container (Delta-optimized)
local mainFrame = Instance.new("Frame")
mainFrame.Name = "MainFrame"
mainFrame.Size = UDim2.new(0, 460, 0, 390)
mainFrame.Position = UDim2.new(0.5, -230, 0.5, -195)
mainFrame.BackgroundColor3 = Color3.new(0, 0, 0)
mainFrame.BorderSizePixel = 3
mainFrame.BorderColor3 = Color3.fromRGB(0, 162, 255)
mainFrame.Active = true
mainFrame.Draggable = true
mainFrame.Parent = screenGui

-- Inner frame (c00lkidd style)
local innerFrame = Instance.new("Frame")
innerFrame.Size = UDim2.new(1, -8, 1, -8)
innerFrame.Position = UDim2.new(0, 4, 0, 4)
innerFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 20)
innerFrame.BorderSizePixel = 2
innerFrame.BorderColor3 = Color3.fromRGB(0, 120, 200)
innerFrame.Parent = mainFrame

-- Title bar
local titleBar = Instance.new("Frame")
titleBar.Size = UDim2.new(1, 0, 0, 45)
titleBar.Position = UDim2.new(0, 0, 0, 0)
titleBar.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
titleBar.BorderSizePixel = 2
titleBar.BorderColor3 = Color3.fromRGB(0, 162, 255)
titleBar.Parent = innerFrame

-- Title gradient effect
local titleGradient = Instance.new("Frame")
titleGradient.Size = UDim2.new(1, -4, 1, -4)
titleGradient.Position = UDim2.new(0, 2, 0, 2)
titleGradient.BackgroundColor3 = Color3.fromRGB(0, 100, 180)
titleGradient.BackgroundTransparency = 0.7
titleGradient.BorderSizePixel = 0
titleGradient.Parent = titleBar

-- Title text
local titleText = Instance.new("TextLabel")
titleText.Size = UDim2.new(1, -50, 1, 0)
titleText.Position = UDim2.new(0, 12, 0, 0)
titleText.BackgroundTransparency = 1
titleText.Text = "3v@nC00l GUI [DELTA]"
titleText.TextColor3 = Color3.fromRGB(0, 220, 255)
titleText.TextSize = 20
titleText.Font = Enum.Font.Code
titleText.TextXAlignment = Enum.TextXAlignment.Left
titleText.TextStrokeTransparency = 0.2
titleText.TextStrokeColor3 = Color3.new(0, 0, 0)
titleText.Parent = titleBar

-- Close button
local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 35, 0, 35)
closeButton.Position = UDim2.new(1, -40, 0, 5)
closeButton.BackgroundColor3 = Color3.fromRGB(220, 50, 50)
closeButton.BorderSizePixel = 2
closeButton.BorderColor3 = Color3.fromRGB(255, 100, 100)
closeButton.Text = "✕"
closeButton.TextColor3 = Color3.new(1, 1, 1)
closeButton.TextSize = 18
closeButton.Font = Enum.Font.SourceSansBold
closeButton.Parent = titleBar

-- Content area (ScrollingFrame for 5 scripts)
local contentFrame = Instance.new("ScrollingFrame")
contentFrame.Size = UDim2.new(1, -20, 1, -65)
contentFrame.Position = UDim2.new(0, 10, 0, 55)
contentFrame.BackgroundColor3 = Color3.fromRGB(8, 8, 12)
contentFrame.BorderSizePixel = 1
contentFrame.BorderColor3 = Color3.fromRGB(0, 162, 255)
contentFrame.CanvasSize = UDim2.new(0, 0, 0, 420) -- Adjusted for 5 scripts
contentFrame.ScrollBarThickness = 6
contentFrame.ScrollBarImageColor3 = Color3.fromRGB(0, 162, 255)
contentFrame.ScrollBarImageTransparency = 0.3
contentFrame.Parent = innerFrame

-- Header
local header = Instance.new("TextLabel")
header.Size = UDim2.new(1, 0, 0, 30)
header.Position = UDim2.new(0, 0, 0, 8)
header.BackgroundTransparency = 1
header.Text = "═══════════════ SCRIPT EXECUTOR ═══════════════"
header.TextColor3 = Color3.fromRGB(0, 162, 255)
header.TextSize = 13
header.Font = Enum.Font.Code
header.Parent = contentFrame

-- Scripts array (Delta-optimized URLs)
local scripts = {
    {
        name = "XVC Hub",
        desc = "Multi-game script hub",
        url = "https://pastebin.com/raw/Piw5bqGq"
    },
    {
        name = "Kill Script",
        desc = "FE Kill script (R6/R15 compatible)",
        url = "https://raw.githubusercontent.com/retpirato/Roblox-Scripts/refs/heads/master/Fe%20Kill%20script%20%5BWorking%5D.lua"
    },
    {
        name = "Natural Disaster Survival",
        desc = "NDS automation & ESP",
        url = "https://raw.githubusercontent.com/ddario66/Test/refs/heads/main/Nature%20disaster"
    },
    {
        name = "TSB Hub",
        desc = "The Strongest Battlegrounds hub",
        url = "https://raw.githubusercontent.com/ZaancOff/TSB-Hub/refs/heads/main/v2.lua"
    },
    {
        name = "Trax Spawner",
        desc = "PusarX loader & spawner",
        url = "https://raw.githubusercontent.com/Estevansit0/KJJK/refs/heads/main/PusarX-loader.lua"
    }
}

-- Create script buttons
for i, script in ipairs(scripts) do
    local yOffset = 45 + (i - 1) * 75
    
    -- Script container
    local container = Instance.new("Frame")
    container.Size = UDim2.new(1, -20, 0, 65)
    container.Position = UDim2.new(0, 10, 0, yOffset)
    container.BackgroundColor3 = Color3.fromRGB(18, 18, 28)
    container.BorderSizePixel = 1
    container.BorderColor3 = Color3.fromRGB(0, 162, 255)
    container.Parent = contentFrame
    
    -- Inner container
    local inner = Instance.new("Frame")
    inner.Size = UDim2.new(1, -4, 1, -4)
    inner.Position = UDim2.new(0, 2, 0, 2)
    inner.BackgroundColor3 = Color3.fromRGB(12, 12, 18)
    inner.BorderSizePixel = 1
    inner.BorderColor3 = Color3.fromRGB(0, 100, 150)
    inner.Parent = container
    
    -- Script name
    local nameLabel = Instance.new("TextLabel")
    nameLabel.Size = UDim2.new(1, -110, 0, 28)
    nameLabel.Position = UDim2.new(0, 10, 0, 5)
    nameLabel.BackgroundTransparency = 1
    nameLabel.Text = "► " .. script.name
    nameLabel.TextColor3 = Color3.new(1, 1, 1)
    nameLabel.TextSize = 15
    nameLabel.Font = Enum.Font.Code
    nameLabel.TextXAlignment = Enum.TextXAlignment.Left
    nameLabel.TextStrokeTransparency = 0.4
    nameLabel.Parent = inner
    
    -- Description
    local descLabel = Instance.new("TextLabel")
    descLabel.Size = UDim2.new(1, -110, 0, 22)
    descLabel.Position = UDim2.new(0, 18, 0, 32)
    descLabel.BackgroundTransparency = 1
    descLabel.Text = script.desc
    descLabel.TextColor3 = Color3.fromRGB(130, 170, 210)
    descLabel.TextSize = 11
    descLabel.Font = Enum.Font.Code
    descLabel.TextXAlignment = Enum.TextXAlignment.Left
    descLabel.Parent = inner
    
    -- Execute button
    local execButton = Instance.new("TextButton")
    execButton.Size = UDim2.new(0, 90, 0, 45)
    execButton.Position = UDim2.new(1, -100, 0.5, -22.5)
    execButton.BackgroundColor3 = Color3.fromRGB(0, 140, 0)
    execButton.BorderSizePixel = 2
    execButton.BorderColor3 = Color3.fromRGB(0, 180, 255)
    execButton.Text = "EXECUTE"
    execButton.TextColor3 = Color3.new(1, 1, 1)
    execButton.TextSize = 13
    execButton.Font = Enum.Font.SourceSansBold
    execButton.Parent = inner
    
    -- Button glow effect
    local glow = Instance.new("Frame")
    glow.Size = UDim2.new(1, -4, 1, -4)
    glow.Position = UDim2.new(0, 2, 0, 2)
    glow.BackgroundColor3 = Color3.fromRGB(0, 200, 0)
    glow.BackgroundTransparency = 0.4
    glow.BorderSizePixel = 0
    glow.Parent = execButton
    
    -- Execute function (Delta-compatible)
    execButton.MouseButton1Click:Connect(function()
        execButton.Text = "LOADING..."
        execButton.BackgroundColor3 = Color3.fromRGB(180, 140, 0)
        descLabel.Text = "Executing script..."
        descLabel.TextColor3 = Color3.fromRGB(255, 200, 0)
        
        -- Delta-compatible execution
        spawn(function()
            local success, result = pcall(function()
                -- Try Delta-specific HTTP methods first
                local httpGet = game.HttpGet
                if request then
                    -- Delta's request method
                    local response = request({
                        Url = script.url,
                        Method = "GET"
                    })
                    return loadstring(response.Body)()
                else
                    -- Fallback to standard method
                    return loadstring(httpGet(game, script.url))()
                end
            end)
            
            if success then
                execButton.BackgroundColor3 = Color3.fromRGB(0, 200, 0)
                execButton.Text = "SUCCESS"
                descLabel.Text = "Script executed successfully!"
                descLabel.TextColor3 = Color3.fromRGB(0, 255, 120)
                
                wait(3)
                execButton.BackgroundColor3 = Color3.fromRGB(0, 140, 0)
                execButton.Text = "EXECUTE"
                descLabel.Text = script.desc
                descLabel.TextColor3 = Color3.fromRGB(130, 170, 210)
            else
                execButton.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
                execButton.Text = "ERROR"
                descLabel.Text = "Failed to execute!"
                descLabel.TextColor3 = Color3.fromRGB(255, 120, 120)
                print("[DELTA ERROR]:", result)
                
                wait(3)
                execButton.BackgroundColor3 = Color3.fromRGB(0, 140, 0)
                execButton.Text = "EXECUTE"
                descLabel.Text = script.desc
                descLabel.TextColor3 = Color3.fromRGB(130, 170, 210)
            end
        end)
    end)
    
    -- Hover effects
    execButton.MouseEnter:Connect(function()
        if execButton.Text == "EXECUTE" then
            execButton.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
            glow.BackgroundTransparency = 0.2
        end
    end)
    
    execButton.MouseLeave:Connect(function()
        if execButton.Text == "EXECUTE" then
            execButton.BackgroundColor3 = Color3.fromRGB(0, 140, 0)
            glow.BackgroundTransparency = 0.4
        end
    end)
end

-- Footer
local footer = Instance.new("TextLabel")
footer.Size = UDim2.new(1, 0, 0, 25)
footer.Position = UDim2.new(0, 0, 0, 390) -- Fixed position for scrollable content
footer.BackgroundTransparency = 1
footer.Text = "═══════════════════════════════════════════════"
footer.TextColor3 = Color3.fromRGB(0, 162, 255)
footer.TextSize = 11
footer.Font = Enum.Font.Code
footer.Parent = contentFrame

-- Credits
local credits = Instance.new("TextLabel")
credits.Size = UDim2.new(1, 0, 0, 15)
credits.Position = UDim2.new(0, 0, 0, 405) -- Fixed position for scrollable content
credits.BackgroundTransparency = 1
credits.Text = "3v@nC00l GUI | Delta Compatible | c00lkidd Style"
credits.TextColor3 = Color3.fromRGB(140, 180, 220)
credits.TextSize = 10
credits.Font = Enum.Font.Code
credits.Parent = contentFrame

-- Close function
closeButton.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)

-- Delta confirmation
print("[DELTA] 3v@nC00l GUI loaded successfully!")
print("[DELTA] Compatible with Delta Executor")
print("[DELTA] GUI Parent:", guiParent.Name)
print("[DELTA] Scripts loaded:", #scripts)

-- Visual confirmation (Delta-safe)
spawn(function()
    wait(0.5)
    for i = 1, 2 do
        titleText.TextColor3 = Color3.fromRGB(255, 255, 0)
        wait(0.3)
        titleText.TextColor3 = Color3.fromRGB(0, 220, 255)
        wait(0.3)
    end
end)
