local Players = game:GetService("Players")
local PlayerGui = Players.LocalPlayer.PlayerGui
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "Gui"
ScreenGui.Parent = PlayerGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 480, 0, 300)
MainFrame.Position = UDim2.new(0.5, -240, 0.5, -150)
MainFrame.BackgroundColor3 = Color3.new(0, 0, 0)
MainFrame.BackgroundTransparency = 0.4
MainFrame.ClipsDescendants = true
MainFrame.Parent = ScreenGui
local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 12)
UICorner.Parent = MainFrame
local UIStroke = Instance.new("UIStroke")
UIStroke.Thickness = 3
UIStroke.Parent = MainFrame
task.spawn(function()
    local h = 0
    while MainFrame and MainFrame.Parent do
        h = (h + 1) % 360
        local r = math.sin(math.rad(h)) * 0.55 + 0.45
        local g = math.sin(math.rad(h + 120)) * 0.55 + 0.45
        local b = math.sin(math.rad(h + 240)) * 0.55 + 0.45
        UIStroke.Color = Color3.new(r, g, b)
        task.wait(0.02)
    end
end)
local TitleBar = Instance.new("Frame")
TitleBar.Size = UDim2.new(1, 0, 0, 50)
TitleBar.BackgroundTransparency = 1
TitleBar.Parent = MainFrame
local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 1, 0)
Title.BackgroundTransparency = 1
Title.Text = "Moon Pixel｜公告"
Title.TextColor3 = Color3.new(1,1,1)
Title.TextSize = 24
Title.Font = Enum.Font.GothamBold
Title.TextXAlignment = Enum.TextXAlignment.Center
Title.Parent = TitleBar
local CloseBtn = Instance.new("TextButton")
CloseBtn.Size = UDim2.new(0, 60, 0, 40)
CloseBtn.Position = UDim2.new(1, -70, 0.5, -20)
CloseBtn.BackgroundTransparency = 1
CloseBtn.Text = "X"
CloseBtn.TextColor3 = Color3.new(1,1,1)
CloseBtn.TextSize = 28
CloseBtn.Parent = TitleBar
local c_corner = Instance.new("UICorner")
c_corner.CornerRadius = UDim.new(0, 8)
c_corner.Parent = CloseBtn
local c_stroke = Instance.new("UIStroke")
c_stroke.Thickness = 2
c_stroke.Parent = CloseBtn
task.spawn(function()
    local h = 0
    while CloseBtn and CloseBtn.Parent do
        h = (h + 1) % 360
        local r = math.sin(math.rad(h)) * 0.5 + 0.5
        local g = math.sin(math.rad(h + 120)) * 0.5 + 0.5
        local b = math.sin(math.rad(h + 240)) * 0.5 + 0.5
        c_stroke.Color = Color3.new(r, g, b)
        task.wait(0.02)
    end
end)
local Scroll = Instance.new("ScrollingFrame")
Scroll.Size = UDim2.new(1, -20, 1, -120)
Scroll.Position = UDim2.new(0, 10, 0, 60)
Scroll.BackgroundTransparency = 1
Scroll.ScrollBarThickness = 4
Scroll.CanvasSize = UDim2.new(0, 0, 0, 0)
Scroll.Parent = MainFrame
local List = Instance.new("UIListLayout")
List.Padding = UDim.new(0, 10)
List.FillDirection = Enum.FillDirection.Vertical
List.HorizontalAlignment = Enum.HorizontalAlignment.Center
List.VerticalAlignment = Enum.VerticalAlignment.Top
List.Parent = Scroll
List:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    Scroll.CanvasSize = UDim2.new(0, 0, 0, List.AbsoluteContentSize.Y)
end)
local texts = {
    "欢迎使用Moon Pixel ^ω^",
    "Moon Pixel作者:Moonlight", 
    "Moon Pixel代理:鲨鱼🦈",   
    "Moon Pixel更新内容↓",
    "暂时无通知",
    "必看提醒！！！↓",
    "封号不负责!!!!",
    "如果你被封号,我可以给你提供更换方案",
    "不必担心自己号封了玩不到脚本",
    "----------------------------",
    "感谢你使用Moon Pixel",
    "祝你身体健康 工作顺利 心想事成 一切顺利^ω^"
}
for _, t in pairs(texts) do
    local lbl = Instance.new("TextLabel")
    lbl.Size = UDim2.new(1, 0, 0, 30)
    lbl.BackgroundTransparency = 1
    lbl.Text = t
    lbl.TextColor3 = Color3.new(1,1,1)
    lbl.TextSize = 18
    lbl.TextXAlignment = Enum.TextXAlignment.Center
    lbl.Parent = Scroll
end
local StartBtn = Instance.new("TextButton")
StartBtn.Size = UDim2.new(0, 260, 0, 50)
StartBtn.Position = UDim2.new(0.5, -130, 1, -65)
StartBtn.BackgroundTransparency = 1
StartBtn.Text = "开始使用脚本"
StartBtn.TextColor3 = Color3.new(1,1,1)
StartBtn.TextSize = 22
StartBtn.Parent = MainFrame
local s_corner = Instance.new("UICorner")
s_corner.CornerRadius = UDim.new(0, 10)
s_corner.Parent = StartBtn
local s_stroke = Instance.new("UIStroke")
s_stroke.Thickness = 2
s_stroke.Parent = StartBtn
task.spawn(function()
    local h = 0
    while StartBtn and StartBtn.Parent do
        h = (h + 1) % 360
        local r = math.sin(math.rad(h)) * 0.5 + 0.5
        local g = math.sin(math.rad(h + 120)) * 0.5 + 0.5
        local b = math.sin(math.rad(h + 240)) * 0.5 + 0.5
        s_stroke.Color = Color3.new(r, g, b)
        task.wait(0.02)
    end
end)
CloseBtn.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
    print("[Moon Pixel] 公告UI已关闭")
end)
StartBtn.MouseButton1Click:Connect(function()
    print("[Moon Pixel] Moon Pixel正在加载...")
    local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/hojiaoben/llllllllllll/refs/heads/main/ui%E7%AC%AC%E4%B8%80%E4%B8%AA.txt"))()
    local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/hojiaoben/llllllllllll/refs/heads/main/ui%E7%AC%AC%E4%BA%8C%E4%B8%AA.txt"))()
    wait(1) 
    Notification:Notify( 
        {Title = "Moon Pixel", Description = "准备加载Moon Pixel"}, 
        {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "image"}, 
        {Image = "http://www.roblox.com/asset/?id=4483345998", ImageColor = Color3.fromRGB(255, 84, 84)} 
    ) 
    wait(1) 
    Notification:Notify( 
        {Title = "Moon Pixel", Description = "倒时计5秒"}, 
        {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "image"}, 
        {Image = "http://www.roblox.com/asset/?id=4483345998", ImageColor = Color3.fromRGB(255, 84, 84)} 
    ) 
    wait(1) 
    Notification:Notify( 
        {Title = "Moon Pixel", Description = "5"}, 
        {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "image"}, 
        {Image = "http://www.roblox.com/asset/?id=4483345998", ImageColor = Color3.fromRGB(255, 84, 84)} 
    ) 
    wait(1) 
    Notification:Notify( 
        {Title = "Moon Pixel", Description = "4"}, 
        {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "image"}, 
        {Image = "http://www.roblox.com/asset/?id=4483345998", ImageColor = Color3.fromRGB(255, 84, 84)} 
    ) 
    wait(1) 
    Notification:Notify( 
        {Title = "Moon Pixel", Description = "3"}, 
        {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "image"}, 
        {Image = "http://www.roblox.com/asset/?id=4483345998", ImageColor = Color3.fromRGB(255, 84, 84)} 
    ) 
    wait(1) 
    Notification:Notify( 
        {Title = "Moon Pixel", Description = "2"}, 
        {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "image"}, 
        {Image = "http://www.roblox.com/asset/?id=4483345998", ImageColor = Color3.fromRGB(255, 84, 84)} 
    ) 
    wait(1) 
    Notification:Notify( 
        {Title = "Moon Pixel", Description = "1"}, 
        {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "image"}, 
        {Image = "http://www.roblox.com/asset/?id=4483345998", ImageColor = Color3.fromRGB(255, 84, 84)} 
    ) 
    wait(1) 
    Notification:Notify( 
        {Title = "Moon Pixel", Description = "0"}, 
        {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "image"}, 
        {Image = "http://www.roblox.com/asset/?id=4483345998", ImageColor = Color3.fromRGB(255, 84, 84)} 
    ) 
    wait(1)
    Notification:Notify( 
        {Title = "Moon Pixel", Description = "开始加载Moon Pixel"},
        {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 10, Type = "image"}, 
        {Image = "http://www.roblox.com/asset/?id=4483345998", ImageColor = Color3.fromRGB(255, 84, 84)} 
    )
    local success, res = pcall(function()
        local scriptCode = game:HttpGet("https://raw.githubusercontent.com/hojiaoben/llllllllllll/refs/heads/main/78.lua")
        pcall(function()
            loadstring(scriptCode)()
            print("[Moon Pixel] Moon Pixel加载&执行成功！")
        end)
    end)
    if not success then
        warn("[Moon Pixel] Moon Pixel加载失败：", res)
        warn("[Moon Pixel] 请检查网络或脚本链接是否有效")
    end
    ScreenGui:Destroy()
end)
