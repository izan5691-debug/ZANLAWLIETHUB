-- [[ QUANTUM V14 - L HUB / MADE:ZANN EDITION ]] --
local Q = Instance.new("ScreenGui")
local F = Instance.new("Frame")
local L_Logo = Instance.new("TextLabel")
local M_Credit = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")

Q.Name = "QuantumV14_L_Hub"
Q.Parent = game:GetService("CoreGui") or game:GetService("Players.LocalPlayer:WaitForChild("PlayerGui")

F.Parent = Q
F.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
F.Position = UDim2.new(0.3, 0, 0.3, 0)
F.Size = UDim2.new(0, 250, 0, 320)
F.Active = true
F.Draggable = true
F.BorderSizePixel = 0

UICorner.Parent = F
UICorner.CornerRadius = UDim.new(0, 10)

L_Logo.Parent = F
L_Logo.Size = UDim2.new(1, 0, 0, 45)
L_Logo.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
L_Logo.Text = "L HUB"
L_Logo.TextColor3 = Color3.fromRGB(255, 255, 255)
L_Logo.Font = Enum.Font.Code
L_Logo.TextSize = 28

M_Credit.Parent = F
M_Credit.Position = UDim2.new(0, 0, 0.15, 0)
M_Credit.Size = UDim2.new(1, 0, 0, 25)
M_Credit.BackgroundTransparency = 1
M_Credit.Text = "Made:zann || © QuantumV14"
M_Credit.TextColor3 = Color3.fromRGB(200, 200, 200)
M_Credit.Font = Enum.Font.SourceSansItalic
M_Credit.TextSize = 14

local function CreateBtn(name, pos, color, func)
    local B = Instance.new("TextButton")
    local BC = Instance.new("UICorner")
    B.Parent = F
    B.Text = name
    B.Size = UDim2.new(0.85, 0, 0, 40)
    B.Position = pos
    B.BackgroundColor3 = color
    B.TextColor3 = (color == Color3.fromRGB(255,255,255) and Color3.new(0,0,0) or Color3.new(1,1,1))
    B.Font = Enum.Font.GothamBold
    BC.Parent = B
    B.MouseButton1Click:Connect(func)
end

CreateBtn("⚡ SPEED (100)", UDim2.new(0.075, 0, 0.3, 0), Color3.fromRGB(30, 30, 30), function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
end)

CreateBtn("🕊️ FLY MODE", UDim2.new(0.075, 0, 0.45, 0), Color3.fromRGB(30, 30, 30), function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.lua"))()
end)

CreateBtn("🏠 BROOKHAVEN ADMIN", UDim2.new(0.075, 0, 0.6, 0), Color3.fromRGB(255, 255, 255), function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/IceBearScripts/Brookhaven/main/IceBearHub.lua'))()
end)

CreateBtn("❌ CLOSE", UDim2.new(0.075, 0, 0.8, 0), Color3.fromRGB(150, 0, 0), function()
    Q:Destroy()
end)
  
