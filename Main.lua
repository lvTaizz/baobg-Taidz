

repeat wait()
    pcall(function() 
        for i, v in pairs(getconnections(game.Players.LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.TextButton.Activated)) do
            v.Function()
        end 
    end) 
until tostring(game.Players.LocalPlayer.Team) == "Pirates"

repeat task.wait() until game.Players.LocalPlayer.Character
repeat task.wait() until game.Players.LocalPlayer.Character.Head

if not game:IsLoaded() then game.Loaded:Wait() end
local plr = game.Players.LocalPlayer

game.StarterGui:SetCore("SendNotification", {
    Icon ="rbxassetid://104450799419041"
    Title = "Happy Cat Hub",
    Text = "Loading",
    Duration = 2,
    })

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Happy Cat Hub",
    SubTitle = "by taidz",
    TabWidth = 100,
    Size = UDim2.fromOffset(530, 350),
    Acrylic = false, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.End
})
    
local Tabs = {
    Main = Window:AddTab({ Title = "Main Farm", Icon = "" }),
    Stack = Window:AddTab({ Title = "Stack Auto Farm", Icon = "" }),
    Status = Window:AddTab({ Title = "Status", Icon = "" }),
    NguoiChoi = Window:AddTab({ Title = "Local Player", Icon = "" }),
    Pvp = Window:AddTab({ Title = "Pvp-Visual", Icon = "" }),
    Travel = Window:AddTab({ Title = "Travel", Icon = "" }),
    Raid = Window:AddTab({ Title = "Raid-Material", Icon = "" }),
    Fruit = Window:AddTab({ Title = "Fruit", Icon = "" }),
    Shop = Window:AddTab({ Title = "Shop", Icon = "" }),
    RaceV4 = Window:AddTab({ Title = "RaceV4-Mirage", Icon = "" }),
    Event = Window:AddTab({ Title = "Sea Events", Icon = "" }),
    Setting = Window:AddTab({ Title = "Settings", Icon = "" }),
    Game = Window:AddTab({ Title = "Game-Server", Icon = "" }),
}

local Options = Fluent.Options

local ScreenGui = Instance.new("ScreenGui")
local TextLabel = Instance.new("TextLabel")
local UIGradient = Instance.new("UIGradient")
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
TextLabel.Parent = ScreenGui
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel.Position = UDim2.new(0.5, 0, -0.025, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.FredokaOne
TextLabel.Text = "discord.gg/"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 20.00

UIGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(131.00000739097595, 181.0000044107437, 255)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(224.000001847744, 162.00000554323196, 255))
    }
UIGradient.Parent = TextLabel

local ScreenGui = Instance.new("ScreenGui");
local DropShadowHolder = Instance.new("Frame");
local DropShadow = Instance.new("ImageLabel");
local Main = Instance.new("Frame");
local UICorner = Instance.new("UICorner");
local UIStroke = Instance.new("UIStroke");
local UIGradient = Instance.new("UIGradient");
local T = Instance.new("TextLabel");
local UIGradient1 = Instance.new("UIGradient");

ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = game:GetService("Players").LocalPlayer.PlayerGui

DropShadowHolder.AnchorPoint = Vector2.new(0.5, 0.5)
DropShadowHolder.BackgroundTransparency = 1
DropShadowHolder.BorderSizePixel = 0
DropShadowHolder.Position = UDim2.new(0.5, 0, 0.1, 0)
DropShadowHolder.Size = UDim2.new(0, 500, 0, 68)
DropShadowHolder.ZIndex = 0
DropShadowHolder.Name = "DropShadowHolder"
DropShadowHolder.Parent = ScreenGui

DropShadow.Image = "rbxassetid://6015897843"
DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
DropShadow.ImageTransparency = 0.5
DropShadow.ScaleType = Enum.ScaleType.Slice
DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)
DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
DropShadow.BackgroundTransparency = 1
DropShadow.BorderSizePixel = 0
DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
DropShadow.Size = UDim2.new(1, 47, 1, 47)
DropShadow.ZIndex = 0
DropShadow.Name = "DropShadow"
DropShadow.Parent = DropShadowHolder

Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Main.BackgroundTransparency = 0.5
Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.5, 0, 0.5, 0)
Main.Size = UDim2.new(1, -47, 1, -47)
Main.Name = "Main"
Main.Parent = DropShadow

UICorner.CornerRadius = UDim.new(0, 5)
UICorner.Parent = Main

UIStroke.Color = Color3.fromRGB(255, 255, 255)
UIStroke.Thickness = 2.5
UIStroke.Parent = Main

UIGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(131.00000739097595, 181.0000044107437, 255)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(224.000001847744, 162.00000554323196, 255))
    }
UIGradient.Parent = UIStroke

T.Font = Enum.Font.GothamBold
T.Text = "Happy Cat Hub"
T.TextColor3 = Color3.fromRGB(255, 255, 255)
T.TextSize = 16.5
T.TextYAlignment = Enum.TextYAlignment.Bottom
T.AnchorPoint = Vector2.new(0.5, 0)
T.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
T.BackgroundTransparency = 0.9990000128746033
T.BorderColor3 = Color3.fromRGB(0, 0, 0)
T.BorderSizePixel = 0
T.Position = UDim2.new(0.5, 0, 0, 15)
T.Size = UDim2.new(0, 500, 0, 18)
T.Name = "Top"
T.Parent = Main

UIGradient1.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(131.00000739097595, 181.0000044107437, 255)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(224.000001847744, 162.00000554323196, 255))
    }
UIGradient1.Parent = T

T.Size = UDim2.new(0, T.TextBounds.X, 0, 18)
if T.Size.X.Offset then
	DropShadowHolder.Size = UDim2.new(0, T.TextBounds.X + 68, 0, 48)
end
T:GetPropertyChangedSignal("Text"):Connect(function()
	T.Size = UDim2.new(0, T.TextBounds.X, 0, 18)
	if T.Size.X.Offset then
		DropShadowHolder.Size = UDim2.new(0, T.TextBounds.X + 68, 0, 48)
	end
end)

--Place Id Check
local id = game.PlaceId
if id == 2753915549 then First_Sea = true; elseif id == 4442272183 then Second_Sea = true; elseif id == 7449423635 then Third_Sea = true; else game.Players.LocalPlayer:Kick("Check script here : https://discord.gg/kuXFw2HkdN") end;
-- anti
spawn(function()
    while wait() do
    for i,v in pairs(game.Players:GetPlayers()) do
        if v.Name == "red_game43" or v.Name == "rip_indra" or v.Name == "Axiore" or v.Name == "Polkster" or v.Name == "wenlocktoad" or v.Name == "Daigrock" or v.Name == "toilamvidamme" or v.Name == "oofficialnoobie" or v.Name == "Uzoth" or v.Name == "Azarth" or v.Name == "arlthmetic" or v.Name == "Death_King" or v.Name == "Lunoven" or v.Name == "TheGreateAced" or v.Name == "rip_fud" or v.Name == "drip_mama" or v.Name == "layandikit12" or v.Name == "Hingoi" then
            Hop()
            end
        end
    end
end)

-------------------------------------------------------------------------------------------------------------------------------------------- 

game:GetService("Players").LocalPlayer.Idled:connect(function()
	game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	wait(1)
	game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

	local HopGui = Instance.new("ScreenGui");
	local HopFrame = Instance.new("Frame");
	local NameHub = Instance.new("TextLabel");
	local UIStroke = Instance.new("UIStroke");
	local HopIn = Instance.new("TextLabel");
	local DropShadowHolder = Instance.new("Frame");
	local DropShadow = Instance.new("ImageLabel");
	local Reason = Instance.new("TextLabel");
	local ClickTo = Instance.new("TextLabel");
	local ButtonCall = Instance.new("TextButton");

	HopGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	HopGui.Name = "HopGui"
	HopGui.Parent = game:GetService("Players").LocalPlayer:FindFirstChild("PlayerGui")
	HopGui.Enabled = false 

	HopFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	HopFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	HopFrame.BackgroundTransparency = 0.9990000128746033
	HopFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	HopFrame.BorderSizePixel = 0
	HopFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
	HopFrame.Size = UDim2.new(1, 0, 1, 0)
	HopFrame.Name = "HopFrame"
	HopFrame.Parent = HopGui

	NameHub.Font = Enum.Font.Gotham
	NameHub.Text = "Happy Cat Hub"
	NameHub.TextColor3 = Color3.fromRGB(175.00000476837158, 187.00000405311584, 230.00000149011612)
	NameHub.TextSize = 85
	NameHub.AnchorPoint = Vector2.new(0.5, 0.5)
	NameHub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	NameHub.BackgroundTransparency = 0.9990000128746033
	NameHub.BorderColor3 = Color3.fromRGB(0, 0, 0)
	NameHub.BorderSizePixel = 0
	NameHub.Position = UDim2.new(0.5, 0, 0.5, -45)
	NameHub.Size = UDim2.new(0, 200, 0, 80)
	NameHub.Name = "Happy Cat Hub"
	NameHub.Parent = HopFrame

	UIStroke.Color = Color3.fromRGB(175.00000476837158, 187.00000405311584, 230.00000149011612)
	UIStroke.Thickness = 1.5
	UIStroke.Parent = NameHub

	HopIn.Font = Enum.Font.Gotham
	HopIn.Text = "Hopping server in 0s"
	HopIn.TextColor3 = Color3.fromRGB(255, 255, 255)
	HopIn.TextSize = 20
	HopIn.AnchorPoint = Vector2.new(0.5, 0.5)
	HopIn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	HopIn.BackgroundTransparency = 0.9990000128746033
	HopIn.BorderColor3 = Color3.fromRGB(0, 0, 0)
	HopIn.BorderSizePixel = 0
	HopIn.Position = UDim2.new(0.5, 0, 0.5, 0)
	HopIn.Size = UDim2.new(0, 200, 0, 30)
	HopIn.Name = "HopIn"
	HopIn.Parent = HopFrame

	DropShadowHolder.BackgroundTransparency = 1
	DropShadowHolder.BorderSizePixel = 0
	DropShadowHolder.Size = UDim2.new(1, 0, 1, 0)
	DropShadowHolder.ZIndex = 0
	DropShadowHolder.Name = "DropShadowHolder"
	DropShadowHolder.Parent = HopFrame

	DropShadow.Image = "rbxassetid://6015897843"
	DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
	DropShadow.ImageTransparency = 0.999
	DropShadow.ScaleType = Enum.ScaleType.Slice
	DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)
	DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
	DropShadow.BackgroundTransparency = 1
	DropShadow.BorderSizePixel = 0
	DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
	DropShadow.Size = UDim2.new(1, 47, 1, 47)
	DropShadow.ZIndex = 0
	DropShadow.Name = "DropShadow"
	DropShadow.Parent = DropShadowHolder

	Reason.Font = Enum.Font.Gotham
	Reason.Text = ""
	Reason.TextColor3 = Color3.fromRGB(255, 255, 255)
	Reason.TextSize = 16
	Reason.AnchorPoint = Vector2.new(0.5, 0.5)
	Reason.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Reason.BackgroundTransparency = 0.9990000128746033
	Reason.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Reason.BorderSizePixel = 0
	Reason.Position = UDim2.new(0.5, 0, 0.5, 32)
	Reason.Size = UDim2.new(0, 200, 0, 16)
	Reason.Name = "Reason"
	Reason.Parent = HopFrame

	ClickTo.Font = Enum.Font.Gotham
	ClickTo.Text = "Click To This Frame To Abort The Process"
	ClickTo.TextColor3 = Color3.fromRGB(255, 255, 255)
	ClickTo.TextSize = 16
	ClickTo.TextTransparency = 0.5
	ClickTo.AnchorPoint = Vector2.new(0.5, 0.5)
	ClickTo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ClickTo.BackgroundTransparency = 0.9990000128746033
	ClickTo.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ClickTo.BorderSizePixel = 0
	ClickTo.Position = UDim2.new(0.5, 0, 0.5, 50)
	ClickTo.Size = UDim2.new(1, 0, 1, 0)
	ClickTo.Name = "ClickTo"
	ClickTo.Parent = HopFrame

	ButtonCall.Font = Enum.Font.SourceSans
	ButtonCall.Text = ""
	ButtonCall.TextColor3 = Color3.fromRGB(0, 0, 0)
	ButtonCall.TextSize = 14
	ButtonCall.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ButtonCall.BackgroundTransparency = 0.9990000128746033
	ButtonCall.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ButtonCall.BorderSizePixel = 0
	ButtonCall.Size = UDim2.new(1, 0, 1, 0)
	ButtonCall.Name = "ButtonCall"
	ButtonCall.Parent = HopFrame

	local Blur = Instance.new("BlurEffect")
	Blur.Size = 0
	Blur.Parent = game.Lighting
	Blur.Enabled = true

	function fadein() 
		for i=0,50,5 do 
			Blur.Size = i 
			wait() 
		end 
	end 
	function fadeout() 
		for i=50,0,-5 do 
			Blur.Size = i 
			wait() 
		end 
	end 


	SetNewReason = function(reasonreal,time)
		if not reasonreal then reasonreal = '' end 
		if reasonreal == '' then
			HopGui.Enabled = false  
			fadeout()
			return 
		end   
		if not time then time = 3 end 
		HopGui.Enabled = true    

		fadein()

		Reason.Text = "Reason: "..reasonreal
		local t0 = time * 10
		while task.wait(0.1) do 
			HopIn.Text = "Delay Hopping: "..t0/10
			t0 = t0 - 1
			if math.floor(t0) == 0 then break end 
		end  
		wait(.4)

		HopIn.Text = "Joining Server: ".. game.JobId .. " Player Count: "..#game.Players:GetPlayers() .. "/12" 
		game:GetService("TeleportService"):SetTeleportGui(HopGui)
		ClickTo.Text = "Processing..."
		wait(1)
		game:GetService("TeleportService"):Teleport(game.PlaceId)

	end
	---- Events 
	ButtonCall.Activated:Connect(function()
		getgenv().CancelHop = true  

		SetNewReason()
	end)     

    local function Hop()
        local Http = game:GetService("HttpService")
        local TPS = game:GetService("TeleportService")
        local Api = "https://games.roblox.com/v1/games/"
        local _place = game.PlaceId
        local _servers = Api.._place.."/servers/Public?sortOrder=Asc&limit=100"
        
        function ListServers(cursor)
          local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or ""))
          return Http:JSONDecode(Raw)
        end
        local Server, Next
        repeat task.wait()
          local Servers = ListServers(Next)
          Server = Servers.data[1] Next = Servers.nextPageCursor
        until Server TPS:TeleportToPlaceInstance(_place, Server.id, Player)
      end
    
First_Sea = false
Second_Sea = false
Third_Sea = false
local placeId = game.PlaceId
if placeId == 2753915549 then
First_Sea = true
elseif placeId == 4442272183 then
Second_Sea = true
elseif placeId == 7449423635 then
Third_Sea = true
end

local Q = require(game.ReplicatedStorage.Quests)
    local R = {"BartiloQuest", "Trainees", "MarineQuest", "CitizenQuest"}
    local function S()
        local T = game.Players.LocalPlayer.Data.Level.Value
        local min = 0
        if T >= 1450 and game.PlaceId == 4442272183 then
            Mob1 = "Water Fighter"
            Mob2 = "ForgottenQuest"
            Mob3 = 2
        elseif T >= 700 and game.PlaceId == 2753915549 then
            Mob1 = "Galley Captain"
            Mob2 = "FountainQuest"
            Mob3 = 2
        else
            for r, v in pairs(Q) do
                for M, N in pairs(v) do
                    local U = N.LevelReq
                    for O, P in pairs(N.Task) do
                        if T >= U and U >= min and N.Task[O] > 1 and not table.find(R, tostring(r)) then
                            min = U
                            Mob1 = tostring(O)
                            Mob2 = r
                            Mob3 = M
                        end
                    end
                end
            end
        end
    end
    function CFrameQuest()
        local GuideModule = require(game.ReplicatedStorage.GuideModule)
        for list,NPCListC in pairs(GuideModule["Data"]["NPCList"]) do
            if NPCListC["NPCName"] == GuideModule["Data"]["LastClosestNPC"] then
                return list["CFrame"]
            end
        end
    end
    local Q = require(game.ReplicatedStorage.Quests)
    local a3 = require(game.ReplicatedStorage:WaitForChild("GuideModule"))
    function CheckDataQuest()
        for r, v in next, a3.Data do
            if r == "QuestData" then
                return true
            end
        end
        return false
    end
    function CheckNameMobDoubleQuest()
        local a
        if CheckDataQuest() then
            for r, v in next, a3.Data.QuestData.Task do
                a = r
            end
        end
        return a
    end
    function CheckDoubleQuestSkidcuaYMF()
        S()
        local a5 = {}
        if game.Players.LocalPlayer.Data.Level.Value >= 10 and CheckDataQuest() and CheckNameMobDoubleQuest() == Mob1 and #CheckNameMobDoubleQuest() > 2 then
            for r, v in pairs(Q) do
                for M, N in pairs(v) do
                    for O, P in pairs(N.Task) do
                        if tostring(O) == Mob1 then
                            for a6, a7 in next, v do
                                for a8, a9 in next, a7.Task do
                                    if a8 ~= Mob1 and a9 > 1 then
                                        if a7.LevelReq <= game.Players.LocalPlayer.Data.Level.Value then
                                            a5["Name"] = tostring(a8)
                                            a5["Mob2"] = r
                                            a5["ID"] = a6
                                        else
                                            a5["Name"] = Mob1
                                            a5["Mob2"] = Mob2
                                            a5["ID"] = Mob3
                                        end
                                        return a5
                                    end
                                end
                            end
                        end
                    end
                end
            end
        else
            a5["Name"] = Mob1
            a5["Mob2"] = Mob2
            a5["ID"] = Mob3
            return a5
        end
        a5["Name"] = Mob1
        a5["Mob2"] = Mob2
        a5["ID"] = Mob3
        return a5
    end
    function MobLevel1OrMobLevel2()
        local aa = {}
        for r, v in pairs(game.Workspace.Enemies:GetChildren()) do
            if not table.find(aa, v.Name) and v:IsA("Model") and v.Name ~= "PirateBasic" and not string.find(v.Name, "Brigade") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and v:FindFirstChild("HumanoidRootPart") then
                table.insert(aa, v.Name)
            end
        end
        for r, v in pairs(aa) do
            local ab = v
            v = tostring(v:gsub(" %pLv. %d+%p", ""))
            if tostring(v) == CheckNameMobDoubleQuest() then
                return tostring(ab)
            end
        end
        return false
    end

    function Kill_Aura()
        for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                repeat wait(.1)
                    v.Humanoid.Health = 0
                    v.HumanoidRootPart.CanCollide = false
                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                until not v or not v:FindFirstChild("Humanoid") or v.Humanoid.Health == 0
            end
        end
    end

--// Check Material
function MaterialMon()
    if SelectMaterial == "Radioactive Material" then
    MMon = "Factory Staff"
    MPos = CFrame.new(295,73,-56)
    SP = "Default"
    elseif SelectMaterial == "Mystic Droplet" then
    MMon = "Water Fighter"
    MPos = CFrame.new(-3385,239,-10542)
    SP = "Default"
    elseif SelectMaterial == "Magma Ore" then
    if First_Sea then
    MMon = "Military Spy"
    MPos = CFrame.new(-5815,84,8820)
    SP = "Default"
    elseif Second_Sea then
    MMon = "Magma Ninja"
    MPos = CFrame.new(-5428,78,-5959)
    SP = "Default"
    end
    elseif SelectMaterial == "Angel Wings" then
    MMon = "God's Guard"
    MPos = CFrame.new(-4698,845,-1912)
    SP = "Default"
    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-7859.09814, 5544.19043, -381.476196)).Magnitude >= 5000 then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7859.09814, 5544.19043, -381.476196))
    end
    elseif SelectMaterial == "Leather" then
    if First_Sea then
    MMon = "Brute"
    MPos = CFrame.new(-1145,15,4350)
    SP = "Default"
    elseif Second_Sea then
    MMon = "Marine Captain"
    MPos = CFrame.new(-2010.5059814453125, 73.00115966796875, -3326.620849609375)
    SP = "Default"
    elseif Third_Sea then
    MMon = "Jungle Pirate"
    MPos = CFrame.new(-11975.78515625, 331.7734069824219, -10620.0302734375)
    SP = "Default"
    end
    elseif SelectMaterial == "Scrap Metal" then
    if First_Sea then
    MMon = "Brute"
    MPos = CFrame.new(-1145,15,4350)
    SP = "Default"
    elseif Second_Sea then
    MMon = "Swan Pirate"
    MPos = CFrame.new(878,122,1235)
    SP = "Default"
    elseif Third_Sea then
    MMon = "Jungle Pirate"
    MPos = CFrame.new(-12107,332,-10549)
    SP = "Default"
    end
    elseif SelectMaterial == "Fish Tail" then
    if Third_Sea then
    MMon = "Fishman Raider"
    MPos = CFrame.new(-10993,332,-8940)
    SP = "Default"
    elseif First_Sea then
    MMon = "Fishman Warrior"
    MPos = CFrame.new(61123,19,1569)
    SP = "Default"
    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(61163.8515625, 5.342342376708984, 1819.7841796875)).Magnitude >= 17000 then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 5.342342376708984, 1819.7841796875))
    end
    end
    elseif SelectMaterial == "Demonic Wisp" then
    MMon = "Demonic Soul"
    MPos = CFrame.new(-9507,172,6158)
    SP = "Default"
    elseif SelectMaterial == "Vampire Fang" then
    MMon = "Vampire"
    MPos = CFrame.new(-6033,7,-1317)
    SP = "Default"
    elseif SelectMaterial == "Conjured Cocoa" then
    MMon = "Chocolate Bar Battler"
    MPos = CFrame.new(620.6344604492188,78.93644714355469, -12581.369140625)
    SP = "Default"
    elseif SelectMaterial == "Dragon Scale" then
    MMon = "Dragon Crew Archer"
    MPos = CFrame.new(6594,383,139)
    SP = "Default"
    elseif SelectMaterial == "Gunpowder" then
    MMon = "Pistol Billionaire"
    MPos = CFrame.new(-469,74,5904)
    SP = "Default"
    elseif SelectMaterial == "Mini Tusk" then
    MMon = "Mythological Pirate"
    MPos = CFrame.new(-13545,470,-6917)
    SP = "Default"
    end
    end

    local ReplicatedStorage = game:GetService("ReplicatedStorage")
local VirtualUser = game:GetService("VirtualUser")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local Player = Players.LocalPlayer

local Remotes = ReplicatedStorage:WaitForChild("Remotes", 9e9)
local CommF = Remotes:WaitForChild("CommF_", 9e9)

local block = Instance.new("Part", workspace)
block.Size = Vector3.new(1, 1, 1)
block.Name = "Lamm Hup"
block.Anchored = true
block.CanCollide = false
block.CanTouch = false
block.Transparency = 1

local blockfind = workspace:FindFirstChild(block.Name)
if blockfind and blockfind ~= block then
  blockfind:Destroy()
end

task.spawn(function()
  while task.wait() do
    if block and block.Parent == workspace then
if _G.AutoLevel
or _G.MethodFarm 
or _G.TeleportIsland
or _G.AutoNextIsland
or _G.AutoMaterial
or _G.SailBoat
or _G.AutoSeaBest
or _G.AutoKillShark
or _G.AutoKillPiranha
or _G.AutoKillFishCrew
or _G.RelzFishBoat
or _G.RelzPirateBrigade
or _G.RelzPirateGrandBrigade
or _G.AutoTerrorshark
or _G.AutoNear
or _G.DitElite
or _G.AutoRaidPirate
or _G.AutoHakiPad
or _G.RipIndraKill
or _G.AutoBartilo
or _G.AutoFarmBossHallow
or _G.AutoBoss
or _G.Auto_DarkBoss
or _G.Auto_DoughKing
or _G.AutoSoulGuitar
or _G.Factory
or getgenv().TeleportPly
or getgenv().Auto_Kill_Ply
or _G.CollectFruit
or _G.CollectFruitHop
or _G.SegHub then
        getgenv().OnFarm = true
      else
        getgenv().OnFarm = false
      end
    else
      getgenv().OnFarm = false
    end
  end
end)

task.spawn(function()
  repeat task.wait()
  until Player.Character and Player.Character.PrimaryPart
  block.CFrame = Player.Character.PrimaryPart.CFrame
  
  while task.wait() do
    pcall(function()
      if getgenv().OnFarm then
        if block and block.Parent == workspace then
          local plrPP = Player.Character and Player.Character.PrimaryPart
          
          if plrPP and (plrPP.Position - block.Position).Magnitude <= 200 then
            plrPP.CFrame = block.CFrame
          else
            block.CFrame = plrPP.CFrame
          end
        end
        local plrChar = Player.Character
        if plrChar then
          for _,part in pairs(plrChar:GetChildren()) do
            if part:IsA("BasePart") then
              part.CanCollide = false
            end
          end
          if plrChar:FindFirstChild("Stun") and plrChar.Stun.Value ~= 0 then
            plrChar.Stun.Value = 0
          end
          if plrChar:FindFirstChild("Busy") and plrChar.Busy.Value then
            plrChar.Busy.Value = false
          end
        end
      else
        local plrChar = Player.Character
        if plrChar then
          for _,part in pairs(plrChar:GetChildren()) do
            if part:IsA("BasePart") then
              part.CanCollide = true
            end
          end
        end
      end
    end)
  end
end)

task.spawn(function()
  local PortalPos = {}
  
  if First_Sea then
    PortalPos = {
      Vector3.new(-4652, 873, -1754), -- Sky Island 1
      Vector3.new(-7895, 5547, -380), -- Sky Island 2
      Vector3.new(61164, 5, 1820), -- Under Water Island
      Vector3.new(3865, 5, -1926) -- Under Water Island Entrace
    }
  elseif Second_Sea then
    PortalPos = {
      Vector3.new(-317, 331, 597), -- Flamingo Mansion
      Vector3.new(2283, 15, 867), -- Flamingo Room
      Vector3.new(923, 125, 32853), -- Cursed Ship
      Vector3.new(-6509, 83, -133) -- Zombie Island0
    }
  elseif Third_Sea then
    PortalPos = {
      Vector3.new(-12471, 374, -7551), -- Mansion
      Vector3.new(5756, 610, -282), -- Hydra Island
      Vector3.new(-5092, 315, -3130), -- Castle on the Sea
      Vector3.new(-12001, 332, -8861), -- Floating Turtle
      Vector3.new(5319, 23, -93), -- Beautiful Pirate
      Vector3.new(5314.58203, 22.5364361, -125.942276, 1, 2.14762768e-08, -1.99111154e-13, -2.14762768e-08, 1, -3.0510602e-08, 1.98455903e-13, 3.0510602e-08, 1), -- room bot cavender
      Vector3.new(28286, 14897, 103) -- Temple of Time
    }
  end
  
  function GetTPPos(position)
    local NearPos = math.huge
    local TpPos = Vector3.new()
    
    table.foreach(PortalPos, function(___, pos)
      if (pos - position).Magnitude <= NearPos then
        NearPos = (pos - position).Magnitude
        TpPos = pos
      end
    end)
    return TpPos
  end
end)

local TweenService = game:GetService("TweenService")
local TeleportPos
local currentTween 
local function Tween(Tween_Pos)
    TeleportPos = Tween_Pos.p
    local plrPP = Player.Character and Player.Character.PrimaryPart
    if not plrPP then return end
    local Distance = (plrPP.Position - Tween_Pos.p).Magnitude
    local PortalPos = GetTPPos(Tween_Pos.p)
    if Tween_Pos.p.Y < plrPP.Position.Y then
        plrPP.CFrame = CFrame.new(plrPP.Position.X, Tween_Pos.p.Y, plrPP.Position.Z)
    elseif Tween_Pos.p.Y > plrPP.Position.Y then
        plrPP.CFrame = CFrame.new(plrPP.Position.X, Tween_Pos.p.Y, plrPP.Position.Z)
    end
    if Distance > (Tween_Pos.p - PortalPos).Magnitude + 250 then
        plrPP.CFrame = CFrame.new(PortalPos)
        block.CFrame = CFrame.new(PortalPos)
        task.wait(2) 
    elseif block then
        local tweenTime = Distance / getgenv().TweenSpeed
        if Distance <= 250 then
            tweenTime = Distance / tonumber(getgenv().TweenSpeed * 1.8)
        end
        if currentTween then
            currentTween:Pause()
        end
        local tweenInfo = TweenInfo.new(tweenTime, Enum.EasingStyle.Linear)
        local tweenGoal = {CFrame = Tween_Pos}
        currentTween = TweenService:Create(block, tweenInfo, tweenGoal)
        currentTween:Play()
    end
end

local function stopTween()
    if currentTween then
        currentTween:Cancel()
        currentTween = nil
    end
end

spawn(function()
game:GetService("RunService").Heartbeat:Connect(function()
    if _G.AutoLevel
    or _G.MethodFarm 
    or _G.TeleportIsland
    or _G.AutoNextIsland
    or _G.AutoMaterial
    or _G.SailBoat
    or _G.AutoSeaBest
    or _G.AutoKillShark
    or _G.AutoKillPiranha
    or _G.AutoKillFishCrew
    or _G.RelzFishBoat
    or _G.RelzPirateBrigade
    or _G.RelzPirateGrandBrigade
    or _G.AutoTerrorshark
    or _G.AutoNear
    or _G.DitElite
    or _G.AutoRaidPirate
    or _G.AutoHakiPad
    or _G.RipIndraKill
    or _G.AutoBartilo
    or _G.AutoFarmBossHallow
    or _G.AutoBoss
    or _G.Auto_DarkBoss
    or _G.Auto_DoughKing
    or _G.AutoSoulGuitar
    or _G.Factory
    or getgenv().TeleportPly
    or getgenv().Auto_Kill_Ply
    or _G.CollectFruit
    or _G.CollectFruitHop
    or _G.SegHub then
      if not game:GetService("Workspace"):FindFirstChild("LOL") then
            local LOL = Instance.new("Part")
            LOL.Name = "LOL"
            LOL.Parent = game.Workspace
            LOL.Anchored = true
            LOL.Transparency = 1
            LOL.Size = Vector3.new(1,-0.5,1)
        elseif game:GetService("Workspace"):FindFirstChild("LOL") then
            game.Workspace["LOL"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -3.6, 0)
        end
    else
        if game:GetService("Workspace"):FindFirstChild("LOL") then
            game:GetService("Workspace"):FindFirstChild("LOL"):Destroy()
        end
    end
end)
end)

function WaitHRP(q0) 
    if not q0 then return end
    return q0.Character:WaitForChild("HumanoidRootPart", 9) 
end

function TP2(Pos)
    if game.Players.LocalPlayer.Character.Humanoid.Health > 0 and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        local Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        if not Pos then 
            return 
        end
        if not game.Players.LocalPlayer.Character:FindFirstChild("PartTele") then
            local PartTele = Instance.new("Part", game.Players.LocalPlayer.Character) -- Create part
            PartTele.Size = Vector3.new(1,1,1)
            PartTele.Name = "PartTele"
            PartTele.Anchored = true
            PartTele.Transparency = 1
            PartTele.CanCollide = false
            PartTele.CFrame = WaitHRP(game.Players.LocalPlayer).CFrame 
            PartTele:GetPropertyChangedSignal("CFrame"):Connect(function()
                task.wait()
                WaitHRP(game.Players.LocalPlayer).CFrame = PartTele.CFrame
            end)
        end
        local lamhub = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.PartTele, TweenInfo.new(Distance / getgenv().TweenSpeed, Enum.EasingStyle.Linear), {CFrame = Pos})
        lamhub:Play()
      end
    end
    
    local function StopTween()
    if _G.StopTween then
        return
    end
    
    _G.StopTween = true
    wait()
    local player = game.Players.LocalPlayer
    local character = player.Character
    if character and character:IsDescendantOf(game.Workspace) then
        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
        if humanoidRootPart then
            humanoidRootPart.CFrame = humanoidRootPart.CFrame
        end
    end
    wait()    
    if character:FindFirstChild("BodyClip") then
        character.BodyClip:Destroy()
    end
    if character:FindFirstChild("PartTele") then
        character.PartTele:Destroy()
    end
    _G.StopTween = false
end

function BTP(P1)
game.Players.LocalPlayer.Character.Head:Destroy()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P1
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P1
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
end
    spawn(function()
			while task.wait() do
				pcall(function()
					if _G.AutoLevel or _G.MethodFarm or _G.TeleportIsland or _G.AutoNextIsland or _G.AutoMaterial or _G.SailBoat or _G.AutoSeaBest or _G.AutoKillShark or _G.AutoKillPiranha or _G.AutoKillFishCrew or _G.RelzFishBoat or _G.RelzPirateBrigade or _G.RelzPirateGrandBrigade or _G.AutoTerrorshark or _G.AutoNear or _G.DitElite or _G.AutoRaidPirate or _G.AutoHakiPad or _G.RipIndraKill or _G.AutoBartilo or _G.AutoFarmBossHallow or _G.AutoBoss or _G.Auto_DarkBoss or _G.Auto_DoughKing or _G.AutoSoulGuitar or _G.Factory or getgenv().TeleportPly or getgenv().Auto_Kill_Ply or _G.CollectFruit or _G.CollectFruitHop then
						if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
							local Noclip = Instance.new("BodyVelocity")
							Noclip.Name = "BodyClip"
							Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
							Noclip.MaxForce = Vector3.new(100000,100000,100000)
							Noclip.Velocity = Vector3.new(0,0,0)
						end
					else
						game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
					end
				end)
			end
		end)
	
spawn(function()
  pcall(function()
    game:GetService("RunService").Stepped:Connect(function()
      if _G.AutoLevel or _G.MethodFarm or _G.TeleportIsland or _G.AutoNextIsland or _G.AutoMaterial or _G.SailBoat or _G.AutoSeaBest or _G.AutoKillShark or _G.AutoKillPiranha or _G.AutoKillFishCrew or _G.RelzFishBoat or _G.RelzPirateBrigade or _G.RelzPirateGrandBrigade or _G.AutoTerrorshark or _G.AutoNear or _G.DitElite or _G.AutoRaidPirate or _G.AutoHakiPad or _G.RipIndraKill or _G.AutoBartilo or _G.AutoFarmBossHallow or _G.AutoBoss or _G.Auto_DarkBoss or _G.Auto_DoughKing or _G.AutoSoulGuitar or _G.Factory or getgenv().TeleportPly or getgenv().Auto_Kill_Ply or _G.CollectFruit or _G.CollectFruitHop then
      for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
      if v:IsA("BasePart") then
      v.CanCollide = false
      end
      end
      end
      end)
    end)
  end)



  --UnEquipTool
function UnEquipWeapon(Weapon)
    if game.Players.LocalPlayer.Character:FindFirstChild(Weapon) then
        game.Players.LocalPlayer.Character:FindFirstChild(Weapon).Parent = game.Players.LocalPlayer.Backpack
    end
end
--select weapon
function EquipTool(ToolSe)
		if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
			local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
			wait(0.5)
			game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
		end
	end
    --aimbot mastery
	spawn(function()
		local gg = getrawmetatable(game)
		local old = gg.__namecall
		setreadonly(gg,false)
		gg.__namecall = newcclosure(function(...)
		  local method = getnamecallmethod()
		  local args = {
			...
		  }
		  if tostring(method) == "FireServer" then
		  if tostring(args[1]) == "RemoteEvent" then
		  if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
		  if _G.UseSkill then
		  if type(args[2]) == "vector" then
		  args[2] = PositionSkillMasteryDevilFruit
		  else
			args[2] = CFrame.new(PositionSkillMasteryDevilFruit)
		  end
		  return old(unpack(args))
		  end
		  end
		  end
		  end
		  return old(...)
		  end)
        end)
--Equip Gun
spawn(function()
  pcall(function()
    while task.wait() do
    for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
    if v:IsA("Tool") then
    if v:FindFirstChild("RemoteFunctionShoot") then
    CurrentEquipGun = v.Name
    end
    end
    end
    end
    end)
  end)

  --Check Material
function CheckMaterial(matname)
    for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
    if type(v) == "table" then
    if v.Type == "Material" then
    if v.Name == matname then
    return v.Count
    end
    end
    end
    end
    return 0
    end

    --Sword Weapon
function GetWeaponInventory(Weaponname)
    for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
    if type(v) == "table" then
    if v.Type == "Sword" then
    if v.Name == Weaponname then
    return true
    end
    end
    end
    end
    return false
    end

    local MobBlacklist = {}

function DetectPartSpawnMob(name)
    local name1 
    if string.find(name,"Lv.") then 
        name1 = name:gsub(" %pLv. %d+%p", "")
    end
    for i, v in pairs(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()) do
        local stringgsub
        if string.find(v.Name, "Lv.") then 
            stringgsub = v.Name:gsub(" %pLv. %d+%p", "")
        end
        if  v:IsA("Part") and ((stringgsub and stringgsub == name) or name == v.Name or (name1 and v.Name == name1)) then
            return v 
        end
    end
    for i, v in pairs(getnilinstances()) do
        local stringgsub
        if string.find(v.Name, "Lv.") then 
            stringgsub = v.Name:gsub(" %pLv. %d+%p", "")
        end
        if v:IsA("Part") and ((stringgsub and stringgsub == name) or name == v.Name or (name1 and v.Name == name1)) then
            return v 
        end
    end
end

    --auto turn haki
      function AutoHaki()
        if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
        end
    end
    ---Bypass Teleport
    function BTP(P)
        repeat wait(0.5)
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
            task.wait()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
        until (P.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000
    end
    
    function BTP(p)
            pcall(function()
                if (p.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 2000 and not Auto_Raid and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
                    if NameMon == "FishmanQuest" then
                        Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                        wait()
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                    elseif Mon == "God's Guard"  then
                        Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                        wait()
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
                    elseif NameMon == "SkyExp1Quest" then
                        Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                        wait()
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
                    elseif NameMon == "ShipQuest1" then
                        Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                        wait()
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                    elseif NameMon == "ShipQuest2" then
                        Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                        wait()
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                    elseif NameMon == "FrostQuest" then
                        Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                        wait()
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
                    else
                            repeat wait(0.5)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
                            wait(.05)
                            game.Players.LocalPlayer.Character.Head:Destroy()
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
                        until (p.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2500 and game.Players.LocalPlayer.Character.Humanoid.Health > 0
                        wait()
                    end
                end
            end)
        end
        
    --------------------------------------------------------------------------------------------------------------------------------------------
    -- toggle ui
    local L_91_ = Instance.new("ScreenGui")
    local L_92_ = Instance.new("ImageButton")
    local L_93_ = Instance.new("UICorner")
    L_91_.Name = "ToggleUI"
    L_91_.Parent = game.CoreGui
    L_91_.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    L_92_.Name = "ToggleButton"
    L_92_.Parent = L_91_
    L_92_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    L_92_.BorderSizePixel = 0
    L_92_.Position = UDim2.new(0.234619886, 0, 0.239034846, 0)
    L_92_.Size = UDim2.new(0, 30, 0, 30)
    L_92_.BackgroundTransparency = 1.000
    L_92_.Image = "http://www.roblox.com/asset/?id=104450799419041"
    L_92_.Draggable = true
    L_92_.MouseButton1Click:Connect(function()
        game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.End, false, game)
    end)
    L_93_.CornerRadius = UDim.new(0, 15)
    L_93_.Parent = L_92_
--------------------------------------------------------------------------------
    --Remove Effect
    -----------------------------------------------------------
    if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Death") then
        game:GetService("ReplicatedStorage").Effect.Container.Death:Destroy()
    end
    if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Respawn") then
        game:GetService("ReplicatedStorage").Effect.Container.Respawn:Destroy()
    end

    spawn(function()
		local v930_args = require(game.ReplicatedStorage.Util.CameraShaker)
		v930_args:Stop()
	end)

local NoAttackAnimation = true
local DmgAttack = game:GetService("ReplicatedStorage").Assets.GUI:WaitForChild("DamageCounter")
local PC = require(game.Players.LocalPlayer.PlayerScripts.CombatFramework.Particle)
local RL = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib)
local RigEven = game:GetService("ReplicatedStorage").RigControllerEvent
local AttackAnim = Instance.new("Animation")
local AttackCoolDown = 0
local cooldowntickFire = 0
local MaxFire = 1000
local FireCooldown = 0.06
local FireL = 0
local Fast_Attack = true
local bladehit = {}

RL.wrapAttackAnimationAsync = function(a, b, c, d, func)
    if not NoAttackAnimation then
        return RL.wrapAttackAnimationAsync(a, b, c, 60, func)
    end

    local Hits = {}
    local Client = game.Players.LocalPlayer
    local Characters = game:GetService("Workspace").Characters:GetChildren()
    for _, v in pairs(Characters) do
        local Human = v:FindFirstChildOfClass("Humanoid")
        if v.Name ~= Client.Name and Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < 65 then
            table.insert(Hits, Human.RootPart)
        end
    end
    local Enemies = game:GetService("Workspace").Enemies:GetChildren()
    for _, v in pairs(Enemies) do
        local Human = v:FindFirstChildOfClass("Humanoid")
        if Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < 65 then
            table.insert(Hits, Human.RootPart)
        end
    end
    a:Play(0.01, 0.01, 0.01)
    pcall(func, Hits)
end

local function getAllBladeHits(Sizes)
    local Hits = {}
    local Client = game.Players.LocalPlayer
    local Enemies = game:GetService("Workspace").Enemies:GetChildren()
    for _, v in pairs(Enemies) do
        local Human = v:FindFirstChildOfClass("Humanoid")
        if Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes + 5 then
            table.insert(Hits, Human.RootPart)
        end
    end
    return Hits
end

local function getAllBladeHitsPlayers(Sizes)
    local Hits = {}
    local Client = game.Players.LocalPlayer
    local Characters = game:GetService("Workspace").Characters:GetChildren()
    for _, v in pairs(Characters) do
        local Human = v:FindFirstChildOfClass("Humanoid")
        if v.Name ~= Client.Name and Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes + 5 then
            table.insert(Hits, Human.RootPart)
        end
    end
    return Hits
end

local CombatFramework = require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework"))
local CombatFrameworkR = getupvalues(CombatFramework)[2]

local function CancelCoolDown()
    local ac = CombatFrameworkR.activeController
    if ac and ac.equipped then
        AttackCoolDown = tick() + (FireCooldown or 0.01) + ((FireL / MaxFire) * 0.3)
        RigEven:FireServer("weaponChange", ac.currentWeaponModel.Name)
        FireL = FireL + 1
        fask.delay((FireCooldown or 0.01) + ((FireL + 0.3 / MaxFire) * 0.3), function()
            FireL = FireL - 1
        end)
    end
end

local function AttackFunction(typef)
    local ac = CombatFrameworkR.activeController
    if ac and ac.equipped then
        local bladehit = {}
        if typef == 1 then
            bladehit = getAllBladeHits(60)
        elseif typef == 2 then
            bladehit = getAllBladeHitsPlayers(65)
        else
            for _, v2 in pairs(getAllBladeHits(55)) do
                table.insert(bladehit, v2)
            end
            for _, v3 in pairs(getAllBladeHitsPlayers(55)) do
                table.insert(bladehit, v3)
            end
        end
        if #bladehit > 0 then
            pcall(fask.spawn, ac.attack, ac)
            if tick() > AttackCoolDown then
                CancelCoolDown()
            end
            if tick() - cooldowntickFire > 0.3 then
                ac.timeToNextAttack = 0
                ac.hitboxMagnitude = 60
                pcall(fask.spawn, ac.attack, ac)
                cooldowntickFire = tick()
            end
            local REALID = ac.anims.basic[3] or ac.anims.basic[2]
            AttackAnim.AnimationId = REALID
            local StartP = ac.humanoid:LoadAnimation(AttackAnim)
            StartP:Play(0.01, 0.01, 0.01)
            RigEven:FireServer("hit", bladehit, REALID and 3 or 2, "")
            fask.delay(0.01, function()
                StartP:Stop()
            end)
        end
    end
end

local function CheckStun()
    local character = game:GetService('Players').LocalPlayer.Character
    return character:FindFirstChild("Stun") and character.Stun.Value ~= 0
end

spawn(function()
    while game:GetService("RunService").Stepped:Wait() do
        local ac = CombatFrameworkR.activeController
        if ac and ac.equipped and not CheckStun() then
            if Fast_Attack then
                pcall(AttackFunction, 1)
            end
        end
    end
end)

-- Cấu hình chế độ tấn công nhanh
local SelectFastAttackMode = "Taidz Fast"
local SelectedFastAttackModes = {"Normal Attack", "Fast Attack", "Taidz Fast"}

local function ChangeModeFastAttack(SelectFastAttackMode)
    if SelectFastAttackMode == "Normal Attack" then
        FireCooldown = 0.1
    elseif SelectFastAttackMode == "Fast Attack" then
        FireCooldown = 0.07
    elseif SelectFastAttackMode == "Taidz Fast" then
        FireCooldown = 0.02
    end
end

-- Dropdown để chọn chế độ tấn công nhanh
local SelectedFastAttackModesDropdown = Tabs.Setting:AddDropdown("SelectedFastAttackModes", {
    Title = "Select Fast Attack",
    Values = SelectedFastAttackModes,
    Multi = false,
    Default = 3,
})

SelectedFastAttackModesDropdown:OnChanged(function(value)
    SelectFastAttackMode = value
    ChangeModeFastAttack(SelectFastAttackMode)
end)

-- Toggle để bật tắt tấn công nhanh
local FASTAT = Tabs.Setting:AddToggle("Fast_Attack", {Title = "Fast Attack", Default = true})
FASTAT:OnChanged(function(value)
    Fast_Attack = value
    DamageAura = value
    DmgAttack.Enabled = not value
end)

local Mouse = game:GetService("Players").LocalPlayer:GetMouse()
Mouse.Button1Down:Connect(function()
    if ClickNoCooldown then
        local ac = CombatFrameworkR.activeController
        if ac and ac.equipped then
            ac.hitboxMagnitude = 55
            pcall(AttackFunction, 2)
        end
    end
end)

        local DropdownTweenSpeed = Tabs.Setting:AddDropdown("DropdownTweenSpeed", {
            Title = "Tween Speed",
            Values = {"250","275","300","325","350"},
            Multi = false,
            Default = 350,
        })
        DropdownTweenSpeed:SetValue("TweenSpeed")
        DropdownTweenSpeed:OnChanged(function(Value)
            getgenv().TweenSpeed = Value
        end)

local ToggleBypassTP = Tabs.Setting:AddToggle("ToggleBypassTP", {Title = "Bypass Tp", Description = "", Default = true })
ToggleBypassTP:OnChanged(function(Value)
    BypassTP = Value
end)
Options.ToggleBypassTP:SetValue(false)

local SliderPosX = Tabs.Setting:AddSlider("SliderPosX", {
    Title = "Pos X",
    Description = "",
    Default = 0,
    Min = 0,
    Max = 100,
    Rounding = 1,
    Callback = function(Value)
      posX = Value
    end
})
SliderPosX:OnChanged(function(Value)
  posX = Value
end)
SliderPosX:SetValue(0)

local SliderPosY = Tabs.Setting:AddSlider("SliderPosY", {
    Title = "Pos Y",
    Description = "",
    Default = 30,
    Min = 0,
    Max = 100,
    Rounding = 1,
    Callback = function(Value)
      posY = Value
    end
})
SliderPosY:OnChanged(function(Value)
  posY = Value
end)
SliderPosY:SetValue(30)

local SliderPosZ = Tabs.Setting:AddSlider("SliderPosZ", {
    Title = "Pos Z",
    Description = "",
    Default = 0,
    Min = 0,
    Max = 100,
    Rounding = 1,
    Callback = function(Value)
      posZ = Value
    end
})
SliderPosZ:OnChanged(function(Value)
     posZ = Value
end)
SliderPosZ:SetValue(0)
local random_pos = math.random(0, 30)

local DropdownSelectWeapon = Tabs.Main:AddDropdown("DropdownSelectWeapon", {
    Title = "Select M1 Weapon ",
    Description = "",
    Values = {'Melee','Sword','Blox Fruit'},
    Multi = false,
    Default = 1,
})
DropdownSelectWeapon:SetValue('Melee')
DropdownSelectWeapon:OnChanged(function(Value)
    ChooseWeapon = Value
end)
task.spawn(function()
    while wait() do
        pcall(function()
            if ChooseWeapon == "Melee" then
                for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.ToolTip == "Melee" then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                            SelectWeapon = v.Name
                        end
                    end
                end
            elseif ChooseWeapon == "Sword" then
                for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.ToolTip == "Sword" then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                            SelectWeapon = v.Name
                        end
                    end
                end
            elseif ChooseWeapon == "Blox Fruit" then
                for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.ToolTip == "Blox Fruit" then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                            SelectWeapon = v.Name
                        end
                    end
                end
            else
                for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.ToolTip == "Melee" then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                            SelectWeapon = v.Name
                        end
                    end
                end
            end
        end)
    end
end)

Tabs.Main:AddParagraph({
    Title = "Main Farm",
    Content = ""
})

local ListF = {"Level Farm", "Farm Bones", "Farm Katakuri"}
    FMode = "Level Farm"
    
    local methodfarm = Tabs.Main:AddDropdown("DropdownTweenSpeed", {
    Title = "Method Farm",
    Values = ListF,
    Multi = false,
    Default = FMode,
})
methodfarm:SetValue("Level Farm")
methodfarm:OnChanged(function(Value)
    FMode = Value
end)

function GetRandomTween(ck)
    local RandomL,R2 = math.random(30,100), math.random(10,40)
    return ck * CFrame.new(RandomL, 100, R2)
end

function RemoveLevelTitle(v)
    return tostring(tostring(v):gsub(" %pLv. %d+%p", ""):gsub(" %pRaid Boss%p", ""):gsub(" %pBoss%p", ""))
end 

plr = game.Players.LocalPlayer
if game.Workspace:FindFirstChild("MobSpawns") then
    for i, v in pairs(game.Workspace:GetChildren()) do
        if v.Name == "MobSpawns" then
            v:Destroy()
        end
    end
end
local CreateFoldermmb = Instance.new("Folder")
CreateFoldermmb.Parent = game.Workspace
CreateFoldermmb.Name = "MobSpawns"
function RemoveLevelTitle(v)
    return tostring(tostring(v):gsub(" %pLv. %d+%p", ""):gsub(" %pRaid Boss%p", ""):gsub(" %pBoss%p", ""))
end 
task.spawn(
    function()
        while task.wait() do 
            pcall(function()
                for i,v in pairs(game.workspace.MobSpawns:GetChildren()) do  
                    v.Name = RemoveLevelTitle(v.Name)
                end
            end)
            task.wait(50)
        end
    end
)
function MobDepTrai()
    MobDepTraiTable = {}
    for i, v in pairs(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()) do
        table.insert(MobDepTraiTable, v)
    end
    local tablefoldermmb = {}
    for i, v in next, require(game:GetService("ReplicatedStorage").Quests) do
        for i1, v1 in next, v do
            for i2, v2 in next, v1.Task do
                if v2 > 1 then
                    table.insert(tablefoldermmb, i2)
                end
            end
        end
    end
    for i, v in pairs(getnilinstances()) do
        if table.find(tablefoldermmb, RemoveLevelTitle(v.Name)) then
            table.insert(MobDepTraiTable, v)
        end
    end
    return MobDepTraiTable
end
local MobSpawnList = MobDepTrai()
function ReloadFolderMob()
    for i, v in next, game.Workspace.MobSpawns:GetChildren() do
        v:Destroy()
    end
    for i, v in pairs(MobSpawnList) do
        if v then
            if v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") then
                MobNew = Instance.new("Part")
                MobNew.CFrame = v.HumanoidRootPart.CFrame
                MobNew.Name = v.Name
                MobNew.Parent = game.Workspace.MobSpawns
            elseif v:IsA("Part") then
                MobNew = v:Clone()
                MobNew.Parent = game.Workspace.MobSpawns
            end
        end
    end
end
ReloadFolderMob()
function CheckMobSpawns(ic)
    for _,MobSpawnsFolder in pairs(game.Workspace.MobSpawns:GetChildren()) do
        if MobSpawnsFolder.Name == ic then
            return MobSpawnsFolder
        end
    end
end

function GetMobSpawnList(a)
    a = RemoveLevelTitle(a)
    k = {}
    for i, v in pairs(game.Workspace.MobSpawns:GetChildren()) do
        if v.Name == a then
            table.insert(k, v)
        end
    end
    return k
end

function VelocityEnemys(enemy)
    local humanoid = enemy.HumanoidRootPart or enemy:WaitForChild('HumanoidRootPart')
    if not humanoid then return end    
    humanoid.ChildAdded:Connect(function(child)
        if child:IsA("BodyVelocity") or child:IsA("BodyPosition") then
            child.MaxForce = Vector3.new(0, 0, 0)
            child.P = 0 
        elseif child:IsA("BodyGyro") then 
            child.P = 0 
            child.MaxTorque = Vector3.new(0, 0, 0)
        end
    end)
end
game.workspace.Characters.ChildAdded:Connect(loadplr)
function TweenObject(TweenCFrame,obj,ts)
    if not ts then ts = 350 end
    local tween_s = game:service "TweenService"
    local info = TweenInfo.new((TweenCFrame.Position -obj.Position).Magnitude /ts,Enum.EasingStyle.Linear)
    tween= tween_s:Create(obj,info,{CFrame=TweenCFrame})
    tween:Play() 
end	

function AddHitbox(numberRadius)
    local CRV = getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework")))[2]
    CRV.activeController.hitboxMagnitude = numberRadius
end

function Bring(nameMob,BringC,DistanceF,radius)
    inputed = nameMob
    inputed2 = DistanceF
    inputed3 = radius
    inputed4 = BringC
    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
        if v.Name == inputed and DetectingPart(v) and v.Humanoid.Health > 0 and inputed2.Magnitude <= inputed3 then
            VelocityEnemys(v)
            TweenObject(inputed4, v.HumanoidRootPart, 5000)
            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
            v.Humanoid.JumpPower = 0
            v.Humanoid.WalkSpeed = 0
            v.Humanoid:ChangeState(14)
            v.HumanoidRootPart.CanCollide = false
            v.Head.CanCollide = false
            if v.Humanoid:FindFirstChild("Animator") then
                v.Humanoid.Animator:Destroy()
            end
            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
        end
    end
end

function CheckEnemies(k, replicated)
    if not replicated then
        replicated = false
    end
    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
        if type(k) == "table" then
            if table.find(k, v.Name) and DetectingPart(v) and v.Humanoid.Health > 0 then
                return v
            end
        else
            if v.Name == k and DetectingPart(v) and v.Humanoid.Health > 0 then
                return v
            end
        end
    end
    if replicated then
        for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
            if type(k) == "table" then
                if table.find(k, v.Name) then
                    return v
                end
            else
                if v.Name == k then
                    return v
                end
            end
        end
    end
end

function DetectingPart(v1)
    return v1 and v1:FindFirstChild("HumanoidRootPart") and v1:FindFirstChild("Humanoid")
end

local KillMonster = function(mob,bringmobvalue,value)
    if CheckEnemies(mob) then
        local v = CheckEnemies(mob)
        task.spawn(function()
            if bringmobvalue == true then
                Bring(v.Name,v.HumanoidRootPart.CFrame,(v.HumanoidRootPart.Position - v.HumanoidRootPart.Position), 350)
            end
        end)
        if DetectingPart(v) and v.Humanoid.Health > 0 then
            repeat task.wait()
                NeedAttacking = true
                AutoHaki()
                EquipTool(SelectWeapon)
                Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
            until value or v:FindFirstChild("Humanoid") or not v:FindFirstChild("HumanoidRootPart") or v.Humanoid.Health <= 0
        end
    end
end

function GetQuest()
    local Distance = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest().Position).Magnitude
    if Distance <= 20 then
        game.ReplicatedStorage.Remotes["CommF_"]:InvokeServer("StartQuest", tostring(CheckDoubleQuestSkidcuaYMF().Mob2), CheckDoubleQuestSkidcuaYMF().ID)
    else
        Tween(CFrameQuest())
    end
end

function GetMob()
    local tablegetmob = {}
    for i,v in pairs(game.Workspace.MobSpawns:GetChildren()) do
        if not table.find(tablegetmob, v.Name) then
            table.insert(tablegetmob, v.Name)
        end
    end
    if string.find(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()[1].Name, "Lv.") then
        for i, v in pairs(tablegetmob) do
            local b = v
            v = RemoveLevelTitle(v)
            if v == CheckNameMobDoubleQuest() then
                return b
            end
        end
    else
        return CheckNameMobDoubleQuest()
    end
end

local startfarm = Tabs.Main:AddToggle("Start Method Farm", { Title = "Start Method Farm", Description = "", Default = false })
startfarm:OnChanged(function(Value)
    _G.MethodFarm = Value
    StopTween(_G.MethodFarm )
end)

spawn(function ()
    while task.wait() do
        if FMode == "Level Farm" and _G.MethodFarm then
            if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible then
                if not MobLevel1OrMobLevel2() then
                    for i, v in pairs(GetMobSpawnList(GetMob())) do
                        pcall(function()
                            if not MobLevel1OrMobLevel2() and FMode == "Level Farm" and _G.MethodFarm then
                                Tween(GetRandomTween(v.CFrame))
                            end
                        end)
                    end
                else
                    pcall(function()
                        for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if v.Name == MobLevel1OrMobLevel2() and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("Quest").Visible then
                                repeat task.wait()
                                    T.Text = ("Auto Farm: Killing Mob | " .. (v.Name))
                                    NeedAttacking = true
                                    AutoHaki()
                                    EquipTool(SelectWeapon)
                                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                                    KillMonster(v.Name, true, FMode == "Level Farm" and _G.MethodFarm == false)
                                until not v:FindFirstChild("Humanoid") or not v:FindFirstChild("HumanoidRootPart") or v.Humanoid.Health <= 0 or not FMode == "Level Farm" and _G.MethodFarm
                            end
                        end
                    end)
                end
            else
                GetQuest()
            end
        end
    end
end)

function GetDistance(q)
    if typeof(q) == "CFrame" then
        return LP:DistanceFromCharacter(q.Position)
    elseif typeof(q) == "Vector3" then
        return LP:DistanceFromCharacter(q)
    end
end

local BoneCFrame = CFrame.new(-9515.75, 174.8521728515625, 6079.40625)
local BoneCFrame2 = CFrame.new(-9359.453125, 141.32679748535156, 5446.81982421875)

spawn(
    function()
        while wait() do
            if FMode == "Farm Bones" and _G.MethodFarm then
                pcall(
                    function()
                        local QuestTitle =
                            game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                        if not string.find(QuestTitle, "Demonic Soul") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                        end
                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                            if BypassTP then
                                if
                                    (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                                        BoneCFrame2.Position).Magnitude > 2500
                                 then
                                    BTP(BoneCFrame2)
                                elseif
                                    (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
                                        BoneCFrame.Position).Magnitude < 2500
                                 then
                                    Tween(BoneCFrame)
                                end
                            else
                                Tween(BoneCFrame)
                            end
                            if
                                (BoneCFrame.Position -
                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                    3
                             then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "StartQuest",
                                    "HauntedQuest2",
                                    1
                                )
                            end
                        elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                            if
                                game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or
                                    game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or
                                    game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or
                                    game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy")
                             then
                                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if
                                        v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and
                                            v.Humanoid.Health > 0
                                     then
                                        if
                                            v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or
                                                v.Name == "Demonic Soul" or
                                                v.Name == "Posessed Mummy"
                                         then
                                            if
                                                string.find(
                                                    game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,
                                                    "Demonic Soul"
                                                )
                                             then
                                                repeat
                                                    wait()
                                                    T.Text = ("Auto Farm: Killing Mob | " .. (v.Name))
                                                    NeedAttacking = true
                                                    AutoHaki()
                                                    EquipTool(SelectWeapon)
                                                    Tween(
                                                        v.HumanoidRootPart.CFrame * CFrame.new(posX, posY, posZ)
                                                    )
                                                    KillMonster(v.Name, true, FMode == "Farm Bones" and _G.MethodFarm == false)
                                                until not _G.MethodFarm or v.Humanoid.Health <= 0 or not v.Parent or
                                                    game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible ==
                                                        false
                                            else
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                    "AbandonQuest"
                                                )
                                            end
                                        end
                                    end
                                end
                            else
                            end
                        end
                    end
                )
            end
        end
    end
)

spawn(function()
    while wait() do
        if FMode == "Farm Katakuri" and _G.MethodFarm then
            pcall(function()
                local CakeCFrame = CFrame.new(-2142.66821,71.2588654,-12327.4619,0.996939838,-4.33107843e-08,0.078172572,4.20252917e-08,1,1.80894251e-08,-0.078172572,-1.47488439e-08, 0.996939838)
                local CongCake = CFrame.new(-2009.2802734375, 4532.97216796875, -14937.3076171875)
                spawn(function()
                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CakeCFrame.Position).Magnitude > 2000 then
                        BTP(CakeCFrame)
                        wait(3)
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CakeCFrame.Position).Magnitude < 2000 then
                        Tween(CakeCFrame)
                        end
                    end
                end)
                if game.ReplicatedStorage:FindFirstChild("Cake Prince") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") or game:GetService("Workspace").Enemies:FindFirstChild("Dough King") or game:GetService("ReplicatedStorage"):FindFirstChild("Dough King") then   
                    if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") or game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do 
                            if v.Name == "Cake Prince" or v.Name == "Dough King" then
                                for i,v in pairs (game.Workspace.Enemies:GetChildren()) do
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    if v.Name then
                                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v:FindFirstChild("HumanoidRootPart").Position).Magnitude <= 5000 then
                                      repeat wait()
                                        T.Text = ("Auto Farm: Killing Boss | " .. (v.Name))
                                        AutoHaki()
                                        EquipTool(SelectWeapon)
                                        Tween(v.HumanoidRootPart.CFrame * CFrame.new(0, 35, 0))
                                        if game:GetService("Workspace")["_WorldOrigin"]:FindFirstChild("Ring") or
                                        game:GetService("Workspace")["_WorldOrigin"]:FindFirstChild("Fist") then
                                            Tween(v.HumanoidRootPart.CFrame * CFrame.new(0, 170, 0))
                                       else
                                        Tween(v.HumanoidRootPart.CFrame * CFrame.new(0, 35, 0))
                                       end
                                       NeedAttacking = true
                                    KillMonster(v.Name, true, FMode == "Farm Katakuri" and _G.MethodFarm == false)
                                    until not _G.MethodFarm or not v.Parent or v.Humanoid.Health <= 0 or not game.Workspace.Enemies:FindFirstChild(v.Name)
                                    end
                                    end
                                    end
                                end
                            end
                        end
                    else -- -2009.2802734375, 4532.97216796875, -14937.3076171875
                        Tween(CongCake)
                    end
                else
                    local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                    if not string.find(QuestTitle, "Head Baker") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                    end
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", "CakeQuest2", 2)
                    elseif game.Workspace.Enemies:FindFirstChild("Baking Staff") or game.Workspace.Enemies:FindFirstChild("Head Baker") or game.Workspace.Enemies:FindFirstChild("Cake Guard") or game.Workspace.Enemies:FindFirstChild("Cookie Crafter")  then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do  
                            if (v.Name == "Baking Staff" or v.Name == "Head Baker" or v.Name == "Cake Guard" or v.Name == "Cookie Crafter") and v.Humanoid.Health > 0 then
                                repeat wait()
                                    T.Text = ("Auto Farm: Killing Mob | " .. (v.Name))
                                    NeedAttacking = true
                                    AutoHaki()
                                    EquipTool(SelectWeapon) 
                                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                                    KillMonster(v.Name, true, FMode == "Farm Katakuri" and _G.MethodFarm == false)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner", true)
                                until _G.MethodFarm == false or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0
                            end
                        end
                    else
                        Tween(CakeCFrame)
                    end
                end
            end)
        end
    end
end)

local ToggleMobAura = Tabs.Main:AddToggle("ToggleMobAura", {Title = "Farm Mob Aura", Description = "", Default = false })
ToggleMobAura:OnChanged(function(Value)
    _G.AutoNear = Value
end)
Options.ToggleMobAura:SetValue(false)
spawn(function()
    while wait(.1) do
    if _G.AutoNear then
    pcall(function()
      for i,v in pairs (game.Workspace.Enemies:GetChildren()) do
      if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
      if v.Name then
      if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v:FindFirstChild("HumanoidRootPart").Position).Magnitude <= 5000 then
        repeat wait()
            T.Text = ("Auto Farm: Killing Mob | " .. (v.Name))
                                    NeedAttacking = true
                                    AutoHaki()
                                    EquipTool(SelectWeapon) 
                                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                                    KillMonster(v.Name, true, _G.AutoNear == false)
      until not _G.AutoNear or not v.Parent or v.Humanoid.Health <= 0 or not game.Workspace.Enemies:FindFirstChild(v.Name)
    end
      end
      end
      end
      end)
    end
    end
  end)

  local ClientTime = Tabs.Status:AddParagraph({
    Title = "Client Time",
    Content = ""
})
function UpdateTime()
local GameTime = math.floor(workspace.DistributedGameTime+0.5)
local Hour = math.floor(GameTime/(60^2))%24
local Minute = math.floor(GameTime/(60^1))%60
local Second = math.floor(GameTime/(60^0))%60
ClientTime:SetDesc("Client Time : Hours : "..Hour.. "  Minutes : "..Minute.."  Seconds : "..Second)
end
spawn(function()
while task.wait() do
pcall(function()
UpdateTime()
end)
end
end)

  function MirageIslandCheck()
    if game.Workspace._WorldOrigin.Locations:FindFirstChild("Mirage Island") then
        return "✅"
    else
        return "❌"
    end
    return "❌"
end
function KitsuneIslandCheck()
    if game.Workspace.Map:FindFirstChild("KitsuneIsland") then
        return "✅"
    else
        return "❌"
    end
    return "❌"
end
function MoonTextureId()
    if First_Sea then
        return game:GetService("Lighting").FantasySky.MoonTextureId
    elseif Second_Sea then
        return game:GetService("Lighting").FantasySky.MoonTextureId
    elseif Third_Sea then
        return game:GetService("Lighting").Sky.MoonTextureId
    end
    if game:GetService("Lighting"):FindFirstChild("FantasySky") then
        return game:GetService("Lighting").FantasySky.MoonTextureId
    elseif game:GetService("Lighting"):FindFirstChild("Sky") then
        return game:GetService("Lighting").Sky.MoonTextureId
    end
end
function CheckMoon()
    moon8 = "http://www.roblox.com/asset/?id=9709150401"
    moon7 = "http://www.roblox.com/asset/?id=9709150086"
    moon6 = "http://www.roblox.com/asset/?id=9709149680"
    moon5 = "http://www.roblox.com/asset/?id=9709149431"
    moon4 = "http://www.roblox.com/asset/?id=9709149052"
    moon3 = "http://www.roblox.com/asset/?id=9709143733"
    moon2 = "http://www.roblox.com/asset/?id=9709139597"
    moon1 = "http://www.roblox.com/asset/?id=9709135895"
    moonreal = MoonTextureId()
    cofullmoonkothangbeo = "Bad Moon"
    if moonreal == moon5 or moonreal == moon4 then
        if moonreal == moon5 then
            return "Full Moon"
        elseif moonreal == moon4 then
            return "Next Night"
        end
    end
    return cofullmoonkothangbeo
end
function function6()
    return math.floor(game.Lighting.ClockTime)
end
function getServerTime()
    RealTime = tostring(math.floor(game.Lighting.ClockTime * 100) / 100)
    RealTime = tostring(game.Lighting.ClockTime)
    RealTimeTable = RealTime:split(".")
    Minute, Second = RealTimeTable[1], tonumber(0 + tonumber(RealTimeTable[2] / 100)) * 60
    return Minute, Second
end
function function8()
    local a = game.Lighting
    local a = a.ClockTime
    if CheckMoon() == "Full Moon" and a <= 5 then
        return tostring(function6()) .. " ( Will End Moon In " .. math.floor(5 - a) .. " Minutes )"
    elseif CheckMoon() == "Full Moon" and (a > 5 and a < 12) then
        return tostring(function6()) .. " ( Fake Moon )"
    elseif CheckMoon() == "Full Moon" and (a > 12 and a < 18) then
        return tostring(function6()) .. " ( Will Full Moon In " .. math.floor(18 - a) .. " Minutes )"
    elseif CheckMoon() == "Full Moon" and (a > 18 and a <= 24) then
        return tostring(function6()) .. " ( Will End Moon In " .. math.floor(24 + 6 - a) .. " Minutes )"
    end
    if CheckMoon() == "Next Night" and a < 12 then
        return tostring(function6()) .. " ( Will Full Moon In " .. math.floor(18 - a) .. " Minutes )"
    elseif CheckMoon() == "Next Night" and a > 12 then
        return tostring(function6()) .. " ( Will Full Moon In " .. math.floor(18 + 12 - a) .. " Minutes )"
    end
    return tostring(function6())
end
local a =
    Tabs.Status:AddParagraph(
    {
        Title = "Server Status :",
        Content = "Mirage : " ..
            MirageIslandCheck() ..
                " \nKitsune : " ..
                    KitsuneIslandCheck() ..
                        " \nFull Moon : " ..
                            CheckMoon() ..
                                " \nServer Time : " .. getServerTime() .. " - Full Moon : " .. function8() .. ""
    }
)
spawn(
    function()
        while wait() do
            a:SetDesc(
                "Mirage : " ..
                    MirageIslandCheck() ..
                        " \nKitsune : " ..
                            KitsuneIslandCheck() ..
                                " \nFull Moon : " ..
                                    CheckMoon() ..
                                        " \nClient Time : " .. getServerTime() .. " - Full Moon : " .. function8() .. ""
            )
        end
    end
)

  local StatusCakess = Tabs.Status:AddParagraph({
    Title = "Dimension Kill",
    Content = ""
})
spawn(function()
    while wait() do
        pcall(function()
            if string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88 then
                StatusCakess:SetDesc("Need Kill : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,41).."")
            elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87 then
                StatusCakess:SetDesc("Need Kill : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,40).."")
            elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86 then
                StatusCakess:SetDesc("Need Kill : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,39).." ")
            else
                StatusCakess:SetDesc("Boss Is Found")
            end
        end)
    end
end)

  local StatusElite = Tabs.Status:AddParagraph({
    Title = "Elite Hunter",
    Content = ""
})
  
  spawn(function()
    while wait() do
        pcall(function()
            if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
                StatusElite:SetDesc("Elite Boss : 🟢 | Killed:  "..game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress"))	
            else
                StatusElite:SetDesc("Elite Boss : 🔴 | Killed: "..game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress"))	
            end
        end)
    end
end)

    Tabs.Travel:AddButton({
        Title = "First Sea",
        Description = "",
        Callback = function()
            T.Text = "Travel Sea 1"
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
        end
    })
    
    Tabs.Travel:AddButton({
        Title = "Second Sea",
        Description = "",
        Callback = function()
            T.Text = "Travel Sea 2"
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
        end
    })
    
    Tabs.Travel:AddButton({
        Title = "Third Sea",
        Description = "",
        Callback = function()
            T.Text = "Travel Sea 3"
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
        end
    })
    
    
    
    if First_Sea then
     IslandList = {
                    "WindMill",
                    "Marine",
                    "Middle Town",
                    "Jungle",
                    "Pirate Village",
                    "Desert",
                    "Snow Island",
                    "MarineFord",
                    "Colosseum",
                    "Sky Island 1",
                    "Sky Island 2",
                    "Sky Island 3",
                    "Prison",
                    "Magma Village",
                    "Under Water Island",
                    "Fountain City",
                    "Shank Room",
                    "Mob Island",
    }
    
    elseif Second_Sea then
           IslandList = {
            "The Cafe",
            "Frist Spot",
            "Dark Area",
            "Flamingo Mansion",
            "Flamingo Room",
            "Green Zone",
            "Factory",
            "Colossuim",
            "Zombie Island",
            "Two Snow Mountain",
            "Punk Hazard",
            "Cursed Ship",
            "Ice Castle",
            "Forgotten Island",
            "Ussop Island",
            "Mini Sky Island",
           }
    
    elseif Third_Sea then
        IslandList = {
            "Mansion",
            "Port Town",
            "Great Tree",
            "Castle On The Sea",
            "MiniSky", 
            "Hydra Island",
            "Floating Turtle",
            "Haunted Castle",
            "Ice Cream Island",
            "Peanut Island",
            "Cake Island",
            "Cocoa Island",
            "Candy Island",
            "Tiki Outpost",
           }
        end
    
    local DropdownIsland = Tabs.Travel:AddDropdown("DropdownIsland",{
        Title = "Select Island",
        Description = "",
        Values = IslandList,
        Multi = false,
        Default = 1,
    })
    
    DropdownIsland:SetValue("...")
    DropdownIsland:OnChanged(function(Value)
        _G.SelectIsland = Value
    end)
    
    local ToggleIsland = Tabs.Travel:AddToggle("ToggleIsland", {Title = "Start Tween", Description = "", Default = false })
    ToggleIsland:OnChanged(function(Value)
        _G.TeleportIsland = Value
        if _G.TeleportIsland == true then
            T.Text = "Travel Island | " .. (_G.SelectIsland)
            repeat wait()
                if _G.SelectIsland == "WindMill" then
                    Tween(CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594))
                elseif _G.SelectIsland == "Marine" then
                    Tween(CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156))
                elseif _G.SelectIsland == "Middle Town" then
                    Tween(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
                elseif _G.SelectIsland == "Jungle" then
                    Tween(CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754))
                elseif _G.SelectIsland == "Pirate Village" then
                    Tween(CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969))
                elseif _G.SelectIsland == "Desert" then
                    Tween(CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688))
                elseif _G.SelectIsland == "Snow Island" then
                    Tween(CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469))
                elseif _G.SelectIsland == "MarineFord" then
                    Tween(CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313))
                elseif _G.SelectIsland == "Colosseum" then
                    Tween( CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969))
                elseif _G.SelectIsland == "Sky Island 1" then
                    Tween(CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063))
                elseif _G.SelectIsland == "Sky Island 2" then  
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
                elseif _G.SelectIsland == "Sky Island 3" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
                elseif _G.SelectIsland == "Prison" then
                    Tween( CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656))
                elseif _G.SelectIsland == "Magma Village" then
                    Tween(CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875))
                elseif _G.SelectIsland == "Under Water Island" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                elseif _G.SelectIsland == "Fountain City" then
                    Tween(CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813))
                elseif _G.SelectIsland == "Shank Room" then
                    Tween(CFrame.new(-1442.16553, 29.8788261, -28.3547478))
                elseif _G.SelectIsland == "Mob Island" then
                    Tween(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
                elseif _G.SelectIsland == "The Cafe" then
                    Tween(CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828))
                elseif _G.SelectIsland == "Frist Spot" then
                    Tween(CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375))
                elseif _G.SelectIsland == "Dark Area" then
                    Tween(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375))
                elseif _G.SelectIsland == "Flamingo Mansion" then
                    Tween(CFrame.new(-483.73370361328, 332.0383605957, 595.32708740234))
                elseif _G.SelectIsland == "Flamingo Room" then
                    Tween(CFrame.new(2284.4140625, 15.152037620544, 875.72534179688))
                elseif _G.SelectIsland == "Green Zone" then
                    Tween( CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344))
                elseif _G.SelectIsland == "Factory" then
                    Tween(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
                elseif _G.SelectIsland == "Colossuim" then
                    Tween( CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641))
                elseif _G.SelectIsland == "Zombie Island" then
                    Tween(CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094))
                elseif _G.SelectIsland == "Two Snow Mountain" then
                    Tween(CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938))
                elseif _G.SelectIsland == "Punk Hazard" then
                    Tween(CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125))
                elseif _G.SelectIsland == "Cursed Ship" then
                    Tween(CFrame.new(923.40197753906, 125.05712890625, 32885.875))
                elseif _G.SelectIsland == "Ice Castle" then
                    Tween(CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188))
                elseif _G.SelectIsland == "Forgotten Island" then
                    Tween(CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875))
                elseif _G.SelectIsland == "Ussop Island" then
                    Tween(CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781))
                elseif _G.SelectIsland == "Mini Sky Island" then
                    Tween(CFrame.new(-288.74060058594, 49326.31640625, -35248.59375))
                elseif _G.SelectIsland == "Great Tree" then
                    Tween(CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625))
                elseif _G.SelectIsland == "Castle On The Sea" then
                    Tween(CFrame.new(-5075.50927734375, 314.5155029296875, -3150.0224609375))
                elseif _G.SelectIsland == "MiniSky" then
                    Tween(CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125))
                elseif _G.SelectIsland == "Port Town" then
                    Tween(CFrame.new(-290.7376708984375, 6.729952812194824, 5343.5537109375))
                elseif _G.SelectIsland == "Hydra Island" then
                    Tween(CFrame.new(5753.5478515625, 610.7880859375, -282.33172607421875))
                elseif _G.SelectIsland == "Floating Turtle" then
                    Tween(CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625))
                elseif _G.SelectIsland == "Mansion" then
                    Tween(CFrame.new(-12468.5380859375, 375.0094299316406, -7554.62548828125))
                elseif _G.SelectIsland == "Haunted Castle" then
                    Tween(CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562))
                elseif _G.SelectIsland == "Ice Cream Island" then
                    Tween(CFrame.new(-902.56817626953, 79.93204498291, -10988.84765625))
                elseif _G.SelectIsland == "Peanut Island" then
                    Tween(CFrame.new(-2062.7475585938, 50.473892211914, -10232.568359375))
                elseif _G.SelectIsland == "Cake Island" then
                    Tween(CFrame.new(-1884.7747802734375, 19.327526092529297, -11666.8974609375))
                elseif _G.SelectIsland == "Cocoa Island" then
                    Tween(CFrame.new(87.94276428222656, 73.55451202392578, -12319.46484375))
                elseif _G.SelectIsland == "Candy Island" then
                    Tween(CFrame.new(-1014.4241943359375, 149.11068725585938, -14555.962890625))
                elseif _G.SelectIsland == "Tiki Outpost" then
                    Tween(CFrame.new(-16542.447265625, 55.68632888793945, 1044.41650390625))
                end
            until not _G.TeleportIsland
        end
    end)
    Options.ToggleIsland:SetValue(false)

    Tabs.Travel:AddButton({
        Title = "Stop Tween",
        Description = "",
        Callback = function()
            StopTween()
        end
    })
    
    game.StarterGui:SetCore("SendNotification", {
Title = "Loading",
Text = "Wait 3s-5s",
Duration = 3,
})


    local Chips = {"Flame","Ice","Quake","Light","Dark","Spider","Rumble","Magma","Buddha","Sand","Phoenix","Dough"}

local DropdownRaid = Tabs.Raid:AddDropdown("DropdownRaid", {
    Title = "Select Chip Raid",
    Description = "",
    Values = Chips,
    Multi = false,
    Default = 1,
})
DropdownRaid:SetValue("...")
DropdownRaid:OnChanged(function(Value)
    _G.SelectChip= Value
end)

local ToggleBuy = Tabs.Raid:AddToggle("ToggleBuy", {Title = "Auto Buy Chip", Description = "", Default = false })
ToggleBuy:OnChanged(function(Value)
    _G.Auto_Buy_Chips_Dungeon = Value
end)
Options.ToggleBuy:SetValue(false)
spawn(function()
    while wait() do
		if _G.Auto_Buy_Chips_Dungeon then
			pcall(function()
				local args = {
					[1] = "RaidsNpc",
					[2] = "Select",
					[3] = _G.SelectChip
				}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			end)
        end
    end
end)

    local ToggleStart = Tabs.Raid:AddToggle("ToggleStart", {Title = "Auto Start Raid", Description = "", Default = false })
    ToggleStart:OnChanged(function(Value)
        _G.Auto_StartRaid = Value
end)
Options.ToggleStart:SetValue(false)

spawn(function()
    while wait(.1) do
        pcall(function()
            if _G.Auto_StartRaid then
                if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false then
                    if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip") then
                        if Second_Sea then
                            fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
                        elseif Third_Sea then
                            fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
                        end
                    end
                end
            end
        end)
    end
end)

local ToggleKillAura = Tabs.Raid:AddToggle("ToggleKillAura", {Title = "Kill Aura", Default = false })
ToggleKillAura:OnChanged(function(Value)
    KillAura = Value
end)
Options.ToggleKillAura:SetValue(false)
spawn(function()
    while wait() do
        if KillAura then
            pcall(function()
                for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                        repeat task.wait()
                            sethiddenproperty(game:GetService('Players').LocalPlayer,"SimulationRadius",math.huge)
                            T.Text = "Doing Raid"
                            v.Humanoid.Health = 0
                            v.HumanoidRootPart.CanCollide = false
                        until not KillAura or not v.Parent or v.Humanoid.Health <= 0
                    end
                end
            end)
        end
    end
end)

local ToggleNextIsland = Tabs.Raid:AddToggle("ToggleNextIsland", {Title = "Auto Next Island", Description = "", Default = false })
ToggleNextIsland:OnChanged(function(Value)
    _G.AutoNextIsland = Value
end)
Options.ToggleNextIsland:SetValue(false)
spawn(function()
    while task.wait() do
        if _G.AutoNextIsland then
            pcall(function()
                if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true then
                    if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
                        Tween(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame * CFrame.new(0,70,100))
                    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
                        Tween(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame * CFrame.new(0,70,100))
                    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
                        Tween(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame * CFrame.new(0,70,100))
                    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
                        Tween(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame * CFrame.new(0,70,100))
                    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                        Tween(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame * CFrame.new(0,70,100))
                    end
                end
            end)
        end
    end
end)

local ToggleGetFruit = Tabs.Raid:AddToggle("ToggleGetFruit", {Title = "Get Fruit Low Money", Description = "", Default = false })
ToggleGetFruit:OnChanged(function(Value)
    _G.Autofruit = Value
end)

spawn(function()
    while wait(.1) do
        pcall(function()
     if _G.Autofruit then
         
local args = {
    [1] = "LoadFruit",
    [2] = "Rocket-Rocket"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
    [1] = "LoadFruit",
    [2] = "Spin-Spin"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
    [1] = "LoadFruit",
    [2] = "Chop-Chop"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))





local args = {
    [1] = "LoadFruit",
    [2] = "Spring-Spring"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
    [1] = "LoadFruit",
    [2] = "Bomb-Bomb"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
    [1] = "LoadFruit",
    [2] = "Smoke-Smoke"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
    [1] = "LoadFruit",
    [2] = "Spike-Spike"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
    [1] = "LoadFruit",
    [2] = "Flame-Flame"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
    [1] = "LoadFruit",
    [2] = "Falcon-Falcon"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
    [1] = "LoadFruit",
    [2] = "Ice-Ice"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
    [1] = "LoadFruit",
    [2] = "Sand-Sand"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
    [1] = "LoadFruit",
    [2] = "Dark-Dark"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
    [1] = "LoadFruit",
    [2] = "Ghost-Ghost"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
    [1] = "LoadFruit",
    [2] = "Diamond-Diamond"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
    [1] = "LoadFruit",
    [2] = "Light-Light"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
    [1] = "LoadFruit",
    [2] = "Rubber-Rubber"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
    [1] = "LoadFruit",
    [2] = "Barrier-Barrier"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end
end)
end
end)


if Second_Sea then
Tabs.Raid:AddButton({
    Title = "Raid Lab",
    Description = "",
    Callback = function()
        Tween(CFrame.new(-6438.73535, 250.645355, -4501.50684))
    end
})
elseif Third_Sea then
    Tabs.Raid:AddButton({
        Title = "Raid Lab",
        Description = "",
        Callback = function()
            Tween(CFrame.new(-5017.40869, 314.844055, -2823.0127, -0.925743818, 4.48217499e-08, -0.378151238, 4.55503146e-09, 1, 1.07377559e-07, 0.378151238, 9.7681621e-08, -0.925743818))
        end
    })
end
local ToggleAwake = Tabs.Raid:AddToggle("ToggleAwake", {Title = "Auto Awakening", Description = "", Default = false })
ToggleAwake:OnChanged(function(Value)
    _G.AutoAwakenAbilities = Value
end)
Options.ToggleAwake:SetValue(false)
spawn(function()
    while task.wait() do
        if _G.AutoAwakenAbilities then
            pcall(function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Awaken")
            end)
        end
    end
end)

if First_Sea then
    MaterialList = {
      "Scrap Metal","Leather","Angel Wings","Magma Ore","Fish Tail"
    } elseif Second_Sea then
    MaterialList = {
      "Scrap Metal","Leather","Radioactive Material","Mystic Droplet","Magma Ore","Vampire Fang"
    } elseif Third_Sea then
    MaterialList = {
      "Scrap Metal","Leather","Demonic Wisp","Conjured Cocoa","Dragon Scale","Gunpowder","Fish Tail","Mini Tusk"
    }
    end

local DropdownMaterial = Tabs.Raid:AddDropdown("DropdownMaterial", {
    Title = "Select Material",
    Description = "",
    Values = MaterialList,
    Multi = false,
    Default = 1,
})

DropdownMaterial:SetValue("Conjured Cocoa")
DropdownMaterial:OnChanged(function(Value)
    SelectMaterial = Value
end)

local ToggleMaterial = Tabs.Raid:AddToggle("ToggleMaterial", {Title = "Auto Material", Description = "", Default = false })
ToggleMaterial:OnChanged(function(Value)
    _G.AutoMaterial = Value
end)
Options.ToggleMaterial:SetValue(false)
spawn(function()
    while task.wait() do
    if _G.AutoMaterial then
    pcall(function()
      MaterialMon(SelectMaterial)
      if BypassTP then
        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - MPos.Position).Magnitude > 3500 then
        BTP(MPos)
        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - MPos.Position).Magnitude < 3500 then
        Tween(MPos)
        end
        else
          Tween(MPos)
        end
      if game:GetService("Workspace").Enemies:FindFirstChild(MMon) then
      for i,v in pairs (game.Workspace.Enemies:GetChildren()) do
      if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
      if v.Name == MMon then
        repeat wait()
            T.Text = ("Auto Farm: Killing Mob | " .. (MMon))
    NeedAttacking = true
      AutoHaki()
      EquipTool(SelectWeapon)
      Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
      KillMonster(v.Name, false, _G.AutoMaterial == false)
      until not _G.AutoMaterial or not v.Parent or v.Humanoid.Health <= 0
    end
      end
      end
      else
        for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()) do
      if string.find(v.Name, Mon) then
      if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude >= 10 then
      Tween(v.CFrame * CFrame.new(posX,posY,posZ))
      end
      end
      end
      end
      end)
    end
    end
  end)

  local Auto_Elite = Tabs.Stack:AddToggle("Auto_Elite", {Title = "Auto Elite", Description = "Sea 3 Function Only", Default = false })
  Auto_Elite:OnChanged(function(Value)
    _G.DitElite = Value
  end)
  Options.Auto_Elite:SetValue(false)
  
spawn(function()
while wait() do
if _G.DitElite and Third_Sea then
  if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Diablo") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Deandre") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Urban") then
      if game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
          if v.Name == "Diablo" or v.Name == "Deandre" or v.Name == "Urban" then
            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
              repeat task.wait()
                T.Text = ("Auto Farm: Killing Mob | " .. (v.Name))
                NeedAttacking = true
                AutoHaki()
                EquipTool(SelectWeapon)
                Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                KillMonster(v.Name, true, _G.DitElite == false)
                game:GetService("VirtualUser"):CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(0,1,0,1))
              until not _G.DitElite or v.Humanoid.Health <= 0 or not v.Parent
            end
          end
        end
      else
        if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") then
            Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
        elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") then
            Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
        elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban") then
            Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Urban").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
        end
      end
    end
  else
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
  end
end
end
end)        

  local Auto_Pirate = Tabs.Stack:AddToggle("Auto_Pirate", {Title = "Auto Pirate Raid", Description = "Sea 3 Function Only", Default = false })
  Auto_Pirate:OnChanged(function(Value)
    _G.AutoRaidPirate = Value
  end)
  Options.Auto_Pirate:SetValue(false)
  
spawn(function()
while wait() do
if _G.AutoRaidPirate and Third_Sea then
pcall(function()
  local CFrameBoss = CFrame.new(-5496.17432, 313.768921, -2841.53027, 0.924894512, 7.37058015e-09, 0.380223751, 3.5881019e-08, 1, -1.06665446e-07, -0.380223751, 1.12297109e-07, 0.924894512)
  if (CFrame.new(-5085.23681640625, 316.5072021484375, -3156.202880859375).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 350 then
    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
      if _G.RaidPirate and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
        if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 500 then
          repeat task.wait()
            T.Text = ("Auto Farm: Killing Mob | " .. (v.Name))
            NeedAttacking = true
            AutoHaki()
            EquipTool(SelectWeapon)
            Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
            KillMonster(v.Name, true, _G.AutoRaidPirate == false)
          until v.Humanoid.Health <= 0 or not v.Parent or not _G.AutoRaidPirate
        end
      end
    end
  else
    if ((CFrameBoss).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1500 then
        Tween(CFrameBoss)
    else
      BTP(CFrameBoss)
    end
  end
end)
end
end
end)        
  
  local Open_HakiPad = Tabs.Stack:AddToggle("Open_HakiPad", {Title = "Open Haki Pad", Description = "Sea 3 Function Only", Default = false })
  Open_HakiPad:OnChanged(function(Value)
    _G.AutoHakiPad = Value
  end)
  Options.Open_HakiPad:SetValue(false)
  
spawn(function()
while wait() do
if _G.AutoHakiPad and Third_Sea then      
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Pure Red")
wait(0.5)
repeat Tween(CFrame.new(-5414.41357, 309.865753, -2212.45776)) wait() until not _G.AutoHakiPad or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-5414.41357, 309.865753, -2212.45776)).Magnitude <= 10
wait(0.5)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Snow White")
wait(0.5)
repeat Tween(CFrame.new(-4971.47559, 331.565765, -3720.02954)) wait() until not _G.AutoHakiPad or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-4971.47559, 331.565765, -3720.02954)).Magnitude <= 10
wait(0.5)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Winter Sky")
wait(0.5)
repeat Tween(CFrame.new(-5420.16602, 1084.9657, -2666.8208)) wait() until not _G.AutoHakiPad or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-5420.16602, 1084.9657, -2666.8208)).Magnitude <= 10
end
end
end)        

  local Auto_Killindra = Tabs.Stack:AddToggle("Auto_Killindra", {Title = "Auto Kill Rip Indra", Description = "Sea 3 Function Only", Default = false })
  Auto_Killindra:OnChanged(function(Value)
    _G.RipIndraKill = Value
  end)
  Options.Auto_Killindra:SetValue(false)

spawn(function()
while wait() do
if _G.RipIndraKill then
if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form") or game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") then
  for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
    if v.Name == ("rip_indra True Form" or v.Name == "rip_indra") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
      repeat task.wait()
        T.Text = ("Auto Farm: Killing Mob | " .. (v.Name))
            NeedAttacking = true
            AutoHaki()
            EquipTool(SelectWeapon)
            Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
            KillMonster(v.Name, true, _G.RipIndraKill == false)
      until not _G.RipIndraKill or v.Humanoid.Health <= 0
    end
  end
end
end
end
end)

  local Auto_SoulReaper= Tabs.Stack:AddToggle("Auto_SoulReaper", {Title = "Auto Kill Soul Reaper", Description = "Sea 3 Function Only", Default = false })
  Auto_SoulReaper:OnChanged(function(Value)
    _G.AutoFarmBossHallow = Value
  end)
  Options.Auto_SoulReaper:SetValue(false)

spawn(function()
while wait() do
if _G.Auto_StartRaidAutoFarmBossHallow then
if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") then
  for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
    if v.Name == "Soul Reaper" then
      if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
        repeat task.wait()
            T.Text = ("Auto Farm: Killing Mob | " .. (v.Name))
            NeedAttacking = true
            AutoHaki()
            EquipTool(SelectWeapon)
            Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
            KillMonster(v.Name, true, _G.AutoFarmBossHallow == false)
        until not _G.AutoFarmBossHallow or not v.Parent or v.Humanoid.Health <= 0
      end
    end
  end
else
  if game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper") then
    Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper").HumanoidRootPart.CFrame * CFrame.new(5,10,2))
  end
end
end
end
end)

  if First_Sea then
      tableBoss = {"The Gorilla King","Bobby","Yeti","Mob Leader","Vice Admiral","Warden","Chief Warden","Swan","Magma Admiral","Fishman Lord","Wysper","Thunder God","Cyborg","Saber Expert"}
  elseif Second_Sea then
      tableBoss = {"Diamond","Jeremy","Fajita","Don Swan","Smoke Admiral","Cursed Captain","Darkbeard","Order","Awakened Ice Admiral","Tide Keeper"}
  elseif Third_Sea then
      tableBoss = {"Stone","Island Empress","Kilo Admiral","Captain Elephant","Beautiful Pirate","rip_indra True Form","Longma","Soul Reaper","Cake Queen"}
  end
  
  local Boss_Snipe = Tabs.Stack:AddDropdown("Boss_Snipe", {
      Title = "Select Boss Snipe",
      Description = "",
      Values = tableBoss,
      Multi = true,
      Default = 1,
  })
  Boss_Snipe:SetValue("")
  Boss_Snipe:OnChanged(function(Value)
    _G.SelectBoss = Value
end)
  
  local Auto_Boss = Tabs.Stack:AddToggle("Auto_Boss", {Title = "Start Boss Snipe", Description = "", Default = false })
  Auto_Boss:OnChanged(function(Value)
    _G.AutoBoss = Value
  end)
  Options.Auto_Boss:SetValue(false)
  
spawn(function()
while wait() do
if _G.AutoBoss then
if game:GetService("Workspace").Enemies:FindFirstChild(_G.SelectBoss) then
  for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
    if v.Name == _G.SelectBoss then
      if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
        repeat task.wait()
            T.Text = "Auto Farm: Killing Boss | " .. (_G.SelectBoss)
            NeedAttacking = true
            AutoHaki()
            EquipTool(SelectWeapon)
            Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
            KillMonster(v.Name, true, _G.AutoBoss == false)                   
        until not  _G.AutoBoss or not v.Parent or v.Humanoid.Health <= 0
      end
    end
  end
else
  if game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss) then
    Tween(game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame * CFrame.new(5,10,2))
  end
end
end
end
end)  

local AutoBartilo = Tabs.Stack:AddToggle("AutoBartilo", {Title = "Auto Bartilo", Description = "Sea 2 Function Only", Default = false })
AutoBartilo:OnChanged(function(Value)
    _G.AutoBartilo = Value
  end)
  Options.AutoBartilo:SetValue(false)

  task.spawn(function ()
    while task.wait() do
        if _G.AutoBartilo then
            Race = CheckRace()
            if not string.find(Race, "V3") and not string.find(Race, "V4") then
                if not Second_Sea then
                    local args = {[1] = "TravelDressrosa"}
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                end
            end
            if string.find(Race, "V1") then
                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 0 then
                    if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        if CheckEnemies(RemoveLevelTitle("Swan Pirate [Lv. 775]")) then
                            local v = CheckEnemies(RemoveLevelTitle("Swan Pirate [Lv. 775]"))
                            pcall(function()
                                repeat task.wait()
                                    T.Text = ("Auto Farm: Killing Mob | " .. (CheckEnemies))
                                    NeedAttacking = true
                                    AutoHaki()
                                    EquipTool(SelectWeapon)
                                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                                    KillMonster(v.Name, false, _G.AutoBartilo == false)
                                until not v or v.Humanoid.Health <= 0 or _G.AutoBartilo == false or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
                            end)
                        end
                    end
                else
                    QuestPos = Tween(CFrame.new(1057.92761, 137.614319, 1242.08069))
                end
            else
                Bartilotween = Tween(CFrame.new(-456.28952, 73.0200958, 299.895966))
                local args = {[1] = "StartQuest", [2] = "BartiloQuest", [3] = 1}
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
        elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 1 then
            if CheckEnemies(RemoveLevelTitle("Jeremy [Lv. 850] [Boss]")) then
                v = CheckEnemies(RemoveLevelTitle("Jeremy [Lv. 850] [Boss]"))
                repeat task.wait()
                    T.Text = ("Auto Farm: Killing Mob | " .. (CheckEnemies))
                    NeedAttacking = true
                    AutoHaki()
                    EquipTool(SelectWeapon)
                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                    KillMonster(v.Name, false, _G.AutoBartilo == false)
                until not v and v.Humanoid.Health <= 0 or AutoBartilo == false 
            end
        elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 2 then
            StartCFrame=CFrame.new(-1837.46155,44.2921753,1656.19873,0.999881566,-1.03885048e-22,-0.0153914848,1.07805858e-22,1,2.53909284e-22,0.0153914848,-2.55538502e-22,0.999881566)
            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - StartCFrame.Position).Magnitude > 500 then
                Tween(StartCFrame)
            else
                local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                hrp.CFrame = CFrame.new(-1836, 11, 1714) wait(.5)
                hrp.CFrame = CFrame.new(-1850.49329, 13.1789551, 1750.89685) wait(1)
                hrp.CFrame = CFrame.new(-1858.87305, 19.3777466, 1712.01807) wait(1)
                hrp.CFrame = CFrame.new(-1803.94324, 16.5789185, 1750.89685) wait(1)
                hrp.CFrame = CFrame.new(-1858.55835, 16.8604317, 1724.79541) wait(1)
                hrp.CFrame = CFrame.new(-1869.54224, 15.987854, 1681.00659) wait(1)
                hrp.CFrame = CFrame.new(-1800.0979, 16.4978027, 1684.52368) wait(1)
                hrp.CFrame = CFrame.new(-1819.26343, 14.795166, 1717.90625) wait(1)
                hrp.CFrame = CFrame.new(-1813.51843, 14.8604736, 1724.79541)
            end
        elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 3 then
            _G.AutoBartilo = false
        end
    end
end)

  local Auto_RauDen = Tabs.Stack:AddToggle("Auto_RauDen", {Title = "Auto Kill Black Beard", Description = "Sea 2 Function Only", Default = false })
  Auto_RauDen:OnChanged(function(Value)
    _G.Auto_DarkBoss = Value
  end)
  Options.Auto_RauDen:SetValue(false)
  
spawn(function()
while wait() do
if  _G.Auto_DarkBoss and Second_Sea then
if game:GetService("Workspace").Enemies:FindFirstChild("Darkbeard") then
  for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
    if v.Name == "Darkbeard" then
      if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
        repeat task.wait()
            T.Text = ("Auto Farm: Killing Mob | " .. (v.Name))
            NeedAttacking = true
            AutoHaki()
            EquipTool(SelectWeapon)
            Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
            KillMonster(v.Name, true, _G.Auto_DarkBoss == false)                            
        until not  _G.Auto_DarkBoss or not v.Parent or v.Humanoid.Health <= 0
      end
    end
  end
else
  if game:GetService("ReplicatedStorage"):FindFirstChild("Darkbeard") then
    Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Darkbeard").HumanoidRootPart.CFrame * CFrame.new(5,10,2))
  end
end
end
end
end)    

local Auto_VuaBot = Tabs.Stack:AddToggle("Auto_VuaBot", {Title = "Auto Dough King", Description = "Sea 3 Function Only", Default = false })
Auto_VuaBot:OnChanged(function(Value)
    _G.Auto_DoughKing = Value
end)
Options.Auto_VuaBot:SetValue(false)

spawn(function()
    while wait() do
        if  _G.Auto_DoughKing then
            pcall(function()
                if game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
                    if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SweetChaliceNpc"),"Where") then
                        Notify("Not Have Enough Material", 2.5)
                    else
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SweetChaliceNpc")
                    end
                elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Sweet Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("Sweet Chalice") then
                    if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),"Do you want to open the portal now?") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")
                    else
                        if game.Workspace.Enemies:FindFirstChild("Baking Staff") or game.Workspace.Enemies:FindFirstChild("Head Baker") or game.Workspace.Enemies:FindFirstChild("Cake Guard") or game.Workspace.Enemies:FindFirstChild("Cookie Crafter")  then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do  
                                if (v.Name == "Baking Staff" or v.Name == "Head Baker" or v.Name == "Cake Guard" or v.Name == "Cookie Crafter") and v.Humanoid.Health > 0 then
                                    repeat wait()
                                        T.Text = ("Auto Farm: Killing Mob | " .. (v.Name))
                                        NeedAttacking = true
                                        AutoHaki()
                                        EquipTool(SelectWeapon)
                                        Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                                        KillMonster(v.Name, true, _G.Auto_DoughKing == false)      
                                    until _G.Auto_DoughKing == false or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        else
                            Tween(CakeCFrame)
                        end
                    end						
                elseif game.ReplicatedStorage:FindFirstChild("Dough King") or game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do 
                            if v.Name == "Dough King" then
                                repeat wait()
                                    T.Text = ("Auto Farm: Killing Boss | " .. (v.Name))
                                        NeedAttacking = true
                                        AutoHaki()
                                        EquipTool(SelectWeapon)
                                        Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                                        KillMonster(v.Name, true, _G.Auto_DoughKing == false)  
                                until _G.Auto_DoughKing == false or not v.Parent or v.Humanoid.Health <= 0
                            end    
                        end    
                    else
                        Tween(CongCake) 
                    end
                elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Red Key") or game.Players.LocalPlayer.Character:FindFirstChild("Red Key") then
                    local args = {
                        [1] = "CakeScientist",
                        [2] = "Check"
                    }

                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                else
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Diablo") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Deandre") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Urban") then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Diablo" or v.Name == "Deandre" or v.Name == "Urban" then
                                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                            repeat wait()
                                                T.Text = ("Auto Farm: Killing Mob | " .. (v.Name))
                                                NeedAttacking = true
                                                AutoHaki()
                                                EquipTool(SelectWeapon)
                                                Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                                                KillMonster(v.Name, true, _G.Auto_DoughKing == false)  
                                            until _G.Auto_DoughKing == false or v.Humanoid.Health <= 0 or not v.Parent or game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice")
                                        end
                                    end
                                end
                            else
                                if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") then
                                    Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                                elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") then
                                    Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                                elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban") then
                                    Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Urban").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                                end
                            end                    
                        end
                    else
                        wait(0.5)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
                    end
                end
            end)
        end
    end
end) 

local ToggleFactory = Tabs.Stack:AddToggle("ToggleFactory", {Title = "Auto Factory", Description = "Sea 2 Function Only", Default = false })
        ToggleFactory:OnChanged(function(Value)
            _G.Factory = Value
        end)
        Options.ToggleFactory:SetValue(false)

        spawn(function()
            while wait() do
                if _G.Factory then
                    if game.Workspace.Enemies:FindFirstChild("Core") then
                        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if v.Name == "Core" and v.Humanoid.Health > 0 then
                                repeat wait()
                                    repeat Tween(CFrame.new(448.46756, 199.356781, -441.389252))
                                        wait()
                                    until not _G.Factory or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(448.46756, 199.356781, -441.389252)).Magnitude <= 10
                                    T.Text = ("Auto Farm | " .. (v.Name))
                                    NeedAttacking = true
                                    AutoHaki()
                                    EquipTool(SelectWeapon)
                                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                                    KillMonster(v.Name, true, _G.Factory == false)  
                                until not v.Parent or v.Humanoid.Health <= 0  or _G.Factory == false
                            end
                        end
                    elseif game.ReplicatedStorage:FindFirstChild("Core") then
                        repeat Tween(CFrame.new(448.46756, 199.356781, -441.389252))
                            wait()
                        until not _G.Factory or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(448.46756, 199.356781, -441.389252)).Magnitude <= 10
                    end
        
                end
            end
        end)

local Soul_Guitar = Tabs.Stack:AddToggle("Soul_Guitar", {Title = "Auto Soul Guitar", Description = "Sea 3 Function Only", Default = false })
Soul_Guitar:OnChanged(function(Value)
    _G.AutoSoulGuitar = Value
end)
Options.Soul_Guitar:SetValue(false)

function getTrophies(Amount)
    for i,v in pairs(game:GetService("Workspace").Map["Haunted Castle"].Trophies.Quest:GetChildren()) do
        if v.Handle.Orientation then
            local NameTro = tonumber(tostring(v.Name:match("%d+")))
            if tonumber(Amount) == tonumber(NameTro) then
                if tonumber(v.Handle.Orientation.Y) == 90 or tonumber(v.Handle.Orientation.Y) == -90 then
                    return {"A", 180, -180}
                elseif tonumber(v.Handle.Orientation.Y) == 0 or tonumber(v.Handle.Orientation.Y) == 180 then
                    return {"B", -90, 90}
                end
            end
        end
    end
end

function GetFirePlacard(Number,Side)
    if tostring(game:GetService("Workspace").Map["Haunted Castle"]["Placard"..Number][Side].Indicator.BrickColor) ~= "Pearl" then
        fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Placard"..Number][Side].ClickDetector)
    end
end

task.spawn(function()
    repeat task.wait() until _G.AutoSoulGuitar
    while task.wait() do
        pcall(function()
            if _G.AutoSoulGuitar then
                if Third_Sea then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent", 2)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent", 2, true)
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check") == nil then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent", 2)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent", 2, true)
                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check").Swamp == false then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Living Zombie" then
                                    if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 then
                                        repeat task.wait()
                                            T.Text = ("Auto Farm: Killing Mob | " .. (v.Name))
                        NeedAttacking = true
                        AutoHaki()
                        EquipTool(SelectWeapon)
                        Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                        KillMonster(v.Name, true, _G.AutoSoulGuitar == false)
                        AddHitbox(500)
                                        until not _G.AutoSoulGuitar or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Workspace").Map["Haunted Castle"].SwampWater.Color ~= Color3.fromRGB(117, 0, 0)
                                    end
                                end
                            end
                        else
                            Tween(CFrame.new(-10170.7275390625, 138.6524658203125, 5934.26513671875))
                        end
                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check").Gravestones == false then
                        GetFirePlacard("7","Left")
                        GetFirePlacard("6","Left")
                        GetFirePlacard("5","Left")
                        GetFirePlacard("4","Right")
                        GetFirePlacard("3","Left")
                        GetFirePlacard("2","Right")
                        GetFirePlacard("1","Right")
                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check").Ghost == false then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress", "Ghost")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress", "Ghost", true)
                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check").Trophies == false then
                        repeat wait()
                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment2:FindFirstChild("ClickDetector"))
                        until game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment2.Line.Position.Y == -1000 or not _G.AutoSoulGuitar
                        repeat wait()
                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment5:FindFirstChild("ClickDetector"))
                        until game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment5.Line.Position.Y == -1000 or not _G.AutoSoulGuitar
                        repeat wait()
                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment6:FindFirstChild("ClickDetector"))
                        until game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment6.Line.Position.Y == -1000 or not _G.AutoSoulGuitar
                        repeat wait()
                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment8:FindFirstChild("ClickDetector"))
                        until game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment8.Line.Position.Y == -1000 or not _G.AutoSoulGuitar
                        repeat wait()
                            fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment9:FindFirstChild("ClickDetector"))
                        until game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment9.Line.Position.Y == -1000 or not _G.AutoSoulGuitar
                        if getTrophies(1)[1] then
                            repeat wait()
                                fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment1:FindFirstChild("ClickDetector"))
                            until game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment1.Line.Rotation.Z == getTrophies(1)[2] or game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment1.Line.Rotation.Z == getTrophies(1)[3] or not _G.AutoSoulGuitar or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check").Trophies == true
                        end
                        if getTrophies(2)[1] then
                            repeat wait()
                                fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment3:FindFirstChild("ClickDetector"))
                            until game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment3.Line.Rotation.Z == getTrophies(2)[2] or game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment3.Line.Rotation.Z == getTrophies(1)[3] or not _G.AutoSoulGuitar or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check").Trophies == true
                        end
                        if getTrophies(3)[1] then
                            repeat wait()
                                fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment4:FindFirstChild("ClickDetector"))
                            until game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment4.Line.Rotation.Z == getTrophies(3)[2] or game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment4.Line.Rotation.Z == getTrophies(1)[3] or not _G.AutoSoulGuitar or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check").Trophies == true
                        end
                        if getTrophies(4)[1] then
                            repeat wait()
                                fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment7:FindFirstChild("ClickDetector"))
                            until game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment7.Line.Rotation.Z == getTrophies(4)[2] or game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment7.Line.Rotation.Z == getTrophies(1)[3] or not _G.AutoSoulGuitar or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check").Trophies == true
                        end
                        if getTrophies(5)[1] then
                            repeat wait()
                                fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment10:FindFirstChild("ClickDetector"))
                            until game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment10.Line.Rotation.Z == getTrophies(5)[2] or  game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment10.Line.Rotation.Z == getTrophies(1)[3] or not _G.AutoSoulGuitar or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check").Trophies == true
                        end
                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check").Pipes == false then
                        Tween(CFrame.new(-9628.02734375, 6.13064432144165, 6157.47802734375))
                        repeat task.wait() until not _G.AutoSoulGuitar or GetDistance(CFrame.new(-9628.02734375, 6.13064432144165, 6157.47802734375)) <= 10                      
                        for i = 10,10 do
                            if game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model["Part"..tostring(i)].BrickColor ~= "Storm blue" then
                                repeat task.wait()
                                    fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model["Part"..tostring(i)].ClickDetector)
                                until game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model["Part"..tostring(i)].BrickColor == "Storm blue" or not _G.AutoSoulGuitar or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check").Pipes == true
                            end
                        end
                        for i = 8,8 do
                            if game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model["Part"..tostring(i)].BrickColor ~= game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].Pipes["Part"..tostring(i)]["Part"..tostring(i)].BrickColor then
                                repeat task.wait()
                                    fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model["Part"..tostring(i)].ClickDetector)
                                until game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model["Part"..tostring(i)].BrickColor == game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].Pipes["Part"..tostring(i)]["Part"..tostring(i)].BrickColor or not _G.AutoSoulGuitar or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check").Pipes == true
                            end
                        end
                        for i = 6,6 do
                            if game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model["Part"..tostring(i)].BrickColor ~= game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].Pipes["Part"..tostring(i)]["Part"..tostring(i)].BrickColor then
                                repeat task.wait()
                                    fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model["Part"..tostring(i)].ClickDetector)
                                until game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model["Part"..tostring(i)].BrickColor == game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].Pipes["Part"..tostring(i)]["Part"..tostring(i)].BrickColor or not _G.AutoSoulGuitar or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check").Pipes == true
                            end
                        end
                        for i = 3,4 do
                            if game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model["Part"..tostring(i)].BrickColor ~= game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].Pipes["Part"..tostring(i)]["Part"..tostring(i)].BrickColor then
                                repeat task.wait(5)
                                    fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model["Part"..tostring(i)].ClickDetector)
                                until game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model["Part"..tostring(i)].BrickColor == game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].Pipes["Part"..tostring(i)]["Part"..tostring(i)].BrickColor or not _G.AutoSoulGuitar or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check").Pipes == true
                            end
                        end
                        if game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part1.BrickColor ~= game:GetService("Workspace").Map["Haunted Castle"].IslandModel["gamma_Cube.275"].BrickColor then
                            repeat task.wait()
                                fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part1.ClickDetector)
                            until game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part1.BrickColor == game:GetService("Workspace").Map["Haunted Castle"].IslandModel["gamma_Cube.275"].BrickColor or not _G.AutoSoulGuitar or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GuitarPuzzleProgress","Check").Pipes == true
                        end
                    end
                end
            end
        end)
    end
end)

task.spawn(function()
    repeat task.wait() until _G.AutoSoulGuitar
    while task.wait() do
        pcall(function()
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if _G.AutoSoulGuitar and KillMonster(v.Name, true, _G.AutoSoulGuitar == false) and game:GetService("Workspace").Map["Haunted Castle"].SwampWater.Color == Color3.fromRGB(117, 0, 0) then
                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0 and v:FindFirstChild("HumanoidRootPart") and v.Name == "Living Zombie" then
                        if (v.HumanoidRootPart.Position - CFrame.new(-10170.7275390625, 138.6524658203125, 5934.26513671875).Position).Magnitude <= 300 then
                            v:FindFirstChild("HumanoidRootPart").CanCollide = false
                            v:FindFirstChild("HumanoidRootPart").Transparency = 1
                            if not v:FindFirstChild("HumanoidRootPart"):FindFirstChild("BV") then
                                local u = Instance.new("BodyVelocity")
                                u.Parent = v:FindFirstChild("HumanoidRootPart")
                                u.Name = "BV"
                                u.MaxForce = Vector3.new(100000, 100000, 100000)
                                u.Velocity = Vector3.new(0, 0, 0)
                            end
                            if v:FindFirstChild("Humanoid"):FindFirstChild("Animator") then
                                v:FindFirstChild("Humanoid"):FindFirstChild("Animator"):Remove()
                            end
                            v:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(-10165.7880859375, 138.6524658203125, 5973.7724609375)
                            if v.Humanoid.Health ~= GuiTarMsHealth.Health then
                                _G.BreakGuiTarQuest = true
                                v.Humanoid.Health = 0
                                v:BreakJoints()
                            else
                                _G.BreakGuiTarQuest = false
                            end
                        end
                    end
                end
            end
        end)
    end
end)

Toggle = Tabs.Stack:AddToggle("MyToggle", {Title = "Auto CDK┊New Update", Default = false })

    Toggle:OnChanged(function(Value)
        Auto_Cursed_Dual_Katana = Value
        end)
        
        spawn(function()
        while wait() do
            pcall(function()
                if Auto_Cursed_Dual_Katana then
                    if game.Players.LocalPlayer.Character:FindFirstChild("Yama") or game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
                                EquipWeapon("Yama")
                            end
                        elseif 
                                game.Players.LocalPlayer.Character:FindFirstChild("Tushita") or game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") or game.Players.LocalPlayer.Character:FindFirstChild("Yama") or game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
                        if game.Players.LocalPlayer.Character:FindFirstChild("Tushita") or game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") then
                                EquipWeapon("Tushita")
                            end
                        end
                    else
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem","Yama")
                    end
                end
            end)
        end
    end)
    spawn(function()
        while wait() do
            pcall(function()
                if Auto_Cursed_Dual_Katana then
                    if GetMaterial("Alucard Fragment") == 0 then
                        Auto_Quest_Yama_1 = true
                        Auto_Quest_Yama_2 = false
                        Auto_Quest_Yama_3 = false
                        Auto_Quest_Tushita_1 = false
                        Auto_Quest_Tushita_2 = false
                        Auto_Quest_Tushita_3 = false
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
                    elseif GetMaterial("Alucard Fragment") == 1 then
                        Auto_Quest_Yama_1 = false
                        Auto_Quest_Yama_2 = true
                        Auto_Quest_Yama_3 = false
                        Auto_Quest_Tushita_1 = false
                        Auto_Quest_Tushita_2 = false
                        Auto_Quest_Tushita_3 = false
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
                    elseif GetMaterial("Alucard Fragment") == 2 then
                        Auto_Quest_Yama_1 = false
                        Auto_Quest_Yama_2 = false
                        Auto_Quest_Yama_3 = true
                        Auto_Quest_Tushita_1 = false
                        Auto_Quest_Tushita_2 = false
                        Auto_Quest_Tushita_3 = false
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
                    elseif GetMaterial("Alucard Fragment") == 3 then
                        Auto_Quest_Yama_1 = false
                        Auto_Quest_Yama_2 = false
                        Auto_Quest_Yama_3 = false
                        Auto_Quest_Tushita_1 = true
                        Auto_Quest_Tushita_2 = false
                        Auto_Quest_Tushita_3 = false
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
                    elseif GetMaterial("Alucard Fragment") == 4 then
                        Auto_Quest_Yama_1 = false
                        Auto_Quest_Yama_2 = false
                        Auto_Quest_Yama_3 = false
                        Auto_Quest_Tushita_1 = false
                        Auto_Quest_Tushita_2 = true
                        Auto_Quest_Tushita_3 = false
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
                    elseif GetMaterial("Alucard Fragment") == 5 then
                        Auto_Quest_Yama_1 = false
                        Auto_Quest_Yama_2 = false
                        Auto_Quest_Yama_3 = false
                        Auto_Quest_Tushita_1 = false
                        Auto_Quest_Tushita_2 = false
                        Auto_Quest_Tushita_3 = true
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
                    elseif GetMaterial("Alucard Fragment") == 6 then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton Boss") or game:GetService("Workspace").ReplicatedStorage:FindFirstChild("Cursed Skeleton Boss") then
                            Auto_Quest_Yama_1 = false
                            Auto_Quest_Yama_2 = false
                            Auto_Quest_Yama_3 = false
                            Auto_Quest_Tushita_1 = false
                            Auto_Quest_Tushita_2 = false
                            Auto_Quest_Tushita_3 = false
                            if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton Boss [Lv. 2025] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200]") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Cursed Skeleton Boss [Lv. 2025] [Boss]" or v.Name == "Cursed Skeleton [Lv. 2200]" then
                                        if v.Humanoid.Health > 0 then
                                            EquipWeapon(Sword)
                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                            v.HumanoidRootPart.Transparency = 1
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            --v.Humanoid:ChangeState(11)
                                            --v.Humanoid:ChangeState(14)
                                            PosMon = v.HumanoidRootPart.CFrame
                                            MonFarm = v.Name
                                            Click()
                                        end
                                    end
                                end
                            end
                        else
                            if (CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
                                wait(1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
                                wait(1)
                                topos(CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875))
                                wait(1.5)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                                wait(1.5)
                                topos(CFrame.new(-12253.5419921875, 598.8999633789062, -6546.8388671875))
                            else
                                topos(CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875))
                            end   
                        end
                    end
                end
            end)
        end
    end)

    spawn(function()
        while wait() do
            if Auto_Quest_Yama_1 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Mythological Pirate") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Mythological Pirate" then
                                repeat wait()
                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(0,0,-2))
                                until Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_1 == false
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
                            end
                        end
                    else
                        topos(CFrame.new(-13451.46484375, 543.712890625, -6961.0029296875))
                    end
                end)
            end
        end
    end)

    spawn(function()
        while wait() do
            pcall(function()
                if Auto_Quest_Yama_2 then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v:FindFirstChild("HazeESP") then
                            v.HazeESP.Size = UDim2.new(50,50,50,50)
                            v.HazeESP.MaxDistance = "inf"
                        end
                    end
                    for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                        if v:FindFirstChild("HazeESP") then
                            v.HazeESP.Size = UDim2.new(50,50,50,50)
                            v.HazeESP.MaxDistance = "inf"
                        end
                    end
                end
            end)
        end
    end)

    spawn(function()
        while wait() do
            pcall(function()
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if Auto_Quest_Yama_2 and v:FindFirstChild("HazeESP") and (v.HumanoidRootPart.Position - PosMonsEsp.Position).magnitude <= 300 then
                        v.HumanoidRootPart.CFrame = PosMonsEsp
                        v.HumanoidRootPart.CanCollide = false
                        
                        if not v.HumanoidRootPart:FindFirstChild("BodyVelocity") then
                            local vc = Instance.new("BodyVelocity", v.HumanoidRootPart)
                            vc.MaxForce = Vector3.new(1, 1, 1) * math.huge
                            vc.Velocity = Vector3.new(0, 0, 0)
                        end
                    end
                end
            end)
        end
    end)

    spawn(function()
        while wait() do
            if Auto_Quest_Yama_2 then 
                pcall(function() 
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v:FindFirstChild("HazeESP") then
                            repeat wait()
                                if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                else
                                    EquipWeapon(Sword)
                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v.HumanoidRootPart.Transparency = 1
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    --v.Humanoid:ChangeState(11)
                                    --v.Humanoid:ChangeState(14)
                                    PosMon = v.HumanoidRootPart.CFrame
                                    MonFarm = v.Name
                                    Click()
                                    if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end							
                                end      
                            until Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_2 == false or not v.Parent or v.Humanoid.Health <= 0 or not v:FindFirstChild("HazeESP")
                        else
                            for x,y in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                                if y:FindFirstChild("HazeESP") then
                                    if (y.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
                                        topos(y.HumanoidRootPart.CFrameMon* Farm_Mode)
                                    else
                                        topos(y.HumanoidRootPart.CFrame * Farm_Mode)
                                    end
                                end
                            end
                        end
                    end
                end)
            end
        end
    end)

    spawn(function()
        while wait() do
            if Auto_Quest_Yama_3 then
                pcall(function()
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Hallow Essence") then         
                        topos(game:GetService("Workspace").Map["Haunted Castle"].Summoner.Detection.CFrame)
                    elseif game:GetService("Workspace").Map:FindFirstChild("HellDimension") then
                        repeat wait()
                            if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Hell's Messenger") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Cursed Skeleton" or v.Name == "Cursed Skeleton" or v.Name == "Hell's Messenger" then
                                        if v.Humanoid.Health > 0 then
                                            repeat wait()
                                                EquipWeapon(Sword)
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                v.HumanoidRootPart.Transparency = 1
                                                v.Humanoid.JumpPower = 0
                                                v.Humanoid.WalkSpeed = 0
                                                v.HumanoidRootPart.CanCollide = false
                                                --v.Humanoid:ChangeState(11)
                                                --v.Humanoid:ChangeState(14)
                                                PosMon = v.HumanoidRootPart.CFrame
                                                MonFarm = v.Name
                                                Click()
                                                if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
                                                    v.Humanoid.Animator:Destroy()
                                                end
                                            until v.Humanoid.Health <= 0 or not v.Parent or Auto_Quest_Yama_3 == false
                                        end
                                    end
                                end
                            else
                                wait(5)
                                topos(game:GetService("Workspace").Map.HellDimension.Torch1.CFrame)
                                wait(1.5)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                                wait(1.5)        
                                topos(game:GetService("Workspace").Map.HellDimension.Torch2.CFrame)
                                wait(1.5)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                                wait(1.5)     
                                topos(game:GetService("Workspace").Map.HellDimension.Torch3.CFrame)
                                wait(1.5)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                                wait(1.5)     
                                topos(game:GetService("Workspace").Map.HellDimension.Exit.CFrame)
                            end
                        until Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_3 == false or GetMaterial("Alucard Fragment") == 3
                    else
                        if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") or game.ReplicatedStorage:FindFirstChild("Soul Reaper") then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Soul Reaper" then
                                        if v.Humanoid.Health > 0 then
                                            repeat wait()
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                            until Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_3 == false or game:GetService("Workspace").Map:FindFirstChild("HellDimension")
                                        end
                                    end
                                end
                            else
                                topos(CFrame.new(-9570.033203125, 315.9346923828125, 6726.89306640625))
                            end
                        else
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
                        end
                    end
                end)
            end
        end
    end)
    spawn(function()
        while wait() do
            if Auto_Quest_Tushita_1 then
                topos(CFrame.new(-9546.990234375, 21.139892578125, 4686.1142578125))
                wait(5)
                topos(CFrame.new(-6120.0576171875, 16.455780029296875, -2250.697265625))
                wait(5)
                topos(CFrame.new(-9533.2392578125, 7.254445552825928, -8372.69921875))    
            end
        end
    end)
    spawn(function()
        while wait() do
            if Auto_Quest_Tushita_2 then
                pcall(function()
                    if (CFrame.new(-5539.3115234375, 313.800537109375, -2972.372314453125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if Auto_Quest_Tushita_2 and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000 then
                                    repeat wait()
                                        EquipWeapon(Sword)
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        --v.Humanoid:ChangeState(11)
                                        --v.Humanoid:ChangeState(14)
                                        PosMon = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
                                        Click()
                                        if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
                                            v.Humanoid.Animator:Destroy()
                                        end
                                    until v.Humanoid.Health <= 0 or not v.Parent or Auto_Quest_Tushita_2 == false
                                end
                            end
                        end
                    else
                        topos(CFrame.new(-5545.1240234375, 313.800537109375, -2976.616455078125))
                    end
                end)
            end
        end
    end)
    spawn(function()
        while wait() do
            if Auto_Quest_Tushita_3 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen") or game.ReplicatedStorage:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Cake Queen" then
                                    if v.Humanoid.Health > 0 then
                                        repeat wait()
                                            EquipWeapon(Sword)
                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                            v.HumanoidRootPart.Transparency = 1
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            --v.Humanoid:ChangeState(11)
                                            --v.Humanoid:ChangeState(14)
                                            PosMon = v.HumanoidRootPart.CFrame
                                            MonFarm = v.Name
                                            Click()
                                            if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
                                                v.Humanoid.Animator:Destroy()
                                            end
                                        until Auto_Cursed_Dual_Katana == false or Auto_Quest_Tushita_3 == false or game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension")
                                    end
                                end
                            end
                        else
                            topos(CFrame.new(-709.3132934570312, 381.6005859375, -11011.396484375))
                        end
                    elseif game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension") then
                        repeat wait()
                            if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Heaven's Guardian") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Cursed Skeleton" or v.Name == "Cursed Skeleton" or v.Name == "Heaven's Guardian" then
                                        if v.Humanoid.Health > 0 then
                                            repeat wait()
                                                EquipWeapon(Sword)
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                                v.HumanoidRootPart.Transparency = 1
                                                v.Humanoid.JumpPower = 0
                                                v.Humanoid.WalkSpeed = 0
                                                v.HumanoidRootPart.CanCollide = false
                                                --v.Humanoid:ChangeState(11)
                                                --v.Humanoid:ChangeState(14)
                                                PosMon = v.HumanoidRootPart.CFrame
                                                MonFarm = v.Name
                                                Click()
                                                if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
                                                    v.Humanoid.Animator:Destroy()
                                                end
                                            until v.Humanoid.Health <= 0 or not v.Parent or Auto_Quest_Tushita_3 == false
                                        end
                                    end
                                end
                            else
                                wait(5)
                                topos(game:GetService("Workspace").Map.HeavenlyDimension.Torch1.CFrame)
                                wait(1.5)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                                wait(1.5)        
                                topos(game:GetService("Workspace").Map.HeavenlyDimension.Torch2.CFrame)
                                wait(1.5)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                                wait(1.5)     
                                topos(game:GetService("Workspace").Map.HeavenlyDimension.Torch3.CFrame)
                                wait(1.5)
                                game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                                wait(1.5)     
                                topos(game:GetService("Workspace").Map.HeavenlyDimension.Exit.CFrame)
                            end
                        until not Auto_Cursed_Dual_Katana or not Auto_Quest_Tushita_3 or GetMaterial("Alucard Fragment") == 6
                    end
                end)
            end
        end
    end)

Tabs.NguoiChoi:AddButton({
	Title = "Change Team To Pirates",
	Description = "",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Pirates") 
	end
})


Tabs.NguoiChoi:AddButton({
	Title = "Change Team To Marines",
	Description = "",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Marines") 
	end
})

local ToggleNoClip = Tabs.NguoiChoi:AddToggle("ToggleNoClip", {Title = "No Clip", Description = "", Default = false })
ToggleNoClip:OnChanged(function(value)
    _G.LOf = value
end)
Options.ToggleNoClip:SetValue(false)
spawn(function()
    pcall(function()
        game:GetService("RunService").Stepped:Connect(function()
            if _G.LOf then
                for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false    
                    end
                end
            end
        end)
    end)
end)

local ToggleKen = Tabs.NguoiChoi:AddToggle("ToggleKen", {Title = "Auto Enable Observation", Description = "", Default = false })
ToggleKen:OnChanged(function(value)
    _G.TurnKen = value
end)
Options.ToggleKen:SetValue(false)

spawn(function()
    while wait() do
        pcall(function()
            if _G.AUTOKen then
                repeat task.wait()
                    if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                        game:GetService('VirtualUser'):CaptureController()
                        game:GetService('VirtualUser'):SetKeyDown('0x65')
                        wait(2)
                        game:GetService('VirtualUser'):SetKeyUp('0x65')
                    end
                until game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") or not _G.AUTOKen
            end
        end)
    end
end)  

local ToggleWalkOnWater = Tabs.NguoiChoi:AddToggle("ToggleWalkOnWater", {Title = "Walk On Water", Description = "", Default = false })
ToggleWalkOnWater:OnChanged(function(Value)
    _G.WalkWater = Value
end)
Options.ToggleWalkOnWater:SetValue(false)
 
spawn(function()
    while task.wait() do
        pcall(function()
            if _G.WalkWater then
                game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,112,1000)
            else
                game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,80,1000)
            end
        end)
    end
end)

local Bat_V3 = Tabs.NguoiChoi:AddToggle("Bat_V3", {Title = "Auto Use Race V3", Description = "", Default = false })
Bat_V3:OnChanged(function(Value)
    Enable_RaceV3 = Value
    task.spawn(function()
		while Enable_RaceV3 do wait()
			if Enable_RaceV3 then
				game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility")
			end
		end
	end)
end)
Options.Bat_V3:SetValue(false)

local Bat_V4 = Tabs.NguoiChoi:AddToggle("Bat_V4", {Title = "Auto Use Race V4", Description = "", Default = false })
Bat_V4:OnChanged(function(Value)
    Enable_RaceV4 = Value
	task.spawn(function()
		while Enable_RaceV4 do wait()
			local OpenV4Race = inmyselfss("Awakening")
			if OpenV4Race then
				OpenV4Race.RemoteFunction:InvokeServer(true)
			end
		end
	end)
end)
Options.Bat_V4:SetValue(false)

function inmyselfss(name)
    local player = game:GetService("Players").LocalPlayer
    local backpack = player:FindFirstChild("Backpack")
    if backpack and backpack:FindFirstChild(name) then
        return backpack[name]
    end
    
    local character = player.Character
    if character then
        local tool = character:FindFirstChild(name)
        if tool and tool:IsA("Tool") then
            return tool
        end
    end
    
    return character:FindFirstChild(name)
end

inmyselfss = Fast_2(function(name)
	if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(name) then
		return game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(name)
	end
	local OutValue
	for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do 
		if v:IsA("Tool") then
			if v.Name == name then
				OutValue = v
				break
			end
		end
	end
	return OutValue or game:GetService("Players").LocalPlayer.Character:FindFirstChild(name)
end)

local ToggleDashNoCD = Tabs.NguoiChoi:AddToggle("ToggleDashNoCD", {Title = "Dash No Cooldown", Default = false })
ToggleDashNoCD:OnChanged(function(Value)
    DodgeNoCoolDown = Value
end)
Options.ToggleDashNoCD:SetValue(false)
		if DodgeNoCoolDown then
			for i,v in next, getgc() do
				if game.Players.LocalPlayer.Character.Dodge then
					if typeof(v) == "function" and getfenv(v).script == game.Players.LocalPlayer.Character.Dodge then
						for i2,v2 in next, getupvalues(v) do
							if tostring(v2) == "0.4" then
								repeat wait(.1)
									setupvalue(v,i2,0)
								until not DodgeNoCoolDown
							end
						end
					end
				end
			end
		end

    local Slider = Tabs.NguoiChoi:AddSlider("Slider", {
        Title = "Player Speed",
        Description = "",
        Default = 2,
        Min = 1,
        Max = 100,
        Rounding = 1,
        Callback = function(Value)
            game.Players.LocalPlayer.Character:SetAttribute("SpeedMultiplier",Value)
        end
    })
    local Slider = Tabs.NguoiChoi:AddSlider("Slider", {
        Title = "Jump Power",
        Description = "",
        Default = 50,
        Min = 50,
        Max = 500,
        Rounding = 1,
        Callback = function(Value)
            game.Players.LocalPlayer.Character:SetAttribute("JumpPower",Value)
        end
    })

    Playerslist = {}
    
for i,v in pairs(game:GetService("Players"):GetChildren()) do
  table.insert(Playerslist,v.Name)
end
    
local Select_Player = Tabs.Pvp:AddDropdown("Select_Player", {
    Title = "Select Player ",
    Description = "",
    Values = Playerslist,
    Multi = false,
    Default = 1,
})
Select_Player:SetValue("...")
Select_Player:OnChanged(function(Value)
    getgenv().SelectPly = Value
end)

local Refresh_Players = Tabs.Pvp:AddButton({
    Title = "Refresh Players",
    Description = "",
    Callback = function()
        for i,v in pairs(game:GetService("Players"):GetChildren()) do
           table.insert(Playerslist,v.Name)
        end
    end
})

local Tween_Playes = Tabs.Pvp:AddToggle("Tween_Playes", {Title = "Tween To Player", Description = "", Default = false })
Tween_Playes:OnChanged(function(Value)
getgenv().TeleportPly = Value
pcall(function()
 if getgenv().TeleportPly then
 repeat task.wait() Tween(game:GetService("Players")[getgenv().SelectPly].Character.HumanoidRootPart.CFrame) wait() until getgenv().TeleportPly == false
 end
        end)
end)
Options.Tween_Playes:SetValue(false)

local Kill_PlSelect = Tabs.Pvp:AddToggle("Kill_PlSelect", {Title = "Kill Player", Description = "Work On Select Player", Default = false })
Kill_PlSelect:OnChanged(function(Value)
getgenv().Auto_Kill_Ply = Value
end)
Options.Kill_PlSelect:SetValue(false)

spawn(function()
  while wait() do
    if getgenv().Auto_Kill_Ply then
      if getgenv().SelectPly ~= nil then 
        if game.Players:FindFirstChild(getgenv().SelectPly) then
          if game.Players:FindFirstChild(getgenv().SelectPly).Character.Humanoid.Health > 0 then
            repeat task.wait()
                NeedAttacking = true
                AutoHaki()
                EquipTool(SelectWeapon)
              Tween(game.Players:FindFirstChild(getgenv().SelectPly).Character.HumanoidRootPart.CFrame * CFrame.new(0,5,0))
            until game.Players:FindFirstChild(getgenv().SelectPly).Character.Humanoid.Health <= 0 or not game.Players:FindFirstChild(getgenv().SelectPly) or not getgenv().Auto_Kill_Ply
          end
        end
      end
    end
  end
end)

local Select_Player = Tabs.Pvp:AddDropdown("Select_Player", {
    Title = "Select Method Aim Bot ",
    Description = "",
    Values = {"Select Player","Target nearest Player","FOV Mouse"},
    Multi = false,
    Default = 1,
})
Select_Player:SetValue("...")
Select_Player:OnChanged(function(Value)
    getgenv().SelectMethodAim = Value
end)

local Aim_Bot = Tabs.Pvp:AddToggle("Aim_Bot", {Title = "AimBot", Description = "Work On Select Player", Default = false })
Aim_Bot:OnChanged(function(Value)
getgenv().Aimbot = Value
end)
Options.Aim_Bot:SetValue(false)

local function getPositionOnScreen(Vector)
    local Vec3, OnScreen = game.workspace.CurrentCamera.WorldToScreenPoint(game.workspace.CurrentCamera, Vector)
    return Vector2.new(Vec3.X, Vec3.Y), OnScreen
end
function ClosestPartaimbot()
    local dist = math.huge
    local Closest
    local DistanceToMouse 
    for i,v in pairs(game.Workspace.Characters:GetChildren()) do
        if v:IsA("Model")  then
            if v.Name ~= plr.Name and (game.Players.LocalPlayer.Team == game.Teams.Marines and game.Players[v.Name].Team ~= game.Teams.Marines or game.Players.LocalPlayer.Team ~= game.Teams.Marines)  then
                if getgenv().SelectMethodAim == "Target nearest Player" then
                    local conconcac = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.HumanoidRootPart.Position).Magnitude
                    if conconcac < dist then
                        dist = conconcac
                        Closest = v
                    end
                else
                    local ScreenPosition, OnScreen = getPositionOnScreen(v.HumanoidRootPart.Position)
                    local Distance = (game:GetService("UserInputService").GetMouseLocation(game:GetService("UserInputService")) - ScreenPosition).Magnitude
                    if Distance <= OrionLib.Flags["POV SIZE"].Value then
                        dist = Distance
                        Closest = v
                    end
                end
            end
        end
    end
    return  Closest
end
spawn(function()
    while task.wait() do
        pcall(function()
            if getgenv().Aimbot and getgenv().SelectMethodAim == "FOV Mouse" then 
                fov_circle.Position = game:GetService("UserInputService").GetMouseLocation(game:GetService("UserInputService"))
                fov_circle.Visible =  true 
            else
                fov_circle.Visible =  false 
            end
        end)
    end
end)
game:GetService("RunService").RenderStepped:connect(function()
    pcall(function()
        if getgenv().Aimbot_Skill then 
            if getgenv().SelectMethodAim == "Select Player" then 
                local v = game.Workspace.Characters[getgenv().SelectPly]
                getgenv().psskill =  CFrame.new(v.HumanoidRootPart.CFrame.p, v.HumanoidRootPart.Position + v.HumanoidRootPart.Velocity/0.5)
            else
                local v = ClosestPartaimbot()
                getgenv().psskill =  CFrame.new(v.HumanoidRootPart.CFrame.p, v.HumanoidRootPart.Position + v.HumanoidRootPart.Velocity/0.5)
            end
        end
    end)
end)

local CollectFr = Tabs.Fruit:AddToggle("CollectFr", {Title = "Auto Collect Fruit", Description = "", Default = false })
CollectFr:OnChanged(function(Value)
    _G.CollectFruit = Value
end)
Options.CollectFr:SetValue(false)
spawn(function()
    while wait(.1) do
      if _G.CollectFruit then
        for i,v in pairs(game.Workspace:GetChildren()) do
          if string.find(v.Name, "Fruit") then
            Tween(v.Handle.CFrame)
          end
        end
      end
    end
  end)

local StoreFr = Tabs.Fruit:AddToggle("StoreFr", {Title = "Auto Store Fruit", Description = "", Default = false })
StoreFr:OnChanged(function(Value)
    _G.AutoStoreFruit = Value
end)
Options.StoreFr:SetValue(false)

local Snipe_Fruit = Tabs.Fruit:AddToggle("Snipe_Fruit", {Title = "Snipe Fruit", Description = "", Default = false })
Snipe_Fruit:OnChanged(function(Value)
getgenv().AutoBuyFruitSniper = Value
end)
Options.Snipe_Fruit:SetValue(false)

local Remote_GetFruits = game.ReplicatedStorage:FindFirstChild("Remotes").CommF_:InvokeServer("GetFruits");
Table_DevilFruitSniper = {}
ShopDevilSell = {}
for i,v in next,Remote_GetFruits do
  table.insert(Table_DevilFruitSniper,v.Name)
  if v.OnSale then 
    table.insert(ShopDevilSell,v.Name)
  end
end

local Select_FruitSnipe = Tabs.Fruit:AddDropdown("Select_FruitSnipe", {
    Title = "Select Fruit To Snipe ",
    Description = "",
    Values = Table_DevilFruitSniper,
    Multi = false,
    Default = 1,
})
Select_FruitSnipe:SetValue("")
Select_FruitSnipe:OnChanged(function(Value)
    getgenv().SelectFruit = Value
end)

spawn(function()
  while wait(.1) do
    if getgenv().AutoBuyFruitSniper then
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PurchaseRawFruit",getgenv().SelectFruit,false)
    end 
  end
end)

local Random_Bone = Tabs.Shop:AddToggle("Random_Bone", {Title = "Random Bone", Description = "", Default = false })
Random_Bone:OnChanged(function(Value)  
    getgenv().AutoRandomBone = Value
end)
Options.Random_Bone:SetValue(false)

local ToggleRandomFruit = Tabs.Shop:AddToggle("ToggleRandomFruit", {Title = "Random Fruit", Default = false })
ToggleRandomFruit:OnChanged(function(Value)
    _G.Random_Auto = Value
end)
Options.ToggleRandomFruit:SetValue(false)
spawn(function()
    pcall(function()
        while wait(.1) do
            if _G.Random_Auto then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
            end 
        end
    end)
end)

local Auto_Kiem = Tabs.Shop:AddToggle("Auto_Kiem", {Title = "Auto Buy Legendary Sword", Description = "", Default = false })
Auto_Kiem:OnChanged(function(Value)  
    getgenv().AutoBuyLegendarySword = Value
end)
Options.Auto_Kiem:SetValue(false)

local Haki_Bth = Tabs.Shop:AddToggle("Haki_Bth", {Title = "Auto Buy Haki Color", Description = "", Default = false })
Haki_Bth:OnChanged(function(Value)  
    getgenv().AutoBuyEnchancementColour = Value
end)
Options.Haki_Bth:SetValue(false)
--melee--
local Dropdown = Tabs.Shop:AddDropdown("DropdownMelee", {
	Title = "Select Melee",
	Values = {
		"Black Leg",
		"Electro",
		"Fishman Karate",
		"Dragon Claw",
		"Super Human",
		"Death Step",
		"Sharkman Karate",
		"Electric Claw",
		"Dragon Talon",
		"God Human",
		"Sanguine Art"
	},
	Multi = false,
})

Dropdown:OnChanged(function(Value)
	_G.Select_Melee = Value
	if Value == "Black Leg" then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
	elseif Value == "Electro" then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
	elseif Value == "Fishman Karate" then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
	elseif Value == "Dragon Claw" then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "1")
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2")
	elseif Value == "Super Human" then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
	elseif Value == "Death Step" then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
	elseif Value == "Sharkman Karate" then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate", true)
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
	elseif Value == "Electric Claw" then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
	elseif Value == "Dragon Talon" then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
	elseif Value == "God Human" then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
	elseif Value == "Sanguine Art" then
		local args = {
			[1] = "BuySanguineArt"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end
end)


Tabs.Shop:AddButton({
    Title = "Stats Refund",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","1")
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","2")
	end
})
Tabs.Shop:AddButton({
    Title = "Reroll Race",
    Description = "",
    Callback = function()
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Reroll","1")
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Reroll","2")
	end
})

Tabs.Shop:AddButton({
    Title = "Change Race To Ghoul",
    Description = "buy ghoul race",
    Callback = function()
        local args = {[1] = "Ectoplasm", [2] = "BuyCheck", [3] = 4}
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        local args = {[1] = "Ectoplasm", [2] = "Change", [3] = 4}
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))        
	end
})
Tabs.Shop:AddButton({
    Title = "Change Race To Cyborg",
    Description = "buy cyborg race",
    Callback = function()
        local args = {[1] = "CyborgTrainer", [2] = "Buy"}
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))        
	end
})

local Toggle = Tabs.Shop:AddToggle("Random Bones", {
	Title = "Random Bones",
	Default = false
})
Toggle:OnChanged(function(WinDyLaConCacTao)
	_G.RandomBone = WinDyLaConCacTao
end)

spawn(function()
	while wait() do
		if _G.RandomBone then
			local args = {
				[1] = "Bones",
				[2] = "Buy",
				[3] = 1,
				[4] = 1
			}
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end
	end
end)

game.StarterGui:SetCore("SendNotification", {
Title = "Loading",
Text = "Done!!",
Duration = 3,
})

local CollectFrHop = Tabs.Fruit:AddToggle("CollectFrHop", {Title = "Auto Collect Fruit [Hop]", Description = "", Default = false })
CollectFrHop:OnChanged(function(Value)
    _G.CollectFruitHop = Value
end)
Options.CollectFrHop:SetValue(false)

   spawn(function()
    while wait(.1) do
      if _G.CollectFruit and _G.CollectFruitHop then
        for i,v in pairs(game.Workspace:GetChildren()) do
          if string.find(v.Name, "Fruit") then
            Tween(v.Handle.CFrame)
          elseif not string.find(v.Name, "Fruit") then
            wait(6)
            Hop()
            SetNewReason("Hop Find Fruit",2)
          end
        end
      end
    end
  end)

spawn(
    function()
        while task.wait() do
            if _G.AutoStoreFruit then
                pcall(
                    function()
                        if _G.AutoStoreFruit then
                            if
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bomb Fruit") or
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit")
                             then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "StoreFruit",
                                    "Bomb-Bomb",
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit")
                                )
                            end
                            if
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spike Fruit") or
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit")
                             then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "StoreFruit",
                                    "Spike-Spike",
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit")
                                )
                            end
                            if
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Chop Fruit") or
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit")
                             then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "StoreFruit",
                                    "Chop-Chop",
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit")
                                )
                            end
                            if
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spring Fruit") or
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit")
                             then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "StoreFruit",
                                    "Spring-Spring",
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit")
                                )
                            end
                            if
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rocket Fruit") or
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kilo Fruit")
                             then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "StoreFruit",
                                    "Rocket-Rocket",
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kilo Fruit")
                                )
                            end
                            if
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Smoke Fruit") or
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit")
                             then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "StoreFruit",
                                    "Smoke-Smoke",
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit")
                                )
                            end
                            if
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spin Fruit") or
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit")
                             then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "StoreFruit",
                                    "Spin-Spin",
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit")
                                )
                            end
                            if
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame Fruit") or
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit")
                             then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "StoreFruit",
                                    "Flame-Flame",
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit")
                                )
                            end
                            if
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Falcon Fruit") or
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Falcon Fruit")
                             then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "StoreFruit",
                                    "Bird-Bird: Falcon",
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Falcon Fruit")
                                )
                            end
                            if
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice Fruit") or
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit")
                             then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "StoreFruit",
                                    "Ice-Ice",
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit")
                                )
                            end
                            if
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand Fruit") or
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit")
                             then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "StoreFruit",
                                    "Sand-Sand",
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit")
                                )
                            end
                            if
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark Fruit") or
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit")
                             then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "StoreFruit",
                                    "Dark-Dark",
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit")
                                )
                            end
                            if
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ghost Fruit") or
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Revive Fruit")
                             then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "StoreFruit",
                                    "Ghost-Ghost",
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Revive Fruit")
                                )
                            end
                            if
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Diamond Fruit") or
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit")
                             then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "StoreFruit",
                                    "Diamond-Diamond",
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit")
                                )
                            end
                            if
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light Fruit") or
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit")
                             then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "StoreFruit",
                                    "Light-Light",
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit")
                                )
                            end
                            if
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Love Fruit") or
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit")
                             then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "StoreFruit",
                                    "Love-Love",
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit")
                                )
                            end
                            if
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rubber Fruit") or
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit")
                             then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "StoreFruit",
                                    "Rubber-Rubber",
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit")
                                )
                            end
                            if
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Barrier Fruit") or
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit")
                             then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "StoreFruit",
                                    "Barrier-Barrier",
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit")
                                )
                            end
                            if
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma Fruit") or
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit")
                             then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "StoreFruit",
                                    "Magma-Magma",
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit")
                                )
                            end
                            if
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Portal Fruit") or
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Door Fruit")
                             then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "StoreFruit",
                                    "Door-Door",
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Portal Fruit")
                                )
                            end

                            if
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake Fruit") or
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit")
                             then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "StoreFruit",
                                    "Quake-Quake",
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit")
                                )
                            end
                            if
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                                    "Human-Human: Buddha Fruit"
                                ) or
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                                        "Human-Human: Buddha Fruit"
                                    )
                             then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "StoreFruit",
                                    "Human-Human: Buddha",
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                                        "Human-Human: Buddha Fruit"
                                    )
                                )
                            end
                            if
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spider Fruit") or
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spider Fruit")
                             then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "StoreFruit",
                                    "Spider-Spider",
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spider Fruit")
                                )
                            end
                            if
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix Fruit") or
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                                        "Bird: Phoenix Fruit"
                                    )
                             then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "StoreFruit",
                                    "Bird-Bird: Phoenix",
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                                        "Bird: Phoenix Fruit"
                                    )
                                )
                            end
                            if
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble Fruit") or
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit")
                             then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "StoreFruit",
                                    "Rumble-Rumble",
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit")
                                )
                            end
                            if
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Pain Fruit") or
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Paw Fruit")
                             then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "StoreFruit",
                                    "Pain-Pain",
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Paw Fruit")
                                )
                            end
                            if
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Gravity Fruit") or
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit")
                             then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "StoreFruit",
                                    "Gravity-Gravity",
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit")
                                )
                            end
                            if
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough Fruit") or
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit")
                             then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "StoreFruit",
                                    "Dough-Dough",
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit")
                                )
                            end
                            if
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Shadow Fruit") or
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit")
                             then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "StoreFruit",
                                    "Shadow-Shadow",
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit")
                                )
                            end
                            if
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom Fruit") or
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit")
                             then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "StoreFruit",
                                    "Venom-Venom",
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit")
                                )
                            end
                            if
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Control Fruit") or
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit")
                             then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "StoreFruit",
                                    "Control-Control",
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit")
                                )
                            end
                            if
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spirit Fruit") or
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Soul Fruit")
                             then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "StoreFruit",
                                    "Soul-Soul",
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spirit Fruit")
                                )
                            end
                            if
                                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Fruit") or
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit")
                             then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "StoreFruit",
                                    "Dragon-Dragon",
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit")
                                )
                                if
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Leopard Fruit") or
                                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Leopard Fruit")
                                 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                        "StoreFruit",
                                        "Leopard-Leopard",
                                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Leopard Fruit")
                                    )
                                end
                            end
                        end
                    end
                )
            end
            wait(0.3)
        end
    end
)