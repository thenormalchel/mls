-- Создаем ScreenGui и фрейм
local player = game.Players.LocalPlayer
local playerSpeed = player.Character.Humanoid.WalkSpeed
local screenGui = Instance.new("ScreenGui")
local frame = Instance.new("Frame")

-- Настройки фрейма
frame.Size = UDim2.new(0, 200, 0, 150)
frame.Position = UDim2.new(0.5, -100, 0.5, -75)
frame.BackgroundColor3 = Color3.new(1, 1, 1)
frame.BorderSizePixel = 2
frame.Parent = screenGui

-- Создаем текст
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 50)
title.Text = "By Mity"
title.TextColor3 = Color3.new(0, 0, 0)
title.BackgroundTransparency = 1
title.Parent = frame

-- Функция для установки скорости
local function setSpeed(speed)
    player.Character.Humanoid.WalkSpeed = speed
end

-- Кнопка для скорости 16
local buttonNormal = Instance.new("TextButton")
buttonNormal.Size = UDim2.new(1, 0, 0, 50)
buttonNormal.Position = UDim2.new(0, 0, 0, 50)
buttonNormal.Text = "Скорость 16"
buttonNormal.MouseButton1Click:Connect(function()
    setSpeed(16)
end)
buttonNormal.Parent = frame

-- Кнопка для скорости 50
local buttonFast = Instance.new("TextButton")
buttonFast.Size = UDim2.new(1, 0, 0, 50)
buttonFast.Position = UDim2.new(0, 0, 0, 100)
buttonFast.Text = "Скорость 50"
buttonFast.MouseButton1Click:Connect(function()
    setSpeed(50)
end)
buttonFast.Parent = frame

-- Покажем GUI
screenGui.Parent = player.PlayerGui
