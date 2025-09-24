-- 3v@nC00l GUI - Local Script
-- Place this in StarterPlayer > StarterPlayerScripts

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local HttpService = game:GetService("HttpService")

local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Create main ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "3v@nC00lGUI"
screenGui.ResetOnSpawn = false
screenGui.Parent = playerGui

-- Main Frame (c00lkidd style)
local mainFrame = Instance.new("Frame")
mainFrame.Name = "MainFrame"
mainFrame.Size = UDim2.new(0, 450, 0, 350)
mainFrame.Position = UDim2.new(0.5, -225, 0.5, -175)
mainFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
mainFrame.BorderSizePixel = 2
mainFrame.BorderColor3 = Color3.fromRGB(0, 162, 255) -- Blue outline
mainFrame.ClipsDescendants = true
mainFrame.Parent = screenGui

-- Inner frame for the classic inset look
local innerFrame = Instance.new("Frame")
innerFrame.Name = "InnerFrame"
innerFrame.Size = UDim2.new(1, -6, 1, -6)
innerFrame.Position = UDim2.new(0, 3, 0, 3)
innerFrame.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
innerFrame.BorderSizePixel = 1
innerFrame.BorderColor3 = Color3.fromRGB(0, 162, 255)
innerFrame.Parent = mainFrame

-- Title Bar (c00lkidd style header)
local titleBar = Instance.new("Frame")
titleBar.Name = "TitleBar"
titleBar.Size = UDim2.new(1, 0, 0, 35)
titleBar.Position = UDim2.new(0, 0, 0, 0)
titleBar.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
titleBar.BorderSizePixel = 1
titleBar.BorderColor3 = Color3.fromRGB(0, 162, 255)
titleBar.Parent = innerFrame

-- Title gradient effect
local titleGradient = Instance.new("Frame")
titleGradient.Size = UDim2.new(1, 0, 1, 0)
titleGradient.BackgroundColor3 = Color3.fromRGB(0, 162, 255)
titleGradient.BackgroundTransparency = 0.9
titleGradient.BorderSizePixel = 0
titleGradient.Parent = titleBar

-- Title Text (c00lkidd style)
local titleText = Instance.new("TextLabel")
titleText.Name = "Title"
titleText.Size = UDim2.new(1, -35, 1, 0)
titleText.Position = UDim2.new(0, 5, 0, 0)
titleText.BackgroundTransparency = 1
titleText.Text = "3v@nC00l GUI v1.0"
titleText.TextColor3 = Color3.fromRGB(0, 200, 255)
titleText.TextSize = 16
titleText.Font = Enum.Font.Code
titleText.TextXAlignment = Enum.TextXAlignment.Left
titleText.TextStrokeTransparency = 0.5
titleText.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
titleText.Parent = titleBar

-- Close Button (classic X)
local closeButton = Instance.new("TextButton")
closeButton.Name = "CloseButton"
closeButton.Size = UDim2.new(0, 25, 0, 25)
closeButton.Position = UDim2.new(1, -30, 0, 5)
closeButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
closeButton.BorderSizePixel = 1
closeButton.BorderColor3 = Color3.fromRGB(0, 162, 255)
closeButton.Text = "X"
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.TextSize = 14
closeButton.Font = Enum.Font.SourceSansBold
closeButton.Parent = titleBar

-- Content Frame
local contentFrame = Instance.new("Frame")
contentFrame.Name = "Content"
contentFrame.Size = UDim2.new(1, -10, 1, -45)
contentFrame.Position = UDim2.new(0, 5, 0, 40)
contentFrame.BackgroundTransparency = 1
contentFrame.Parent = innerFrame

-- Header label
local headerLabel = Instance.new("TextLabel")
headerLabel.Name = "Header"
headerLabel.Size = UDim2.new(1, 0, 0, 25)
headerLabel.Position = UDim2.new(0, 0, 0, 5)
headerLabel.BackgroundTransparency = 1
headerLabel.Text = "═══════════════ SCRIPT EXECUTOR ═══════════════"
headerLabel.TextColor3 = Color3.fromRGB(0, 162, 255)
headerLabel.TextSize = 12
headerLabel.Font = Enum.Font.Code
headerLabel.TextStrokeTransparency = 0.7
headerLabel.Parent = contentFrame

-- Scripts data
local scripts = {
    {name = "XVC Hub", url = "https://pastebin.com/raw/Piw5bqGq"},
    {name = "Kill Script", url = "https://raw.githubusercontent.com/retpirato/Roblox-Scripts/refs/heads/master/Fe%20Kill%20script%20%5BWorking%5D.lua"},
    {name = "Natural Disaster Survival", url = "https://raw.githubusercontent.com/ddario66/Test/refs/heads/main/Nature%20disaster"},
    {name = "TSB Hub", url = "https://raw.githubusercontent.com/ZaancOff/TSB-Hub/refs/heads/main/v2.lua"}
}

-- Create script items (c00lkidd style)
for i, script in ipairs(scripts) do
    local scriptFrame = Instance.new("Frame")
    scriptFrame.Name = "Script" .. i
    scriptFrame.Size = UDim2.new(1, 0, 0, 55)
    scriptFrame.Position = UDim2.new(0, 0, 0, 35 + (i-1) * 60)
    scriptFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    scriptFrame.BorderSizePixel = 1
    scriptFrame.BorderColor3 = Color3.fromRGB(0, 162, 255)
    scriptFrame.Parent = contentFrame
    
    -- Inner script frame
    local innerScriptFrame = Instance.new("Frame")
    innerScriptFrame.Size = UDim2.new(1, -4, 1, -4)
    innerScriptFrame.Position = UDim2.new(0, 2, 0, 2)
    innerScriptFrame.BackgroundColor3 = Color3.fromRGB(5, 5, 5)
    innerScriptFrame.BorderSizePixel = 1
    innerScriptFrame.BorderColor3 = Color3.fromRGB(0, 100, 150)
    innerScriptFrame.Parent = scriptFrame
    
    -- Script name label
    local scriptName = Instance.new("TextLabel")
    scriptName.Name = "ScriptName"
    scriptName.Size = UDim2.new(1, -100, 0, 20)
    scriptName.Position = UDim2.new(0, 8, 0, 5)
    scriptName.BackgroundTransparency = 1
    scriptName.Text = "► " .. script.name
    scriptName.TextColor3 = Color3.fromRGB(255, 255, 255)
    scriptName.TextSize = 14
    scriptName.Font = Enum.Font.Code
    scriptName.TextXAlignment = Enum.TextXAlignment.Left
    scriptName.TextStrokeTransparency = 0.7
    scriptName.Parent = innerScriptFrame
    
    -- Script description
    local scriptDesc = Instance.new("TextLabel")
    scriptDesc.Name = "ScriptDesc"
    scriptDesc.Size = UDim2.new(1, -100, 0, 15)
    scriptDesc.Position = UDim2.new(0, 15, 0, 25)
    scriptDesc.BackgroundTransparency = 1
    scriptDesc.Text = "Click EXECUTE to run this script"
    scriptDesc.TextColor3 = Color3.fromRGB(100, 150, 200)
    scriptDesc.TextSize = 10
    scriptDesc.Font = Enum.Font.Code
    scriptDesc.TextXAlignment = Enum.TextXAlignment.Left
    scriptDesc.Parent = innerScriptFrame
    
    -- Execute button (c00lkidd style)
    local executeButton = Instance.new("TextButton")
    executeButton.Name = "ExecuteButton"
    executeButton.Size = UDim2.new(0, 80, 0, 35)
    executeButton.Position = UDim2.new(1, -88, 0.5, -17.5)
    executeButton.BackgroundColor3 = Color3.fromRGB(0, 100, 0)
    executeButton.BorderSizePixel = 2
    executeButton.BorderColor3 = Color3.fromRGB(0, 162, 255)
    executeButton.Text = "EXECUTE"
    executeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    executeButton.TextSize = 11
    executeButton.Font = Enum.Font.SourceSansBold
    executeButton.TextStrokeTransparency = 0.5
    executeButton.Parent = innerScriptFrame
    
    -- Button inner frame
    local buttonInner = Instance.new("Frame")
    buttonInner.Size = UDim2.new(1, -4, 1, -4)
    buttonInner.Position = UDim2.new(0, 2, 0, 2)
    buttonInner.BackgroundColor3 = Color3.fromRGB(0, 120, 0)
    buttonInner.BorderSizePixel = 1
    buttonInner.BorderColor3 = Color3.fromRGB(0, 200, 0)
    buttonInner.Parent = executeButton
    
    -- Execute script function
    executeButton.MouseButton1Click:Connect(function()
        local success, error = pcall(function()
            loadstring(game:HttpGet(script.url))()
        end)
        
        if success then
            -- Success feedback
            executeButton.BackgroundColor3 = Color3.fromRGB(0, 150, 0)
            buttonInner.BackgroundColor3 = Color3.fromRGB(0, 200, 0)
            executeButton.Text = "SUCCESS"
            scriptDesc.Text = "Script executed successfully!"
            scriptDesc.TextColor3 = Color3.fromRGB(0, 255, 0)
            wait(2)
            executeButton.BackgroundColor3 = Color3.fromRGB(0, 100, 0)
            buttonInner.BackgroundColor3 = Color3.fromRGB(0, 120, 0)
            executeButton.Text = "EXECUTE"
            scriptDesc.Text = "Click EXECUTE to run this script"
            scriptDesc.TextColor3 = Color3.fromRGB(100, 150, 200)
        else
            -- Error feedback
            executeButton.BackgroundColor3 = Color3.fromRGB(150, 0, 0)
            buttonInner.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
            executeButton.Text = "ERROR"
            scriptDesc.Text = "Failed to execute script!"
            scriptDesc.TextColor3 = Color3.fromRGB(255, 100, 100)
            wait(2)
            executeButton.BackgroundColor3 = Color3.fromRGB(0, 100, 0)
            buttonInner.BackgroundColor3 = Color3.fromRGB(0, 120, 0)
            executeButton.Text = "EXECUTE"
            scriptDesc.Text = "Click EXECUTE to run this script"
            scriptDesc.TextColor3 = Color3.fromRGB(100, 150, 200)
            warn("3v@nC00l GUI - Script execution failed: " .. tostring(error))
        end
    end)
    
    -- Hover effects
    executeButton.MouseEnter:Connect(function()
        executeButton.BackgroundColor3 = Color3.fromRGB(0, 130, 0)
        buttonInner.BackgroundColor3 = Color3.fromRGB(0, 150, 0)
    end)
    
    executeButton.MouseLeave:Connect(function()
        if executeButton.Text == "EXECUTE" then
            executeButton.BackgroundColor3 = Color3.fromRGB(0, 100, 0)
            buttonInner.BackgroundColor3 = Color3.fromRGB(0, 120, 0)
        end
    end)
end

-- Footer
local footerLabel = Instance.new("TextLabel")
footerLabel.Name = "Footer"
footerLabel.Size = UDim2.new(1, 0, 0, 20)
footerLabel.Position = UDim2.new(0, 0, 1, -25)
footerLabel.BackgroundTransparency = 1
footerLabel.Text = "═══════════════════════════════════════════════"
footerLabel.TextColor3 = Color3.fromRGB(0, 162, 255)
footerLabel.TextSize = 10
footerLabel.Font = Enum.Font.Code
footerLabel.TextStrokeTransparency = 0.7
footerLabel.Parent = contentFrame

-- Credits
local creditsLabel = Instance.new("TextLabel")
creditsLabel.Name = "Credits"
creditsLabel.Size = UDim2.new(1, 0, 0, 15)
creditsLabel.Position = UDim2.new(0, 0, 1, -15)
creditsLabel.BackgroundTransparency = 1
creditsLabel.Text = "3v@nC00l GUI | Inspired by c00lkidd"
creditsLabel.TextColor3 = Color3.fromRGB(100, 150, 200)
creditsLabel.TextSize = 9
creditsLabel.Font = Enum.Font.Code
creditsLabel.Parent = contentFrame

-- Dragging functionality
local dragging = false
local dragStart = nil
local startPos = nil

titleBar.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStart = input.Position
        startPos = mainFrame.Position
    end
end)

titleBar.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement and dragging then
        local delta = input.Position - dragStart
        mainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
end)

UserInputService.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = false
    end
end)

-- Close button functionality
closeButton.MouseButton1Click:Connect(function()
    -- Fade out animation
    local fadeOut = TweenService:Create(
        mainFrame,
        TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
        {BackgroundTransparency = 1}
    )
    fadeOut:Play()
    
    fadeOut.Completed:Connect(function()
        screenGui:Destroy()
    end)
end)

-- Entrance animation (classic pop-in)
mainFrame.Size = UDim2.new(0, 0, 0, 0)
mainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)

local entranceTween = TweenService:Create(
    mainFrame,
    TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
    {
        Size = UDim2.new(0, 450, 0, 350),
        Position = UDim2.new(0.5, -225, 0.5, -175)
    }
)

entranceTween:Play()

-- Console output
print("3v@nC00l GUI loaded successfully!")
print("═══════════════════════════════════════")
print("Scripts available:")
for i, script in ipairs(scripts) do
    print("  " .. i .. ". " .. script.name)
end
print("═══════════════════════════════════════")
print("Inspired by c00lkidd's classic GUI style")
