local CoreGui = game:GetService("StarterGui")

CoreGui:SetCore("SendNotification", {

    Title = "正在启动",

    Text = "请稍等",

    Duration = 5,

})

wait(2)

local CoreGui = game:GetService("StarterGui")

CoreGui:SetCore("SendNotification", {

    Title = "作者",

    Text = "红毛狗头",

    Duration = 5,

})

wait(2)

print("Anti Afk On")

        local vu = game:GetService("VirtualUser")

        game:GetService("Players").LocalPlayer.Idled:connect(function()

           vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)

           wait(1)

           vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)

        end)

local CoreGui = game:GetService("StarterGui")

CoreGui:SetCore("SendNotification", {

    Title = "反挂机已自动开启",

    Text = "被踢出服务器的概率已降低",

    Duration = 5,

})

wait(1)

local CoreGui = game:GetService("StarterGui")

CoreGui:SetCore("SendNotification", {

    Title = "脚本正在加载",

    Text = "3",

    Duration = 5,

})

wait(1)

local CoreGui = game:GetService("StarterGui")

CoreGui:SetCore("SendNotification", {

    Title = "脚本正在加载",

    Text = "2",

    Duration = 5,

})

wait(1)

local CoreGui = game:GetService("StarterGui")

CoreGui:SetCore("SendNotification", {

    Title = "脚本正在加载",

    Text = "1",

    Duration = 5,

})

wait(2)

local CoreGui = game:GetService("StarterGui")

CoreGui:SetCore("SendNotification", {

    Title = "启动成功",

    Text = "您好"..game.Players.LocalPlayer.Name.."，欢迎使用   紅脚本   ",

    Duration = 5,

})

local LBLG = Instance.new("ScreenGui", getParent)

local LBL = Instance.new("TextLabel", getParent)

local player = game.Players.LocalPlayer
local lib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/Vape.txt")() 

local OpenUI = Instance.new("ScreenGui") 
local ImageButton = Instance.new("ImageButton") 
local UICorner = Instance.new("UICorner") 
OpenUI.Name = "OpenUI" 
OpenUI.Parent = game.CoreGui 
OpenUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling 
ImageButton.Parent = OpenUI 
ImageButton.BackgroundColor3 = Color3.fromRGB(5, 6, 7) 
ImageButton.BackgroundTransparency = 0.500 
ImageButton.Position = UDim2.new(0.0235790554, 0, 0.466334164, 0) 
ImageButton.Size = UDim2.new(0, 50, 0, 50) 
ImageButton.Image = "rbxassetid://16061279304" 
ImageButton.Draggable = true 
UICorner.CornerRadius = UDim.new(0, 200) 
UICorner.Parent = ImageButton 
ImageButton.MouseButton1Click:Connect(function() 
  if uihide == false then
	uihide = true
	game.CoreGui.ui.Main:TweenSize(UDim2.new(0, 0, 0, 0),"In","Quad",0.4,true)
else
	uihide = false
	game.CoreGui.ui.Main:TweenSize(UDim2.new(0, 560, 0, 319),"Out","Quad",0.4,true)
		end 
		
end)

uihide = false

 local win = lib:Window("紅脚本",Color3.fromRGB(255, 255, 255), Enum.KeyCode.RightControl) 
 
local setup = win:Tab("QQ号")

setup:Button("复制作者QQ号",function()
setclipboard("2050075573")
end)

local setup = win:Tab("白脚本区")

setup:Button("新白脚本",function()
_G.qq="1790789616"loadstring(game:HttpGet(('https://raw.githubusercontent.com/wev666666/baijiaobengV2.0beta/main/%E7%99%BD%E8%84%9A%E6%9C%ACbeta'),true))()
end)
local setup = win:Tab("伐木大亨2")

setup:Button("自动建筑",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/hojiaoben/llllllllllll/main/%E8%87%AA%E5%8A%A8%E5%BB%BA%E9%80%A0%20(1).txt"))()
end)
