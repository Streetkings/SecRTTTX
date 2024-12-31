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
