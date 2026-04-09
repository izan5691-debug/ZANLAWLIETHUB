-- [[ QUANTUM V14 - 'L' THEME / MADE:ZANN EDITION ]] --
local Q = Instance.new("ScreenGui")
local F = Instance.new("Frame")
local T = Instance.new("TextBox")
local E = Instance.new("TextButton")
local L_Logo = Instance.new("TextLabel")
local M_Credit = Instance.new("TextLabel")

Q.Name = "QuantumV14_L_Theme"
Q.Parent = game:GetService("CoreGui") or game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")

F.Parent = Q
F.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
F.Position = UDim2.new(0.3, 0, 0.3, 0)
F.Size = UDim2.new(0, 320, 0, 240)
F.Active = true
F.Draggable = true
F.BorderSizePixel = 0

L_Logo.Parent = F
L_Logo.Size = UDim2.new(1, 0, 0, 40)
L_Logo.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
L_Logo.Text = "L"
L_Logo.TextColor3 = Color3.fromRGB(255, 255, 255)
L_Logo.Font = Enum.Font.Code
L_Logo.TextSize = 30
L_Logo.BorderSizePixel = 0

M_Credit.Parent = F
M_Credit.Position = UDim2.new(0.05, 0, 0.18, 0)
M_Credit.Size = UDim2.new(0.9, 0, 0, 20)
M_Credit.BackgroundTransparency = 1
M_Credit.Text = "Made:zann || © QuantumV14"
M_Credit.TextColor3 = Color3.fromRGB(200, 200, 200)
M_Credit.Font = Enum.Font.SourceSans
M_Credit.TextSize = 14

T.Parent = F
T.Position = UDim2.new(0.05, 0, 0.3, 0)
T.Size = UDim2.new(0.9, 0, 0.5, 0)
T.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
T.TextColor3 = Color3.fromRGB(255, 255, 255)
T.Text = "-- Masukin 'Hukum' Lu Di Sini, Boss..."
T.ClearTextOnFocus = false
T.MultiLine = true
T.TextWrapped = true
T.Font = Enum.Font.Code
T.BorderSizePixel = 1
T.BorderColor3 = Color3.fromRGB(255, 255, 255)

E.Parent = F
E.Position = UDim2.new(0.1, 0, 0.85, 0)
E.Size = UDim2.new(0.8, 0, 0.12, 0)
E.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
E.Text = "JALANKAN KEADILAN!"
E.TextColor3 = Color3.fromRGB(0, 0, 0)
E.Font = Enum.Font.GothamBold
E.BorderSizePixel = 0

E.MouseButton1Click:Connect(function()
    local code = T.Text
    local func, err = loadstring(code)
    if func then
        print("Quantum V14 [L-Mode]: Script Executed!")
        pcall(func)
    else
        warn("Quantum V14 Error: " .. err)
    end
end)
