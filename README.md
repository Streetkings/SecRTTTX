local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")

-- Create the GUI
local KeySystemGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local KeyBox = Instance.new("TextBox")
local SubmitButton = Instance.new("TextButton")
local Title = Instance.new("TextLabel")
local StatusLabel = Instance.new("TextLabel")

-- Create Destroy Button
local DestroyButton = Instance.new("TextButton")
DestroyButton.Name = "DestroyButton"
DestroyButton.Parent = MainFrame
DestroyButton.Position = UDim2.new(0.95, 0, 0.02, 0)
DestroyButton.Size = UDim2.new(0, 30, 0, 30)
DestroyButton.AnchorPoint = Vector2.new(1, 0)
DestroyButton.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
DestroyButton.Text = "X"
DestroyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
DestroyButton.TextSize = 18
DestroyButton.Font = Enum.Font.GothamBold
DestroyButton.ZIndex = 10

-- Add corner to destroy button
local DestroyCorner = UICorner:Clone()
DestroyCorner.CornerRadius = UDim.new(0, 8)
DestroyCorner.Parent = DestroyButton

-- The correct key
local correctKey = "ENJN234|30923FD9K0|129I1290S209|3290J2DJ32"

-- GUI Setup
KeySystemGui.Name = "KeySystemGui"
KeySystemGui.Parent = Players.LocalPlayer:WaitForChild("PlayerGui")

MainFrame.Name = "MainFrame"
MainFrame.Parent = KeySystemGui
MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
MainFrame.Size = UDim2.new(0, 400, 0, 250)
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.BackgroundTransparency = 0

UICorner.Parent = MainFrame
UICorner.CornerRadius = UDim.new(0, 10)

Title.Name = "Title"
Title.Parent = MainFrame
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0, 0, 0.1, 0)
Title.Size = UDim2.new(1, 0, 0, 30)
Title.Font = Enum.Font.GothamBold
Title.Text = "Key System"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 28

KeyBox.Name = "KeyBox"
KeyBox.Parent = MainFrame
KeyBox.Position = UDim2.new(0.1, 0, 0.4, 0)
KeyBox.Size = UDim2.new(0.8, 0, 0, 45)
KeyBox.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
KeyBox.PlaceholderText = "Enter Key..."
KeyBox.Text = ""
KeyBox.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyBox.Font = Enum.Font.Gotham
KeyBox.TextSize = 18

SubmitButton.Name = "SubmitButton"
SubmitButton.Parent = MainFrame
SubmitButton.Position = UDim2.new(0.2, 0, 0.7, 0)
SubmitButton.Size = UDim2.new(0.6, 0, 0, 40)
SubmitButton.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
SubmitButton.Font = Enum.Font.GothamBold
SubmitButton.Text = "Submit"
SubmitButton.TextColor3 = Color3.fromRGB(255, 255, 255)
SubmitButton.TextSize = 18

-- Add UICorner to submit button
local SubmitCorner = UICorner:Clone()
SubmitCorner.Parent = SubmitButton

StatusLabel.Name = "StatusLabel"
StatusLabel.Parent = MainFrame
StatusLabel.BackgroundTransparency = 1
StatusLabel.Position = UDim2.new(0, 0, 0.85, 0)
StatusLabel.Size = UDim2.new(1, 0, 0, 20)
StatusLabel.Font = Enum.Font.Gotham
StatusLabel.Text = ""
StatusLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
StatusLabel.TextSize = 16

-- Add neon glow effect
local Glow = Instance.new("ImageLabel")
Glow.Name = "Glow"
Glow.BackgroundTransparency = 1
Glow.Position = UDim2.new(0.5, 0, 0.5, 0)
Glow.AnchorPoint = Vector2.new(0.5, 0.5)
Glow.Size = UDim2.new(1.2, 0, 1.2, 0)
Glow.ZIndex = -1
Glow.Image = "rbxassetid://131754413"
Glow.ImageColor3 = Color3.fromRGB(0, 170, 255)
Glow.ImageTransparency = 0.5
Glow.Parent = MainFrame

-- Dragging functionality
local dragging
local dragInput
local dragStart
local startPos

local function updateDrag(input)
    local delta = input.Position - dragStart
    local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
        startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    
    local tweenInfo = TweenInfo.new(0.1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
    TweenService:Create(MainFrame, tweenInfo, {Position = position}):Play()
end

MainFrame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStart = input.Position
        startPos = MainFrame.Position
        
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

MainFrame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement then
        dragInput = input
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        updateDrag(input)
    end
end)

-- New cool scale animation
MainFrame.Size = UDim2.new(0, 0, 0, 0)
MainFrame.BackgroundTransparency = 1
Glow.ImageTransparency = 1

local function createTween(instance, properties, time)
    return TweenService:Create(instance, TweenInfo.new(time, Enum.EasingStyle.Back, Enum.EasingDirection.Out), properties)
end

-- Entrance animations
local scaleTween = createTween(MainFrame, {Size = UDim2.new(0, 400, 0, 250), BackgroundTransparency = 0}, 0.8)
local glowTween = createTween(Glow, {ImageTransparency = 0.5}, 1)

scaleTween:Play()
glowTween:Play()

-- Button hover effects
SubmitButton.MouseEnter:Connect(function()
    createTween(SubmitButton, {BackgroundColor3 = Color3.fromRGB(0, 140, 210)}, 0.3):Play()
end)

SubmitButton.MouseLeave:Connect(function()
    createTween(SubmitButton, {BackgroundColor3 = Color3.fromRGB(0, 170, 255)}, 0.3):Play()
end)

-- Destroy button hover effects
DestroyButton.MouseEnter:Connect(function()
    createTween(DestroyButton, {BackgroundColor3 = Color3.fromRGB(200, 40, 40)}, 0.3):Play()
end)

DestroyButton.MouseLeave:Connect(function()
    createTween(DestroyButton, {BackgroundColor3 = Color3.fromRGB(255, 50, 50)}, 0.3):Play()
end)

-- Destroy button functionality
DestroyButton.MouseButton1Click:Connect(function()
    local closeTween = createTween(MainFrame, {Size = UDim2.new(0, 0, 0, 0), BackgroundTransparency = 1}, 0.6)
    local closeGlowTween = createTween(Glow, {ImageTransparency = 1}, 0.4)
    
    closeGlowTween:Play()
    closeTween:Play()
    
    task.wait(0.6)
    KeySystemGui:Destroy()
    script:Destroy() -- This will stop the script completely
end)

-- Key verification
SubmitButton.MouseButton1Click:Connect(function()
    if KeyBox.Text == correctKey then
        StatusLabel.Text = "Correct Key!"
        StatusLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
        
        -- Success animation
        local closeTween = createTween(MainFrame, {Size = UDim2.new(0, 0, 0, 0), BackgroundTransparency = 1}, 0.8)
        local closeGlowTween = createTween(Glow, {ImageTransparency = 1}, 0.6)
        
        closeGlowTween:Play()
        closeTween:Play()
        
        task.wait(0.8)
        KeySystemGui:Destroy()
        
        local allowedIPs = {
    "73.22.137.175",
    "69.243.129.235"
}

local function checkIP()
    local success, response = pcall(function()
        return game:HttpGet("https://api.ipify.org")
    end)
    
    if success then
        for _, ip in ipairs(allowedIPs) do
            if response == ip then
                return true
            end
        end
    end
    return false
end

-- Sexy UI with animations
local function createUI(authorized)
    local GUI = Instance.new("ScreenGui")
    local MainFrame = Instance.new("Frame")
    local StatusText = Instance.new("TextLabel")
    
    GUI.Parent = game.CoreGui
    
    MainFrame.Size = UDim2.new(0, 0, 0, 80)
    MainFrame.Position = UDim2.new(0.5, 0, 0.5, -40)
    MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    MainFrame.BorderSizePixel = 0
    MainFrame.Parent = GUI
    
    StatusText.Size = UDim2.new(1, 0, 1, 0)
    StatusText.BackgroundTransparency = 1
    StatusText.Font = Enum.Font.GothamBold
    StatusText.TextSize = 18
    StatusText.TextColor3 = authorized and Color3.fromRGB(0, 255, 140) or Color3.fromRGB(255, 50, 50)
    StatusText.Text = authorized and "Access Granted!" or "IP Not Whitelisted!"
    StatusText.Parent = MainFrame
    
    local TweenService = game:GetService("TweenService")
    
    local slideIn = TweenService:Create(MainFrame, TweenInfo.new(0.5, Enum.EasingStyle.Back), {
        Size = UDim2.new(0, 250, 0, 80),
        Position = UDim2.new(0.5, -125, 0.5, -40)
    })
    slideIn:Play()
    
    wait(2)
    
    local fadeOut = TweenService:Create(MainFrame, TweenInfo.new(0.5, Enum.EasingStyle.Quad), {
        BackgroundTransparency = 1
    })
    local textFadeOut = TweenService:Create(StatusText, TweenInfo.new(0.5, Enum.EasingStyle.Quad), {
        TextTransparency = 1
    })
    
    fadeOut:Play()
    textFadeOut:Play()
    
    wait(0.5)
    GUI:Destroy()
end

-- Main execution
if checkIP() then
    createUI(true)
-- Whitelist script
local whitelistedUsers = {
    [4876826837] = true, -- Replace with the User ID of the person you want to whitelist
    [5216299452] = true,  -- Add more User IDs as needed
    [7720865634] = true,  -- Add more User IDs as needed
    [5119648616] = true,  -- Add more User IDs as needed
}

-- Get the player's User ID (in most exploit environments, `game.Players.LocalPlayer` is used)
local userId = game.Players.LocalPlayer.UserId

-- Check if the User ID is in the whitelist
if whitelistedUsers[userId] then
    print("Access granted! You're whitelisted.")
    -- Place your main script code here
else
    print("Access denied! You're not whitelisted.")
    -- You can add additional actions, like terminating the script
    return
end
