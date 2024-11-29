repeat task.wait() until game:IsLoaded()
repeat task.wait() until game.Players
repeat task.wait() until game.Players.LocalPlayer


repeat task.wait()
    pcall(function() 
        for i, v in pairs(getconnections(game.Players.LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.TextButton.Activated)) do
            v.Function()
        end 
    end) 
until tostring(game.Players.LocalPlayer.Team) == "Pirates"

repeat task.wait() until game.Players.LocalPlayer.Character
repeat task.wait() until game.Players.LocalPlayer.Character:FindFirstChild("Head")

if not game:IsLoaded() then game.Loaded:Wait() end
local plr = game.Players.LocalPlayer

game.StarterGui:SetCore("SendNotification", {
    Title = "Happy Cat Hub",
    Text = "Wait for load game",
    Duration = 2,
})

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

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
    Setting = Window:AddTab({ Title = "Settings", Icon = "" }),
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
    Game = Window:AddTab({ Title = "Game-Server", Icon = "" }),
}

local Options = Fluent.Options

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
local SelectFastAttackMode = "Supper Fast"
local SelectedFastAttackModes = {"Normal Attack", "Fast Attack", "Supper Fast"}

local function ChangeModeFastAttack(SelectFastAttackMode)
    if SelectFastAttackMode == "Normal Attack" then
        FireCooldown = 0.1
    elseif SelectFastAttackMode == "Fast Attack" then
        FireCooldown = 0.07
    elseif SelectFastAttackMode == "Supper Fast" then
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