
-- BAOHUY VIP BULID 👑
-- Version 1.0
-- Vietnamese Interface

local Players = game:GetService("Players")
local player = Players.LocalPlayer

local gui = Instance.new("ScreenGui")
gui.Name = "BAOHUY_VIP_BULID"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

local main = Instance.new("Frame")
main.Name = "Main"
main.Size = UDim2.fromOffset(300, 300)
main.Position = UDim2.new(0.5, -150, 0.5, -150)
main.BackgroundColor3 = Color3.fromRGB(20, 25, 40)
main.Parent = gui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 14)
corner.Parent = main

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 55)
title.BackgroundTransparency = 1
title.Text = "BAOHUY VIP BULID 👑"
title.TextColor3 = Color3.fromRGB(80, 200, 255)
title.TextSize = 19
title.Font = Enum.Font.GothamBold
title.Parent = main

local status = Instance.new("TextLabel")
status.Size = UDim2.new(1, -20, 0, 40)
status.Position = UDim2.fromOffset(10, 55)
status.BackgroundTransparency = 1
status.Text = "Chào mừng bạn!"
status.TextColor3 = Color3.new(1, 1, 1)
status.TextSize = 14
status.Parent = main

local function makeButton(label, y, callback)
    local b = Instance.new("TextButton")
    b.Size = UDim2.new(1, -30, 0, 42)
    b.Position = UDim2.fromOffset(15, y)
    b.BackgroundColor3 = Color3.fromRGB(35, 65, 100)
    b.TextColor3 = Color3.new(1, 1, 1)
    b.Text = label
    b.TextSize = 14
    b.Font = Enum.Font.GothamBold
    b.Parent = main

    local c = Instance.new("UICorner")
    c.CornerRadius = UDim.new(0, 8)
    c.Parent = b

    b.Activated:Connect(callback)
end

makeButton("🥚 Hướng dẫn nhặt trứng", 110, function()
    status.Text = "Hãy nhặt trứng theo cơ chế của game."
end)

makeButton("🎨 Đổi màu giao diện", 160, function()
    main.BackgroundColor3 = Color3.fromRGB(25, 65, 75)
    status.Text = "Đã đổi màu giao diện!"
end)

makeButton("❌ Đóng menu", 210, function()
    gui:Destroy()
end)

print("BAOHUY VIP BULID loaded!")
