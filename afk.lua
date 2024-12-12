local Rice = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Credits = Instance.new("TextLabel")
local Activate = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local OpenClose = Instance.new("ImageButton")
local UICorner_2 = Instance.new("UICorner")
local EyeIconURL = "https://cdn-icons-png.flaticon.com/512/5709/5709755.png"

Rice.Name = "Rice"
Rice.Parent = game.CoreGui
Rice.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = Rice
Main.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.3, 0, 0.4, 0)
Main.Size = UDim2.new(0, 295, 0, 116)
Main.Visible = false -- Bảng ẩn mặc định
Main.Active = true
Main.Draggable = true

Title.Name = "Title"
Title.Parent = Main
Title.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Title.BorderSizePixel = 0
Title.Size = UDim2.new(0, 295, 0, 16)
Title.Font = Enum.Font.GothamBold
Title.Text = "Rice Anti-Afk"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.TextSize = 12.000
Title.TextWrapped = true

Credits.Name = "Credits"
Credits.Parent = Main
Credits.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Credits.BorderSizePixel = 0
Credits.Position = UDim2.new(0, 0, 0.861901641, 0)
Credits.Size = UDim2.new(0, 295, 0, 16)
Credits.Font = Enum.Font.GothamBold
Credits.Text = "Made by quanganhdevx"
Credits.TextColor3 = Color3.fromRGB(255, 255, 255)
Credits.TextScaled = true
Credits.TextSize = 12.000
Credits.TextWrapped = true

Activate.Name = "Activate"
Activate.Parent = Main
Activate.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Activate.BorderColor3 = Color3.fromRGB(27, 42, 53)
Activate.BorderSizePixel = 0
Activate.Position = UDim2.new(0.033, 0, 0.243, 0)
Activate.Size = UDim2.new(0, 274, 0, 59)
Activate.Font = Enum.Font.GothamBold
Activate.Text = "Activate Anti-AFK"
Activate.TextColor3 = Color3.fromRGB(0, 255, 127)
Activate.TextSize = 20.000
Activate.TextStrokeColor3 = Color3.fromRGB(102, 255, 115)

-- Chức năng Anti-AFK
Activate.MouseButton1Down:Connect(function()
    local vu = game:GetService("VirtualUser")
    game:GetService("Players").LocalPlayer.Idled:Connect(function()
        vu:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
        wait(1)
        vu:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    end)
    Activate.Text = "Anti-AFK Activated"
    Activate.TextColor3 = Color3.fromRGB(255, 255, 0)
end)

UICorner.Parent = Activate

OpenClose.Name = "OpenClose"
OpenClose.Parent = Rice
OpenClose.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
OpenClose.Position = UDim2.new(0.35, 0, 0.9, 0)
OpenClose.Size = UDim2.new(0, 50, 0, 50)
OpenClose.Image = EyeIconURL -- Dùng URL icon
OpenClose.ScaleType = Enum.ScaleType.Fit
OpenClose.BackgroundTransparency = 1
OpenClose.Active = true -- Cho phép kéo thả
OpenClose.Draggable = true -- Kích hoạt kéo thả

UICorner_2.Parent = OpenClose

-- Chức năng bật/tắt giao diện
local isVisible = false
OpenClose.MouseButton1Click:Connect(function()
    isVisible = not isVisible
    Main.Visible = isVisible
end)
