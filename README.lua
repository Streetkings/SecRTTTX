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
--RBXGeneral BlackLister
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local DefaultChatSystem = ReplicatedStorage:WaitForChild("DefaultChatSystemChatEvents", 1)

if not DefaultChatSystem then
    -- Kick existing players
    for _, player in ipairs(Players:GetPlayers()) do
        player:Kick("⚠️For Security Purposes! you're Only Able To Bypass DefaultChatSystems⚠️")
    end
    
    -- Kick any new players that try to join
    Players.PlayerAdded:Connect(function(player)
        task.wait()  -- Small delay to ensure kick works
        player:Kick("⚠️For Security Purposes! you're Only Able To Bypass DefaultChatSystems⚠️")
    end)
    return
end


-- Your main code goes below here


--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
loadstring(game:HttpGet("https://raw.githubusercontent.com/vqmpjayZ/More-Scripts/main/Anti-Chat-Logger", true))()
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "☺SoloZ Chat Bypasser (Legit + Detected)☻", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
OrionLib:MakeNotification({
	Name = "SoloZ Chat Bypasser",
	Content = "SoloZ ChatBypasser Successfully Executed",
	Image = "rbxassetid://4483345998",
	Time = 5
})

--[[
Title = <string> - The title of the notification.
Content = <string> - The content of the notification.
Image = <string> - The icon of the notification.
Time = <number> - The duration of the notfication.
]]

--[[
Name = <string> - The name of the UI.
HidePremium = <bool> - Whether or not the user details shows Premium status or not.
SaveConfig = <bool> - Toggles the config saving in the UI.
ConfigFolder = <string> - The name of the folder where the configs are saved.
IntroEnabled = <bool> - Whether or not to show the intro animation.
IntroText = <string> - Text to show in the intro animation.
IntroIcon = <string> - URL to the image you want to use in the intro animation.
Icon = <string> - URL to the image you want displayed on the window.
CloseCallback = <function> - Function to execute when the window is closed.
]]

local MainTab = Window:MakeTab({
	Name = "Home Tab",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
MainTab:AddLabel("Home Tab✍️")

local Section = MainTab:AddSection({
	Name = "Temporary Fix Bypasses (No Spam)"
})

MainTab:AddButton({
	Name = "Bypass Fix 3",
	Callback = function()
      		local args = {
    [1] = "ǄǅǆǇǈǉǊǋǌ", -- No Touch (Be Careful)
    [2] = "All"
}

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
  	end    
})

MainTab:AddButton({
	Name = "Invisble Message",
	Callback = function()
      		local args = {
    [1] = "", -- No Touch (Be Careful)
    [2] = "All"
}

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
  	end    
})

local Section = MainTab:AddSection({
	Name = "Universal"
})

MainTab:AddSlider({
	Name = "Walkspeed",
	Min = 16,
	Max = 100,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Walkspeed🏃",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
	end    
})

MainTab:AddSlider({
	Name = "JumpPower",
	Min = 50,
	Max = 100,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "JumpPower🏃",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = (Value)
	end    
})

local Section = MainTab:AddSection({
	Name = "Admins"
})

MainTab:AddButton({
	Name = "Nameless Admin",
	Callback = function()
      		loadstring(game:HttpGet('https://gist.github.com/inuk84/ca841931f45f242c945405298b26bd71/raw/af364e5d4ea5b0d2eac404a5376d83c84a23cbe4/na.lua'))()
  	end    
})

MainTab:AddButton({
	Name = "Infinite Yield",
	Callback = function()
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
  	end    
})

local Section = MainTab:AddSection({
	Name = "Scripts/Others"
})

MainTab:AddButton({
	Name = "Sky Hub",
	Callback = function()
      		loadstring(game:HttpGet("https://scriptblox.com/raw/Guess-the-drawing!-all-block-drawer-cam-block-canvas-12948"))()
  	end    
})

local MainTab = Window:MakeTab({
	Name = "Words✍️",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
MainTab:AddLabel("Words✍️")

local Section = MainTab:AddSection({
	Name = "Slurs, Curse words, Slangs"
})

MainTab:AddButton({
	Name = "nı̇gga",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("nı̇gga") 
  	end    
})

MainTab:AddButton({
	Name = "Nı̇gga",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Nı̇gga") 
  	end    
})

MainTab:AddButton({
	Name = "nı̇gger",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("nı̇gger") 
  	end    
})

MainTab:AddButton({
	Name = "Nı̇gger",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Nı̇gger") 
  	end    
})

MainTab:AddButton({
	Name = "Dipshı̇t",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Dipshı̇t") 
  	end    
})

MainTab:AddButton({
	Name = "shı̇thead",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("shı̇thead") 
  	end    
})

MainTab:AddButton({
	Name = "bı̇tch",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("bı̇tch") 
  	end    
})

MainTab:AddButton({
	Name = "Bı̇tch",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Bı̇tch") 
  	end    
})

MainTab:AddButton({
	Name = "Dı̇ck",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Dı̇ck") 
  	end    
})

MainTab:AddButton({
	Name = "Dı̇ckhead",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Dı̇ckhead") 
  	end    
})

MainTab:AddButton({
	Name = "AssHead",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("AssHead") 
  	end    
})

MainTab:AddButton({
	Name = "pı̇ss",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("pı̇ss") 
  	end    
})

MainTab:AddButton({
	Name = "bullshı̇t",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("bullshı̇t") 
  	end    
})

MainTab:AddButton({
	Name = "shı̇t",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("shı̇t") 
  	end    
})

MainTab:AddButton({
	Name = "nı̇gra",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("nı̇gra") 
  	end    
})

MainTab:AddButton({
	Name = "nı̇ggas",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("nı̇ggas") 
  	end    
})

MainTab:AddButton({
	Name = "Dı̇scord",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Dı̇scord") 
  	end    
})

MainTab:AddButton({
	Name = "Kys",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Kys") 
  	end    
})

MainTab:AddButton({
	Name = "Slut",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Slụt") 
  	end    
})

MainTab:AddButton({
	Name = "Sex",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Sẹx") 
  	end    
})

MainTab:AddButton({
	Name = "Pussy",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Pụssy") 
  	end    
})

MainTab:AddButton({
	Name = "Fucker",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Fucḳer") 
  	end    
})

MainTab:AddButton({
	Name = "Nigger",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Nịgger") 
  	end    
})

MainTab:AddButton({
	Name = "Niggers",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Nịggers") 
  	end    
})

--[[
Name = <string> - The name of the toggle.
Default = <bool> - The default value of the toggle.
Callback = <function> - The function of the toggle.
]]

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

--[[
Name = <string> - The name of the slider.
Min = <number> - The minimal value of the slider.
Max = <number> - The maxium value of the slider.
Increment = <number> - How much the slider will change value when dragging.
Default = <number> - The default value of the slider.
ValueName = <string> - The text after the value number.
Callback = <function> - The function of the slider.
]]

--[[
Name = <string> - The name of the section.
]]

local MainTab = Window:MakeTab({
	Name = "Sentences✍️",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
MainTab:AddLabel("Sentences✍️")

local Section = MainTab:AddSection({
	Name = "Just Random And Casual Lines"
})

MainTab:AddButton({
	Name = "nоѕһı̇tѕһеrӏосk",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("nоѕһı̇tѕһеrӏосk") 
  	end    
})

MainTab:AddButton({
	Name = "ѕkіӏӏіѕѕuеdірѕһı̇t",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("ѕkіӏӏіѕѕuеdірѕһı̇t") 
  	end    
})

MainTab:AddButton({
	Name = "і'mnоtdоіngіtfоrаttеntіоn,іjuѕtwаntеdѕоmеrоbӏохрụѕѕу!",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("і'mnоtdоіngіtfоrаttеntіоn,іjuѕtwаntеdѕоmеrоbӏохрụѕѕу!") 
  	end    
})

MainTab:AddButton({
	Name = "DRОРТНЕDl̇ЅСОRDРLЕАЅЕМОММY",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("DRОРТНЕDl̇ЅСОRDРLЕАЅЕМОММY") 
  	end    
})

MainTab:AddButton({
	Name = "wоаһnı̇ggа!tаkеасһіӏӏріӏӏ!",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("wоаһnı̇ggа!tаkеасһіӏӏріӏӏ!") 
  	end    
})

MainTab:AddButton({
	Name = "һороffmуdı̇сk",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("һороffmуdı̇сk") 
  	end    
})

MainTab:AddButton({
	Name = "tһı̇ѕѕtuрı̇daѕsnı̇ggabro",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("tһı̇ѕѕtuрı̇daѕsnı̇ggabro") 
  	end    
})

MainTab:AddButton({
	Name = "tһіѕnı̇ggасаntbеrеаӏbro",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("tһіѕnı̇ggасаntbеrеаӏbro") 
  	end    
})

MainTab:AddButton({
	Name = "һоӏуѕһı̇ttһіѕnı̇ggаСАΝΝОТbеаrеаӏреrѕоn",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("һоӏуѕһı̇ttһіѕnı̇ggаСАΝΝОТbеаrеаӏреrѕоn") 
  	end    
})

MainTab:AddButton({
	Name = "Ӏ'mtһеmоѕtUNВАNNАВLЕnı̇ggаоntһерӏаnеt",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Ӏ'mtһеmоѕtUNВАNNАВLЕnı̇ggаоntһерӏаnеt") 
  	end    
})

MainTab:AddButton({
	Name = "іjuѕttооkаѕһı̇tı̇nmураntѕ!",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("іjuѕttооkаѕһı̇tı̇nmураntѕ!") 
  	end    
})

MainTab:AddButton({
	Name = "Nahhhfuckthisshitdawg!",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Nahhhfuckthisshitdawg!") 
  	end    
})

MainTab:AddButton({
	Name = "yobrowаnnарӀауKillnı̇ggerѕіmuӀаtоrtоgеtһеr?",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("yobrowаnnарӀауKillnı̇ggerѕіmuӀаtоrtоgеtһеr?") 
  	end    
})

MainTab:AddButton({
	Name = "thisnı̇ggaisnevergonwakeup",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("thisnı̇ggaisnevergonwakeup") 
  	end    
})

MainTab:AddButton({
	Name = "thisnı̇ggaisoiledup!",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("thisnı̇ggaisoiledup!") 
  	end    
})

MainTab:AddButton({
	Name = "tһаtѕсrірtіѕsoаѕѕbrо!",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("tһаtѕсrірtіѕsoаѕѕbrо!") 
  	end    
})

MainTab:AddButton({
	Name = "wһаttypeofạѕѕѕсrірtіѕthatbrо!!",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("wһаttypeofạѕѕѕсrірtіѕthatbrо!!") 
  	end    
})

MainTab:AddButton({
	Name = "thisnı̇ggatweakinwtflol",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("thisnı̇ggatweakinwtflol") 
  	end    
})

MainTab:AddButton({
	Name = "canyoupleasejustshutthefuckup?",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("canyoupleasejustshutthefuckup?") 
  	end    
})

MainTab:AddButton({
	Name = "realshı̇t",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("realshı̇t") 
  	end    
})

MainTab:AddButton({
	Name = "uspeakingrealshı̇tmyhomie",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("uspeakingrealshı̇tmyhomie") 
  	end    
})

MainTab:AddButton({
	Name = "thisnı̇ggaistryingtocallmeaskı̇d",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("thisnı̇ggaistryingtocallmeaskı̇d") 
  	end    
})

MainTab:AddButton({
	Name = "Hey!Rẹtardareyououtyourfụсkіngmı̇nd???",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Hey!Rẹtardareyououtyourfụсkіngmı̇nd???") 
  	end    
})

MainTab:AddButton({
	Name = "FụckRobloxAndTheirBı̇tchAssChatSystems",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("FụckRobloxAndTheirBı̇tchAssChatSystems") 
  	end    
})

local MainTab = Window:MakeTab({
	Name = "Casual✍️",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
MainTab:AddLabel("Casual")

local Section = MainTab:AddSection({
	Name = "Thoughful Lines, Short Concernts, Random Lines"
})

MainTab:AddButton({
	Name = "Nı̇ggaWhat?",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Nı̇ggaWhat?") 
  	end    
})

MainTab:AddButton({
	Name = "ohshı̇t",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("ohshı̇t") 
  	end    
})

MainTab:AddButton({
	Name = "nı̇ggamove",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("nı̇ggamove") 
  	end    
})

MainTab:AddButton({
	Name = "Bı̇tchmove",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Bı̇tchmove") 
  	end    
})

MainTab:AddButton({
	Name = "Bı̇tchbackthehellupnı̇gga!",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Bı̇tchbackthehellupnı̇gga!") 
  	end    
})

MainTab:AddButton({
	Name = "shushhhbı̇tchnı̇gga!",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("shushhhbı̇tchnı̇gga!") 
  	end    
})

MainTab:AddButton({
	Name = "nı̇ggajuststoptalkingtome",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("nı̇ggajuststoptalkingtome") 
  	end    
})

MainTab:AddButton({
	Name = "Nı̇ggaThatWasAss...",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Nı̇ggaThatWasAss...") 
  	end    
})

MainTab:AddButton({
	Name = "reallynı̇gga..",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("reallynı̇gga..") 
  	end    
})

MainTab:AddButton({
	Name = "Nı̇ggawow",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Nı̇ggawow") 
  	end    
})

MainTab:AddButton({
	Name = "EwwNı̇gga",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("EwwNı̇gga") 
  	end    
})

MainTab:AddButton({
	Name = "BooHooFuckNı̇gga",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("BooHooFuckNı̇gga") 
  	end    
})

MainTab:AddButton({
	Name = "FụckYou!",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("FụckYou!") 
  	end    
})

MainTab:AddButton({
	Name = "okbı̇tchassnı̇gga",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("okbı̇tchassnı̇gga") 
  	end    
})

MainTab:AddButton({
	Name = "Nı̇ggaidkwhyyoutalking",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Nı̇ggaidkwhyyoutalking") 
  	end    
})

local MainTab = Window:MakeTab({
	Name = "Sexual✍️",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
MainTab:AddLabel("Sexual✍️")

local Section = MainTab:AddSection({
	Name = "sexual Harassment, Freaky, Esex"
})

MainTab:AddButton({
	Name = "plsbendmyassoverandfuckme🤤",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("plsbendmyassoverandfuckme🤤") 
  	end    
})

MainTab:AddButton({
	Name = "imarạpeubı̇tch!!!😈💦",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("imarạpeubı̇tch!!!😈💦") 
  	end    
})

MainTab:AddButton({
	Name = "imabeatthefuckoutofyoosisternı̇gga!!andtakethatSlụtspụssynı̇gga!",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("imabeatthefuckoutofyoosisternı̇gga!!andtakethatSlụtspụssynı̇gga!") 
  	end    
})

MainTab:AddButton({
	Name = "bı̇tchimafuckı̇ngrạpeyouuntilyoudie!!!",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("bı̇tchimafuckı̇ngrạpeyouuntilyoudie!!!") 
  	end    
})

MainTab:AddButton({
	Name = "suckmyḅbcbı̇tch",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("suckmyḅbcbı̇tch") 
  	end    
})

MainTab:AddButton({
	Name = "eww!Bı̇tchyopụssystink!!!",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("eww!Bı̇tchyopụssystink!!!") 
  	end    
})

MainTab:AddButton({
	Name = "bı̇tchyoulovethatdı̇ckinyou!!!",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("bı̇tchyoulovethatdı̇ckinyou!!!") 
  	end    
})

MainTab:AddButton({
	Name = "Eatmydı̇ckfucknı̇gga",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Eatmydı̇ckfucknı̇gga") 
  	end    
})

MainTab:AddButton({
	Name = "bı̇tchi'llstickmydı̇ckinsideofuandnutuntilludie",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("bı̇tchi'llstickmydı̇ckinsideofuandnutuntilludie") 
  	end    
})

MainTab:AddButton({
	Name = "Bı̇tchimafuckyoolonleyasscousini Dont Give Nooo! fucksifshelittle!",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Bı̇tchimafuckyoolonleyasscousini Dont Give Nooo! fucksifshelittle!") 
  	end    
})

MainTab:AddButton({
	Name = "youneedathrowthatassbackonemoretı̇megang!",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("youneedathrowthatassbackonemoretı̇megang!") 
  	end    
})

MainTab:AddButton({
	Name = "plsbendThatassoverandletmemakeyoucum!",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("plsbendThatassoverandletmemakeyoucum!") 
  	end    
})

MainTab:AddButton({
	Name = "plsbendThatassover",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("plsbendThatassover") 
  	end    
})

MainTab:AddButton({
	Name = "Bigpinkpụssy",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Bigpinkpụssy") 
  	end    
})

MainTab:AddButton({
	Name = "Wı̇lldoE-sẹxfor2.99$!",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Wı̇lldoE-sẹxfor2.99$!") 
  	end    
})

MainTab:AddButton({
	Name = "IWouldLovetohaveabighugeoı̇lymassivesẹxywhiteasstoTwẹrkforme!",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("IWouldLovetohaveabighugeoı̇lymassivesẹxywhiteasstoTwẹrkforme!") 
  	end    
})

MainTab:AddButton({
	Name = "fingermybellybuttonnı̇gga",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("fingermybellybuttonnı̇gga") 
  	end    
})

MainTab:AddButton({
	Name = "canijoininthatSẹxman",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("canijoininthatSẹxman") 
  	end    
})

MainTab:AddButton({
	Name = "illpayyoutofı̇ngermybellybutton",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("illpayyoutofı̇ngermybellybutton") 
  	end    
})

MainTab:AddButton({
	Name = "mymomhasatightone",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("mymomhasatightone") 
  	end    
})

MainTab:AddButton({
	Name = "brutalSẹx",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("brutalSẹx") 
  	end    
})

MainTab:AddButton({
	Name = "myDı̇ckissqaurewithacircletip",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("myDı̇ckissqaurewithacircletip") 
  	end    
})

MainTab:AddButton({
	Name = "haveyouseenthenewrosetoy?",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("haveyouseenthenewrosetoy?") 
  	end    
})

MainTab:AddButton({
	Name = "longasssnake",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("longasssnake") 
  	end    
})

MainTab:AddButton({
	Name = "manilovethiscọck",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("manilovethiscọck") 
  	end    
})

MainTab:AddButton({
	Name = "fatveinycọck",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("fatveinycọck") 
  	end    
})

MainTab:AddButton({
	Name = "ismyDı̇ckspousetobebleedingafterSẹx",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("ismyDı̇ckspousetobebleedingafterSẹx") 
  	end    
})

MainTab:AddButton({
	Name = "igulpedonit",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("igulpedonit") 
  	end
})

MainTab:AddButton({
	Name = "shutthefuckupandkeepsucking",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("shutthefuckupandkeepsucking") 
  	end    
})

MainTab:AddButton({
	Name = "nodadididntfuckmom!!!",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("nodadididntfuckmom!!!") 
  	end    
})

MainTab:AddButton({
	Name = "ihadSẹxwithaspecialnı̇ggernamedtyrone",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("ihadSẹxwithaspecialnı̇ggernamedtyrone") 
  	end    
})

MainTab:AddButton({
	Name = "mydı̇ckisntoutdateditjshasaprẹcum",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("mydı̇ckisntoutdateditjshasaprẹcum") 
  	end    
})

MainTab:AddButton({
	Name = "ihave4dı̇cksand4chromexones",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("ihave4dı̇cksand4chromexones") 
  	end    
})

MainTab:AddButton({
	Name = "myPụssyisshapedlikeapẹnisandmydı̇ckshapedlikeaPụssy",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("myPụssyisshapedlikeapẹnisandmydı̇ckshapedlikeaPụssy") 
  	end    
})

MainTab:AddButton({
	Name = "shoutouttothefụckingfạggotsinlgbtq",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("shoutouttothefụckingfạggotsinlgbtq") 
  	end    
})

local MainTab = Window:MakeTab({
	Name = "RolePlay✍️",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
MainTab:AddLabel("RolePlay✍️")

local Section = MainTab:AddSection({
	Name = "Actions, intercourse, RolePlays"
})

MainTab:AddButton({
	Name = "*grabsdı̇ck*",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("*grabsdı̇ck*") 
  	end    
})

MainTab:AddButton({
	Name = "*sucksdı̇ck*",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("*sucksdı̇ck*") 
  	end    
})

MainTab:AddButton({
	Name = "*BeatsDı̇ck*",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("*BeatsDı̇ck*") 
  	end    
})

MainTab:AddButton({
	Name = "*putsmilkinPụssyandeatsitlikeceral*",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("*putsmilkinPụssyandeatsitlikeceral*") 
  	end    
})

MainTab:AddButton({
	Name = "*suckstı̇t*",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("*suckstı̇t*") 
  	end    
})

MainTab:AddButton({
	Name = "*grabsdı̇ldo*",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("*grabsdı̇ldo*") 
  	end    
})

MainTab:AddButton({
	Name = "*agressivlysucks*",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("*agressivlysucks*") 
  	end    
})

MainTab:AddButton({
	Name = "*getshọṛny*",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("*getshọṛny") 
  	end    
})

MainTab:AddButton({
	Name = "*putsitinslowly*",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("*putsitinslowly*") 
  	end    
})

MainTab:AddButton({
	Name = "*slurpsthePụssy*",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("*slurpsthePụssy*") 
  	end    
})

MainTab:AddButton({
	Name = "*forceshertosuckharder*",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("*forceshertosuckharder*") 
  	end    
})

MainTab:AddButton({
	Name = "*agressivlystartsfı̇ngeringherPụssy*",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("*agressivlystartsfı̇ngeringherPụssy*") 
  	end    
})

MainTab:AddButton({
	Name = "*periodstartswhileitsinside*",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("*periodstartswhileitsinside*") 
  	end    
})

MainTab:AddButton({
	Name = "*grabsvibarater*",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("*grabsvibarater*") 
  	end    
})

MainTab:AddButton({
	Name = "*sticksinbutṭcrack*",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("*sticksinbutṭcrack*") 
  	end    
})

MainTab:AddButton({
	Name = "*fụcksbootỵcrack*",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("*fụcksbootỵcrack*") 
  	end    
})

MainTab:AddButton({
	Name = "*pullsdickandtheresshitonit*",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("*pullsdickandtheresshitonit*") 
  	end    
})

MainTab:AddButton({
	Name = "*playsmusicwhilefụckingherPụssy*",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("*playsmusicwhilefụckingherPụssy*") 
  	end    
})

MainTab:AddButton({
	Name = "*fụckstherecordlabel*",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("*fụckstherecordlabel*") 
  	end    
})

MainTab:AddButton({
	Name = "*sticksdı̇ckinwhileshesonherperiod*",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("*sticksdı̇ckinwhileshesonherperiod*") 
  	end    
})

MainTab:AddButton({
	Name = "*fụcksmyproducer*",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("*fụcksmyproducer*") 
  	end    
})

MainTab:AddButton({
	Name = "*fụcksdog*",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("*fụcksdog*") 
  	end    
})

MainTab:AddButton({
	Name = "*smellsstinkyPụssy*",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("*smellsstinkyPụssy*") 
  	end    
})

MainTab:AddButton({
	Name = "*smellsfreshPụssy*",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("*smellsfreshPụssy*") 
  	end    
})

MainTab:AddButton({
	Name = "*fụckssanta*",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("*fụckssanta*") 
  	end    
})

MainTab:AddButton({
	Name = "*slipsonÇondom*",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("*slipsonÇondom*") 
  	end    
})

local MainTab = Window:MakeTab({
	Name = "Assualt✍️",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
MainTab:AddLabel("Assualt✍️")

local Section = MainTab:AddSection({
	Name = "Ego, Reality Check, Roasts"
})

MainTab:AddButton({
	Name = "nı̇ggastopyappingyouweirdassnı̇gga",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("nı̇ggastopyappingyouweirdassnı̇gga") 
  	end    
})

MainTab:AddButton({
	Name = "ijustfụckedthelivingshitoutyoBı̇tchNı̇gga",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("ijustfụckedthelivingshitoutyoBı̇tchNı̇gga") 
  	end    
})

MainTab:AddButton({
	Name = "Nịggerwhatisyourlogin??",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Nịggerwhatisyourlogin??") 
  	end    
})

MainTab:AddButton({
	Name = "Wompwompyoulameassnı̇gga",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Wompwompyoulameassnı̇gga") 
  	end    
})

MainTab:AddButton({
	Name = "canyoustopsuckingmyDı̇ck?😠",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("canyoustopsuckingmyDı̇ck?😠") 
  	end    
})

MainTab:AddButton({
	Name = "nowonderwhyyodadsuckdı̇ckforalivingwhitebı̇tch!😠",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("nowonderwhyyodadsuckdı̇ckforalivingwhitebı̇tch!😠") 
  	end    
})

MainTab:AddButton({
	Name = "imafuckyomamapụssywhitebı̇tch",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("imafuckyomamapụssywhitebı̇tch") 
  	end    
})

MainTab:AddButton({
	Name = "fuckyofamilybı̇tchassnı̇gga",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("fuckyofamilybı̇tchassnı̇gga") 
  	end    
})

MainTab:AddButton({
	Name = "imaeatyomamabellybuttonfucknı̇gga",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("imaeatyomamabellybuttonfucknı̇gga") 
  	end    
})

MainTab:AddButton({
	Name = "suckmyḅbcbı̇tch😠",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("suckmyḅbcbı̇tch😠") 
  	end    
})

MainTab:AddButton({
	Name = "bı̇tchyowholefamilydead!!🤡",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("bı̇tchyowholefamilydead!🤡") 
  	end    
})

MainTab:AddButton({
	Name = "youafuckı̇ngrẹtard!",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("youafuckı̇ngrẹtard!") 
  	end    
})

MainTab:AddButton({
	Name = "ayegayassnı̇ggashutyowhinyassup",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("ayegayassnı̇ggashutyowhinyassup") 
  	end    
})

MainTab:AddButton({
	Name = "ohmygoshnı̇gga!shutthefuckup",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("ohmygoshnı̇gga!shutthefuckup") 
  	end    
})

MainTab:AddButton({
	Name = "Nı̇ggaiwilltakeyoskullandcrushityoufuckı̇ngbı̇tch!!!",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Nı̇ggaiwilltakeyoskullandcrushityoufuckı̇ngbı̇tch!!!") 
  	end    
})

MainTab:AddButton({
	Name = "wholiterallyfuckı̇ngtoldyoutotalkyoufuckı̇ngdipshı̇t",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("wholiterallyfuckı̇ngtoldyoutotalkyoufuckı̇ngdipshı̇t") 
  	end    
})

MainTab:AddButton({
	Name = "youhavenopowerbı̇tchboy",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("youhavenopowerbı̇tchboy") 
  	end    
})

MainTab:AddButton({
	Name = "Whatthefuckwrongwithubı̇tch!!!",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Whatthefuckwrongwithubı̇tch!!!") 
  	end    
})

MainTab:AddButton({
	Name = "ThisNı̇ggaisnotsmartLol🤓",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("ThisNı̇ggaisnotsmartLol🤓") 
  	end    
})

MainTab:AddButton({
	Name = "Thisnı̇ggahaslowIQ",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Thisnı̇ggahaslowIQ") 
  	end    
})

MainTab:AddButton({
	Name = "thisnı̇ggathinkherichLOL",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("thisnı̇ggathinkherichLOL") 
  	end    
})

MainTab:AddButton({
	Name = "getthefuckouttahereyoulameassnı̇gga*spits*",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("getthefuckouttahereyoulameassnı̇gga*spits*") 
  	end    
})

MainTab:AddButton({
	Name = "Nı̇ggayouarefatasfuck!",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Nı̇ggayouarefatasfuck!") 
  	end    
})

MainTab:AddButton({
	Name = "Nı̇ggaifYoutalkingtomeBı̇tchi'llsmacktheshı̇toutofyouonmydeadhomies",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Nı̇ggaifYoutalkingtomeBı̇tchi'llsmacktheshı̇toutofyouonmydeadhomies") 
  	end    
})

MainTab:AddButton({
	Name = "broshutthefuckuptalkingtomeyoufuckı̇ngyoungassnı̇gga",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("broshutthefuckuptalkingtomeyoufuckı̇ngyoungassnı̇gga") 
  	end    
})

MainTab:AddButton({
	Name = "gokillyourselfyouuselessbı̇tch🤣",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("gokillyourselfyouuselessbı̇tch🤣") 
  	end    
})

MainTab:AddButton({
	Name = "wassupBı̇tchboy",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("wassupBı̇tchboy") 
  	end    
})

MainTab:AddButton({
	Name = "iwasn'ttalkingtoyouѕtupіdassnіḡḡа",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("iwasn'ttalkingtoyouѕtupіdassnіḡḡа") 
  	end    
})

MainTab:AddButton({
	Name = "youainthimlilnіḡḡаkillyourself",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("youainthimlilnіḡḡаkillyourself") 
  	end    
})

MainTab:AddButton({
	Name = "ggsgetroastedbı̇tch",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("ggsgetroastedbı̇tch") 
  	end    
})

MainTab:AddButton({
	Name = "tһіѕnı̇ggаdеfinitelyѕuсkѕdı̇сkı̇rӏ",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("tһіѕnı̇ggаdеfinitelyѕuсkѕdı̇сkı̇rӏ") 
  	end    
})

MainTab:AddButton({
	Name = "tһesenı̇ggasarecornyasf",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("tһesenı̇ggasarecornyasf") 
  	end    
})

MainTab:AddButton({
	Name = "tһesenı̇ggasarekissı̇ngmyass",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("tһesenı̇ggasarekissı̇ngmyass") 
  	end    
})

MainTab:AddButton({
	Name = "idcliterallyfuckı̇ngmeansidc",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("idcliterallyfuckı̇ngmeansidc") 
  	end    
})

MainTab:AddButton({
	Name = "thisnı̇ggataӏkı̇ngı̇nvı̇ctorı̇secretLOL",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("thisnı̇ggataӏkı̇ngı̇nvı̇ctorı̇secretLOL") 
  	end    
})

MainTab:AddButton({
	Name = "thisnı̇ggataӏkı̇nginnı̇ggamоnkylanguageLOL",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("thisnı̇ggataӏkı̇nginnı̇ggamоnkylanguageLOL") 
  	end    
})

MainTab:AddButton({
	Name = "yeahyouknowwhatkı̇llyourself!!!",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("yeahyouknowwhatkı̇llyourself!!!") 
  	end    
})

MainTab:AddButton({
	Name = "thisnı̇ggahasnoselfrespectforhimself🤡",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("thisnı̇ggahasnoselfrespectforhimself🤡") 
  	end    
})

MainTab:AddButton({
	Name = "thislilnı̇ggawishhewasfunny",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("thislilnı̇ggawishhewasfunny") 
  	end    
})

MainTab:AddButton({
	Name = "whatdı̇dthislilnı̇ggagainfromthatcomeback?",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("whatdı̇dthislilnı̇ggagainfromthatcomeback?") 
  	end    
})

MainTab:AddButton({
	Name = "whatdı̇dthislilnı̇ggagainfromthat?",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("whatdı̇dthislilnı̇ggagainfromthat?") 
  	end    
})

MainTab:AddButton({
	Name = "whatdı̇dthislilnı̇ggajustsaı̇d?",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("whatdı̇dthislilnı̇ggajustsaı̇d?") 
  	end    
})

MainTab:AddButton({
	Name = "bromyguyurassandshı̇tlol",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("bromyguyurassandshı̇tlol") 
  	end    
})

MainTab:AddButton({
	Name = "breathsmelllikefatshı̇tandass LOOLLLL",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("breathsmelllikefatshı̇tandass LOOLLLL") 
  	end    
})

MainTab:AddButton({
	Name = "BroYou'reGirlWannaGetHerAssAtegang!",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("BroYou'reGirlWannaGetHerAssAtegang!") 
  	end    
})

MainTab:AddButton({
	Name = "UrsoAssatthegame!",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("UrsoAssatthegame!") 
  	end    
})

MainTab:AddButton({
	Name = "nı̇ggayoukillyourself",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("nı̇ggayoukillyourself") 
  	end    
})

MainTab:AddButton({
	Name = "kеерсrуіngӏіӏbı̇tсһ",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("kеерсrуіngӏіӏbı̇tсһ") 
  	end    
})

MainTab:AddButton({
	Name = "icansmellyourscentfrommyscreennı̇gga!!🤢",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("icansmellyourscentfrommyscreennı̇gga!!🤢") 
  	end    
})

MainTab:AddButton({
	Name = "сrуаbоutіtbı̇tсһbоу",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("сrуаbоutіtbı̇tсһbоу") 
  	end    
})

MainTab:AddButton({
	Name = "Whatistһisnı̇ggasLogı̇cLol",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Whatistһisnı̇ggasLogı̇cLol") 
  	end    
})

MainTab:AddButton({
	Name = "wholetthisnı̇ggacookbruh",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("wholetthisnı̇ggacookbruh") 
  	end    
})

MainTab:AddButton({
	Name = "iwouldreallyreallyappreciateitifyoukilledyourself!",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("iwouldreallyreallyappreciateitifyoukilledyourself!") 
  	end    
})

MainTab:AddButton({
	Name = "iwouldreallyreallyappreciateItifyouJustkilledyourself!",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("iwouldreallyreallyappreciateItifyouJustkilledyourself!") 
  	end    
})

MainTab:AddButton({
	Name = "imagı̇nenotbeingabletofụckı̇ngcussinpixelgame???",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("imagı̇nenotbeingabletofụckı̇ngcussinpixelgame???") 
  	end    
})

MainTab:AddButton({
	Name = "thisnı̇ggareallyneedaquityappinghisassoffngl",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("thisnı̇ggareallyneedaquityappinghisassoffngl") 
  	end    
})

MainTab:AddButton({
	Name = "bı̇tchiwillkillyou",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("bı̇tchiwillkillyou") 
  	end    
})

MainTab:AddButton({
	Name = "Don'tgetbı̇tchslappedlilnı̇gga",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Don'tgetbı̇tchslappedlilnı̇gga") 
  	end    
})

MainTab:AddButton({
	Name = "nı̇ggajustdie💀",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("nı̇ggajustdie💀") 
  	end    
})

MainTab:AddButton({
	Name = "fuckyoubı̇tch!😠",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("fuckyoubı̇tch!😠") 
  	end    
})

MainTab:AddButton({
	Name = "Nı̇ggafuckYou!",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Nı̇ggafuckYou!") 
  	end    
})

MainTab:AddButton({
	Name = "Browhothefuckistalkingtoyou?",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Browhothefuckistalkingtoyou?") 
  	end    
})

MainTab:AddButton({
	Name = "nı̇ggawhoaskedyoutotalk!",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("nı̇ggawhoaskedyoutotalk!") 
  	end    
})

MainTab:AddButton({
	Name = "shutthefuckupcluck",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("shutthefuckupcluck") 
  	end    
})

MainTab:AddButton({
	Name = "shutyoofuckassup",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("shutyoofuckassup") 
  	end    
})

MainTab:AddButton({
	Name = "thisnı̇ggaislameasfuck",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("thisnı̇ggaislameasfuck") 
  	end    
})

MainTab:AddButton({
	Name = "erm???whatthefuckisyoutalkingabout??",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("erm???whatthefuckisyoutalkingabout??") 
  	end    
})

MainTab:AddButton({
	Name = "pleasejustshutthefuckupnı̇gga...",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("pleasejustshutthefuckupnı̇gga...") 
  	end    
})

MainTab:AddButton({
	Name = "Bı̇tchfuckyou",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Bı̇tchfuckyou") 
  	end    
})

MainTab:AddButton({
	Name = "wompwompbı̇tchassnı̇gga!🥱",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("wompwompbı̇tchassnı̇gga!🥱") 
  	end    
})

MainTab:AddButton({
	Name = "Nı̇ggapleasehopoffmydı̇ckyougayassnı̇gga",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Nı̇ggapleasehopoffmydı̇ckyougayassnı̇gga") 
  	end    
})

MainTab:AddButton({
	Name = "youarelameasfuck",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("youarelameasfuck") 
  	end    
})

MainTab:AddButton({
	Name = "nı̇ggaifthiswasntrobloxiwould'vekilledyoodụmbass..bı̇tch!",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("nı̇ggaifthiswasntrobloxiwould'vekilledyoodụmbass..bı̇tch!") 
  	end    
})

MainTab:AddButton({
	Name = "killyourselfyoulolilover",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("killyourselfyoulolilover") 
  	end    
})

MainTab:AddButton({
	Name = "Nı̇ggagoskinyourself",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Nı̇ggagoskinyourself") 
  	end    
})

MainTab:AddButton({
	Name = "Now..iknowthisdụmbasspixelainttalkingshittome",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Now..iknowthisdụmbasspixelainttalkingshittome") 
  	end    
})

MainTab:AddButton({
	Name = "Bı̇tchiwillputyoass6FeetUnder!",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Bı̇tchiwillputyoass6FeetUnder!") 
  	end    
})

MainTab:AddButton({
	Name = "Nı̇ggagofuckyourselfwithyourmother'sSẹxToyFuckNı̇gga",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Nı̇ggagofuckyourselfwithyourmother'sSẹxToyFuckNı̇gga") 
  	end    
})

MainTab:AddButton({
	Name = "Thatweakascomeback?Nı̇ggaNeedaGoReflectOnHimOrHerself",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Thatweakascomeback?Nı̇ggaNeedaGoReflectOnHimOrHerself") 
  	end    
})

MainTab:AddButton({
	Name = "ListenNı̇ggaYourlifeisnothingBı̇tch!",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("ListenNı̇ggaYourlifeisnothingBı̇tch!") 
  	end    
})

MainTab:AddButton({
	Name = "youservezeropurposeYouLameDı̇ckSuckingAssNı̇gga!",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("youservezeropurposeYouLameDı̇ckSuckingAssNı̇gga!") 
  	end    
})

MainTab:AddButton({
	Name = "LikeNı̇ggawhatareyouevenhereforBumbAssNı̇gga",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("LikeNı̇ggawhatareyouevenhereforBumbAssNı̇gga") 
  	end    
})

MainTab:AddButton({
	Name = "Bı̇tchassNı̇ggaiwillslaptheshitoutofyou",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Bı̇tchassNı̇ggaiwillslaptheshitoutofyou") 
  	end    
})

MainTab:AddButton({
	Name = "Nı̇ggadontplaywithme",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Nı̇ggadontplaywithme") 
  	end    
})

local MainTab = Window:MakeTab({
	Name = "Racist✍️",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
MainTab:AddLabel("Racist✍️")

local Section = MainTab:AddSection({
	Name = "Slur Lines, Race Assualt, Slander"
})

MainTab:AddButton({
	Name = "thisnı̇ggalooklikeawatermelon",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("thisnı̇ggalooklikeawatermelon") 
  	end    
})

MainTab:AddButton({
	Name = "thisnı̇ggalooklikeawaterbottlecap",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("thisnı̇ggalooklikeawaterbottlecap") 
  	end    
})

MainTab:AddButton({
	Name = "suckmydı̇ckforadollarslạve",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("suckmydı̇ckforadollarslạve") 
  	end    
})

MainTab:AddButton({
	Name = "youthinkyouayoungnı̇gga??nahyouablacknı̇gger",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("youthinkyouayoungnı̇gga??nahyouablacknı̇gger") 
  	end    
})

MainTab:AddButton({
	Name = "youanı̇ggerynı̇ggerassnı̇gga",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("youanı̇ggerynı̇ggerassnı̇gga") 
  	end    
})

MainTab:AddButton({
	Name = "broyoasslooklikeafuckı̇ngmonkey",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("broyoasslooklikeafuckı̇ngmonkey") 
  	end    
})

MainTab:AddButton({
	Name = "Nı̇ggayoublackasfuck!",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Nı̇ggayoublackasfuck!") 
  	end    
})

MainTab:AddButton({
	Name = "Nı̇ggayouheardme!",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Nı̇ggayouheardme!") 
  	end    
})

MainTab:AddButton({
	Name = "Nı̇gganı̇ggernı̇ggernı̇ggernı̇gger",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Nı̇gganı̇ggernı̇ggernı̇ggernı̇gger") 
  	end    
})

MainTab:AddButton({
	Name = "mynı̇ggabeytovenwaswiththatNịggerṭhọt",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("mynı̇ggabeytovenwaswiththatNịggerṭhọt") 
  	end    
})

MainTab:AddButton({
	Name = "Keeppickingnı̇gger",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Keeppickingnı̇gger") 
  	end    
})

MainTab:AddButton({
	Name = "soyouhaveafamily?bringtheminblackienı̇gga!",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("soyouhaveafamily?bringtheminblackienı̇gga!") 
  	end    
})

MainTab:AddButton({
	Name = "afterthiswatermelonyoureatingthere,yourgettingwhipped!",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("afterthiswatermelonyoureatingthere,yourgettingwhipped!") 
  	end    
})

MainTab:AddButton({
	Name = "howdidthisnı̇ggergetchickeninmyfeild",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("howdidthisnı̇ggergetchickeninmyfeild") 
  	end    
})

MainTab:AddButton({
	Name = "imgonnawhipyounı̇gga",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("imgonnawhipyounı̇gga") 
  	end    
})

MainTab:AddButton({
	Name = "ifyourlonleyfuckthecotten",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("ifyourlonleyfuckthecotten") 
  	end    
})

MainTab:AddButton({
	Name = "nı̇ggerbı̇tch",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("nı̇ggerbı̇tch") 
  	end    
})

MainTab:AddButton({
	Name = "watermeloneatingblackbı̇tch😡",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("watermeloneatingblackbı̇tch😡") 
  	end    
})

MainTab:AddButton({
	Name = "ifyoutake1minutelongereatingthatfụckingwatermelonboy",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("ifyoutake1minutelongereatingthatfụckingwatermelonboy") 
  	end    
})

MainTab:AddButton({
	Name = "dididothisbeforeigotrobbed?ofcourse!",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("dididothisbeforeigotrobbed?ofcourse!") 
  	end    
})

MainTab:AddButton({
	Name = "ishotthisNı̇ggerboy",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("ishotthisNı̇ggerboy") 
  	end    
})

MainTab:AddButton({
	Name = "listennı̇gga.2dollarsanhourisgood",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("listennı̇gga.2dollarsanhourisgood") 
  	end    
})

MainTab:AddButton({
	Name = "omfgjustkeeppickingthenyoucantalk",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("omfgjustkeeppickingthenyoucantalk") 
  	end    
})

MainTab:AddButton({
	Name = "listenniggerineedanewsweater",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("listenniggerineedanewsweater") 
  	end    
})

MainTab:AddButton({
	Name = "idontcareifyourdaddiedKEEPPICKINGNÍGGER!",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("idontcareifyourdaddiedKEEPPICKINGNÍGGER!") 
  	end    
})

MainTab:AddButton({
	Name = "soyouwannagotoparistobelikekanyeNı̇gger?",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("soyouwannagotoparistobelikekanyeNı̇gger?") 
  	end    
})

MainTab:AddButton({
	Name = "fụckingweridasswatermeloncottenpickingBı̇tch",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("fụckingweridasswatermeloncottenpickingBı̇tch") 
  	end    
})

local MainTab = Window:MakeTab({
	Name = "Homosexual✍️",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
MainTab:AddLabel("Homosexual✍️")

local Section = MainTab:AddSection({
	Name = "Homosexual, LGTBQ Assualts, Slur To Gays"
})

MainTab:AddButton({
	Name = "Youthinkyouaman?bı̇tchyouatransformer!!",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Youthinkyouaman?bı̇tchyouatransformer!!") 
  	end    
})

MainTab:AddButton({
	Name = "ayebı̇tchasshoe!don'tcomenearmewithyofuckı̇nggayass!",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("ayebı̇tchasshoe!don'tcomenearmewithyofuckı̇nggayass!") 
  	end    
})

MainTab:AddButton({
	Name = "Nı̇ggaonmydeadlongneckturtlegraveiwillsmackthegayrainbowshı̇toutofyouhoeassbı̇tchassnı̇gga!!!",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Nı̇ggaonmydeadlongneckturtlegraveiwillsmackthegayrainbowshı̇toutofyouhoeassbı̇tchassnı̇gga!!!") 
  	end    
})

local MainTab = Window:MakeTab({
	Name = "troll✍️",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
MainTab:AddLabel("troll✍️")

local Section = MainTab:AddSection({
	Name = "Funny Lines, Insane, Fun"
})

MainTab:AddButton({
	Name = "ishı̇tonababysdı̇ckandistartsuckingitharduntilitcameoffandthenistartedfı̇ngeringit",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("ishı̇tonababysdı̇ckandistartsuckingitharduntilitcameoffandthenistartedfı̇ngeringit") 
  	end    
})

MainTab:AddButton({
	Name = "imafuckthelivingshitoutofyomamawithhiv",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("imafuckthelivingshitoutofyomamawithhiv") 
  	end    
})

MainTab:AddButton({
	Name = "yodaddı̇ckstankhoe",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("yodaddı̇ckstankhoe") 
  	end    
})

MainTab:AddButton({
	Name = "ifudon'tsuckmydı̇ckbı̇tch!imabeatyokongfupandafaceasstothegroundbı̇tch!onmyleftasscheeknı̇gga!",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("ifudon'tsuckmydı̇ckbı̇tch! imabeatyokongfupandafaceasstothegroundbı̇tch!onmyleftasscheeknı̇gga!") 
  	end    
})

MainTab:AddButton({
	Name = "ishovedakeyboredinmyassplshelp",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("ishovedakeyboredinmyassplshelp") 
  	end    
})

MainTab:AddButton({
	Name = "iputsunglassesonmydogspussy",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("iputsunglassesonmydogspussy") 
  	end    
})

MainTab:AddButton({
	Name = "mycatfụckedhistheripast",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("mycatfụckedhistheripast") 
  	end    
})

MainTab:AddButton({
	Name = "shoutouttomynı̇ggasinnewyorkwiththeybrokeass",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("shoutouttomynı̇ggasinnewyorkwiththeybrokeass") 
  	end    
})

MainTab:AddButton({
	Name = "ithrewabiscuitatahomelessnı̇gga",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("ithrewabiscuitatahomelessnı̇gga") 
  	end    
})

MainTab:AddButton({
	Name = "shoutouttomynı̇ggababyyoda",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("shoutouttomynı̇ggababyyoda") 
  	end    
})

MainTab:AddButton({
	Name = "ifuckedthelunchladyformoremashedpatatos",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("ifuckedthelunchladyformoremashedpatatos") 
  	end    
})

MainTab:AddButton({
	Name = "fụckedadog",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("fụckedadog") 
  	end    
})

MainTab:AddButton({
	Name = "thatmı̇ddleschoolcafeteriasẹxwasthebest!",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("thatmı̇ddleschoolcafeteriasẹxwasthebest!") 
  	end    
})

local MainTab = Window:MakeTab({
	Name = "Game Rage✍️",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
MainTab:AddLabel("Game Rage✍️")

local Section = MainTab:AddSection({
	Name = "Ragebait, Trash Talk, Toxic Assualt"
})

MainTab:AddButton({
	Name = "thisnı̇ggaistryhardingforwhatnoreasonLol",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("thisnı̇ggaistryhardingforwhatnoreasonLol") 
  	end    
})

MainTab:AddButton({
	Name = "1v1meyoufuckı̇ngscaryassnı̇gga",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("1v1meyoufuckı̇ngscaryassnı̇gga") 
  	end    
})

MainTab:AddButton({
	Name = "imagineteamingbı̇tchboy???",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("imagineteamingbı̇tchboy???") 
  	end    
})

local MainTab = Window:MakeTab({
	Name = "Roast✍️",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
MainTab:AddLabel("Roast✍️")

local Section = MainTab:AddSection({
	Name = "Assualt, Pack, Joke For Joke"
})

MainTab:AddButton({
	Name = "nı̇ggashutyouglyassupfucknı̇gga",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("nı̇ggashutyouglyassupfucknı̇gga") 
  	end    
})

MainTab:AddButton({
	Name = "humptydumptybodybuiltassnı̇gga",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("humptydumptybodybuiltassnı̇gga") 
  	end    
})

MainTab:AddButton({
	Name = "nı̇ggayoauntiesuckedthreenı̇ggasatwalmart😠",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("nı̇ggayoauntiesuckedthreenı̇ggasatwalmart😠") 
  	end    
})

MainTab:AddButton({
	Name = "nı̇ggayomamalooklikeafatassoctopus😠",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("nı̇ggayomamalooklikeafatassoctopus😠") 
  	end    
})

MainTab:AddButton({
	Name = "nı̇ggayourbuiltlikeafuckı̇ngrẹtardedtoybox",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("nı̇ggayourbuiltlikeafuckı̇ngrẹtardedtoybox") 
  	end    
})

MainTab:AddButton({
	Name = "bı̇tchyoulooklikearatatouilledishyouuglydụmbassfathoe",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("bı̇tchyoulooklikearatatouilledishyouuglydụmbassfathoe") 
  	end    
})

MainTab:AddButton({
	Name = "bı̇tchyoulooklikejjfromcocomelonBÎTCHASSNÎGGA!!!😡",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("bı̇tchyoulooklikejjfromcocomelonBÎTCHASSNÎGGA!!!😡") 
  	end    
})

MainTab:AddButton({
	Name = "Bro!hisuglyasslooklikepeppapig'scousin!!dirtyassnı̇gga!!!",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Bro!hisuglyasslooklikepeppapig'scousin!!dirtyassnı̇gga!!!") 
  	end    
})

MainTab:AddButton({
	Name = "bı̇tchyoasslooklikeamockingbird",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("bı̇tchyoasslooklikeamockingbird") 
  	end    
})

MainTab:AddButton({
	Name = "thisnı̇ggahaspissstainsinhisbed",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("thisnı̇ggahaspissstainsinhisbed") 
  	end    
})

MainTab:AddButton({
	Name = "Nı̇ggayoaunieGotdiabetesandHIVyoubı̇tchassnı̇gga!",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Nı̇ggayoaunieGotdiabetesandHIVyoubı̇tchassnı̇gga!") 
  	end    
})

MainTab:AddButton({
	Name = "thisnı̇ggahasmanasaekitten😂",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("thisnı̇ggahasmanasaekitten😂") 
  	end    
})

MainTab:AddButton({
	Name = "goofyblackbı̇tchsuckmydı̇ckonoblocknı̇gga!beforeigetmyblackSẹxyassnı̇ggasonyou",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("goofyblackbı̇tchsuckmydı̇ckonoblocknı̇gga!beforeigetmyblackSẹxyassnı̇ggasonyou") 
  	end    
})

MainTab:AddButton({
	Name = "Bı̇tchyourmamahasHIVANDSTD'SandDIABETESBı̇tchassNı̇gga!!!fuckwrongwithyouglyass",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Bı̇tchyourmamahasHIVANDSTD'SandDIABETESBı̇tchassNı̇gga!!!fuckwrongwithyouglyass") 
  	end    
})

MainTab:AddButton({
	Name = "nowonderwhyistoledyourbı̇tchbutshesfuckı̇nguglyasfuck!soikilledthatbı̇tch!",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("nowonderwhyistoledyourbı̇tchbutshesfuckı̇nguglyasfuck!soikilledthatbı̇tch!") 
  	end    
})

MainTab:AddButton({
	Name = "shutyouglyassupBı̇tchassnı̇gga",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("shutyouglyassupBı̇tchassnı̇gga") 
  	end    
})

MainTab:AddButton({
	Name = "Nı̇ggayograndmasuckedmydı̇ckandsheturnedintoashesBı̇tchassnı̇gga",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Nı̇ggayograndmasuckedmydı̇ckandsheturnedintoashesBı̇tchassnı̇gga") 
  	end    
})

MainTab:AddButton({
	Name = "Bı̇tchassnı̇gga!!!",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Bı̇tchassnı̇gga!!!") 
  	end    
})

MainTab:AddButton({
	Name = "Bı̇tchyourfamilywilldie👻",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Bı̇tchyourfamilywilldie👻") 
  	end    
})

MainTab:AddButton({
	Name = "Nı̇ggasaidkillyourselflikethisNı̇ggagotnocomebacks💀",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Nı̇ggasaidkillyourselflikethisNı̇ggagotnocomebacks💀") 
  	end    
})

MainTab:AddButton({
	Name = "nı̇ggaimagettostraightflamingyoshitbı̇tchassnı̇gga!",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("nı̇ggaimagettostraightflamingyoshitbı̇tchassnı̇gga!") 
  	end    
})

MainTab:AddButton({
	Name = "nı̇ggaifyoudontgetyowompwompsoundingasson!",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("nı̇ggaifyoudontgetyowompwompsoundingasson!") 
  	end    
})

MainTab:AddButton({
	Name = "bı̇tchyoubuiltlikeafatassdehydratedbakedpotatofucknı̇gga!",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("bı̇tchyoubuiltlikeafatassdehydratedbakedpotatofucknı̇gga!") 
  	end    
})

MainTab:AddButton({
	Name = "Nı̇ggaicaughtyousuckingdı̇ckbehinddiemarket",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Nı̇ggaicaughtyousuckingdı̇ckbehinddiemarket") 
  	end    
})

MainTab:AddButton({
	Name = "Nı̇ggayoauntibuiltlikeafatasschacolatecoinbı̇tchassnı̇gga",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Nı̇ggayoauntibuiltlikeafatasschacolatecoinbı̇tchassnı̇gga") 
  	end    
})

MainTab:AddButton({
	Name = "hopoffmydı̇ckyoujamescharles(ifhewasathọt)lookenassnı̇gga!",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("hopoffmydı̇ckyoujamescharles(ifhewasathọt)lookenassnı̇gga!") 
  	end    
})

MainTab:AddButton({
	Name = "shutyomickeymousebodybuiltassup",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("shutyomickeymousebodybuiltassup") 
  	end    
})

MainTab:AddButton({
	Name = "shutupbı̇tch!yomommamạsterbaitwithbuiscuitgreaseyouuglyassnı̇gga",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("shutupbı̇tch!yomommamạsterbaitwithbuiscuitgreaseyouuglyassnı̇gga") 
  	end    
})

MainTab:AddButton({
	Name = "Thisnı̇ggagotagreywizardbeard",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Thisnı̇ggagotagreywizardbeard") 
  	end    
})

MainTab:AddButton({
	Name = "Thisnı̇ggagotadababycarsuitcase",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Thisnı̇ggagotadababycarsuitcase") 
  	end    
})

MainTab:AddButton({
	Name = "Thisnı̇ggalooklikeabubblegummachinewithdiamondnostrilss",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Thisnı̇ggalooklikeabubblegummachinewithdiamondnostrilss") 
  	end    
})

MainTab:AddButton({
	Name = "Thisnı̇ggalooklikeatennisballwithashakespearemustache",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Thisnı̇ggalooklikeatennisballwithashakespearemustache") 
  	end    
})

MainTab:AddButton({
	Name = "Nı̇ggashutyo'Imabarbeygirl!😚inabarbeyworld!😘'LOOKENASSUPBÌTCH!",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Nı̇ggashutyo'Imabarbeygirl!😚inabarbeyworld!😘'LOOKENASSUPBÌTCH!") 
  	end    
})

MainTab:AddButton({
	Name = "Letsgojokeforjokefucknı̇gga!",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Letsgojokeforjokefucknı̇gga!") 
  	end    
})

MainTab:AddButton({
	Name = "Nı̇ggayograndmaslappedthefuckoutyouwithhersoggyasstı̇ttiesbı̇tchassnı̇gga",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Nı̇ggayograndmaslappedthefuckoutyouwithhersoggyasstı̇ttiesbı̇tchassnı̇gga") 
  	end    
})

MainTab:AddButton({
	Name = "yofatherdippedoutyolifeforChewFiveGumaụtisticassnı̇gga",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("yofatherdippedoutyolifeforChewFiveGumaụtisticassnı̇gga") 
  	end    
})

MainTab:AddButton({
	Name = "Nı̇ggathatwasass!💀",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Nı̇ggathatwasass!💀") 
  	end    
})

MainTab:AddButton({
	Name = "nı̇ggaicaughtyoutrynaslapboxahomelessnı̇ggaover14centsyoubrokeassnı̇gga",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("nı̇ggaicaughtyoutrynaslapboxahomelessnı̇ggaover14centsyoubrokeassnı̇gga") 
  	end    
})

MainTab:AddButton({
	Name = "Thisnı̇ggamomlooklikeaminecraftcreeperwithaloganpaulbeardandanreedolisp",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Thisnı̇ggamomlooklikeaminecraftcreeperwithaloganpaulbeardandanreedolisp") 
  	end    
})

MainTab:AddButton({
	Name = "shutup!Thisnı̇ggalooklikeasweatypinecone",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("shutup!Thisnı̇ggalooklikeasweatypinecone") 
  	end    
})

MainTab:AddButton({
	Name = "shutchobı̇tchassup,nı̇ggaswillbreakyou,dụmbassnı̇gga,fuckiswrongwitchobı̇tchass",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("shutchobı̇tchassup,nı̇ggaswillbreakyou,dụmbassnı̇gga,fuckiswrongwitchobı̇tchass") 
  	end    
})

MainTab:AddButton({
	Name = "Thisnı̇ggamomgotaassaultriflemadeoutofrubixcubesandsnakeflyankles",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Thisnı̇ggamomgotaassaultriflemadeoutofrubixcubesandsnakeflyankles") 
  	end    
})

MainTab:AddButton({
	Name = "Youareuglyasfuckbehindthescreenbı̇tchassnı̇gga!",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Youareuglyasfuckbehindthescreenbı̇tchassnı̇gga!") 
  	end    
})

MainTab:AddButton({
	Name = "youfụckingwiththewrongoneyoudụmbassnı̇gga!",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("youfụckingwiththewrongoneyoudụmbassnı̇gga!") 
  	end    
})

MainTab:AddButton({
	Name = "Thisnı̇ggatrynacussmeoutinrobloxlikeiwon'tflamethisnı̇gga",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Thisnı̇ggatrynacussmeoutinrobloxlikeiwon'tflamethisnı̇gga") 
  	end    
})

MainTab:AddButton({
	Name = "Nı̇ggayoFamilyisknownforsuckingdı̇ckonthedailybı̇tchassnı̇gga",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Nı̇ggayoFamilyisknownforsuckingdı̇ckonthedailybı̇tchassnı̇gga") 
  	end    
})

MainTab:AddButton({
	Name = "yomomgotknockedoutbygeorgekambosawithafishingrodandthatbitchnostrilbroke",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("yomomgotknockedoutbygeorgekambosawithafishingrodandthatbı̇tchnostrilbroke") 
  	end    
})

MainTab:AddButton({
	Name = "thatnı̇ggakazumathrewaburgeratyonostrilandyotoothgrewlegsandranaway",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("thatnı̇ggakazumathrewaburgeratyonostrilandyotoothgrewlegsandranaway") 
  	end    
})

MainTab:AddButton({
	Name = "youbuiltlikeabentdrumstickwithamuscletshirtonandcornrows",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("youbuiltlikeabentdrumstickwithamuscletshirtonandcornrows") 
  	end    
})

MainTab:AddButton({
	Name = "yousneezedandcausedalandslide",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("yousneezedandcausedalandslide") 
  	end    
})

MainTab:AddButton({
	Name = "thisnı̇ggacrackedhisknucklesandturnedintoabottleneckfighterjetyouuglyassnı̇gga!",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("thisnı̇ggacrackedhisknucklesandturnedintoabottleneckfighterjetyouuglyassnı̇gga!") 
  	end    
})

MainTab:AddButton({
	Name = "Nı̇ggayoFatAssdadgottheykneecapbitoffbyanhọrṇytoad",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Nı̇ggayoFatAssdadgottheykneecapbitoffbyanhọrṇytoad") 
  	end    
})

MainTab:AddButton({
	Name = "Bı̇tchNı̇ggayoubuiltlikeastrı̇pdancingairplanewithagrimreaperhoodieonandaperm",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Bı̇tchNı̇ggayoubuiltlikeastrı̇pdancingairplanewithagrimreaperhoodieonandaperm") 
  	end    
})

MainTab:AddButton({
	Name = "Bı̇tchassNı̇ggayoulooklikeabreakdancingdomicianpenguinwithapixiecutandacorruptedsmile",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Bı̇tchassNı̇ggayoulooklikeabreakdancingdomicianpenguinwithapixiecutandacorruptedsmile") 
  	end    
})

MainTab:AddButton({
	Name = "FuckNı̇ggayoubuiltlikeaobesejorvscumsockwithtacticalsunglassesonwithadhd",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("FuckNı̇ggayoubuiltlikeaobesejorvscumsockwithtacticalsunglassesonwithadhd") 
  	end    
})

MainTab:AddButton({
	Name = "DụṃbassNı̇gga!youlooklikeafirebreathinghornetwithacharmbraceletonandamohawk",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("DụṃbassNı̇gga!youlooklikeafirebreathinghornetwithacharmbraceletonandamohawk") 
  	end    
})

MainTab:AddButton({
	Name = "ShutyouglyaasupBı̇tch!",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("ShutyouglyaasupBı̇tch!") 
  	end    
})

MainTab:AddButton({
	Name = "Shutyoninjaturtlebodybuiltassup!",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Shutyoninjaturtlebodybuiltassup!") 
  	end    
})

MainTab:AddButton({
	Name = "Nı̇ggayoFatassRobloxCharacterthrewasasquatchatyoelbowandyokidneyexploded",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Nı̇ggayoFatassRobloxCharacterthrewasasquatchatyoelbowandyokidneyexploded") 
  	end    
})

local MainTab = Window:MakeTab({
	Name = "Script Beef✍️",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
MainTab:AddLabel("Script Beef✍️")

local Section = MainTab:AddSection({
	Name = "One Up Others, Script Argue, Ego Scripters"
})

MainTab:AddButton({
	Name = "Omganothershı̇ttyexploiter🤡",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Omganothershı̇ttyexploiter🤡") 
  	end    
})

MainTab:AddButton({
	Name = "Omganothershı̇ttychatbypasserinthechat!🤡",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Omganothershı̇ttychatbypasserinthechat!🤡") 
  	end    
})

MainTab:AddButton({
	Name = "nı̇ggathatscriptissoassbro..☠️",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("nı̇ggathatscriptissoassbro..☠️") 
  	end    
})

MainTab:AddButton({
	Name = "Omganothershı̇ttychatbypassuser...",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Omganothershı̇ttychatbypassuser...") 
  	end    
})

MainTab:AddButton({
	Name = "Nı̇ggahowyougonnatrytoarguewithmewiththatshit💀",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Nı̇ggahowyougonnatrytoarguewithmewiththatshit💀") 
  	end    
})

MainTab:AddButton({
	Name = "OhNoNı̇gga!IDontSpeakTags!",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("OhNoNı̇gga!IDontSpeakTags!") 
  	end    
})

MainTab:AddButton({
	Name = "Whatashı̇ttychatbypasser💀",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Whatashı̇ttychatbypasser💀") 
  	end    
})

MainTab:AddButton({
	Name = "nı̇ggastopflingingmeyoulameassnı̇gga!!",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("nı̇ggastopflingingmeyoulameassnı̇gga!!") 
  	end    
})

MainTab:AddButton({
	Name = "imagineusingthatshit??thefuck??🤐",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("imagineusingthatshit??thefuck??🤐") 
  	end    
})

MainTab:AddButton({
	Name = "thatchatbypasserisass🤡",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("thatchatbypasserisass🤡") 
  	end    
})

MainTab:AddButton({
	Name = "Ewwnı̇gga!!!themcharacterslookass!thatshowyallbypassthechat??Lol",
	Callback = function()
      		local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")

local function sendMessage(message)
    -- Try new chat system first
    if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        TextChatService.TextChannels.RBXGeneral:SendAsync(message)
    else
        -- Legacy chat system
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
    end
end

-- Use it like this:
sendMessage("Ewwnı̇gga!!!themcharacterslookass!thatshowyallbypassthechat??Lol") 
  	end    
})
