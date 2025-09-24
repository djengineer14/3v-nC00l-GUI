-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local TextButton_3 = Instance.new("TextButton")
local TextButton_4 = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(2, 15, 255)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0, 0, 0.681592047, 0)
Frame.Size = UDim2.new(0, 372, 0, 256)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(21, 0, 249)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.112903222, 0, 0.046875, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = "3v@nC00l"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 14.000

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.505376339, 0, 0.4296875, 0)
TextButton.Size = UDim2.new(0, 165, 0, 36)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Part Controller"
TextButton.TextColor3 = Color3.fromRGB(16, 143, 255)
TextButton.TextSize = 14.000

TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.BorderSizePixel = 0
TextButton_2.Position = UDim2.new(0.505376339, 0, 0.80859375, 0)
TextButton_2.Size = UDim2.new(0, 147, 0, 38)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "FE Kill Script"
TextButton_2.TextColor3 = Color3.fromRGB(16, 143, 255)
TextButton_2.TextSize = 14.000

TextButton_3.Parent = Frame
TextButton_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.BorderSizePixel = 0
TextButton_3.Position = UDim2.new(0.505376339, 0, 0.62109375, 0)
TextButton_3.Size = UDim2.new(0, 159, 0, 31)
TextButton_3.Font = Enum.Font.SourceSans
TextButton_3.Text = "Trax Spawner"
TextButton_3.TextColor3 = Color3.fromRGB(16, 143, 255)
TextButton_3.TextSize = 14.000

TextButton_4.Parent = Frame
TextButton_4.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_4.BorderSizePixel = 0
TextButton_4.Position = UDim2.new(0.0161290318, 0, 0.4375, 0)
TextButton_4.Size = UDim2.new(0, 159, 0, 31)
TextButton_4.Font = Enum.Font.SourceSans
TextButton_4.Text = "XVC Hub"
TextButton_4.TextColor3 = Color3.fromRGB(16, 143, 255)
TextButton_4.TextSize = 14.000

-- Scripts:

local function VUFPHNU_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	-- LocalScript under DisasterButton
	local btn = script.Parent
	
	btn.MouseButton1Click:Connect(function()
		btn.Text             = "LOADING"
		btn.BackgroundColor3 = Color3.fromRGB(150,150,0)
	
		task.spawn(function()
			local ok, err = pcall(function()
				local src = game:HttpGet("https://raw.githubusercontent.com/ddario66/Test/refs/heads/main/Nature%20disaster", true)
				loadstring(src)()
			end)
	
			if ok then
				btn.Text             = "SUCCESS"
				btn.BackgroundColor3 = Color3.fromRGB(0,150,0)
			else
				btn.Text             = "ERROR"
				btn.BackgroundColor3 = Color3.fromRGB(150,0,0)
				warn("Natural Disaster failed:", err)
			end
	
			task.wait(2)
			btn.Text             = "EXECUTE"
			btn.BackgroundColor3 = Color3.fromRGB(0,120,0)
		end)
	end)
	
end
coroutine.wrap(VUFPHNU_fake_script)()
local function BGGW_fake_script() -- TextButton_2.LocalScript 
	local script = Instance.new('LocalScript', TextButton_2)

	-- LocalScript under KillButton
	local btn = script.Parent
	
	btn.MouseButton1Click:Connect(function()
		btn.Text             = "LOADING"
		btn.BackgroundColor3 = Color3.fromRGB(150,150,0)
	
		task.spawn(function()
			local ok, err = pcall(function()
				local src = game:HttpGet("https://raw.githubusercontent.com/retpirato/Roblox-Scripts/refs/heads/master/Fe%20Kill%20script%20%5BWorking%5D.lua", true)
				loadstring(src)()
			end)
	
			if ok then
				btn.Text             = "SUCCESS"
				btn.BackgroundColor3 = Color3.fromRGB(0,150,0)
			else
				btn.Text             = "ERROR"
				btn.BackgroundColor3 = Color3.fromRGB(150,0,0)
				warn("Kill Script failed:", err)
			end
	
			task.wait(2)
			btn.Text             = "EXECUTE"
			btn.BackgroundColor3 = Color3.fromRGB(0,120,0)
		end)
	end)
	
end
coroutine.wrap(BGGW_fake_script)()
local function FQZJVGI_fake_script() -- TextButton_3.LocalScript 
	local script = Instance.new('LocalScript', TextButton_3)

	-- LocalScript under TraxButton
	local btn = script.Parent
	
	btn.MouseButton1Click:Connect(function()
		btn.Text             = "LOADING"
		btn.BackgroundColor3 = Color3.fromRGB(150,150,0)
	
		task.spawn(function()
			local ok, err = pcall(function()
				local src = game:HttpGet("https://raw.githubusercontent.com/Estevansit0/KJJK/refs/heads/main/PusarX-loader.lua", true)
				loadstring(src)()
			end)
	
			if ok then
				btn.Text             = "SUCCESS"
				btn.BackgroundColor3 = Color3.fromRGB(0,150,0)
			else
				btn.Text             = "ERROR"
				btn.BackgroundColor3 = Color3.fromRGB(150,0,0)
				warn("Trax Spawner failed:", err)
			end
	
			task.wait(2)
			btn.Text             = "EXECUTE"
			btn.BackgroundColor3 = Color3.fromRGB(0,120,0)
		end)
	end)
	
end
coroutine.wrap(FQZJVGI_fake_script)()
local function VZBX_fake_script() -- TextButton_4.LocalScript 
	local script = Instance.new('LocalScript', TextButton_4)

	-- LocalScript under XvcButton
	local btn = script.Parent
	
	btn.MouseButton1Click:Connect(function()
		btn.Text             = "LOADING"
		btn.BackgroundColor3 = Color3.fromRGB(150,150,0)
	
		task.spawn(function()
			local ok, err = pcall(function()
				local src = game:HttpGet("https://pastebin.com/raw/Piw5bqGq", true)
				loadstring(src)()
			end)
	
			if ok then
				btn.Text             = "SUCCESS"
				btn.BackgroundColor3 = Color3.fromRGB(0,150,0)
			else
				btn.Text             = "ERROR"
				btn.BackgroundColor3 = Color3.fromRGB(150,0,0)
				warn("XVC Hub failed:", err)
			end
	
			task.wait(2)
			btn.Text             = "EXECUTE"
			btn.BackgroundColor3 = Color3.fromRGB(0,120,0)
		end)
	end)
	
end
coroutine.wrap(VZBX_fake_script)()
