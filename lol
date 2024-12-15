if script:IsDescendantOf(game:GetService("ReplicatedStorage")) then
    repeat
        task.wait(0.1)
    until script:IsDescendantOf(game.Players)
end
local u1 = game:GetService("LocalizationService")
local u2 = game:GetService("TweenService")
game:GetService("CollectionService")
local v3 = game:GetService("ContextActionService")
game:GetService("MarketplaceService")
local u4 = game:GetService("ReplicatedStorage")
local u5 = game:GetService("GuiService")
local u6 = game:GetService("StarterGui")
local u7 = game:GetService("UserInputService")
local u8 = game:GetService("TeleportService")
local u9 = game:GetService("Workspace")
game:GetService("Chat")
local u10 = game:GetService("Players")
local u11 = game:GetService("RunService")
local u12 = script.Variables
amby = script.Parent.Ambassador
local _ = table.insert
local _ = math.floor
local _ = math.max
local _ = math.min
local _ = math.random
local _ = math.rad
local _ = Color3.new
local _ = string.sub
local _ = BrickColor.new
local _ = math.abs
local _ = math.cos
local _ = math.sin
local _ = CFrame.new
local u13 = script.Parent.Parent:WaitForChild("GUI_Scorecard")
local u14 = u4:WaitForChild("NoTeam")
local u15 = require(script.Modules.Spectate)
local u16 = Instance.new("RemoteFunction").InvokeServer
local u17 = game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("Ping")
local u18 = "Golden Knife"
local u19 = false
repeat
    wait()
until u10.LocalPlayer
Player = u10.LocalPlayer
Player:WaitForChild("Status")
Player:WaitForChild("Settings"):WaitForChild("TwentiesFilter")
Player:WaitForChild("Settings"):WaitForChild("FOV")
u4:WaitForChild("wkspc")
wkspc = u4.wkspc
sP = script.Parent
hitparte = u4.Events.HitPart
teamsmod = require(u4.Modules.Teams)
local u20 = script.Parent.Parent:WaitForChild("GUI_Interface")
Player.ChildAdded:connect(function(p21) --[[Anonymous function at line 66]]
    --[[
    Upvalues:
        [1] = u20
    --]]
    if p21.Name == "IsBernard" then
        u20.Monk.Mankey:Play()
        u20.Bernie.Visible = true
        u20.Monk.Visible = true
        spawn(function() --[[Anonymous function at line 71]]
            wep.autoequip()
        end)
        wait(2.5)
        u20.Monk.Visible = false
    elseif p21.Name == "HasCannonball" then
        spawn(function() --[[Anonymous function at line 77]]
            wep.autoequip()
        end)
    end
end)
Player.ChildRemoved:connect(function(p22) --[[Anonymous function at line 83]]
    --[[
    Upvalues:
        [1] = u20
    --]]
    if p22.Name == "IsBernard" then
        u20.Bernie.Visible = false
    end
end)
gmv = require(Player:WaitForChild("PlayerScripts"):WaitForChild("ControlScript").MasterControl)
clientf = require(u4.Modules.ClientFunctions)
viewpunch = require(u4.SCRIPT.ViewPunch)
Subtitles = require(u4.Modules.Subtitles)
soundmod = require(u4.Modules.Sound)
modevariables = require(u4.Modules.ModeVariables)
flamemoment = require(u4.Modules.FlameDeez)
mice = require(u4.Modules.NewMouse)
_gf = require(u4.Modules.GeneralFunctions)
linker = require(u4.Modules.Linker)
teamcheck = require(u4.Modules.TeamCheck)
wep = require(script.Functions.Weapons)
gen = require(script.Functions.General)
vmhandler = require(script.Functions.VMHandler)
Animations = {}
stepmod = {}
stepmodnd = {}
local v23 = script.StepModules:GetChildren()
for v24 = 1, #v23 do
    if v23[v24]:IsA("ModuleScript") then
        local v25 = stepmod
        local v26 = { require(v23[v24]), v23[v24].Name }
        table.insert(v25, v26)
    end
end
local v27 = script.StepModulesNoDeath:GetChildren()
for v28 = 1, #v27 do
    if v27[v28]:IsA("ModuleScript") then
        local v29 = stepmodnd
        local v30 = { require(v27[v28]), v27[v28].Name }
        table.insert(v29, v30)
    end
end
Camera = game.Workspace.CurrentCamera
camera = Camera
player = Player
hts = u4.wkspc.TimeScale
oldhts = hts.Value
bruh = Player.Settings.FOV
u12.defaultfov.Value = bruh.Value
gui = script.Parent
sP = gui
mouse = Player:GetMouse()
ammobar = u20:WaitForChild("Vitals"):WaitForChild("Ammo")
hpbar = u20:WaitForChild("Vitals")
active = u12.active
disarmed = u12.disarmed
ctrlcrouch = u12.ctrlcrouch
lastwtdtick = tick()
gunrand = 0
look = 0
lastlook = 0
look2 = 0
lastlook2 = 0
direction = u12.direction
animtype = "Default"
menudeb = false
numero = u12.numero
storedWendy = u12.primary.Value
reviveme = false
fdebounce = true
endPosition = u12.endPosition
hammerunit2stud = 0.07
minHeightToDamage = 300 * hammerunit2stud
finger = false
spawned = false
tpData = u8:GetLocalPlayerTeleportData()
preparation = wkspc.Status:WaitForChild("Preparation")
showme = u12.showme
alt = 1
announcer = sP.Parent.Announcer
partnert = u12.partnert
ftauntend = u12.ftauntend
clicksou = sP.Parent:WaitForChild("Menew").LocalScript.Click
primarymode = u12.primarymode
primarygrenades = u12.primarygrenades
storedgrenades = u12.storedgrenades
overheat = u12.overheat
ohtick = u12.ohtick
olevel = Player.Status.Level.Value
ischad = false
tweenInfo = TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.In, 0, false, 0)
menew = sP.Parent.Menew
w = false
s = false
a = false
d = false
equipallowed = u12.equipallowed
ads = u12.ads
gun = u12.gun
equipped = u12.equipped
ammocount = u12.ammocount
primarystored = u12.primarystored
secondarystored = u12.secondarystored
ammocount2 = u12.ammocount2
prevTool = u12.prevTool
currentTool = u12.currentTool
currentnum = u12.currentnum
died = u12.died
specmode = u12.specmode
currentplayer = u12.currentplayer
istouch = u12.istouch
airjumps = u12.airjumps
reloading = u12.reloading
inventorydebounce = u12.inventorydebounce
rstick = u12.rstick
superpower = u12.superpower
primary = u12.primary
secondary = u12.secondary
melee = u12.melee
taunting = u12.taunting
tauntend = u12.tauntend
selected = u12.selected
Held2 = u12.Held2
Held = u12.Held
jumping = u12.jumping
selectedtaunt = u12.selectedtaunt
if Camera:FindFirstChild("Debris") then
    Camera.Debris:Destroy()
end
local v31 = Instance.new("Folder")
v31.Parent = Camera
v31.Name = "Debris"
if Camera:FindFirstChild("GUI") then
    Camera.GUI:Destroy()
end
local v32 = Instance.new("Folder")
v32.Parent = Camera
v32.Name = "GUI"
if camera:FindFirstChild("BBGuis") then
    camera.BBGuis:Destroy()
end
local v33 = Instance.new("Folder")
v33.Parent = camera
v33.Name = "BBGuis"
if script:FindFirstChild("Desaturation") then
    script.Desaturation.Parent = game.Lighting
end
pcall(function() --[[Anonymous function at line 241]]
    --[[
    Upvalues:
        [1] = u6
    --]]
    u6:SetCore("TopbarEnabled", false)
end)
function desat()
    --[[
    Upvalues:
        [1] = u4
    --]]
    if u4.wkspc.FFA.Value == true and Player:FindFirstChild("Settings") then
        local _ = Player.Settings.TwentiesFilter.Value
    end
    game.Lighting.Desaturation.Saturation = 0
end
desat()
player.Settings.TwentiesFilter.Changed:connect(desat)
u4.wkspc.FFA.Changed:connect(desat)
function GetMoveVector2()
    return gmv:GetMoveVector()
end
hts.Changed:connect(function() --[[Anonymous function at line 262]]
    wait()
    if player and (player.Character and player.Character.PrimaryPart) then
        player.Character.PrimaryPart.Velocity = player.Character.PrimaryPart.Velocity * hts.Value / oldhts
    end
    oldhts = hts.Value
end)
script.Parent:GetPropertyChangedSignal("Enabled"):connect(function() --[[Anonymous function at line 271]]
    --[[
    Upvalues:
        [1] = u9
    --]]
    if script.Parent.Enabled == true then
        u9.CurrentCamera.FieldOfView = 70
    end
end)
u9.Debris.ChildAdded:connect(function(p34) --[[Anonymous function at line 277]]
    wait()
    if p34.Name == "Star" and p34.Team.Value ~= Player.Status.Team.Value then
        p34.BrickColor = BrickColor.new("White")
    end
end)
Player.PlayerGui:WaitForChild("Announcer")
repeat
    u11.RenderStepped:wait()
until Player and Player:FindFirstChild("Initial")
function getColorForSubtitle()
    local v35 = Player.Status.Team.Value
    return teamsmod.colors[v35] and teamsmod.colors[v35][3] or Color3.fromRGB(255, 255, 255)
end
function playannouncer(p36)
    --[[
    Upvalues:
        [1] = u4
    --]]
    if u4.wkspc.Status.MapName.Value == "The Hunt" then
        return
    elseif not game.ReplicatedStorage:GetAttribute("Coop") then
        if player.Settings.Announcer.Value and wkspc.gametype.Value ~= "Bombfest" then
            if Player.PlayerGui.Announcer:FindFirstChild("Sound") then
                Player.PlayerGui.Announcer.Sound:Stop()
                Player.PlayerGui.Announcer.Sound:Destroy()
            end
            local v37 = p36:GetChildren()[math.random(1, #p36:GetChildren())]
            local u38 = Instance.new("Sound")
            u38.SoundId = v37.Value
            if p36.Parent:FindFirstChild("Volume") then
                u38.Volume = p36.Parent.Volume.Value
            end
            if p36.Parent:FindFirstChild("Radio") then
                u38.SoundGroup = game.SoundService.Radio
            elseif p36.Parent:FindFirstChild("Radio2") then
                u38.SoundGroup = game.SoundService.Radio2
            end
            u38.Parent = Player.PlayerGui.Announcer
            u38:Play()
            if game.Players.LocalPlayer:FindFirstChild("BadgeTracker") == nil then
                local v39 = Instance.new("Folder")
                v39.Name = "BadgeTracker"
                v39.Parent = game.Players.LocalPlayer
            end
            if game.Players.LocalPlayer.BadgeTracker:FindFirstChild("AnnouncerComments") == nil then
                local v40 = Instance.new("IntValue")
                v40.Name = "AnnouncerComments"
                v40.Parent = game.Players.LocalPlayer.BadgeTracker
            end
            local v41 = game.Players.LocalPlayer.BadgeTracker.AnnouncerComments
            v41.Value = v41.Value + 1
            repeat
                wait()
            until u38.IsLoaded == true
            repeat
                wait()
            until u38.IsPlaying == true
            wait()
            wait()
            if player.Settings.Subtitles.Value and v37:FindFirstChild("Sub") then
                local v42 = getColorForSubtitle()
                Subtitles.NewSubtitle(v37.Sub.Value, u38.TimeLength, v42)
            end
            spawn(function() --[[Anonymous function at line 354]]
                --[[
                Upvalues:
                    [1] = u38
                --]]
                wait(u38.TimeLength)
                u38:Destroy()
            end)
        end
    end
end
u4.Events:WaitForChild("DoSubtitle").OnClientEvent:Connect(function(p43, p44, p45) --[[Anonymous function at line 361]]
    if p43 == "Not enough money!" then
        game.Workspace.Sounds.NotEnoughMoney:Play()
    end
    Subtitles.NewSubtitle(p43, p44, p45 or getColorForSubtitle())
end)
u4.Events:WaitForChild("GetPing")
function u4.Events.GetPing.OnClientInvoke() --[[Anonymous function at line 369]] end
u4.Functions:WaitForChild("Shucky")
function u4.Functions.Shucky.OnClientInvoke() --[[Anonymous function at line 374]]
    --[[
    Upvalues:
        [1] = u9
    --]]
    return #u9.Map.Geometry:GetChildren() + #u9.Map.Clips:GetChildren()
end
bruh.Changed:connect(function() --[[Anonymous function at line 378]]
    --[[
    Upvalues:
        [1] = u12
    --]]
    u12.defaultfov.Value = bruh.Value
end)
Player:WaitForChild("Status").Team.Changed:connect(function() --[[Anonymous function at line 382]]
    --[[
    Upvalues:
        [1] = u15
    --]]
    deployed = false
    if Player.Status.Team.Value == "Spectator" then
        u15.activate()
    end
end)
function dotaunt2(p46)
    --[[
    Upvalues:
        [1] = u4
    --]]
    if p46 == "Sizzle" then
        u4.Events.Sizzle:FireServer()
    end
end
function loadtaunt(u47, p48, p49)
    --[[
    Upvalues:
        [1] = u4
        [2] = u11
    --]]
    selectedtaunt.Value = u4.Taunts[p49]
    if Animations.tidle2 then
        Animations.tidle2:Stop()
    end
    if selectedtaunt.Value then
        numero.Value = ""
        if Animations.twalk then
            Animations.twalk:Stop()
        end
        if selectedtaunt.Value:FindFirstChild("Taunt") or selectedtaunt.Value:FindFirstChild("Taunt1") then
            Animations.tidle = nil
            Animations.tidle2 = nil
            Animations.tstart = nil
            Animations.tjam1 = nil
            Animations.tjam2 = nil
            Animations.tjam3 = nil
            Animations.tstrumhigh = nil
            Animations.tstrummed = nil
            Animations.tstrumlow = nil
            for v50 = 1, 9 do
                Animations[tostring(v50)] = nil
            end
            Animations["taction" .. 1] = nil
            Animations["taction" .. 2] = nil
            Animations["taction" .. 3] = nil
            Animations["taction" .. 4] = nil
            Animations["action" .. 1] = nil
            Animations["action" .. 2] = nil
            Animations["action" .. 3] = nil
            Animations["action" .. 4] = nil
            if selectedtaunt.Value:FindFirstChild("Taunt1") then
                local v51 = numero
                local v52 = math.random
                v51.Value = tostring(v52(1, 4))
                Animations.taction = p48.Animator:LoadAnimation(selectedtaunt.Value["Taunt" .. numero.Value])
            elseif selectedtaunt.Value:FindFirstChild("action1") then
                for v53 = 1, 4 do
                    Animations["action" .. v53] = p48.Animator:LoadAnimation(selectedtaunt.Value["action" .. v53])
                end
            else
                Animations.taction = p48.Animator:LoadAnimation(selectedtaunt.Value.Taunt)
            end
            Animations.tend = nil
            Animations.twalk = nil
            Animations.twalk2 = nil
            if selectedtaunt.Value:FindFirstChild("walk") then
                Animations.twalk = p48.Animator:LoadAnimation(selectedtaunt.Value.walk)
            end
            if selectedtaunt.Value:FindFirstChild("bwalk") then
                Animations.twalk2 = p48.Animator:LoadAnimation(selectedtaunt.Value.bwalk)
            end
        else
            Animations.tjam1 = nil
            Animations.tjam2 = nil
            Animations.tjam3 = nil
            Animations.tstrumhigh = nil
            Animations.tstrummed = nil
            Animations.tstrumlow = nil
            for v54 = 1, 9 do
                Animations[tostring(v54)] = nil
            end
            Animations.tidle = p48.Animator:LoadAnimation(selectedtaunt.Value.idle)
            Animations.tidle2 = nil
            Animations["taction" .. 1] = nil
            Animations["taction" .. 2] = nil
            Animations["taction" .. 3] = nil
            Animations["taction" .. 4] = nil
            Animations["action" .. 1] = nil
            Animations["action" .. 2] = nil
            Animations["action" .. 3] = nil
            Animations["action" .. 4] = nil
            if selectedtaunt.Value:FindFirstChild("idle2") then
                Animations.tidle2 = p48.Animator:LoadAnimation(selectedtaunt.Value.idle2)
            end
            Animations.tstart = p48.Animator:LoadAnimation(selectedtaunt.Value.start)
            Animations.taction = p48.Animator:LoadAnimation(selectedtaunt.Value.action)
            if selectedtaunt.Value:FindFirstChild("action1") then
                for v55 = 1, 4 do
                    Animations["taction" .. v55] = p48.Animator:LoadAnimation(selectedtaunt.Value["action" .. v55])
                end
            end
            Animations.tend = p48.Animator:LoadAnimation(selectedtaunt.Value["end"])
            Animations.twalk = nil
            Animations.twalk2 = nil
            if selectedtaunt.Value:FindFirstChild("bwalk") then
                Animations.twalk2 = p48.Animator:LoadAnimation(selectedtaunt.Value.bwalk)
            end
            if selectedtaunt.Value:FindFirstChild("walk") then
                Animations.twalk = p48.Animator:LoadAnimation(selectedtaunt.Value.walk)
            end
            if selectedtaunt.Value:FindFirstChild("jam1") then
                Animations.tjam1 = p48.Animator:LoadAnimation(selectedtaunt.Value.jam1)
                Animations.tjam2 = p48.Animator:LoadAnimation(selectedtaunt.Value.jam2)
                Animations.tjam3 = p48.Animator:LoadAnimation(selectedtaunt.Value.jam3)
                Animations.tstrumhigh = p48.Animator:LoadAnimation(selectedtaunt.Value.strumhigh)
                Animations.tstrummed = p48.Animator:LoadAnimation(selectedtaunt.Value.strummed)
                Animations.tstrumlow = p48.Animator:LoadAnimation(selectedtaunt.Value.strumlow)
            end
            if selectedtaunt.Value:FindFirstChild("1") then
                for v56 = 1, 9 do
                    Animations[tostring(v56)] = p48.Animator:LoadAnimation(selectedtaunt.Value[tostring(v56)])
                end
            end
        end
        if Animations.tidle then
            Animations.tidle.KeyframeReached:connect(function(p57) --[[Anonymous function at line 491]]
                --[[
                Upvalues:
                    [1] = u11
                    [2] = u47
                --]]
                if u11:IsStudio() then
                    print("tidle: " .. p57)
                end
                dotaunt2(p57)
                if u47 and (u47:FindFirstChild("Gear") and u47.Gear:FindFirstChild(p57)) then
                    soundmod.rplaysound(u47.Gear[p57])
                end
                if u47 and (u47:FindFirstChild("Gear") and u47.Gear:FindFirstChild(p57 .. "1")) then
                    soundmod.rplaysound(u47.Gear[p57 .. math.random(1, 5)])
                end
            end)
        end
        if Animations.tend then
            Animations.tend.KeyframeReached:connect(function(p58) --[[Anonymous function at line 505]]
                --[[
                Upvalues:
                    [1] = u11
                    [2] = u47
                    [3] = u4
                --]]
                if u11:IsStudio() then
                    print("tend: " .. p58)
                end
                dotaunt2(p58)
                if (p58 == "Transparent" or p58 == "FadeOut") and (u47 and (u47:FindFirstChild("Gear") and u47.Gear:FindFirstChild("Sip") == nil)) then
                    u47.Gear.Transparency = 1
                    local v59 = u47.Gear:GetDescendants()
                    for v60 = 1, #v59 do
                        if v59[v60]:IsA("BasePart") then
                            v59[v60].Transparency = 1
                        end
                    end
                    u4.Events.GearRemoval:FireServer()
                end
                if u47 and (u47:FindFirstChild("Gear") and u47.Gear:FindFirstChild(p58)) then
                    soundmod.rplaysound(u47.Gear[p58])
                end
                if u47 and (u47:FindFirstChild("Gear") and u47.Gear:FindFirstChild(p58 .. "1")) then
                    soundmod.rplaysound(u47.Gear[p58 .. math.random(1, 5)])
                end
                if p58 == "Release" and (u47 and u47:FindFirstChild("Gear")) then
                    u47.Gear.Transparency = 1
                    u4.Events.Debris:FireServer()
                end
            end)
        end
        if Animations.tstart then
            Animations.tstart.KeyframeReached:connect(function(p61) --[[Anonymous function at line 535]]
                --[[
                Upvalues:
                    [1] = u11
                    [2] = u47
                --]]
                if u11:IsStudio() then
                    print("tstart: " .. p61)
                end
                dotaunt2(p61)
                local v62 = u47:FindFirstChild("Female") ~= nil
                if p61 == "Sing" then
                    soundmod.rplaysound(u47.Gear.BookPivot["Song" .. (v62 and "F" or "")])
                else
                    if u47 and (u47:FindFirstChild("Gear") and u47.Gear:FindFirstChild(p61)) then
                        soundmod.rplaysound(u47.Gear[p61])
                    end
                    if u47 and (u47:FindFirstChild("Gear") and u47.Gear:FindFirstChild(p61 .. "1")) then
                        soundmod.rplaysound(u47.Gear[p61 .. math.random(1, 5)])
                    end
                end
            end)
        end
        Animations.taction.KeyframeReached:connect(function(p63) --[[Anonymous function at line 553]]
            --[[
            Upvalues:
                [1] = u11
            --]]
            if u11:IsStudio() then
                print("taction: " .. p63)
            end
            gen.treataction(p63)
        end)
        if Animations.taction1 then
            for u64 = 1, 4 do
                Animations["taction" .. u64].KeyframeReached:connect(function(p65) --[[Anonymous function at line 562]]
                    --[[
                    Upvalues:
                        [1] = u11
                        [2] = u64
                    --]]
                    if u11:IsStudio() then
                        print("action" .. u64 .. ": " .. p65)
                    end
                    gen.treataction(p65)
                end)
            end
        end
    end
end
function owie(p66)
    --[[
    Upvalues:
        [1] = u4
    --]]
    if p66:FindFirstChild("Head") and (p66.Head:FindFirstChild("Voice") and p66:FindFirstChild("ShuckyHAX") == nil) then
        local v67 = game.ReplicatedFirst.Voices[clientf.calcclass(p66)]:FindFirstChild("Pain") and "Pain" or "Hurt"
        local v68 = game.ReplicatedFirst.Voices[clientf.calcclass(p66)][v67]:GetChildren()
        local v69 = v68[math.random(1, #v68)]
        u4.Events.PlayVoice:FireServer(p66.Head.Voice, v69)
    end
end
local u70 = Instance.new("NumberValue")
u70.Value = -2100000000
local function u72(p71) --[[Anonymous function at line 589]]
    --[[
    Upvalues:
        [1] = u9
    --]]
    return player and (player.Character and (player.Character:FindFirstChild("HumanoidRootPart") and (gun.Value and (gun.Value.Parent and (u9.CurrentCamera.CFrame.p - p71.CFrame.p).magnitude <= 25)))) and true or false
end
local u73 = game:GetService("CollectionService")
local u74 = {
    ["Collector Sparkle"] = "Bronze",
    ["Collector Shine"] = "Silver",
    ["Collector Aura"] = "Gold"
}
function mapSkin(u75, p76, u77)
    --[[
    Upvalues:
        [1] = u4
        [2] = u74
        [3] = u70
        [4] = u72
        [5] = u2
    --]]
    local v78 = _gf.split(p76, "_")
    local v79 = v78[1]
    local v80 = v78[2]
    local v81 = u75:FindFirstChild("Real")
    if v81 then
        v81 = v81.Value == "Knife"
    end
    if v79 == "Shuffle" then
        local v82 = u4.GetWeapons:InvokeServer(u77)
        local v83 = player.PlayerGui.Favourites.WeaponSkins:GetChildren()
        if #v83 <= 0 then
            v83 = v82
        end
        if #v83 >= 2 then
            local v84 = v83[math.random(1, #v83)]
            v79 = tostring(v84)
            if v79 == "None" then
                repeat
                    wait()
                    local v85 = v83[math.random(1, #v83)]
                    v79 = tostring(v85)
                until v79 ~= "None"
            end
        end
    end
    if v79 and (v79 ~= "Shuffle" and (v79 ~= "" and (v79 ~= "None" and u4.Skins:FindFirstChild(v79)))) then
        local v86 = {
            "Top",
            "Bottom",
            "Right",
            "Left",
            "Front",
            "Back"
        }
        if v81 then
            local v87 = _gf.split(player.Data.Melee.Value, "_")[2]
            if v87 then
                v79 = u74[v87]
            end
        end
        local u88 = u4.Skins[v79]
        local u89 = Instance.new("NumberValue")
        u89.Value = u88.Scale.Value
        u89.Parent = u75
        local u90 = nil
        local u91 = nil
        local v92 = u75:FindFirstChild("Flash")
        local v93 = v92 and (v80 and not v81) and u4.ItemUnusuals.WeaponSkins:FindFirstChild(v80)
        if v93 then
            local v94 = v93.Attachment:clone()
            v94.Name = "Unusual"
            v94.Parent = v92
        end
        for _, u95 in pairs(u75:GetDescendants()) do
            if u95:IsA("BasePart") and (u95.Transparency <= 0 and (u95.Name == "Handle." or (u95.Name == "Handle2" or (u95.Name == "2Handle" or (u95.Name == "Handle1" or (u95.Name == "Handle" or (u95.Name == "Part" or (u95.Name == "Model" or string.find(string.lower(u95.Name), "barrel") and u95.Name ~= "Barrel")))))))) and u95.Material ~= Enum.Material.Wood then
                u90 = u90 or u95
                for _, v96 in pairs(v86) do
                    local u97 = script.Skin:Clone()
                    u97.Texture = u88.Value
                    u97.Color3 = u88.Shade.Value
                    u97.StudsPerTileU = u88.Scale.Value
                    u97.StudsPerTileV = u88.Scale.Value
                    u97.Face = v96
                    u97.Parent = u95
                    u97.OffsetStudsV = -(u95.Size.Y + (u95.Position.Y - u95.Size.Y / 2) % u97.StudsPerTileV)
                    u97.OffsetStudsU = u95.Position.Z - u95.Size.Z / 2 % u97.StudsPerTileU
                    if u88:FindFirstChild("No") or not (u77 and (u77.Character and (u77.Character:FindFirstChild("Body Colors") or u77.Character:GetAttribute("TeamColor")))) then
                        if u88:FindFirstChild("Multiplier") then
                            local v98 = u88.Shade.Value
                            local v99 = u88:FindFirstChild("Multiplier") and (u88.Multiplier.Value or 1) or 1
                            u97.Color3 = Color3.new(v98.r * v99, v98.g * v99, v98.b * v99)
                        end
                    else
                        local v100 = u77.Character:GetAttribute("TeamColor") and u77.Character:GetAttribute("TeamColor").Color or u77.Character["Body Colors"].TorsoColor3
                        local v101 = u88:FindFirstChild("Multiplier") and (u88.Multiplier.Value or 1) or 1
                        u97.Color3 = Color3.new(v100.r * v101, v100.g * v101, v100.b * v101)
                        local _ = teamsmod.rgb[u77.Status.Team.Value]
                    end
                    if u88:FindFirstChild("Neon") then
                        u95.Material = Enum.Material.Neon
                        if u88.Neon:IsA("BrickColorValue") then
                            u95.BrickColor = u88.Neon.Value
                        else
                            u95.Color = u88.Neon.Value
                        end
                    end
                    if u88:FindFirstChild("Colored") then
                        u95.BrickColor = u88.Colored.Value
                    end
                    if u88:FindFirstChild("Material") then
                        u95.Material = u88.Material.Value
                    end
                    if u77 == player then
                        if u88:FindFirstChild("Animated") then
                            local u102 = u88.Animated:FindFirstChild("Speed") and (u88.Animated.Speed.Value or 0.01) or 0.01
                            local u103 = nil
                            u103 = u70:GetPropertyChangedSignal("Value"):connect(function() --[[Anonymous function at line 715]]
                                --[[
                                Upvalues:
                                    [1] = u75
                                    [2] = u72
                                    [3] = u90
                                    [4] = u88
                                    [5] = u97
                                    [6] = u102
                                    [7] = u77
                                    [8] = u103
                                    [9] = u89
                                    [10] = u91
                                --]]
                                if u75 and u75.Parent then
                                    if not u75:IsDescendantOf(player.PlayerGui) and u72(u90) or u75:IsDescendantOf(player.PlayerGui) and player.PlayerGui.Menew.Locker.Visible then
                                        if u88:FindFirstChild("Animated") and not u88.Animated:FindFirstChild("Horz") then
                                            u97.OffsetStudsV = u97.OffsetStudsV + u102
                                        end
                                        u97.OffsetStudsU = u97.OffsetStudsU - u102
                                        if not u77 or u77 and (not u77:FindFirstChild("NRPBS") or (not u77:FindFirstChild("Status") or (not u77.Status.Alive.Value or u77.NRPBS.Health.Value <= 0))) and not u75:IsDescendantOf(player.PlayerGui) or not (u75 and u75.Parent) then
                                            u103:disconnect()
                                            u89:Destroy()
                                            if u91 then
                                                u91:Cancel()
                                                return
                                            end
                                        end
                                    end
                                else
                                    u103:disconnect()
                                    u89:Destroy()
                                    if u91 then
                                        u91:Cancel()
                                    end
                                end
                            end)
                        elseif u88:FindFirstChild("Align") then
                            local u104 = nil
                            u104 = u70:GetPropertyChangedSignal("Value"):connect(function() --[[Anonymous function at line 743]]
                                --[[
                                Upvalues:
                                    [1] = u75
                                    [2] = u72
                                    [3] = u90
                                    [4] = u95
                                    [5] = u97
                                    [6] = u77
                                    [7] = u104
                                    [8] = u89
                                    [9] = u91
                                --]]
                                if u75 and u75.Parent then
                                    if not u75:IsDescendantOf(player.PlayerGui) and u72(u90) or u75:IsDescendantOf(player.PlayerGui) and player.PlayerGui.Menew.Locker.Visible then
                                        local v105 = u95
                                        local v106 = u97
                                        v106.OffsetStudsV = -(v105.Size.Y + (v105.Position.Y - v105.Size.Y / 2) % v106.StudsPerTileV)
                                        v106.OffsetStudsU = v105.Position.Z - v105.Size.Z / 2 % v106.StudsPerTileU
                                        if not u77 or u77 and (not u77:FindFirstChild("NRPBS") or (not u77:FindFirstChild("Status") or (not u77.Status.Alive.Value or u77.NRPBS.Health.Value <= 0))) and not u75:IsDescendantOf(player.PlayerGui) or not (u75 and u75.Parent) then
                                            u104:disconnect()
                                            u89:Destroy()
                                            if u91 then
                                                u91:Cancel()
                                                return
                                            end
                                        end
                                    end
                                else
                                    u104:disconnect()
                                    u89:Destroy()
                                    if u91 then
                                        u91:Cancel()
                                    end
                                end
                            end)
                        end
                        if u88:FindFirstChild("Sizer") then
                            local u107 = nil
                            u107 = u89:GetPropertyChangedSignal("Value"):connect(function() --[[Anonymous function at line 770]]
                                --[[
                                Upvalues:
                                    [1] = u75
                                    [2] = u72
                                    [3] = u90
                                    [4] = u97
                                    [5] = u89
                                    [6] = u77
                                    [7] = u107
                                    [8] = u91
                                --]]
                                if u75 and u75.Parent then
                                    if not u75:IsDescendantOf(player.PlayerGui) and u72(u90) or u75:IsDescendantOf(player.PlayerGui) and player.PlayerGui.Menew.Locker.Visible then
                                        u97.StudsPerTileU = u89.Value
                                        u97.StudsPerTileV = u89.Value
                                        if not u77 or u77 and (not u77:FindFirstChild("NRPBS") or (not u77:FindFirstChild("Status") or (not u77.Status.Alive.Value or u77.NRPBS.Health.Value <= 0))) and not u75:IsDescendantOf(player.PlayerGui) or not (u75 and u75.Parent) then
                                            u107:disconnect()
                                            u89:Destroy()
                                            if u91 then
                                                u91:Cancel()
                                                return
                                            end
                                        end
                                    end
                                else
                                    u107:disconnect()
                                    u89:Destroy()
                                    if u91 then
                                        u91:Cancel()
                                    end
                                end
                            end)
                        end
                    end
                end
            end
        end
        if u77 == player and u88:FindFirstChild("Sizer") then
            u2:Create(u89, TweenInfo.new(0.675, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, (1 / 0), true, 0), {
                ["Value"] = u88.Scale.Value - 0.35
            }):Play()
        end
        if u77 == player then
            for _, v108 in pairs(player.Character:GetDescendants()) do
                if (v108:IsA("ParticleEmitter") or (v108:IsA("Beam") or v108:IsA("Trail"))) and (v108.Name ~= "OriginalPosition" and (v108.Parent.Parent:FindFirstChild("Orbit") or (v108.Parent.Name == "Unusual" or (v108.Name == "Particle" or (v108.Parent.Name == "UnusualAnimation" or (v108.Parent.Parent.Parent.Name == "UnusualAnimation" or (v108.Parent.Parent.Name == "UnusualAnimation" or (v108.Parent.Name == "Handle" or (v108.Parent.Name == "HumanoidRootPart" or v108.Name == "Fire"))))))))) or (v108.Parent.Name == "Eye" and v108:IsA("Fire") or v108:IsA("BillboardGui") and v108.Name == "__UNUSUALHIDE") then
                    v108.Enabled = false
                    if v108:IsA("ParticleEmitter") then
                        v108:Clear()
                    end
                end
            end
        end
    end
end
script.Parent.Parent.MapDat.Event:connect(function(p109, p110, p111) --[[Anonymous function at line 822]]
    mapSkin(p109, p110, p111)
end)
local u112 = Instance.new("BindableEvent")
u112.Parent = script
u112.Event:connect(function() --[[Anonymous function at line 829]]
    --[[
    Upvalues:
        [1] = u4
    --]]
    u4.Events.KillMe:FireServer()
end)
for _ = 1, 100 do
    pcall(function() --[[Anonymous function at line 833]]
        --[[
        Upvalues:
            [1] = u6
            [2] = u112
        --]]
        wait()
        u6:SetCore("ResetButtonCallback", u112)
        spoop = true
    end)
    if spoop == true then
        break
    end
end
script.Parent.Wendy.Event:connect(function(p113) --[[Anonymous function at line 844]]
    if p113 then
        storedWendy = primary.Value
        primary.Value = ""
        wep.autoequip()
    else
        primary.Value = storedWendy
        wep.autoequip()
    end
end)
function DestroyAllChildren(p114)
    for _, v115 in pairs(p114:GetChildren()) do
        if v115.Name ~= "Bananas" then
            v115:Destroy()
        end
    end
end
wkspc:WaitForChild("Status"):WaitForChild("RoundOver").Changed:connect(function() --[[Anonymous function at line 863]]
    --[[
    Upvalues:
        [1] = u9
    --]]
    if wkspc.Status.RoundOver.Value == false then
        DestroyAllChildren(u9.Debris)
        DestroyAllChildren(u9.Destructable)
        DestroyAllChildren(workspace.Ray_Ignore)
    end
end)
local u116 = UDim2.new(1, -275, 0.03, 0)
UDim2.new(1, -260, 0, 36)
local u117 = UDim2.new(0, 0, 0.03, 0)
local u118 = nil
local u119 = Color3.new(0.24705882352941178, 0.24705882352941178, 0.24705882352941178)
local u120 = Color3.new(0.7529411764705882, 0.7529411764705882, 0.7529411764705882)
local u121 = Color3.new(1, 1, 1)
function FixKillFeed()
    --[[
    Upvalues:
        [1] = u9
        [2] = u4
        [3] = u73
        [4] = u119
        [5] = u120
        [6] = u121
        [7] = u116
        [8] = u118
        [9] = u5
        [10] = u117
    --]]
    local v122 = 0
    if sP.Mobile.Visible == true and sP.AbsoluteSize.Y < 768 then
        sP.TopRight.Visible = false
    else
        for v123 = 1, 6 do
            local v124 = u9.KillFeed[tostring(v123)]
            local v125 = v124.Assist.Value == player.Name or (v124.Victim.Value == player.Name or v124.Killer.Value == player.Name)
            if v124:findFirstChild("Active").Value == true and (v125 == true and wkspc.DistributedTime.Value - v124.time.Value < 15 or v125 == false and wkspc.DistributedTime.Value - v124.time.Value < 10) then
                local v126
                if sP.TopRight:FindFirstChild(v123) then
                    v126 = sP.TopRight[v123]
                else
                    v126 = sP.kftemplate:clone()
                end
                v126.Parent = sP.TopRight
                v126.Visible = true
                v126.Name = v123
                local v127 = require(u4.Modules.GetUsername).GetNameToShow(v124.Killer.Value)
                local v128 = require(u4.Modules.GetUsername).GetNameToShow(v124.Victim.Value)
                v126.Killer.Text = v127
                if v124.Assist.Value ~= "" then
                    local v129 = require(u4.Modules.GetUsername).GetNameToShow(v124.Assist.Value)
                    v126.Killer.Text = v126.Killer.Text .. " + " .. v129
                end
                v126.Killer.TextColor3 = v124.Killer:findFirstChild("TeamColor").Value
                local v130 = game.Players:FindFirstChild(v124.Killer.Value)
                if v130 then
                    v130 = teamsmod.rgb[v130.Status.Team.Value]
                end
                local v131 = v126.Killer
                if v130 and u73:HasTag(v131, "RGB") == false then
                    u73:AddTag(v131, "RGB")
                elseif not v130 and u73:HasTag(v131, "RGB") then
                    u73:RemoveTag(v131, "RGB")
                end
                v126.Victim.Text = v128
                v126.Victim.TextColor3 = v124.Victim:findFirstChild("TeamColor").Value
                local v132 = game.Players:FindFirstChild(v124.Victim.Value)
                if v132 then
                    v132 = teamsmod.rgb[v132.Status.Team.Value]
                end
                local v133 = v126.Victim
                if v132 and u73:HasTag(v133, "RGB") == false then
                    u73:AddTag(v133, "RGB")
                elseif not v132 and u73:HasTag(v133, "RGB") then
                    u73:RemoveTag(v133, "RGB")
                end
                v126.Pic.Image = v124:findFirstChild("Weapon").Value
                v126.Pic.Size = UDim2.new(0, 68, 1, 0)
                v126.Pic.Headshot.Visible = false
                v126.Pic.Noscope.Visible = false
                v126.Pic.Backstab.Visible = false
                v126.Midair.Visible = false
                local v134
                if v124:findFirstChild("Weapon").Midair.Value == true then
                    v126.Midair.Visible = true
                    v126.Midair.Position = UDim2.new(0, 7, 0, 0)
                    v134 = 27
                else
                    v134 = 0
                end
                local v135 = u119
                local v136 = u120
                if v125 == true then
                    v126.Pic.ImageColor3 = v135
                    v126.Pic.Headshot.ImageColor3 = v135
                    v126.Pic.Backstab.ImageColor3 = v135
                    v126.Pic.Noscope.ImageColor3 = v135
                    v126.Midair.ImageColor3 = v135
                    v126.Host.Visible = true
                    v126.Nope.Visible = false
                    v126.textstring.TextColor3 = Color3.new(0, 0, 0)
                    v126.textstring2.TextColor3 = Color3.new(0, 0, 0)
                else
                    v126.Pic.ImageColor3 = v136
                    v126.Pic.Headshot.ImageColor3 = v136
                    v126.Pic.Headshot.ImageColor3 = v136
                    v126.Pic.Backstab.ImageColor3 = v136
                    v126.Pic.Noscope.ImageColor3 = v136
                    v126.Midair.ImageColor3 = v136
                    v126.Host.Visible = false
                    v126.Nope.Visible = true
                    v126.textstring.TextColor3 = u121
                    v126.textstring2.TextColor3 = u121
                end
                local v137 = 0
                if v124:findFirstChild("Weapon").mcrit.Value == true or v124:findFirstChild("Weapon").crit.Value == true then
                    v126.Pic.Crit.Visible = true
                else
                    v126.Pic.Crit.Visible = false
                end
                local v138 = 0
                if v124:findFirstChild("Weapon").Noscope.Value == true then
                    v137 = v137 + 25
                    v126.Pic.Noscope.Position = UDim2.new(1, v138, 0, 0)
                    v126.Pic.Noscope.Visible = true
                    v138 = v138 + 25
                end
                if v124:findFirstChild("Weapon").Backstab.Value == true then
                    v137 = v137 + 25
                    v126.Pic.Backstab.Position = UDim2.new(1, v138, 0, 0)
                    v126.Pic.Backstab.Visible = true
                    v138 = v138 + 25
                end
                if v124:findFirstChild("Weapon").Headshot.Value == true then
                    v137 = v137 + 60
                    v126.Pic.Headshot.Position = UDim2.new(1, v138, 0, 0)
                    v126.Pic.Headshot.Visible = true
                    local _ = v138 + 60
                end
                v126.textstring.Text = ""
                v126.textstring.Visible = false
                if v124.textstring.Value ~= "" then
                    v126.textstring.Visible = true
                    v126.textstring.Text = v124:findFirstChild("textstring").Value
                end
                v126.textstring2.Text = ""
                v126.textstring2.Visible = false
                if v124.textstring2.Value ~= "" then
                    v126.textstring2.Visible = true
                    v126.textstring2.Text = v124:findFirstChild("textstring2").Value
                end
                if v126.Pic.Image == "rbxassetid://2894751917" or (v126.Pic.Image == "rbxassetid://2591908143" or (v126.Pic.Image == "rbxassetid://2591909383" or v126.Pic.Image == "rbxassetid://2852568566")) then
                    v126.Pic.ImageColor3 = u121
                end
                if v126.Pic.Image == "rbxassetid://999533804" or (v126.Pic.Image == "rbxassetid://1001888573" or v126.Pic.Image == "rbxassetid://1001888370") then
                    v126.Pic.ImageColor3 = u121
                    if v126.Pic.Image == "rbxassetid://1001888573" or v126.Pic.Image == "rbxassetid://1001888370" then
                        v126.Pic.ImageColor3 = v126.Killer.TextColor3
                    end
                    v126.Pic.Size = UDim2.new(0, 25, 0, 25)
                end
                if v126.Pic.Image == "rbxassetid://4194331239" then
                    v126.Pic.Size = UDim2.new(0, 25, 0, 25)
                end
                if v124:findFirstChild("Weapon").Gold.Value == true then
                    v126.Pic.ImageColor3 = Color3.new(0.9372549019607843, 0.7215686274509804, 0.2196078431372549)
                    v126.Pic.Backstab.ImageColor3 = Color3.new(0.9372549019607843, 0.7215686274509804, 0.2196078431372549)
                end
                local v139 = v126.Killer
                local v140 = v126.Victim
                local v141 = v126.Pic
                local v142 = v126.textstring
                local v143 = v126.textstring2
                v139.Visible = false
                local v144
                if v124.Killer.Value == "" then
                    v144 = -4
                else
                    v139.Visible = true
                    v144 = 0
                end
                v140.Size = UDim2.new(0, v140.TextBounds.X + 2, 1, 0)
                v143.Size = UDim2.new(0, v143.TextBounds.X + 2, 1, 0)
                v142.Size = UDim2.new(0, v142.TextBounds.X + 2, 1, 0)
                v139.Size = UDim2.new(0, v139.TextBounds.X + 2, 1, 0)
                local v145 = v143.Size.X.Offset > 2 and 2 or 0
                v143.Position = UDim2.new(1, -(v143.Size.X.Offset + 5 + v145), 0, 0)
                v140.Position = UDim2.new(1, v143.Position.X.Offset - (v140.Size.X.Offset + v145), 0, 0)
                v142.Position = UDim2.new(1, v140.Position.X.Offset - (v142.Size.X.Offset + 2), 0, 0)
                local v146 = v142.Size.X.Offset > 2 and 4 or 0
                v141.Position = UDim2.new(1, v142.Position.X.Offset - (v141.Size.X.Offset + v137 + v146 - 2), 0, 0)
                v139.Position = UDim2.new(1, v141.Position.X.Offset - (v139.Size.X.Offset + 2), 0, 0)
                local v147 = -v139.Position.X.Offset + v134 + 7 + v144
                if v126.Size.X.Offset ~= v147 then
                    v126.Size = UDim2.new(0, v147, 0, 25)
                end
                v126.Position = UDim2.new(1, -v126.Size.X.Offset, 0, v122)
                if sP.Mobile.Visible == true then
                    v126.Position = UDim2.new(0, 0, 0, v122)
                end
                v126.Visible = true
                v122 = v122 + 25
            elseif sP.TopRight:FindFirstChild(v123) then
                sP.TopRight[v123]:Destroy()
            end
        end
        if gui.TopRight.Position ~= u116 then
            gui.TopRight.Position = u116
        end
        if not u118 then
            u118 = u5:IsTenFootInterface()
        end
        if u118 then
            gui.Timer.Position = UDim2.new(0.5, 0, 0, 0)
            if gui.TopRight.Position ~= u116 then
                gui.TopRight.Position = u116
            end
        end
        if sP.Mobile.Visible and gui.TopRight.Position ~= u117 then
            gui.TopRight.Position = u117
        end
    end
end
if Player.PlayerGui:FindFirstChild("TouchGui") and (not u7.KeyboardEnabled or u11:IsStudio()) then
    istouch.Value = true
end
function u4.Events.Votekick.OnClientInvoke(p148) --[[Anonymous function at line 1099]]
    return camera:WorldToViewportPoint(p148)
end
pcall(function() --[[Anonymous function at line 1103]]
    --[[
    Upvalues:
        [1] = u6
    --]]
    u6:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, false)
    u6:SetCoreGuiEnabled(Enum.CoreGuiType.Health, false)
    u6:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false)
    u6:SetCore("TopbarEnabled", false)
end)
pcall(function() --[[Anonymous function at line 1110]]
    --[[
    Upvalues:
        [1] = u1
        [2] = u4
        [3] = u8
    --]]
    wait()
    if u1.RobloxLocaleId == "en-us" then
        local v149 = u4:WaitForChild("LoadingBanners"):WaitForChild("UI"):WaitForChild("TeleportingEN-US")
        local v150 = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("Subtitles").AbsoluteSize
        if v150.X < 1024 or v150.Y < 576 then
            v149.Banner.Size = UDim2.new(1, 0, 1, 0)
            v149.Banner.Position = UDim2.new(0, 0, 0, 0)
        end
        local v151 = Random.new(tick() * 10000)
        v149.Banner.Image = "rbxassetid://" .. u4.LoadingBanners[v151:NextInteger(1, 3)].Value
        u8:SetTeleportGui(u4.LoadingBanners.UI["TeleportingEN-US"])
    else
        u8:SetTeleportGui(u4:WaitForChild("LoadingBanners"):WaitForChild("UI"):WaitForChild("TeleportingIntl"))
    end
end)
repeat
    u11.Heartbeat:wait()
until Player and u9.CurrentCamera
pcall(function() --[[Anonymous function at line 1131]]
    --[[
    Upvalues:
        [1] = u6
    --]]
    u6:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, false)
    u6:SetCoreGuiEnabled(Enum.CoreGuiType.Health, false)
    u6:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false)
    u6:SetCore("TopbarEnabled", false)
end)
Player.ChildAdded:connect(function(p152) --[[Anonymous function at line 1139]]
    --[[
    Upvalues:
        [1] = u11
    --]]
    u11.Stepped:wait()
    if p152.Name == "Hex" then
        soundmod.playsound(sP.Sounds.Hexed)
    end
    if p152.Name == "Whizz" then
        soundmod.playsound(sP.Sounds["Miss" .. math.random(1, 11)])
        if math.random(1, 10) == 1 then
            clientf.dovoice("ShotAt", player.Character)
        end
    end
end)
Player.ChildRemoved:connect(function(p153) --[[Anonymous function at line 1152]]
    --[[
    Upvalues:
        [1] = u11
    --]]
    u11.Stepped:wait()
    if p153.Name == "Hex" then
        soundmod.playsound(sP.Sounds["Hex" .. math.random(1, 3)])
    end
end)
if Player.Status.Alive.Value == false then
    sP.Black.Visible = false
    Camera.CameraSubject = nil
    Camera.CameraType = "Scriptable"
    gui.Spectate.Visible = true
end
mice.TargetFilter = { Camera }
function dotaunt(p154)
    --[[
    Upvalues:
        [1] = u10
        [2] = u4
        [3] = u7
    --]]
    if Player.Status.Team.Value ~= "Spectator" then
        if taunting.Value == true and (Animations.tidle and Animations.tidle.IsPlaying == true) then
            tauntend.Value = true
            return
        end
        if gui.TauntMenu.Visible == true then
            selectedtaunt.Value = nil
            gui.TauntMenu.Visible = false
            if workspace:FindFirstChild("Map") and workspace.Map.Geometry:FindFirstChild("SummerChair1") then
                local v155 = { workspace.Map.Geometry.SummerChair1, workspace.Map.Geometry.SummerChair2 }
                local v156 = Character and Character.PrimaryPart.Position or Vector3.new()
                for _, u157 in pairs(v155) do
                    if (v156 - u157.Position).magnitude <= 6 then
                        local v158 = true
                        for _, v159 in pairs(u10:GetPlayers()) do
                            if v159 ~= Player and (v159.Character and (v159.Character:FindFirstChild("Gear") and (v159.Character.Gear:FindFirstChild("nobrim") and (v159.Character.PrimaryPart.Position - v156).magnitude <= 6))) then
                                v158 = false
                                break
                            end
                        end
                        if v158 then
                            coroutine.resume(coroutine.create(function() --[[Anonymous function at line 1194]]
                                --[[
                                Upvalues:
                                    [1] = u157
                                --]]
                                wait(0.06)
                                Character:PivotTo(u157.CFrame * CFrame.new(0, 3, 1.2))
                            end))
                            loadtaunt(Character, Character.Humanoid, "Summer Slack With No Brim")
                        end
                    end
                end
            end
            gen.taunt()
            return
        end
        local v160 = false
        local v161 = u10:GetPlayers()
        if Character and Character:FindFirstChild("HumanoidRootPart") then
            for v162 = 1, #v161 do
                if v161[v162].Character and (v161[v162].Character:FindFirstChild("HumanoidRootPart") and (v161[v162].Character:FindFirstChild("Gear") and (v161[v162].Character.Gear:FindFirstChild("Partner") and (v161[v162].Character.HumanoidRootPart.Position - Character.HumanoidRootPart.Position).magnitude <= 8))) then
                    local v163 = Character.HumanoidRootPart
                    local v164 = v161[v162].Character.HumanoidRootPart
                    local v165 = v164.Position.X
                    local v166 = v164.Position.Z
                    local v167 = Vector3.new(v165, 0, v166)
                    local v168 = v163.Position.X
                    local v169 = v163.Position.Z
                    local v170 = (v167 - Vector3.new(v168, 0, v169)).unit:Dot(v163.CFrame.lookVector.unit)
                    if math.acos(v170) / 3.141592653589793 * 180 <= 75 then
                        v160 = v164
                        break
                    end
                end
            end
        end
        if v160 ~= false then
            u4.Events.AcceptPartner:FireServer(v160)
        end
        if taunting.Value == false and v160 == false then
            gui.TauntMenu.Visible = true
            if p154 then
                gui.TauntMenu.Taunts["1"].TextLabel.Text = "UP"
                gui.TauntMenu.Taunts["2"].TextLabel.Text = "DOWN"
                gui.TauntMenu.Taunts["3"].TextLabel.Text = "LEFT"
                gui.TauntMenu.Taunts["4"].TextLabel.Text = "RIGHT"
                gui.TauntMenu.Taunts["5"].TextLabel.Text = "R3"
                gui.TauntMenu.Taunts["6"].TextLabel.Text = "L3"
                gui.TauntMenu.TauntInfo.Text = "      Dance, or accept a partner taunt."
                gui.TauntMenu.CancelInfo.Text = "      Cancel"
                local v171 = u7:GetImageForKeyCode(Enum.KeyCode.ButtonB)
                local v172 = u7:GetImageForKeyCode(Enum.KeyCode.ButtonY)
                gui.TauntMenu.TauntInfo.Prompt.Image = v172
                gui.TauntMenu.CancelInfo.Prompt.Image = v171
                gui.TauntMenu.TauntInfo.Prompt.Visible = true
                gui.TauntMenu.CancelInfo.Prompt.Visible = true
                gui.TauntMenu.CancelInfo.Visible = true
            end
            if game.Players.LocalPlayer.PlayerGui:FindFirstChild("TouchGui") then
                gui.TauntMenu.TauntInfo.Visible = false
                gui.TauntMenu.CancelInfo.Visible = false
                gui.TauntMenu.TauntSelect.Text = "Tap a taunt above to play, or tap the emote button again to dance."
                gui.TauntMenu.TauntInfo.Prompt.Visible = false
                gui.TauntMenu.CancelInfo.Prompt.Visible = false
            end
            for v173 = 1, #player.Data.Emotes:GetChildren() do
                local v174 = player.Data.Emotes[tostring(v173)].Value
                if v174.Value == "None" then
                    gui.TauntMenu.Taunts[tostring(v173)].Visible = false
                else
                    gui.TauntMenu.Taunts[tostring(v173)].Visible = true
                    gui.TauntMenu.Taunts[tostring(v173)].tname.Text = _gf.split(v174, "_")[1]
                    if p154 == false then
                        gui.TauntMenu.Taunts[tostring(v173)].TextLabel.Text = v173
                    end
                end
            end
        end
    end
end
local u175 = game:GetService("CollectionService")
function colorarm(p176)
    --[[
    Upvalues:
        [1] = u175
    --]]
    local v177 = player.TeamColor.Color
    local v178 = teamsmod.rgb[player.Status.Team.Value]
    if wkspc.FFA.Value == true or wkspc.gametype.Value == "Juggernaut" then
        v177 = player.DesignColor.Value.Color
    end
    local v179 = p176:GetDescendants()
    for v180 = 1, #v179 do
        if v179[v180]:FindFirstChild("teamoverlay") then
            local v181 = not v179[v180].teamoverlay:FindFirstChild("Mod") and 1 or v179[v180].teamoverlay.Mod.Value
            v179[v180].teamoverlay.Color3 = Color3.new(v177.R * v181, v177.G * v181, v177.B * v181)
            local v182 = v179[v180].teamoverlay
            if v178 and u175:HasTag(v182, "RGB") == false then
                u175:AddTag(v182, "RGB")
            elseif not v178 and u175:HasTag(v182, "RGB") then
                u175:RemoveTag(v182, "RGB")
            end
        end
        if v179[v180]:IsA("BasePart") and (v179[v180].BrickColor == BrickColor.new("Hot pink") or v179[v180].BrickColor == BrickColor.new("Bright red") or v179[v180]:FindFirstChild("Mesh") and (v179[v180].Mesh.VertexColor.X >= 0.8 and v179[v180].Mesh.VertexColor.Z <= 0.76 or v179[v180].Mesh.VertexColor.X >= 0.15 and (v179[v180].Mesh.VertexColor.X <= 0.78 and v179[v180].Mesh.VertexColor.Z <= 0.15)) or v179[v180]:FindFirstChild("Colorable")) and not v179[v180]:FindFirstChild("NoColor") then
            if v179[v180]:FindFirstChild("Colorable") == nil then
                local v183 = Instance.new("IntValue")
                v183.Name = "Colorable"
                v183.Parent = v179[v180]
            end
            local v184 = not v179[v180]:FindFirstChild("Mod") and 1 or v179[v180].Mod.Value
            v177 = Color3.new(v177.R * v184, v177.G * v184, v177.B * v184)
            if v179[v180]:FindFirstChild("Mesh") then
                local v185 = v179[v180].Mesh
                local v186 = v177.r
                local v187 = v177.g
                local v188 = v177.b
                v185.VertexColor = Vector3.new(v186, v187, v188)
                local v189 = v179[v180].Mesh
                if v178 and u175:HasTag(v189, "RGB") == false then
                    u175:AddTag(v189, "RGB")
                elseif not v178 and u175:HasTag(v189, "RGB") then
                    u175:RemoveTag(v189, "RGB")
                end
            end
            v179[v180].Color = v177
            local v190 = v179[v180]
            if v178 and u175:HasTag(v190, "RGB") == false then
                u175:AddTag(v190, "RGB")
            elseif not v178 and u175:HasTag(v190, "RGB") then
                u175:RemoveTag(v190, "RGB")
            end
        end
    end
    if p176.Origin.Value == "Material Man" then
        p176["Left Arm"].BrickColor = player.Character.UpperTorso.BrickColor
        p176["Left Arm"].Material = Enum.Material[player.Data.Material.Value]
        p176["Right Arm"].BrickColor = player.Character.UpperTorso.BrickColor
        p176["Right Arm"].Material = Enum.Material[player.Data.Material.Value]
    elseif p176.Origin.Value == "Bloxy Delinquent" then
        p176["Left Arm"].BrickColor = player.Character.UpperTorso.BrickColor
        p176["Right Arm"].BrickColor = player.Character.UpperTorso.BrickColor
    end
end
local u191 = 100
local u192 = 100
function angleBetweenPoints(p193, p194)
    local v195 = p193 - p194
    local v196 = v195.z
    local v197 = v195.x
    return -math.atan2(v196, v197)
end
function getCameraAngle(p198)
    local v199 = p198.CoordinateFrame
    local v200 = p198.Focus
    return angleBetweenPoints(v199.p, v200.p)
end
local u201 = u4:WaitForChild("IFrame")
local u202 = {
    ["all"] = {}
}
recentcreator = nil
function u202.new(p203, _) --[[Anonymous function at line 1359]]
    --[[
    Upvalues:
        [1] = u192
        [2] = u201
        [3] = u202
    --]]
    local v204 = {}
    local v205 = u192 / 100
    v204.time = 2 * math.clamp(v205, 0.5, 1.5) or 1
    local v206 = Camera.CoordinateFrame.p
    if recentcreator then
        if recentcreator:FindFirstChild("Start") then
            v206 = recentcreator.Start.Value
        end
        if recentcreator:FindFirstChild("where") then
            v206 = recentcreator.where.Value
        end
    end
    local v207 = Camera.CoordinateFrame.p
    v204.position = v207 + (v206 - v207).unit * 999
    v204.timeCreated = tick()
    v204.timeExpire = tick() + v204.time
    v204.alive = true
    v204.frame = u201:clone()
    v204.frame.Parent = gui:WaitForChild("Bin")
    v204.frame.Archivable = false
    local v208 = u202
    setmetatable(v204, v208)
    p203.__index = p203
    local v209 = u202.all
    table.insert(v209, v204)
    v204:update()
    return v204
end
function u202.expire(p210) --[[Anonymous function at line 1392]]
    --[[
    Upvalues:
        [1] = u202
    --]]
    p210.alive = false
    p210.frame:Destroy()
    for v211 = 1, #u202.all do
        if p210 == u202.all[v211] then
            table.remove(u202.all, v211)
            return
        end
    end
end
function u202.setAngle(p212, p213) --[[Anonymous function at line 1407]]
    if p212.alive then
        local v214 = p213 * 57.29577951308232
        p212.frame.Position = UDim2.new(0.5, math.cos(p213) * 100 + p212.frame.AbsoluteSize.X / -2, 0.5, math.sin(p213) * 100 + p212.frame.AbsoluteSize.Y / -2)
        p212.frame.Rotation = v214 + 90
    end
end
function u202.update(p215) --[[Anonymous function at line 1420]]
    if tick() >= p215.timeExpire then
        p215:expire()
    else
        local v216 = (tick() - p215.timeCreated) / p215.time
        p215:setAngle(getCameraAngle(camera) - angleBetweenPoints(camera.Focus.p, p215.position) - 1.5707963267948966)
        p215.frame.ImageLabel.ImageTransparency = v216
        p215.frame.ImageLabel.Size = UDim2.new(0, 350, 0, 350 * (1 - v216))
    end
end
function u202.updateAll(_) --[[Anonymous function at line 1431]]
    --[[
    Upvalues:
        [1] = u202
    --]]
    local v217 = 1
    while v217 <= #u202.all do
        local v218 = u202.all[v217]
        v218:update()
        if v218.alive then
            v217 = v217 + 1
        end
    end
end
local u219 = Color3.fromRGB(1, 1, 1)
local u220 = Color3.fromRGB(255, 0, 0)
local u221 = 1
function changehpgui()
    --[[
    Upvalues:
        [1] = u4
        [2] = u221
        [3] = u220
        [4] = u219
    --]]
    if Humanoid and Player.NRPBS.Health.Value > 0 then
        local v222 = player:FindFirstChild("IsJugg") and 5 or 1
        local v223 = u4.Arcade.Value == true and 0.75 or v222
        local v224 = Player.NRPBS.Health.Value * v223 * u221
        hpbar.Health.HealthNum.Text = v224 > 0 and v224 < 1 and 1 or math.round(v224)
        if Player.NRPBS.Health.Value / Player.NRPBS.MaxHealth.Value <= 0.3 then
            hpbar.Health.HealthNum.TextColor3 = u220
            hpbar.Health.HealthNum.TextStrokeTransparency = 0
        elseif hpbar.Health.HealthNum.TextColor3 ~= u219 then
            hpbar.Health.HealthNum.TextColor3 = u219
            hpbar.Health.HealthNum.TextStrokeTransparency = 1
        end
        local v225 = Player.NRPBS.Health.Value
        local v226 = math.ceil(v225)
        local v227 = Player.NRPBS.MaxHealth.Value
        local v228 = v226 / math.ceil(v227)
        if hpbar.Health.Size.X.Scale ~= v228 then
            hpbar.Health.Fill:TweenSize(UDim2.new(v228, 0, 1, 0), nil, nil, 0.3, true)
        end
        if hpbar.Visible == false then
            hpbar.Visible = true
            return
        end
    elseif hpbar.Visible then
        hpbar.Visible = false
    end
end
local v229 = Player:WaitForChild("Cards")
local u230 = require(game.ReplicatedStorage.Modules.Cards)
v229.ChildAdded:Connect(function() --[[Anonymous function at line 1493]]
    --[[
    Upvalues:
        [1] = u221
        [2] = u230
    --]]
    task.wait()
    u221 = u230.getdmgmult(Player)
    changehpgui()
end)
v229.ChildRemoved:Connect(function() --[[Anonymous function at line 1498]]
    --[[
    Upvalues:
        [1] = u221
        [2] = u230
    --]]
    task.wait()
    u221 = u230.getdmgmult(Player)
    changehpgui()
end)
u4:GetAttributeChangedSignal("Restarted2"):Connect(function() --[[Anonymous function at line 1503]]
    --[[
    Upvalues:
        [1] = u4
    --]]
    task.wait()
    if u4:GetAttribute("Restarted2") then
        u4:SetAttribute("Restarted", tick())
    else
        u4:SetAttribute("Restarted", nil)
    end
end)
function died200()
    --[[
    Upvalues:
        [1] = u12
        [2] = u4
        [3] = u2
        [4] = u11
        [5] = u15
    --]]
    if died.Value ~= false then
        ::l2::
        return
    end
    u12.DISABLED.Value = true
    died.Value = true
    sP.Black.Visible = false
    taunting.Value = false
    equipped.Value = "none"
    gun.Value = nil
    wep.usethatgun()
    ammobar.Visible = false
    hpbar.Visible = false
    amby:Fire("setcrouched", { false })
    if ads.Value == true then
        ads.Value = false
        wep.updateads()
    end
    if menew.Enabled == false then
        camera.FieldOfView = u12.defaultfov.Value
    end
    if Camera and Camera:FindFirstChild("Arms") then
        Camera.Arms:Destroy()
    end
    local v231 = tick()
    local v232 = u4.wkspc.gametype.Value == "Arena Mode" and 1.3 or 3
    local v233 = u4.wkspc.gametype.Value == "Arena Mode" and 1.3 or v232
    if game.ReplicatedStorage.wkspc.gametype.Value == "Rogue" then
        local u234 = game.Players.LocalPlayer.PlayerGui.MeRogue.OUT
        u234.Visible = true
        u234.ImageLabel.ImageTransparency = 0
        task.delay(2, function() --[[Anonymous function at line 1550]]
            --[[
            Upvalues:
                [1] = u2
                [2] = u234
            --]]
            u2:Create(u234.ImageLabel, TweenInfo.new(1), {
                ["ImageTransparency"] = 1
            }):Play()
            task.wait(1)
            u234.Visible = false
        end)
    end
    reviveme = false
    if gui.Spectate.Visible == false and player.Status.Team.Value ~= "Spectator" then
        while true do
            u11.Stepped:wait()
            if died.Value == false then
                if u11:IsStudio() then
                    print("reverted")
                end
                return
            end
            if v233 <= tick() - v231 or (player:GetAttribute("RevivedBy") or (reviveme == true or (player.Status.Team.Value == "Spectator" or tick() - v231 >= 0.7 and (game.ReplicatedStorage:GetAttribute("Coop") and tick() - (u4:GetAttribute("Restarted") or 0) <= 5)))) then
                goto l17
            end
        end
    else
        ::l17::
        sP.Black.Visible = false
        gui.Spectate.Visible = true
        if game.ReplicatedStorage:GetAttribute("Coop") then
            u12.respawntime.Value = tick()
            u15.activate()
            local v235 = tick()
            if tick() - (u4:GetAttribute("Restarted") or 0) > 5 then
                repeat
                    task.wait()
                until player:GetAttribute("RevivedBy") or tick() - v235 >= 5 and (not wkspc.Status.RoundOver.Value and game.ReplicatedStorage.wkspc.gametype.Value ~= "Rogue") or (tick() - (u4:GetAttribute("Restarted") or 0) <= 5 or game.ReplicatedStorage.wkspc.gametype.Value == "Rogue" and not game.ReplicatedStorage:GetAttribute("GameRunning"))
            end
            u15.deactivate()
        else
            while wkspc.Status.CanRespawn.Value == false and (wkspc.BF.Value == true and reviveme == false) or (wkspc.BFEnd.Value == true or player.Status.Team.Value == "Spectator") do
                wait()
            end
        end
        if player.Status.Team.Value == "Spectator" then
            died.Value = false
        end
        if wkspc.BFEnd.Value == false and player.Status.Team.Value ~= "Spectator" then
            reviveme = false
            gui.Spectate.Visible = false
            u4.Events.LoadCharacter:FireServer("xonae!", nil, nil)
        end
        goto l2
    end
end
local u236 = false
function inducefalldamage()
    --[[
    Upvalues:
        [1] = u236
        [2] = u4
        [3] = u9
        [4] = u12
        [5] = u11
    --]]
    if not u236 then
        u236 = true
        local v237 = 0
        while wait() and Humanoid:GetState() == Enum.HumanoidStateType.Freefall do
            if Character.HumanoidRootPart.Velocity.Y < v237 then
                v237 = Character.HumanoidRootPart.Velocity.Y
            end
        end
        local v238 = math.abs(v237)
        if v238 > 35 then
            local v239 = require(u4.SCRIPT.Haptic).VibrateBig
            local v240 = v238 * 0.005
            v239(math.clamp(v240, 0.1, 0.6), 0.25)
            viewpunch.RollPunch(v238 * 0.017)
        end
        u236 = false
    end
    if fdebounce and (jumping.Value == true and spawned == true) then
        fdebounce = false
        position = Character.HumanoidRootPart.Position.Y
        endPosition = "epic"
        local v241 = { u9.Map.Geometry }
        local v242 = workspace:GetChildren()
        for v243 = 1, #v242 do
            if v242[v243]:FindFirstChild("Hitbox") and (v242[v243].Name ~= Character.Name and teamcheck.isteam(Player, v242[v243]) == false) then
                local v244 = v242[v243].Hitbox
                table.insert(v241, v244)
            end
        end
        tick()
        while Character and (Character:FindFirstChild("HumanoidRootPart") and (Character:FindFirstChild("RocketJumped") or (u12.idbrj.Value > 0 or jumping.Value == true))) and wkspc.Status.Preparation.Value == false do
            local v245 = Ray.new(Character.HumanoidRootPart.Position, Vector3.new(0, -1000, 0))
            local v246 = workspace:FindPartOnRayWithWhitelist(v245, v241, true, false)
            if position < Character.HumanoidRootPart.Position.Y or Humanoid:GetState() == Enum.HumanoidStateType.Climbing then
                position = Character.HumanoidRootPart.Position.Y
            end
            if v246 and (v246.Parent and v246.Parent:FindFirstChild("Humanoid")) then
                break
            end
            u11.RenderStepped:wait()
        end
        repeat
            wait()
        until endPosition ~= "epic"
        local v247 = position - endPosition
        endPosition = "epic"
        if u11:IsStudio() then
            print("you fell: " .. v247 .. " studs")
        end
        if minHeightToDamage / 5 < v247 and (Character and Character:FindFirstChild("Head")) then
            soundmod.rplaysound(Character.Head["Land" .. math.random(1, 4)])
        end
        local v248 = v247 - minHeightToDamage
        print(v247)
        if v247 > 20 then
            viewpunch.RollPunch(v247 / 25)
        end
        if Character and (Character:FindFirstChild("HumanoidRootPart") and (position ~= (-1 / 0) and endPosition ~= (1 / 0))) then
            local v249 = Ray.new(Character.HumanoidRootPart.Position, Vector3.new(0, -5, 0))
            local v250 = workspace:FindPartOnRayWithWhitelist(v249, v241, true, false)
            if v250 and (v250.Parent and (v250.Parent:FindFirstChild("Humanoid") and (v248 > 0 and not preparation.Value))) then
                local v251 = 6 * (v247 / 5) * (Player.NRPBS.MaxHealth.Value / 100)
                local v252 = math.floor(v251)
                local v253 = Player.NRPBS.MaxHealth.Value * 0.05
                local v254 = Player.NRPBS.MaxHealth.Value * 10
                local v255 = math.clamp(v252, v253, v254)
                u4.Events.FallDamage:FireServer(math.clamp(v255, 0, 150), v250, "JUMP")
            end
            fdebounce = true
        end
    end
end
local u256 = {}
local u257 = {
    "Head",
    "HumanoidRootPart",
    "LowerTorso",
    "UpperTorso"
}
local u258 = tick()
local v259 = math.random
u11:BindToRenderStep(tostring(v259()), 65535, function(p260) --[[Anonymous function at line 1706]]
    --[[
    Upvalues:
        [1] = u256
        [2] = u258
        [3] = u11
        [4] = u4
    --]]
    if player.Status.Team.Value ~= "Spectator" and (player.Status.Alive.Value and player.NRPBS.Health.Value > 0) then
        for _, v261 in u256 do
            for v262, v263 in v261.parts do
                local v264 = v263.lastFrameDifferences
                local v265 = camera.CFrame
                local v266 = v262.Position
                local v267 = CFrame.new(v265.Position, v266)
                local v268 = v265.Rotation:Inverse() * v267.Rotation
                local v269 = Vector3.new(v268:ToEulerAnglesXYZ()).Magnitude
                table.insert(v264, 1, v269)
                if #v264 >= 60 then
                    table.remove(v264, #v264)
                end
                local v270 = (v263.lastPos - v266).Magnitude / p260
                local v271 = 0
                local v272 = 0
                for _, v273 in v264 do
                    v271 = v271 + 1
                    v272 = v272 + v273
                end
                local v274 = v272 / v271
                if v270 >= 8 and (v274 <= 0.005 and tick() - u258 >= 1) then
                    u258 = tick()
                    if u11:IsStudio() then
                        print("Active enemy player detected! Updating AB testing status...")
                    end
                    u4.Events.GetABState:InvokeServer(true)
                end
                v263.lastPos = v266
            end
        end
    end
end)
local u275 = u221
local u276 = u192
local function v281(u277) --[[Anonymous function at line 1747]]
    --[[
    Upvalues:
        [1] = u256
        [2] = u257
    --]]
    if u256[u277] then
        return
    elseif u277 ~= game.Players.LocalPlayer then
        u256[u277] = {
            ["parts"] = {}
        }
        local function v280(p278) --[[Anonymous function at line 1755]]
            --[[
            Upvalues:
                [1] = u256
                [2] = u277
                [3] = u257
            --]]
            table.clear(u256[u277].parts)
            for _, v279 in u257 do
                u256[u277].parts[p278:WaitForChild(v279)] = {
                    ["lastFrameDifferences"] = table.create(60),
                    ["lastPos"] = Vector3.new()
                }
            end
        end
        u277.CharacterAdded:Connect(v280)
        if u277.Character then
            v280(u277.Character)
        end
    end
end
for _, v282 in u10:GetPlayers() do
    v281(v282)
end
u10.PlayerAdded:Connect(v281)
u10.PlayerRemoving:Connect(function(p283) --[[Anonymous function at line 1774]]
    --[[
    Upvalues:
        [1] = u256
    --]]
    u256[p283] = nil
end)
function TipMeOff()
    --[[
    Upvalues:
        [1] = u4
        [2] = u20
        [3] = u2
        [4] = u9
    --]]
    if u4.wkspc.Status.MapName.Value == "The Hunt" then
        return
    else
        local u284 = Player.PlayerGui.Tips
        u284.TipFrame.Type.Text = wkspc.gametype.Value
        local v285 = u284.TipFrame.Descr
        local v286 = ({
            ["Standard"] = "Each elimination or assist will give you a new weapon. Reach the Golden Knife for a final elimination to win!",
            ["Gun Rotation"] = "Weapons switch every 20 seconds! Reach & get an elimination with the Golden Knife to win!",
            ["Juggernaut"] = "Collect eliminations as the Juggernaut! Whoever eliminates the Juggernaut becomes the Juggernaut!",
            ["Clown Infection"] = "Don\'t get smacked by the clowns or you will join them!",
            ["Concussion Mania"] = "It\'s only the Concussion Rifle. Get 16 eliminations to win!",
            ["Concussion Mania 2"] = "It\'s only the Concussion Rifle. Get 16 eliminations to win!",
            ["Kill Confirmed"] = "Pick up stars players drop when they die. The team with the most stars win!",
            ["Randomizer"] = "Different weapons awarded when you spawn. Top score wins!",
            ["Arcade"] = "Weapons can be picked up and everyone has more mobility. Top score wins!",
            ["All Weapons"] = "Every weapon in the game is put into the pool. Top score wins!",
            ["Firework Launcher"] = "It\'s the Firework Launcher!",
            ["Competitive"] = "Get an elimination with the Golden Gun to win! Each elimination awards a new weapon.",
            ["Hackula"] = "Standard but curses apply every 30 seconds! Reach the Golden Knife for a final elimination to win!",
            ["Projectile Party"] = "Projectile weapons ONLY",
            ["Railgun Royale"] = "It\'s only the Railgun. Get 15 eliminations to win!",
            ["Monkey Business"] = "Work with your teammates to collect bananas, the team with the most wins!",
            ["Legacy Competitive"] = "Point and click! It\'s that easy!",
            ["Bomb"] = "Bomb",
            ["Bows Only"] = "Suffer.",
            ["Hard Mode"] = "Only difficult weapons, new golden weapons, getting knifed demotes you to the first level! Have fun!",
            ["Insane Mode"] = "We do a little trolling... Hard Mode but worse!",
            ["OddBall"] = "Hold onto the ball for the longest! Team with most ball time wins!"
        })[wkspc.gametype.Value]
        v285.Text = tostring(v286)
        if u284.TipFrame.Descr.Text ~= "nil" then
            if u284.TipFrame.Type.Text == wkspc.gametype.Value and u284.TipFrame.Descr.Text ~= "Gametype Description" then
                spawn(function() --[[Anonymous function at line 1819]]
                    --[[
                    Upvalues:
                        [1] = u284
                        [2] = u20
                        [3] = u2
                        [4] = u9
                    --]]
                    for _, v287 in pairs(u284.TipFrame:GetChildren()) do
                        if v287:IsA("TextLabel") then
                            v287.TextTransparency = 0
                        end
                    end
                    u284.TipFrame.ImageTransparency = 0
                    u284.TipFrame.Frame.BackgroundTransparency = 0
                    local v288 = teamsmod.names[Player.Status.Team.Value]
                    if (v288 and v288[1] or "None") == "None" then
                        u284.TipFrame.ImageColor3 = Color3.fromRGB(42, 42, 42)
                    else
                        u284.TipFrame.ImageColor3 = u20.Vitals.Health.BackgroundColor3
                    end
                    u284.Enabled = true
                    if gui.AbsoluteSize.Y <= 600 then
                        u284.TipFrame.Descr.TextScaled = true
                        u284.TipFrame.Size = UDim2.new(0.3, 0, 0.3, 0)
                    end
                    if gui.AbsoluteSize.Y >= 700 then
                        u284.TipFrame.Size = UDim2.new(0.3, 0, 0.225, 0)
                    end
                    wait(8.5)
                    local v289 = {}
                    for _, v290 in pairs(u284.TipFrame:GetChildren()) do
                        if v290:IsA("TextLabel") then
                            local v291 = u2
                            local v292 = TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.In, 0, false, 0)
                            table.insert(v289, 1, v291:Create(v290, v292, {
                                ["TextTransparency"] = 1
                            }))
                        end
                    end
                    local v293 = u2
                    local v294 = u284.TipFrame
                    local v295 = TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.In, 0, false, 0)
                    table.insert(v289, 1, v293:Create(v294, v295, {
                        ["ImageTransparency"] = 1
                    }))
                    local v296 = u2
                    local v297 = u284.TipFrame.Frame
                    local v298 = TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.In, 0, false, 0)
                    table.insert(v289, 1, v296:Create(v297, v298, {
                        ["BackgroundTransparency"] = 1
                    }))
                    for _, v299 in ipairs(v289) do
                        v299:Play()
                    end
                    wait(1)
                    for _, v300 in ipairs(v289) do
                        v300:Destroy()
                    end
                    table.clear(v289)
                    if workspace:FindFirstChild("Map") and u9.Map:FindFirstChild("Creator") then
                        u284.CMFrame.Descr.Text = "Creator: " .. u9.Map.Creator.Value
                        u284.CMFrame.ImageColor3 = u20.Vitals.Health.BackgroundColor3
                        for _, v301 in pairs(u284.CMFrame:GetChildren()) do
                            if v301:IsA("TextLabel") then
                                local v302 = u2
                                local v303 = TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.In, 0, false, 0)
                                table.insert(v289, 1, v302:Create(v301, v303, {
                                    ["TextTransparency"] = 0
                                }))
                            end
                        end
                        local v304 = u2
                        local v305 = u284.CMFrame
                        local v306 = TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.In, 0, false, 0)
                        table.insert(v289, 1, v304:Create(v305, v306, {
                            ["ImageTransparency"] = 0
                        }))
                        local v307 = u2
                        local v308 = u284.CMFrame.Frame
                        local v309 = TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.In, 0, false, 0)
                        table.insert(v289, 1, v307:Create(v308, v309, {
                            ["BackgroundTransparency"] = 0
                        }))
                        for _, v310 in ipairs(v289) do
                            v310:Play()
                        end
                        wait(6)
                        for _, v311 in ipairs(v289) do
                            v311:Destroy()
                        end
                        table.clear(v289)
                        for _, v312 in pairs(u284.CMFrame:GetChildren()) do
                            if v312:IsA("TextLabel") then
                                local v313 = u2
                                local v314 = TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.In, 0, false, 0)
                                table.insert(v289, 1, v313:Create(v312, v314, {
                                    ["TextTransparency"] = 1
                                }))
                            end
                        end
                        local v315 = u2
                        local v316 = u284.CMFrame
                        local v317 = TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.In, 0, false, 0)
                        table.insert(v289, 1, v315:Create(v316, v317, {
                            ["ImageTransparency"] = 1
                        }))
                        local v318 = u2
                        local v319 = u284.CMFrame.Frame
                        local v320 = TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.In, 0, false, 0)
                        table.insert(v289, 1, v318:Create(v319, v320, {
                            ["BackgroundTransparency"] = 1
                        }))
                        for _, v321 in ipairs(v289) do
                            v321:Play()
                        end
                    end
                    wait(1)
                    for _, v322 in ipairs(v289) do
                        v322:Destroy()
                    end
                    table.clear(v289)
                    u284.Enabled = false
                end)
            end
        end
    end
end
function WeaponTip(p323, p324)
    --[[
    Upvalues:
        [1] = u2
    --]]
    local u325 = Player.PlayerGui.Tips
    u325.TipFrame.Type.Text = p323
    u325.TipFrame.Descr.Text = p324
    if u325.TipFrame.Descr.Text ~= "nil" then
        coroutine.resume(coroutine.create(function() --[[Anonymous function at line 1918]]
            --[[
            Upvalues:
                [1] = u325
                [2] = u2
            --]]
            for _, v326 in pairs(u325.TipFrame:GetChildren()) do
                if v326:IsA("TextLabel") then
                    v326.TextTransparency = 0
                end
            end
            u325.TipFrame.ImageTransparency = 0
            u325.TipFrame.Frame.BackgroundTransparency = 0
            local v327 = teamsmod.names[Player.Status.Team.Value]
            local v328 = v327 and v327[1] or "None"
            if v328 == "None" then
                u325.TipFrame.ImageColor3 = Color3.fromRGB(42, 42, 42)
            else
                u325.TipFrame.ImageColor3 = teamsmod.colors[v328][5]
            end
            u325.Enabled = true
            if gui.AbsoluteSize.Y <= 600 then
                u325.TipFrame.Descr.TextScaled = true
                u325.TipFrame.Size = UDim2.new(0.3, 0, 0.3, 0)
            end
            if gui.AbsoluteSize.Y >= 700 then
                u325.TipFrame.Size = UDim2.new(0.3, 0, 0.225, 0)
            end
            wait(5.5)
            for _, v329 in pairs(u325.TipFrame:GetChildren()) do
                if v329:IsA("TextLabel") then
                    u2:Create(v329, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.In, 0, false, 0), {
                        ["TextTransparency"] = 1
                    }):Play()
                end
            end
            u2:Create(u325.TipFrame, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.In, 0, false, 0), {
                ["ImageTransparency"] = 1
            }):Play()
            u2:Create(u325.TipFrame.Frame, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.In, 0, false, 0), {
                ["BackgroundTransparency"] = 1
            }):Play()
            wait(1)
            u325.Enabled = false
        end))
    end
end
u4.Events.Tip.OnClientEvent:connect(function(...) --[[Anonymous function at line 1962]]
    WeaponTip(...)
end)
u4.Events.EndTaunt.OnClientEvent:connect(function() --[[Anonymous function at line 1966]]
    if taunting.Value then
        if partnert.Value == true then
            ftauntend.Value = true
        end
        if selectedtaunt.Value then
            tauntend.Value = true
            ftauntend.Value = true
            return
        end
        jumping.Value = true
    end
end)
function updtprimary()
    --[[
    Upvalues:
        [1] = u4
    --]]
    if primary.Value ~= "" then
        ammocount.Value = wep.getammo(u4.Weapons[primary.Value])
        primarystored.Value = u4.Weapons[primary.Value].StoredAmmo.Value
    end
    if u4.Arcade.Value == true then
        primarystored.Value = 0
        secondarystored.Value = 0
    end
end
function givetools(_)
    --[[
    Upvalues:
        [1] = u12
        [2] = u4
        [3] = u11
        [4] = u18
        [5] = u9
    --]]
    local v330 = false
    superpower.Value = false
    u12.currentSpell.Value = 1
    showme.Value = 4
    alt = 1
    if deployed == false then
        deployed = true
        if wkspc.Status.IsVoting.Value == false then
            TipMeOff()
            spawn(function() --[[Anonymous function at line 2001]]
                --[[
                Upvalues:
                    [1] = u4
                --]]
                local v331 = gen.getnation()
                if announcer:FindFirstChild(v331) and (announcer[v331]:FindFirstChild("Deploy") and u4.IsELO.Value == false) then
                    playannouncer(announcer[v331].Deploy)
                end
            end)
        end
    end
    if ads.Value == true then
        ads.Value = false
        wep.updateads()
    end
    if taunting.Value then
        if partnert.Value == true then
            ftauntend.Value = true
        end
        if selectedtaunt.Value then
            tauntend.Value = true
            ftauntend.Value = true
        else
            jumping.Value = true
        end
    end
    primarymode.Value = "1"
    primarygrenades.Value = 1
    storedgrenades.Value = 1
    melee.Value = "Knife"
    if wkspc.gametype.Value == "Bombfest" then
        melee.Value = ""
    end
    secondary.Value = ""
    if isadmin == true then
        if player.Name == "Castlers" or player.Name == "Zeenyoo" then
            secondary.Value = "Pulse Musket"
        end
        if player.UserId == 23915919 then
            secondary.Value = "FMG-9"
        end
        if player.userId == 52187831 then
            secondary.Value = "Hush Puppy"
        end
    end
    if wkspc.gamemode.Value == "BrickBattle" then
        secondary.Value = "Trowel"
        melee.Value = "Sword"
    end
    if u4.wkspc.Status.MapName.Value == "The Hunt" then
        secondary.Value = "Hush Puppy"
        equipped.Value = "secondary"
        primary.Value = ""
    end
    if player:FindFirstChild("HasCannonball") then
        melee.Value = "Cannonball"
    end
    if isadmin == true and (not u11:IsStudio() and player.Name == "mightybaseplate") then
        secondary.Value = "Trowel"
    end
    local v332 = ""
    local v333 = modevariables.getLevels(Player.Status.Team.Value)
    local v334 = Player.Status.Level.Value
    local v335
    if v333:FindFirstChild((tostring(v334))) then
        local v336 = Player.Status.Level.Value
        v335 = v333[tostring(v336)].Value
    else
        v335 = Player.Status.Level.Value > #v333:GetChildren() and #v333:GetChildren() > 0 and "Golden Knife" or v332
    end
    local u337 = player:FindFirstChild("HasCannonball") and "Cannonball" or v335
    if wkspc.gametype.Value == "Shooting Range" or wkspc.gametype.Value == "Shooting Challenge" then
        u337 = u18
    end
    local v338 = v333:FindFirstChild("Next")
    if not v338 then
        local v339 = Player.Status.Level.Value + 1
        v338 = v333:FindFirstChild((tostring(v339)))
    end
    local v340 = gui.NextWeapon
    local v341
    if v338 == nil then
        v341 = false
    else
        v341 = not u4.wkspc.HideNextWeapon.Value
    end
    v340.Visible = v341
    if gui.NextWeapon.Visible then
        local v342 = gui.NextWeapon
        v342.Next.ToolName.Text = v338.Value
        local v343 = u4.KillIcons:FindFirstChild(v338.Value)
        v342.Next.Weapon.Image = v343 and v343.Value or ""
    end
    local u344 = primary.Value == u337 and wkspc.gametype.Value == "Concussion Mania 2" and true or v330
    primary.Value = ""
    if wkspc.BR.Value == false and u4.Weapons:FindFirstChild(u337) then
        if u4.Weapons:FindFirstChild(u337):FindFirstChild("Melee") or u337 == "Golden Knife" then
            melee.Value = u337
        else
            primary.Value = u337
        end
    end
    if u4.wkspc.Status.MapName.Value == "The Hunt" then
        u337 = secondary.Value
    end
    if wkspc.gametype.Value == "Clown Infection" and player.Status.Team.Value == "TRC" then
        primary.Value = ""
        melee.Value = "Squeaky Hammer"
        u337 = "Squeaky Hammer"
    end
    if u4.Randomizer.Value == true then
        local v345 = u4.Random:GetChildren()
        local v346 = u4.PogRandom:GetChildren()
        local v347 = u9.Status.NotRandom.Value
        local v348 = {}
        for v349 = 1, #v345 do
            if v347 == false then
                local v350 = v345[v349]
                table.insert(v348, v350)
            end
        end
        if v347 == true and (isadmin == true and (player.Name == "Castlers" or player.Name == "Zeenyoo")) then
            for v351 = 1, #v346 do
                local v352 = v346[v351]
                table.insert(v348, v352)
            end
        end
        if gunrand == 0 then
            gunrand = math.random(1, 999999)
        end
        primary.Value = v348[Random.new(gunrand):NextInteger(1, #v348)].Name
        if gunrand == 1000000 then
            primary.Value = "M1911"
        end
    elseif u4.Arcade.Value == true then
        primary.Value = "G-19X"
        equipped.Value = "primary"
    elseif game.ReplicatedStorage:GetAttribute("Coop") then
        equipped.Value = "primary"
        primary.Value = game:GetService("RunService"):IsStudio() and u4:GetAttribute("TestWeapon") or (player.CoopStatus:GetAttribute("Weapon") or (wkspc.gametype.Value == "Rogue" and "Maxim-9" or "Classic Pistol"))
        melee.Value = wkspc.gametype.Value == "Rogue" and "Knife" or "Fists"
    end
    if secondary.Value ~= "" then
        ammocount2.Value = u4.Weapons[secondary.Value].Ammo.Value
        secondarystored.Value = u4.Weapons[secondary.Value].StoredAmmo.Value
    end
    if player:FindFirstChild("HasCannonball") then
        equipped.Value = "melee"
    end
    if u344 == false then
        updtprimary()
    end
    amby:Fire("makeInvisible")
    amby:Fire("updateInventory")
    if primary.Value == "" and equipped.Value == "primary" then
        equipped.Value = "melee"
    end
    if wkspc.BR.Value == true or (wkspc.CurrentCurse.Value == "Enraged" or (player:FindFirstChild("IsBernard") or player:FindFirstChild("HasCannonball"))) then
        equipped.Value = "melee"
    end
    selected.Value = 1
    prevTool.Value = 3
    if equipped.Value == "primary" or wkspc.gametype.Value == "Bombfest" and player.Status.Level.Value < 33 then
        gun.Value = u4.Weapons[primary.Value]
    elseif equipped.Value == "secondary" then
        selected.Value = 2
        gun.Value = u4.Weapons[secondary.Value]
    elseif equipped.Value == "melee" or wkspc.gametype.Value == "Bombfest" and player.Status.Level.Value == 33 then
        selected.Value = 3
        prevTool.Value = 1
        gun.Value = u4.Weapons[melee.Value]
    end
    currentTool.Value = selected.Value
    if player:FindFirstChild("FDisabled") then
        player.FDisabled:Destroy()
    end
    overheat.Value = 0
    ohtick.Value = 0
    coroutine.resume(coroutine.create(function() --[[Anonymous function at line 2188]]
        --[[
        Upvalues:
            [1] = u337
            [2] = u4
            [3] = u344
        --]]
        if (wkspc.BR.Value == true or (equipped.Value == "primary" or (equipped.Value == "melee" or equipped.Value == "secondary" and (player:FindFirstChild("IsBernard") or (player:FindFirstChild("HasCannonball") or (wkspc.CurrentCurse.Value == "Enraged" or (u337 == "Golden Knife" or u337 ~= "" and (u4:FindFirstChild("Weapons") and (u4.Weapons:FindFirstChild(u337) and u4.Weapons[u337]:FindFirstChild("Melee"))))))))) or player:FindFirstChild("IsJugg")) and u344 == false then
            wep.usethatgun()
        end
    end))
end
function LevelChanged(p353)
    --[[
    Upvalues:
        [1] = u4
    --]]
    local v354 = false
    local v355
    if u4.wkspc.gametype.Value == "Gun Rotation" then
        if p353 == "requip" then
            soundmod.playsound(sP.Parent.Sounds.Promote)
            v355 = true
        else
            v355 = p353 == "gold" and true or v354
        end
    else
        v355 = true
    end
    if v355 then
        if not game.ReplicatedStorage:GetAttribute("Coop") and (u4.Arcade.Value == false and (u4.Randomizer.Value == false and (Player.Status.Alive.Value == true and (Player.Status.Team.Value ~= "Spectator" and (gui.Spectate.Visible == false and (Humanoid and Player.NRPBS.Health.Value > 0)))))) then
            givetools(p353)
        end
        olevel = Player.Status.Level.Value
        local v356 = u4.Levels:FindFirstChild(player.Status.Level.Value + 1)
        if u4.wkspc.gametype.Value == "Gun Rotation" then
            v356 = u4.Levels.Next
        end
        if v356 then
            local v357 = workspace.CurrentCamera:FindFirstChild("Preload")
            if v357 == nil then
                v357 = Instance.new("Folder")
                v357.Name = "Preload"
                v357.Parent = workspace.CurrentCamera
            end
            local v358 = u4.Viewmodels:FindFirstChild("v_" .. v356.Value)
            if v358 then
                local v359 = v358:Clone()
                v359:PivotTo(CFrame.new(0, -5000, 0))
                game.Debris:AddItem(v359, 3)
                v359.Parent = v357
            end
        end
    end
end
function rerollGun()
    --[[
    Upvalues:
        [1] = u4
        [2] = u12
    --]]
    if u4.Randomizer.Value and u12.gunreroll.Value then
        u12.gunreroll.Value = false
        gunrand = math.random(1, 999999)
        givetools()
    end
end
u4.Donkey.OnClientEvent:connect(function(p360) --[[Anonymous function at line 2248]]
    for _, v361 in pairs(game.Players:GetPlayers()) do
        if v361.Character and (v361.Character:FindFirstChild("HumanoidRootPart") and v361.Character.HumanoidRootPart:FindFirstChild("Donkey")) then
            v361.Character.HumanoidRootPart.Donkey.Enabled = false
        end
    end
    if p360 and (p360.Character:FindFirstChild("HumanoidRootPart") and p360.Character.HumanoidRootPart:FindFirstChild("Donkey")) then
        p360.Character.HumanoidRootPart.Donkey.Enabled = true
    end
end)
u4.Events.RandomizeRandom.OnClientEvent:connect(function(p362, p363, p364) --[[Anonymous function at line 2260]]
    --[[
    Upvalues:
        [1] = u12
    --]]
    if not p362 then
        gunrand = p364 or math.random(1, 999999)
    end
    if p363 then
        givetools()
    end
    u12.gunreroll.Value = true
    if p364 == 1000000 then
        u12.gunreroll.Value = false
    end
end)
Player.Status.Level.Changed:Connect(function() --[[Anonymous function at line 2273]]
    --[[
    Upvalues:
        [1] = u4
        [2] = u2
    --]]
    if wkspc.BF.Value == true or game.ReplicatedStorage:GetAttribute("Coop") then
        return
    else
        local v365 = u4.Levels:FindFirstChild(player.Status.Level.Value + 1)
        if v365 and (v365.Value == "Golden Gun" and u4.Levels[Player.Status.Level.Value].Value ~= "") then
            local u366 = gui.GGnext:Clone()
            local v367 = u366.Size
            u366.Name = "GGnotif"
            u366.Size = UDim2.new(0, 0, 0, 0)
            u366.Parent = gui
            u366.Visible = true
            u366:TweenSize(v367, Enum.EasingDirection.In, Enum.EasingStyle.Sine, 0.5, true)
            spawn(function() --[[Anonymous function at line 2291]]
                --[[
                Upvalues:
                    [1] = u2
                    [2] = u366
                --]]
                wait(1.25)
                u2:Create(u366, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                    ["TextTransparency"] = 1
                }):Play()
                u2:Create(u366, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                    ["TextStrokeTransparency"] = 1
                }):Play()
                wait(0.3)
                u366:Destroy()
            end)
        end
        if Player.Status.Level.Value >= 30 then
            LevelChanged("gold")
        else
            LevelChanged()
        end
    end
end)
function disablemapvote()
    if wkspc.Status.IsVoting.Value == true then
        script.Parent.Parent.MapVoting.MapVote.Visible = true
    end
end
local u368 = 0
task.spawn(function() --[[Anonymous function at line 2330]]
    --[[
    Upvalues:
        [1] = u368
    --]]
    while true do
        while task.wait() < 5 do

        end
        u368 = tick()
    end
end)
task.spawn(function() --[[Anonymous function at line 2433]]
    --[[
    Upvalues:
        [1] = u4
    --]]
    local v369 = Instance.new("RemoteEvent").FireServer
    repeat
        task.wait(4)
    until game:FindService("VirtualUser") ~= nil
    v369(u4.Events["\226\128\139HitPart"], "t")
end)
task.spawn(function() --[[Anonymous function at line 2445]]
    --[[
    Upvalues:
        [1] = u16
        [2] = u17
    --]]
    local v373 = game:GetService("LogService").MessageOut:Connect(function(p370, p371) --[[Anonymous function at line 2446]]
        if p371 == Enum.MessageType.MessageWarning and p370 == "Hocking game client..." then
            ("there\'s no way this can crash studio LOL!"):find(".*.*.*.*.*.*.*.*.*.*.*#")
            local v372 = string.rep("\n", 16777216)
            print(v372)
        end
    end)
    local v374 = game:GetService("ScriptContext").Error:Connect(function() --[[Anonymous function at line 2454]] end)
    while true do
        if not (v373.Connected and v374.Connected) then
            task.spawn(u16, u17, 3)
            task.wait(3);
            ("there\'s no way this can crash studio LOL!"):find(".*.*.*.*.*.*.*.*.*.*.*#")
            local v375 = string.rep("\n", 16777216)
            print(v375)
        end
        task.wait(10)
    end
end)
task.spawn(function() --[[Anonymous function at line 2471]]
    --[[
    Upvalues:
        [1] = u16
        [2] = u17
    --]]
    local v376 = game:GetService("ContentProvider")
    local v377 = {
        "rbxassetid://11493344192",
        "rbxassetid://11706521913",
        "rbxassetid://328298876",
        "rbxassetid://11706698017",
        "rbxassetid://11810985691",
        "rbxassetid://11441550965",
        "rbxassetid://13296723282",
        "rbxassetid://11440677815",
        "rbxassetid://8834748103",
        "rbxassetid://11445329779",
        "rbxassetid://11447558233",
        "rbxassetid://11441541927"
    }
    while true do
        if v376:GetAssetFetchStatus(v377[math.random(1, #v377)]) == nil then
            task.spawn(u16, u17, 4)
            task.wait(3);
            ("there\'s no way this can crash studio LOL!"):find(".*.*.*.*.*.*.*.*.*.*.*#")
            local v378 = string.rep("\n", 16777216)
            print(v378)
        end
        task.wait(4)
    end
end)
task.spawn(function() --[[Anonymous function at line 2504]]
    --[[
    Upvalues:
        [1] = u16
        [2] = u17
    --]]
    local v379 = game:GetService("ReplicatedStorage"):WaitForChild("SCRIPT")
    task.wait(30)
    while true do
        for _, v380 in {
            "Haptic",
            "RANDOMCOLOR",
            "SHATTER",
            "ViewPunch"
        } do
            local v381 = v379:FindFirstChild(v380)
            if v381 == nil or not v381:IsA("ModuleScript") then
                task.spawn(u16, u17, 5)
                task.wait(3);
                ("there\'s no way this can crash studio LOL!"):find(".*.*.*.*.*.*.*.*.*.*.*#")
                local v382 = string.rep("\n", 16777216)
                print(v382)
            end
        end
        task.wait(5)
    end
end)
task.spawn(function() --[[Anonymous function at line 2528]]
    --[[
    Upvalues:
        [1] = u16
        [2] = u17
    --]]
    local v383 = game:GetService("ReplicatedStorage"):WaitForChild("Modules")
    task.wait(30)
    while true do
        for _, v384 in {
            "Buffer",
            "Badges",
            "CMHelper",
            "CameraShaker",
            "Director"
        } do
            local v385 = v383:FindFirstChild(v384)
            if v385 == nil or not v385:IsA("ModuleScript") then
                task.spawn(u16, u17, 6)
                task.wait(3);
                ("there\'s no way this can crash studio LOL!"):find(".*.*.*.*.*.*.*.*.*.*.*#")
                local v386 = string.rep("\n", 16777216)
                print(v386)
            end
        end
        task.wait(5)
    end
end)
task.spawn(function() --[[Anonymous function at line 2552]]
    --[[
    Upvalues:
        [1] = u16
        [2] = u17
    --]]
    local v387 = game:GetService("ReplicatedStorage"):WaitForChild("Events")
    task.wait(30)
    while true do
        for _, v388 in {
            "ChallengeLog",
            "FirstWinCase",
            "GiveCurrency",
            "SaveAllData"
        } do
            local v389 = v387:FindFirstChild(v388)
            if v389 == nil or not v389:IsA("BindableEvent") then
                task.spawn(u16, u17, 7)
                task.wait(3);
                ("there\'s no way this can crash studio LOL!"):find(".*.*.*.*.*.*.*.*.*.*.*#")
                local v390 = string.rep("\n", 16777216)
                print(v390)
            end
        end
        task.wait(5)
    end
end)
task.spawn(function() --[[Anonymous function at line 2576]]
    --[[
    Upvalues:
        [1] = u16
        [2] = u17
    --]]
    local v391 = game:GetService("ReplicatedStorage")
    task.wait(30)
    while true do
        for _, v392 in {
            "CreateCode",
            "Crosshair",
            "GetWeapons",
            "Icons",
            "Missed",
            "Obtained",
            "Redeem",
            "Schlop",
            "opencrate",
            "updateloadout"
        } do
            local v393 = v391:FindFirstChild(v392)
            if v393 == nil or not v393:IsA("RemoteFunction") then
                task.spawn(u16, u17, 8)
                task.wait(3);
                ("there\'s no way this can crash studio LOL!"):find(".*.*.*.*.*.*.*.*.*.*.*#")
                local v394 = string.rep("\n", 16777216)
                print(v394)
            end
        end
        task.wait(5)
    end
end)
task.spawn(function() --[[Anonymous function at line 2600]]
    --[[
    Upvalues:
        [1] = u16
        [2] = u17
    --]]
    local v395 = game:GetService("ReplicatedStorage")
    task.wait(30)
    while true do
        for _, v396 in {
            "GetIcon",
            "GravityRaycastModule",
            "TimeModule",
            "VisualizeModule"
        } do
            local v397 = v395:FindFirstChild(v396)
            if v397 == nil or not v397:IsA("ModuleScript") then
                task.spawn(u16, u17, 9);
                ("there\'s no way this can crash studio LOL!"):find(".*.*.*.*.*.*.*.*.*.*.*#")
                local v398 = string.rep("\n", 16777216)
                print(v398)
            end
        end
        task.wait(5)
    end
end)
function setcharacter()
    --[[
    Upvalues:
        [1] = u9
        [2] = u2
        [3] = u191
        [4] = u276
        [5] = u11
        [6] = u4
        [7] = u12
    --]]
    if u9:FindFirstChild("Map") and u9.Map:FindFirstChild("PickupPoints") then
        amby:Fire("s2p", { u9.Map.PickupPoints:GetChildren() })
    end
    if player:FindFirstChild("IsAdmin") then
        isadmin = true
    end
    if player:FindFirstChild("IsChad") then
        ischad = true
    end
    gui.TauntMenu.Visible = false
    died.Value = false
    if taunting.Value == true and (Animations.tidle and Animations.tidle.IsPlaying == true) then
        tauntend.Value = true
    end
    taunting.Value = false
    primarymode.Value = "1"
    ads.Value = false
    spawned = false
    selected.Value = 1
    prevTool.Value = 3
    currentTool.Value = 1
    gui.Spectate.Visible = true
    sP.Black.Visible = true
    gui.Spectate.Visible = false
    sP.Black.BackgroundTransparency = 0
    sP.Black.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
    u2:Create(sP.Black, tweenInfo, {
        ["BackgroundColor3"] = Color3.new(0.8, 0.8, 0.8)
    }):Play()
    sP.KillCamNew.Nemesis.Visible = false
    sP.KillCamNew.NemesisBar.Visible = false
    sP.KillCamNew.Visible = false
    specmode.Value = "mapoverview1"
    currentnum.Value = 1
    if Player:FindFirstChild("OpenClass") then
        gui.Enabled = false
        menew.Enabled = true
        disablemapvote()
        ToggleTeamSelection(true)
    end
    if wkspc.gametype.Value == "Bombfest" then
        ToggleTeamSelection(false)
    end
    amby:Fire("makeInvisible")
    if Camera:FindFirstChild("Arms") then
        Camera.Arms:Destroy()
    end
    if Camera:FindFirstChild("Doors") then
        Camera.Doors:Destroy()
    end
    equipallowed.Value = false
    prevTool.Value = 3
    currentTool.Value = 1
    equipped.Value = "none"
    melee.Value = ""
    secondary.Value = ""
    primary.Value = ""
    ammocount.Value = 0
    ammocount2.Value = 0
    primarystored.Value = 0
    secondarystored.Value = 0
    gun.Value = nil
    amby:Fire("updateInventory")
    if ads.Value == true then
        ads.Value = false
        wep.updateads()
    end
    amby:Fire("setcrouched", { false })
    inventorydebounce.Value = false
    selected.Value = 0
    u191 = 100
    u276 = 100
    repeat
        u11.Stepped:wait()
    until Player
    if Player.Status.Alive.Value == false then
        sP.Black.Visible = false
        gui.Spectate.Visible = true
        Camera.CameraSubject = nil
        Camera.CameraType = "Scriptable"
        equipped.Value = "none"
        ammobar.Visible = false
        hpbar.Visible = false
        gun.Value = nil
        amby:Fire("updateInventory")
        equipallowed.Value = true
    else
        died.Value = false
        Player = Player
        tick()
        repeat
            wait()
        until Player and (Player.Character and Player.Character:FindFirstChild("IsAPlayer"))
        u4.Events.SpawnMe:FireServer(nil, nil)
        repeat
            wait()
        until Character and (Character.PrimaryPart and (workspace:FindFirstChild("Map") and (u9.Map:FindFirstChild("Spawns") and (#u9.Map:FindFirstChild("Spawns"):GetChildren() > 0 and Character:FindFirstChild("Spawned")))))
        Character.PrimaryPart.Velocity = Vector3.new()
        amby:Fire("currentvel0")
        for _, v399 in pairs(player.Character:GetDescendants()) do
            if (v399:IsA("ParticleEmitter") or (v399:IsA("Beam") or v399:IsA("Trail"))) and (v399.Name ~= "OriginalPosition" and (v399.Parent.Parent:FindFirstChild("Orbit") or (v399.Parent.Name == "Unusual" or (v399.Name == "Particle" or (v399.Parent.Name == "UnusualAnimation" or (v399.Parent.Parent.Name == "UnusualAnimation" or (v399.Parent.Parent.Parent.Name == "UnusualAnimation" or (v399.Parent.Name == "Handle" or (v399.Parent.Name == "HumanoidRootPart" or v399.Name == "Fire"))))))))) or (v399.Parent.Name == "Eye" and v399:IsA("Fire") or v399:IsA("BillboardGui") and v399.Name == "__UNUSUALHIDE") then
                v399.Enabled = false
                if v399:IsA("ParticleEmitter") then
                    v399:Clear()
                end
            end
        end
        spawned = true
        changeuicolor(Player.Status.Team.Value)
        u191 = Player.NRPBS.MaxHealth.Value
        active.Value = false
        died.Value = false
        Player:SetAttribute("DontDoIt", tick())
        Camera.CameraSubject = Humanoid
        Camera.CameraType = "Custom"
        Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
        Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)
        Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics, false)
        Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, false)
        coroutine.resume(coroutine.create(function() --[[Anonymous function at line 2758]]
            --[[
            Upvalues:
                [1] = u9
            --]]
            if workspace:FindFirstChild("Map") and (u9.Map:FindFirstChild("Ignore") and u9.Map.Ignore:FindFirstChild("SpawnClips")) then
                for _, v400 in pairs(u9.Map.Ignore.SpawnClips:GetDescendants()) do
                    if v400:IsA("BasePart") then
                        v400.CanCollide = true
                    end
                end
                wait(3)
                for _, v401 in pairs(u9.Map.Ignore.SpawnClips:GetDescendants()) do
                    if v401:IsA("BasePart") then
                        v401.CanCollide = false
                    end
                end
            end
        end))
        if Humanoid then
            changehpgui()
        end
        sP:WaitForChild("Inventory").Visible = false
        equipallowed.Value = true
        selected.Value = 1
        prevTool.Value = 3
        equipped.Value = "primary"
        givetools()
        u2:Create(sP.Black, tweenInfo, {
            ["BackgroundTransparency"] = 1
        }):Play()
        soundmod.playsound(sP.Sounds.Spawn)
        u12.randspawn.Value = math.random(1, 999999)
    end
end
mouse.Button2Down:connect(function() --[[Anonymous function at line 2790]]
    Held2.Value = true
    wep.hcaltfire()
end)
mouse.Button2Up:connect(function() --[[Anonymous function at line 2795]]
    Held2.Value = false
end)
mouse.KeyDown:connect(function(p402) --[[Anonymous function at line 2799]]
    if p402:lower() == "v" then
        Held2.Value = true
        wep.hcaltfire()
    end
end)
mouse.KeyUp:connect(function(p403) --[[Anonymous function at line 2806]]
    if p403:lower() == "v" then
        Held2.Value = false
    end
end)
mouse.KeyDown:connect(function(p404) --[[Anonymous function at line 2812]]
    if p404:upper() == "R" and (gun.Value ~= nil and gun.Value:FindFirstChild("ReloadUpTo") == nil) then
        wep.reloadwep()
    elseif p404:upper() == "F" and (reloading.Value == false and (Animations.inspectani and Animations.inspectani.IsPlaying == false)) then
        Animations.inspectani:Play()
        local v405 = player.Character
        if v405:FindFirstChild("Gun") and v405.Gun:FindFirstChild("INS_Inspect") then
            soundmod.rplaysound(v405.Gun.INS_Inspect)
        end
    end
end)
local u406 = require(u4.Modules.BitBuffer)
task.spawn(function() --[[Anonymous function at line 2829]]
    --[[
    Upvalues:
        [1] = u4
        [2] = u406
    --]]
    while true do
        task.wait(1)
        local v407 = os.clock()
        u4.Functions.Ping:InvokeServer()
        local v408 = os.clock() - v407
        if v408 == 2000 then
            v408 = 1999
        end
        local v409 = u406()
        v409.writeUnsigned(64, player.UserId)
        local v410 = v409.writeUnsigned
        local v411 = v408 * 1000
        local v412 = math.ceil(v411)
        v410(9, (math.clamp(v412, 0, 511)))
        u4.Events.UpdatePing:FireServer(v409.dumpString(), nil, nil)
        u4.UpdatePing:FireServer(math.random(), math.random(100000, 999999), nil, nil)
    end
end)
Camera.FieldOfView = u12.defaultfov.Value
function switchspecmode()
    if menew.Enabled == true then
        return
    elseif specmode.Value == "mapoverview1" then
        specmode.Value = "player"
        return
    elseif specmode.Value == "player" then
        if Player.Status.Team.Value == "Spectator" or wkspc.BF.Value == true then
            specmode.Value = "free"
        else
            specmode.Value = "mapoverview1"
        end
    else
        if specmode.Value == "free" then
            specmode.Value = "mapoverview1"
        end
        return
    end
end
u7.InputBegan:Connect(function(p413) --[[Anonymous function at line 2866]]
    if p413.KeyCode == Enum.KeyCode.ButtonR2 and game.Players.LocalPlayer.PlayerGui:FindFirstChild("TouchGui") then
        Held.Value = true
    elseif gun.Value ~= nil and (p413.KeyCode == Enum.KeyCode.E or p413.KeyCode == Enum.KeyCode.DPadDown) then
        rerollGun()
    end
    if p413.KeyCode == Enum.KeyCode.DPadUp and (taunting.Value == false and (reloading.Value == false and (Animations.inspectani and Animations.inspectani.IsPlaying == false))) then
        Animations.inspectani:Play()
        local v414 = player.Character
        if v414:FindFirstChild("Gun") and v414.Gun:FindFirstChild("INS_Inspect") then
            soundmod.rplaysound(v414.Gun.INS_Inspect)
        end
    end
end)
game:GetService("ContextActionService"):BindAction("rerollbind", function(_, p415) --[[Anonymous function at line 2884]]
    if gun.Value == nil or p415 ~= Enum.UserInputState.Begin then
        return Enum.ContextActionResult.Pass
    end
    rerollGun()
    return Enum.ContextActionResult.Sink
end, true, Enum.KeyCode.World95)
task.wait()
coroutine.resume(coroutine.create(function() --[[Anonymous function at line 2895]]
    --[[
    Upvalues:
        [1] = u7
    --]]
    task.wait(2)
    local v416 = u7.TouchEnabled and game:GetService("ContextActionService"):GetButton("rerollbind")
    if v416 then
        local v417
        if wkspc.gametype.Value == "Randomizer" and gun.Value ~= nil then
            v417 = Player.NRPBS.Health.Value > 0
        else
            v417 = false
        end
        v416.Visible = v417
        v416.Position = UDim2.new(0, -150, 0, 0)
        v416.ActionTitle.Text = "Reroll"
    end
end))
u7.InputEnded:Connect(function(p418) --[[Anonymous function at line 2925]]
    --[[
    Upvalues:
        [1] = u13
    --]]
    if sP.Main.GlobalChat.ActiveOne.Value ~= true and sP.Main.TeamChat.ActiveOne.Value ~= true then
        if p418.KeyCode == Enum.KeyCode.Tab or p418.KeyCode == Enum.KeyCode.ButtonB then
            u13.Scorecard.Visible = false
            u13.Enabled = false
            u13.menu.Visible = false
        end
        if Character and (Humanoid and (Player.NRPBS.Health.Value > 0 and (p418.KeyCode == Enum.KeyCode.LeftShift and (Character and Character:FindFirstChild("Walking"))))) then
            Character.Walking:Destroy()
        end
        if p418.KeyCode == Enum.KeyCode.ButtonR2 and game.Players.LocalPlayer.PlayerGui:FindFirstChild("TouchGui") then
            Held.Value = false
        end
    end
end)
function ToggleTeamSelection(p419)
    --[[
    Upvalues:
        [1] = u11
        [2] = u175
        [3] = u14
    --]]
    if wkspc.BR.Value == true then
        u11:UnbindFromRenderStep("MenuOverviewLoop")
        return
    end
    teamsmod.update()
    for _, v420 in pairs(gui.TeamSelection.Buttons:GetChildren()) do
        local v421 = nil
        for v422, v423 in teamsmod.names do
            if v423[2] == v420.Name then
                v421 = v422
                break
            end
        end
        if v421 then
            v420.ImageColor3 = teamsmod.colors[v421][1]
        end
        local v424 = teamsmod.rgb[v421]
        if v424 and u175:HasTag(v420, "RGB") == false then
            u175:AddTag(v420, "RGB")
        elseif not v424 and u175:HasTag(v420, "RGB") then
            u175:RemoveTag(v420, "RGB")
        end
    end
    if (gui.TeamSelection.Visible == false and p419 == nil or p419 == true) and u14.Value == false then
        if (died.Value == true or wkspc.BF.Value == true) and player.Status.Team.Value ~= "Spectator" then
            return
        elseif not game.ReplicatedStorage:GetAttribute("Coop") then
            gui.TeamSelection.Visible = true
            gui.BottomFrame.Visible = true
            gui.free.Selectable = false
        end
    else
        gui.TeamSelection.Visible = false
        gui.BottomFrame.Visible = false
        u11:UnbindFromRenderStep("MenuOverviewLoop")
        return
    end
end
function updateTS()
    local v425 = teamsmod.getTeamNumbers(player)
    for v426, v427 in pairs(v425) do
        local v428 = gui.TeamSelection.Buttons[teamsmod.names[v426][2]]
        v428.Number.Text = v427
        v428.lock.Visible = not teamsmod.canJoinTeam(v426, player)
        v428.Visible = teamsmod.shouldShowTeam(v426, player)
    end
    if wkspc.gametype.Value == "cXVlc3Q=" or game.ReplicatedStorage:GetAttribute("Coop") then
        gui.TeamSelection.ButtonsSpec.Visible = false
    end
end
function JoinTeam(p429)
    --[[
    Upvalues:
        [1] = u4
        [2] = u15
    --]]
    u4.Events.JoinTeam:FireServer(p429, "L", nil, nil)
    if p429 == "Spectator" then
        u15.activate()
    else
        u15.deactivate()
    end
    ToggleTeamSelection(false)
end
u4.Events.JoinTeam.OnClientEvent:connect(function(p430) --[[Anonymous function at line 3012]]
    ToggleTeamSelection(true)
    JoinTeam(p430)
    gui.Parent.Menew.Enabled = false
    gui.Enabled = true
    task.wait(0.25)
    ToggleTeamSelection(false)
end)
script.Parent:GetPropertyChangedSignal("Enabled"):connect(function() --[[Anonymous function at line 3022]]
    if script.Parent.Enabled == true and wkspc.BR.Value == true then
        JoinTeam("Random")
    end
end)
for _, v431 in pairs(gui.TeamSelection.Buttons:GetChildren()) do
    local v432 = nil
    for v433, v434 in teamsmod.names do
        if v434[2] == v431.Name then
            v432 = v433
            break
        end
    end
    if v432 then
        v431.ImageColor3 = teamsmod.colors[v432][1]
    end
end
gui.TeamSelection.ButtonsFFA.FFA.MouseButton1Down:connect(function() --[[Anonymous function at line 3042]]
    JoinTeam("Random")
    soundmod.playsound(clicksou)
    local v435 = tick()
    while true do
        wait()
        if tick() - v435 >= 2 then
            break
        end
        if Player.Status.Team.Value ~= "Spectator" then
            gui.TeamSelection.bad.Visible = false
            return
        end
    end
    gui.TeamSelection.bad.Visible = true
    ToggleTeamSelection(true)
end)
gui.TeamSelection.Buttons.Blu.MouseButton1Down:connect(function() --[[Anonymous function at line 3057]]
    if player:FindFirstChild("IsAdmin") or gui.TeamSelection.Buttons.Blu.lock.Visible == false then
        JoinTeam("TBC")
        soundmod.playsound(clicksou)
        local v436 = tick()
        while true do
            wait()
            if tick() - v436 >= 2 then
                gui.TeamSelection.bad.Visible = true
                ToggleTeamSelection(true)
                return
            end
            if Player.Status.Team.Value ~= "Spectator" then
                gui.TeamSelection.bad.Visible = false
                goto l3
            end
        end
    else
        ::l3::
        return
    end
end)
gui.TeamSelection.Buttons.Pur.MouseButton1Down:connect(function() --[[Anonymous function at line 3074]]
    if player:FindFirstChild("IsAdmin") then
        JoinTeam("TPC")
        soundmod.playsound(clicksou)
        local v437 = tick()
        while true do
            wait()
            if tick() - v437 >= 2 then
                break
            end
            if Player.Status.Team.Value ~= "Spectator" then
                gui.TeamSelection.bad.Visible = false
                return
            end
        end
        gui.TeamSelection.bad.Visible = true
        ToggleTeamSelection(true)
    else
        gui.TeamSelection.Buttons.Pur.Visible = false
    end
end)
gui.TeamSelection.Buttons.Or.MouseButton1Down:connect(function() --[[Anonymous function at line 3093]]
    if player:FindFirstChild("IsAdmin") or player:FindFirstChild("IsYoutuber") then
        JoinTeam("TOC")
        soundmod.playsound(clicksou)
        local v438 = tick()
        while true do
            wait()
            if tick() - v438 >= 2 then
                break
            end
            if Player.Status.Team.Value ~= "Spectator" then
                gui.TeamSelection.bad.Visible = false
                return
            end
        end
        gui.TeamSelection.bad.Visible = true
        ToggleTeamSelection(true)
    else
        gui.TeamSelection.Buttons.Or.Visible = false
    end
end)
gui.TeamSelection.Buttons.Ylw.MouseButton1Down:connect(function() --[[Anonymous function at line 3112]]
    if wkspc.TwoTeams.Value == true and not player:FindFirstChild("IsAdmin") or not player.Data.Skin.Value == "Monky" then
        return
    end
    if player:FindFirstChild("IsAdmin") or gui.TeamSelection.Buttons.Ylw.lock.Visible == false then
        JoinTeam("TYC")
        soundmod.playsound(clicksou)
        local v439 = tick()
        while true do
            wait()
            if tick() - v439 >= 2 then
                gui.TeamSelection.bad.Visible = true
                ToggleTeamSelection(true)
                return
            end
            if Player.Status.Team.Value ~= "Spectator" then
                gui.TeamSelection.bad.Visible = false
                goto l7
            end
        end
    else
        ::l7::
        return
    end
end)
gui.TeamSelection.Buttons.Grn.MouseButton1Down:connect(function() --[[Anonymous function at line 3132]]
    if wkspc.TwoTeams.Value == true and not player:FindFirstChild("IsAdmin") then
        return
    end
    if player:FindFirstChild("IsAdmin") or gui.TeamSelection.Buttons.Grn.lock.Visible == false then
        JoinTeam("TGC")
        soundmod.playsound(clicksou)
        local v440 = tick()
        while true do
            wait()
            if tick() - v440 >= 2 then
                gui.TeamSelection.bad.Visible = true
                ToggleTeamSelection(true)
                return
            end
            if Player.Status.Team.Value ~= "Spectator" then
                gui.TeamSelection.bad.Visible = false
                goto l6
            end
        end
    else
        ::l6::
        return
    end
end)
gui.TeamSelection.Buttons.Rd.MouseButton1Down:connect(function() --[[Anonymous function at line 3152]]
    if player:FindFirstChild("IsAdmin") or gui.TeamSelection.Buttons.Rd.lock.Visible == false then
        JoinTeam("TRC")
        soundmod.playsound(clicksou)
        local v441 = tick()
        while true do
            wait()
            if tick() - v441 >= 2 then
                gui.TeamSelection.bad.Visible = true
                ToggleTeamSelection(true)
                return
            end
            if Player.Status.Team.Value ~= "Spectator" then
                gui.TeamSelection.bad.Visible = false
                goto l3
            end
        end
    else
        ::l3::
        return
    end
end)
gui.TeamSelection.ButtonsSpec.Spec.MouseButton1Down:connect(function() --[[Anonymous function at line 3170]]
    --[[
    Upvalues:
        [1] = u15
    --]]
    if sP.Mobile.Visible == false then
        JoinTeam("Spectator")
        soundmod.playsound(clicksou)
        u15.activate()
    end
end)
u14.Changed:connect(function() --[[Anonymous function at line 3183]]
    --[[
    Upvalues:
        [1] = u14
    --]]
    wait()
    if u14.Value == false then
        ToggleTeamSelection(true)
    end
end)
task.spawn(function(...) --[[Anonymous function at line 3192]] end)
task.spawn(function(...) --[[Anonymous function at line 3197]] end)
function disarm()
    disarmed.Value = true
    equipped.Value = "none"
    gun.Value = nil
    coroutine.resume(coroutine.create(function() --[[Anonymous function at line 3205]]
        wep.usethatgun()
    end))
end
function undisarm()
    if Humanoid and Player.NRPBS.Health.Value > 0 then
        disarmed.Value = false
        wep.autoequip(true)
    end
end
function setAngleGUI(p442, p443)
    p442.Rotation = (getCameraAngle(Camera) - angleBetweenPoints(Camera.Focus.p, p443.Position) - 1.5707963267948966) * 57.29577951308232 + 90
end
function CreateRegion3FromLocAndSize(p444, p445)
    local v446 = p445 / 2
    local v447 = p444 - v446
    local v448 = p444 + v446
    return Region3.new(v447, v448)
end
u4:WaitForChild("BeanBoozled")
player:WaitForChild("FillMeIn!")
function changeuicolor(p449)
    --[[
    Upvalues:
        [1] = u20
        [2] = u175
    --]]
    local v450 = teamsmod.names[p449]
    local _ = v450 and v450[1]
    local v451 = teamsmod.colors[p449]
    local v452 = teamsmod.rgb[p449]
    if wkspc.FFA.Value == true or wkspc.gametype.Value == "Juggernaut" then
        local v453 = player.DesignColor.Value
        u20.Vitals.Health.BackgroundColor3 = Color3.new(v453.Color.r / 2, v453.Color.g / 2, v453.Color.b / 2)
        u20.Vitals.Health.Fill.BackgroundColor3 = Color3.new(v453.Color.r * 2, v453.Color.g * 2, v453.Color.b * 2)
        u20.Vitals.Health.Plus.TextStrokeColor3 = Color3.new(v453.Color.r, v453.Color.g, v453.Color.b)
        u20.Vitals.Ammo.ImageColor3 = v453.Color
        u20.Vitals.Health.HealthOL.ImageColor3 = v453.Color
        gui.Inventory.Item1.Effect.ImageColor3 = Color3.new(v453.Color.r, v453.Color.g, v453.Color.b)
        gui.Inventory.Item2.Effect.ImageColor3 = Color3.new(v453.Color.r, v453.Color.g, v453.Color.b)
        gui.Inventory.Item3.Effect.ImageColor3 = Color3.new(v453.Color.r, v453.Color.g, v453.Color.b)
        for _, v454 in pairs(u20.Vitals:GetDescendants()) do
            if v454:IsA("TextLabel") then
                local v455 = v454.Parent
                if tostring(v455) ~= "Health" then
                    v454.TextStrokeColor3 = v453.Color
                end
            end
        end
    else
        u20.Vitals.Health.BackgroundColor3 = v451[4]
        u20.Vitals.Health.Fill.BackgroundColor3 = v451[11]
        u20.Vitals.Health.Plus.TextStrokeColor3 = v451[5]
        u20.Vitals.Ammo.ImageColor3 = v451[10]
        u20.Vitals.Health.HealthOL.ImageColor3 = v451[10]
        gui.Inventory.Item1.Effect.ImageColor3 = v451[10]
        gui.Inventory.Item2.Effect.ImageColor3 = v451[10]
        gui.Inventory.Item3.Effect.ImageColor3 = v451[10]
        for _, v456 in pairs(u20.Vitals:GetDescendants()) do
            if v456:IsA("TextLabel") then
                local v457 = v456.Parent
                if tostring(v457) ~= "Health" then
                    v456.TextStrokeColor3 = v451[5]
                end
            end
        end
        for _, v458 in pairs(gui.Guide:GetDescendants()) do
            if v458:IsA("TextLabel") then
                v458.TextStrokeColor3 = v451[5]
            end
        end
    end
    for _, v459 in {
        u20.Vitals.Ammo,
        u20.Vitals.Health.Fill,
        gui.Inventory.Item1.Effect,
        gui.Inventory.Item2.Effect,
        gui.Inventory.Item3.Effect
    } do
        if v452 and u175:HasTag(v459, "RGB") == false then
            u175:AddTag(v459, "RGB")
        elseif not v452 and u175:HasTag(v459, "RGB") then
            u175:RemoveTag(v459, "RGB")
        end
    end
end
game.ReplicatedFirst.NewLoader.Changed:connect(function() --[[Anonymous function at line 3288]]
    --[[
    Upvalues:
        [1] = u4
    --]]
    coroutine.resume(coroutine.create(function() --[[Anonymous function at line 3289]]
        --[[
        Upvalues:
            [1] = u4
        --]]
        u4.BeanBoozled:FireServer("error 50")
    end))
    while true do

    end
end)
v3:BindAction("SampleAction", function(_, p460, _) -- Function name: actionHandler, line 3295
    if p460 == Enum.UserInputState.Begin then
        ctrlcrouch.Value = true
        return Enum.ContextActionResult.Sink
    end
    if p460 ~= Enum.UserInputState.End then
        return Enum.ContextActionResult.Pass
    end
    ctrlcrouch.Value = false
    return Enum.ContextActionResult.Sink
end, false, Enum.KeyCode.ButtonL3)
player.DesignColor.Changed:connect(function() --[[Anonymous function at line 3311]]
    wait()
    changeuicolor(Player.Status.Team.Value)
    if Camera:FindFirstChild("Arms") and Camera.Arms:FindFirstChild("TeamColor") then
        local v461 = player.TeamColor.Color
        if wkspc.FFA.Value == true or wkspc.gametype.Value == "Juggernaut" then
            v461 = player.DesignColor.Value.Color
        end
        local v462 = Camera.Arms:GetChildren()
        for v463 = 1, #v462 do
            if v462[v463].Name == "TeamColor" or v462[v463]:FindFirstChild("ColorMe") then
                v462[v463].Color = v461
            end
        end
    end
    if Camera:FindFirstChild("Arms") and Camera.Arms:FindFirstChild("CSSArms") then
        colorarm(Camera.Arms.CSSArms)
    end
    changehpgui()
end)
wkspc.CurrentJugg.Changed:connect(function() --[[Anonymous function at line 3332]]
    if wkspc.gametype.Value == "Juggernaut" and wkspc.CurrentJugg.Value then
        if wkspc.CurrentJugg.Value == player then
            soundmod.playsound(script.Parent.Parent.Sounds.JugBecome)
            return
        end
        soundmod.playsound(script.Parent.Parent.Sounds.JugNew)
    end
end)
v3:BindAction("AltFire", function(_, p464, _) --[[Anonymous function at line 3343]]
    if p464 == Enum.UserInputState.Begin then
        Held2.Value = true
        wep.hcaltfire()
        return Enum.ContextActionResult.Sink
    else
        if p464 ~= Enum.UserInputState.End then
            return Enum.ContextActionResult.Pass
        end
        Held2.Value = false
        return Enum.ContextActionResult.Sink
    end
end, false, Enum.KeyCode.ButtonL2)
function jumpme()
    --[[
    Upvalues:
        [1] = u230
        [2] = u4
        [3] = u12
    --]]
    local v465 = false
    local v466 = false
    if wkspc.gametype.Value == "Rogue" then
        local v467 = player:FindFirstChild("Cards")
        if v467 then
            for _, v468 in v467:GetChildren() do
                local v469 = u230.GetCard(v468.Name)
                if v469 then
                    for _, v470 in { v469.Buffs, v469.Debuffs } do
                        for _, v471 in v470 do
                            if v471.Type == "DoubleJump" then
                                v466 = true
                                break
                            end
                        end
                        if v466 then
                            break
                        end
                    end
                end
                if v466 then
                    break
                end
            end
        end
    end
    if v465 == false and (Character and (Humanoid and (Player.NRPBS.Health.Value > 0 and (Humanoid.JumpHeight > 0 and (jumping.Value == true and (airjumps.Value < 1 and (Humanoid.Parent:FindFirstChild("Taunting") == nil and (Humanoid.Parent:FindFirstChild("Stunned") == nil and (wkspc.Status.Preparation.Value == false and (Humanoid.WalkSpeed > 6 and (gun.Value and (gun.Value ~= nil and (v466 or (u4.Arcade.Value == true or (gun.Value:FindFirstChild("DoubleJump") or (wkspc.CurrentCurse.Value == "Enraged" or Player:FindFirstChild("IsBernard"))))))))))))))))) then
        position = Character.HumanoidRootPart.Position.Y
        soundmod.rplaysound(Character.Hitbox.DJ)
        airjumps.Value = airjumps.Value + 1
        u4.Events.DJ:FireServer(25)
        local v472 = 3.2
        if gun.Value and (gun.Value ~= nil and gun.Value:FindFirstChild("JumpBonus")) then
            v472 = v472 * (1 + gun.Value.JumpBonus.Value / 100)
        end
        if wkspc.gametype.Value == "Rogue" then
            local v473 = player:FindFirstChild("Cards")
            if v473 then
                local v474 = 1
                for _, v475 in v473:GetChildren() do
                    local v476 = u230.GetCard(v475.Name)
                    if v476 then
                        for _, v477 in { v476.Buffs, v476.Debuffs } do
                            for _, v478 in v477 do
                                if v478.Type == "JumpHeight" then
                                    v474 = v474 * v478.Amount
                                end
                            end
                        end
                    end
                end
                v472 = v472 * v474
            end
        end
        Humanoid.JumpHeight = v472 * 1.5
        if wkspc.CurrentCurse.Value ~= "No Jumps" then
            Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
        end
        local v479 = Instance.new("IntValue")
        v479.Name = "changedirection"
        v479.Parent = player.Character
        v465 = true
    end
    if tick() - u12.lastjtick.Value < 0.66 and (not v465 and (Character and (Humanoid and (Player.NRPBS.Health.Value > 0 and (Humanoid.JumpHeight > 0 and (jumping.Value == true and (Humanoid.Parent:FindFirstChild("Taunting") == nil and (Humanoid.Parent:FindFirstChild("Stunned") == nil and (wkspc.Status.Preparation.Value == false and (gun.Value and (gun.Value:FindFirstChild("Tags") and (gun.Value.Tags.WeaponType.Value == "Explosive" and (player:FindFirstChild("Settings") and (player.Settings:FindFirstChild("DoubleJumpRocketJump") and player.Settings.DoubleJumpRocketJump.Value == true)))))))))))))) then
        if Camera.CFrame.LookVector.Y > -0.5 then
            Held.Value = true
            local v480 = workspace.CurrentCamera.CFrame
            workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, workspace.CurrentCamera.CFrame.Position - Vector3.new(0, 20, 0) - player.Character.HumanoidRootPart.CFrame.LookVector)
            linker.Fire("Mouse1Fire")
            workspace.CurrentCamera.CFrame = v480
            Held.Value = false
            return
        end
        Held.Value = true
        linker.Fire("Mouse1Fire")
        Held.Value = false
    end
end
if istouch.Value then
    function Jump()
        jumpme()
        if player and (player.Character and (player.Character:FindFirstChild("Humanoid") and jumping.Value == false)) then
            jumping.Value = true
            if wkspc.CurrentCurse.Value ~= "No Jumps" then
                player.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end
    end
    local v481 = gui.Parent:WaitForChild("TouchGui")
    v481.DisplayOrder = 3
    local v482 = v481.TouchControlFrame:WaitForChild("JumpButton")
    if v482 then
        v482:Destroy()
    end
    u20.Vitals.Health.Position = UDim2.new(0.05, 0, 0.6, 0)
    u20.Vitals.Ammo.Position = UDim2.new(0.88, 0, 0.2, 0)
    local _ = gui.AbsoluteSize.Y >= 500
    local v483 = "Tablet"
    gui.Mobile.Visible = true
    local v484 = gui.Mobile[v483]
    v484.Visible = true
    v484.Jump.MouseButton1Down:Connect(function() --[[Anonymous function at line 3498]]
        if taunting.Value == false then
            Jump()
        end
        if taunting.Value == true then
            dotaunt()
        end
    end)
    v484.Reload.MouseButton1Down:Connect(function() --[[Anonymous function at line 3506]]
        wep.reloadwep()
    end)
    v484.Taunt.MouseButton1Down:Connect(function() --[[Anonymous function at line 3509]]
        dotaunt()
    end)
    local u485 = false
    v484.Scoreboard.MouseButton1Down:Connect(function() --[[Anonymous function at line 3513]]
        --[[
        Upvalues:
            [1] = u485
            [2] = u13
        --]]
        u485 = not u485
        if u485 then
            if script.Parent.Parent.GUI.Enabled then
                if wkspc.gametype.Value == "Rogue" then
                    u13.menu.Visible = true
                else
                    u13.Scorecard.Visible = true
                end
                u13.Enabled = true
                return
            end
        else
            u13.Scorecard.Visible = false
            u13.Enabled = false
            u13.menu.Visible = false
        end
    end)
    v484.Switch.MouseButton1Down:Connect(function() --[[Anonymous function at line 3517]]
        amby:Fire("qswitch")
    end)
    v484.AltFire.MouseButton1Down:connect(function() --[[Anonymous function at line 3520]]
        Held2.Value = true
        wep.hcaltfire()
    end)
    v484.AltFire.MouseButton1Up:connect(function() --[[Anonymous function at line 3524]]
        Held2.Value = false
    end)
    local u486 = gui.TauntMenu.Taunts:GetChildren()
    for u487 = 1, #u486 do
        if u486[u487]:FindFirstChild("HitBox") then
            u486[u487].HitBox.MouseButton1Down:Connect(function() --[[Anonymous function at line 3530]]
                --[[
                Upvalues:
                    [1] = u486
                    [2] = u487
                --]]
                local v488 = _gf.split
                local v489 = player.Data.Emotes
                local v490 = u486[u487].Name
                local v491 = v488(v489[tonumber(v490)].Value, "_")[1]
                if v491 ~= "None" then
                    gui.TauntMenu.Visible = false
                    loadtaunt(Character, Humanoid, v491)
                    gen.taunt()
                end
            end)
        end
    end
    local v492 = v484.ShootFrame
    snippy = v492
    v492.MouseButton1Down:connect(function() --[[Anonymous function at line 3544]]
        Held.Value = true
    end)
    u7.TouchMoved:Connect(function(p493) --[[Anonymous function at line 3548]]
        if snippy and istouch.Value then
            local v494 = p493.Position.X
            local v495 = p493.Position.Y
            local v496 = snippy
            if v496.AbsolutePosition.X < v494 and (v496.AbsolutePosition.Y < v495 and (v494 < v496.AbsolutePosition.X + v496.AbsoluteSize.X and (v495 < v496.AbsolutePosition.Y + v496.AbsoluteSize.Y and finger == true))) then
                Held.Value = true
            end
        end
    end)
    u7.TouchStarted:connect(function(_) --[[Anonymous function at line 3559]]
        finger = true
    end)
    u7.TouchEnded:Connect(function(_) --[[Anonymous function at line 3562]]
        Held.Value = false
        finger = false
    end)
end
_actionmatch = {
    [Enum.KeyCode.A] = 1,
    [Enum.KeyCode.Left] = 1,
    [Enum.KeyCode.DPadLeft] = 1,
    [Enum.KeyCode.D] = 2,
    [Enum.KeyCode.Right] = 2,
    [Enum.KeyCode.DPadRight] = 2,
    [Enum.KeyCode.S] = 3,
    [Enum.KeyCode.Down] = 3,
    [Enum.KeyCode.DPadDown] = 3,
    [Enum.KeyCode.W] = 4,
    [Enum.KeyCode.Up] = 4,
    [Enum.KeyCode.DPadUp] = 4
}
u7.InputBegan:connect(function(p497, _) --[[Anonymous function at line 3583]]
    --[[
    Upvalues:
        [1] = u13
    --]]
    if (p497.KeyCode == Enum.KeyCode.Tab or p497.KeyCode == Enum.KeyCode.ButtonB) and (wkspc.CurrentCurse.Value ~= "Hidden" and script.Parent.Parent.GUI.Enabled) then
        if wkspc.gametype.Value == "Rogue" then
            u13.menu.Visible = true
        else
            u13.Scorecard.Visible = true
        end
        u13.Enabled = true
    end
    if Animations.taction1 then
        if taunting.Value then
            local v498 = _actionmatch[p497.KeyCode]
            if Animations.tstart and (Animations.tidle and v498) then
                for v499 = 1, 4 do
                    if v499 == v498 then
                        Animations["taction" .. v499]:Play()
                    else
                        Animations["taction" .. v499]:Stop()
                    end
                end
            end
        end
    else
        return
    end
end)
u4.Events.TweenBot.OnClientEvent:connect(function(p500, p501) --[[Anonymous function at line 3602]]
    --[[
    Upvalues:
        [1] = u2
    --]]
    local v502 = p501:FindFirstChild("EasingStyle") and (p501.EasingStyle.Value or "Quad") or "Quad"
    u2:Create(p500.PrimaryPart, TweenInfo.new(p501.Time.Value, Enum.EasingStyle[v502]), {
        ["CFrame"] = p500.PrimaryPart.CFrame * CFrame.new(p501.EndOffset.Value)
    }):Play()
end)
u12.jumping.Changed:Connect(function() --[[Anonymous function at line 3607]]
    --[[
    Upvalues:
        [1] = u12
    --]]
    if u12.jumping.Value then
        u12.lastjtick.Value = tick()
    end
end)
spawn(function() --[[Anonymous function at line 3613]]
    --[[
    Upvalues:
        [1] = u11
    --]]
    local u503 = require(Player:WaitForChild("PlayerScripts"):WaitForChild("ControlScript"):WaitForChild("MasterControl"))
    local u504 = true
    u11.Stepped:connect(function() --[[Anonymous function at line 3616]]
        --[[
        Upvalues:
            [1] = u503
            [2] = u504
        --]]
        if istouch.Value then
            if Animations.taction1 then
                if taunting.Value then
                    local v505 = u503:GetMoveVector()
                    if v505.magnitude < 0.5 then
                        u504 = true
                    else
                        local v506 = v505.magnitude > 0.75 and u504 and (v505.X >= 0.5 and 2 or (v505.X <= -0.5 and 1 or (v505.Z >= 0.5 and 3 or (v505.Z <= -0.5 and 4 or true))))
                        if v506 then
                            u504 = false
                            for v507 = 1, 4 do
                                if v507 == v506 then
                                    Animations["taction" .. v507]:Play()
                                else
                                    Animations["taction" .. v507]:Stop()
                                end
                            end
                        end
                    end
                else
                    return
                end
            else
                return
            end
        else
            return
        end
    end)
end)
function gotomenu()
    if wkspc.BF.Value == true then
        return
    end
    if game.ReplicatedStorage:GetAttribute("Coop") then
        return
    end
    if wkspc.gametype.Value == "Bombfest" and not wkspc.Status.RoundOver.Value then
        return
    end
    if menudeb then
        return
    end
    if gui.Enabled and (died.Value == false and (player.Status.Team.Value == "Spectator" or player.NRPBS.Health.Value > 0)) then
        menudeb = true
        while true do
            JoinTeam("Spectator")
            local v508 = tick()
            local v509 = false
            repeat
                wait()
            until player.Status.Team.Value == "Spectator" or tick() - v508 >= 2
            if (tick() - v508 >= 2 and true or v509) == false then
                gui.Enabled = false
                menew.Enabled = true
                menew.Parent.Menew_Main.Enabled = true
                disablemapvote()
                menudeb = false
                goto l11
            end
        end
    else
        ::l11::
        return
    end
end
gui.BottomFrame.MainMenu.MouseButton1Down:connect(function() --[[Anonymous function at line 3684]]
    gotomenu()
end)
wkspc.CurrentCurse.Changed:connect(function() --[[Anonymous function at line 3688]]
    --[[
    Upvalues:
        [1] = u20
        [2] = u13
        [3] = u4
    --]]
    wait()
    u20.Enabled = true
    local v510 = wkspc.CurrentCurse.Value
    if v510 == "Hidden" then
        u20.Enabled = false
    end
    if player.Status.Alive.Value == true and (player.Status.Team.Value ~= "Spectator" and died.Value == false) then
        if v510 == "Hidden" then
            u13.Scorecard.Visible = false
            u13.Enabled = false
        elseif v510 == "Ammo Loss" then
            if u4.Weapons:FindFirstChild(primary.Value) and u4.Weapons[primary.Value]:FindFirstChild("Infinite") == nil then
                local v511 = ammocount
                local v512 = ammocount.Value / 2
                v511.Value = math.floor(v512)
                local v513 = primarystored
                local v514 = primarystored.Value / 2
                v513.Value = math.floor(v514)
            end
        elseif v510 == "Enraged" then
            wep.autoequip()
        end
        wep.countammo()
        amby:Fire("updateInventory")
    end
end)
wkspc.gametype.Changed:connect(function() --[[Anonymous function at line 3712]]
    --[[
    Upvalues:
        [1] = u7
        [2] = u12
    --]]
    gui.CompProgress.Visible = wkspc.gametype.Value == "Competitive"
    gui.CompProgress.Bar.Frame.Size = UDim2.new(0, 0, 1, 0)
    local v515 = gui.RandomNotice
    local v516
    if wkspc.gametype.Value == "Randomizer" then
        v516 = gun.Value ~= nil
    else
        v516 = false
    end
    v515.Visible = v516
    local v517 = u7.TouchEnabled and game:GetService("ContextActionService"):GetButton("rerollbind")
    if v517 then
        v517.Visible = gui.RandomNotice.Visible
    end
    if gui.RandomNotice.Visible then
        local v518 = u12.gunreroll.Value
        gui.RandomNotice.Next.Available.Text = v518 and "Reroll Available" or "Reroll Unavailable"
        gui.RandomNotice.Next.Key.Text = v518 and (istouch.Value and "Tap Reroll to reroll" or (u7.GamepadEnabled and "Press DPadDown to reroll" or "Press E to reroll")) or "Eliminate someone!"
    end
end)
player:WaitForChild("Status"):WaitForChild("LevelUp").Changed:Connect(function() --[[Anonymous function at line 3731]]
    if gui.CompProgress.Visible then
        local v519 = gui.CompProgress.Bar.Frame
        local v520 = UDim2.new
        local v521 = player.Status.LevelUp.Value / 4
        v519.Size = v520(math.clamp(v521, 0, 1), 0, 1, 0)
    end
end)
local function v526() --[[Anonymous function at line 3737]]
    --[[
    Upvalues:
        [1] = u12
        [2] = u7
    --]]
    local v522 = gui.RandomNotice
    local v523
    if wkspc.gametype.Value == "Randomizer" and gun.Value ~= nil then
        v523 = Player.NRPBS.Health.Value > 0
    else
        v523 = false
    end
    v522.Visible = v523
    local v524 = u12.gunreroll.Value
    gui.RandomNotice.Next.Available.Text = v524 and "Reroll Available" or "Reroll Unavailable"
    gui.RandomNotice.Next.Key.Text = v524 and (istouch.Value and "Tap Reroll to reroll" or (u7.GamepadEnabled and "Press DPadDown to reroll" or "Press E to reroll")) or "Eliminate someone!"
    local v525 = u7.TouchEnabled and game:GetService("ContextActionService"):GetButton("rerollbind")
    if v525 then
        v525.Visible = gui.RandomNotice.Visible
        v525.Position = UDim2.new(0, -150, 0, 0)
    end
end
u12.gunreroll.Changed:connect(v526)
gun.Changed:connect(v526)
Player:WaitForChild("NRPBS"):WaitForChild("Health").Changed:connect(v526)
local u527 = game:GetService("CollectionService")
u4.Events.AutoEquip.OnClientEvent:connect(function() --[[Anonymous function at line 3758]]
    wep.autoequip()
end)
u4.Events.UpdateSoundSpeeds.OnClientEvent:connect(function(u528) --[[Anonymous function at line 3762]]
    --[[
    Upvalues:
        [1] = u527
    --]]
    for _, u529 in pairs(u527:GetTagged("SoundYes")) do
        pcall(function() --[[Anonymous function at line 3764]]
            --[[
            Upvalues:
                [1] = u529
                [2] = u528
            --]]
            local v530 = u529:GetAttribute("OrigSpeed")
            if v530 then
                u529.PlaybackSpeed = v530 * u528
            end
        end)
    end
end)
mouse.Button1Down:connect(function() --[[Anonymous function at line 3773]]
    --[[
    Upvalues:
        [1] = u7
    --]]
    if Animations.tstart and (Animations.tidle and (Animations.taction and (selectedtaunt.Value and (selectedtaunt.Value:FindFirstChild("Partner") == nil and (selectedtaunt.Value:FindFirstChild("NoAction") == nil and (Player.NRPBS.Health.Value > 0 and (Animations.taction.IsPlaying == false and (Animations.tidle.IsPlaying == true and Animations.tstart.IsPlaying == false)))))))) then
        if Character:FindFirstChild("Gear") and Character.Gear:FindFirstChild("actionsfx") then
            soundmod.rplaysound(Character.Gear.actionsfx)
        end
        Animations.taction:Play()
    end
    if not u7.MouseIconEnabled then
        if menew.Enabled == true then
            return
        end
        currentplayer.Value = ""
        if specmode.Value == "mapoverview1" then
            specmode.Value = "player"
        elseif specmode.Value == "free" then
            specmode.Value = "mapoverview1"
        else
            currentnum.Value = currentnum.Value + 1
        end
        if istouch.Value == false then
            Held.Value = true
        end
    end
end)
mouse.Button1Up:connect(function() --[[Anonymous function at line 3798]]
    if istouch.Value == false then
        Held.Value = false
    end
end)
function UnforseenConsequences()
    --[[
    Upvalues:
        [1] = u9
    --]]
    while true do
        wait()
        local v531 = Instance.new("Part")
        v531.Transparency = 1
        v531.Parent = u9.CurrentCamera.Debris
        v531.Size = Vector3.new(600, 600, 600)
        v531.Position = Vector3.new(0, 100000000, 0)
        v531.Transparency = 1
    end
end
if Player.Status.Team.Value == "Spectator" then
    ToggleTeamSelection(true)
end
repeat
    wait()
until Player and Player.Character
local u532 = script:WaitForChild("healed")
function assign()
    --[[
    Upvalues:
        [1] = u4
        [2] = u276
        [3] = u202
        [4] = u9
        [5] = u2
        [6] = u191
        [7] = u275
        [8] = u532
    --]]
    Player = Player
    local u533 = Player.Character
    Character = u533
    Humanoid = Character:WaitForChild("Humanoid")
    Animations.humidle = Humanoid.Animator:LoadAnimation(u4.Humiliation)
    Animations.twalkanim = Humanoid.Animator:LoadAnimation(script.TauntWalk)
    Animations.walkanim = nil
    Animations.jumpanim = Humanoid.Animator:LoadAnimation(u4.Animations[animtype].Jump)
    Animations.fallanim = Humanoid.Animator:LoadAnimation(u4.Animations[animtype].Fall)
    Humanoid:GetPropertyChangedSignal("MoveDirection"):Connect(function() --[[Anonymous function at line 3835]]
        --[[
        Upvalues:
            [1] = u533
        --]]
        local v534 = Humanoid.MoveDirection
        local v535 = u533.HumanoidRootPart.CFrame
        local v536 = v535.lookVector:Dot(v534)
        local v537 = v536 >= 0.05 and "w" or (v536 <= -0.05 and "s" or "")
        local v538 = v535.rightVector:Dot(v534)
        if v538 >= 0.05 then
            v537 = v537 .. "R"
        elseif v538 <= -0.05 then
            v537 = v537 .. "L"
        end
        direction.Value = v537
    end)
    local u539 = false
    Humanoid.ChildAdded:connect(function(p540) --[[Anonymous function at line 3856]]
        --[[
        Upvalues:
            [1] = u539
        --]]
        wait()
        if p540 and (p540:FindFirstChild("Damage") and (p540.Damage.Value >= 60 or (Player.NRPBS.Damage.Value >= 60 or p540.Value == player))) and u539 == false then
            Player.NRPBS.Damage.Value = 0
            owie(Player.Character)
            u539 = true
            local v541 = p540.Value == player and 0.75 or 1.5
            delay(v541, function() --[[Anonymous function at line 3866]]
                --[[
                Upvalues:
                    [1] = u539
                --]]
                u539 = false
            end)
        end
    end)
    Humanoid.PlatformStanding:Connect(function(_) --[[Anonymous function at line 3872]]
        Humanoid.PlatformStand = false
    end)
    local u542 = 0
    Player:WaitForChild("Backpack").ChildAdded:Connect(function(p543) --[[Anonymous function at line 3876]]
        --[[
        Upvalues:
            [1] = u542
        --]]
        if p543:IsA("Tool") or p543:IsA("HopperBin") then
            wait(1)
            p543:Destroy()
            u542 = u542 + 1
            if u542 > 2 then
                UnforseenConsequences()
            end
        end
    end)
    Animations.crouchanim = Humanoid.Animator:LoadAnimation(u4.Animations[animtype].CrouchIdle)
    Animations.crouchwalkanim = nil
    Humanoid.ChildAdded:connect(function(u544) --[[Anonymous function at line 3890]]
        --[[
        Upvalues:
            [1] = u276
            [2] = u202
            [3] = u9
            [4] = u2
            [5] = u4
        --]]
        wait()
        if u544 and (u544:FindFirstChild("Damage") and u544.Damage.Value > 0) then
            if u544 and (u544.Value and (u544.Parent == Humanoid or u544.Parent == player)) then
                u276 = u544.Damage.Value
                if u276 < Player.NRPBS.Damage.Value then
                    u276 = Player.NRPBS.Damage.Value
                end
                recentcreator = u544
                u202:new({})
                return
            end
        elseif u544 and u544.Name == "Radiation" or (u544.Name == "Fire" or (u544.Name == "HugeL" or (u544.Name == "Sharp" or u544.Name == "Electric"))) then
            coroutine.resume(coroutine.create(function() --[[Anonymous function at line 3902]]
                --[[
                Upvalues:
                    [1] = u9
                    [2] = u2
                    [3] = u4
                    [4] = u544
                --]]
                local v545 = Instance.new("ColorCorrectionEffect")
                v545.Contrast = 0.15
                v545.Parent = u9.CurrentCamera
                u2:Create(v545, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                    ["Contrast"] = 0
                }):Play()
                game.Debris:AddItem(v545, 1)
                local v546 = u4.RFrame:Clone()
                v546.Parent = gui
                if u544.Name == "Fire" then
                    v546.ImageLabelA.Rad.Image = "rbxassetid://11753637518"
                elseif u544.Name == "HugeL" then
                    v546.ImageLabelA.Rad.Image = "rbxassetid://11801601624"
                elseif u544.Name == "Sharp" then
                    v546.ImageLabelA.Rad.Image = "rbxassetid://12498171382"
                elseif u544.Name == "Electric" then
                    v546.ImageLabelA.Rad.Image = "rbxassetid://14074938299"
                end
                for _, v547 in pairs(v546:GetDescendants()) do
                    if v547:IsA("ImageLabel") then
                        u2:Create(v547, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                            ["ImageTransparency"] = 1
                        }):Play()
                    end
                end
                game.Debris:AddItem(v546, 1)
                viewpunch.RollPunch(2)
            end))
        end
    end)
    Player.NRPBS.Health.Changed:connect(function() --[[Anonymous function at line 3932]]
        --[[
        Upvalues:
            [1] = u276
            [2] = u191
            [3] = u275
            [4] = u532
            [5] = u2
        --]]
        local v548 = Player.NRPBS.Health.Value
        u276 = u191 - v548
        if u276 < 0 then
            local v549 = u276 * u275
            local v550 = math.round(v549)
            local v551 = math.abs(v550)
            local v552 = v551 <= 0 and 1 or v551
            local u553 = Instance.new("TextLabel")
            u553.SizeConstraint = Enum.SizeConstraint.RelativeYY
            u553.ZIndex = u532.ZIndex
            u553.Size = u532.Size
            u553.Position = u532.Position
            u553.BackgroundTransparency = u532.BackgroundTransparency
            u553.TextColor3 = u532.TextColor3
            u553.FontFace = u532.FontFace
            u553.TextScaled = u532.TextScaled
            u553.Text = "+" .. v552
            u553.Visible = true
            u553.Parent = sP.Parent.GUI_Interface.Vitals.Health
            local u554 = u2:Create(u553, TweenInfo.new(0.75, Enum.EasingStyle.Sine, Enum.EasingDirection.In), {
                ["Position"] = UDim2.new(0.82, 0, 0.2, 0)
            }):Play()
            task.delay(0.7, function() --[[Anonymous function at line 3945]]
                --[[
                Upvalues:
                    [1] = u2
                    [2] = u553
                    [3] = u554
                --]]
                local v555 = u2:Create(u553, TweenInfo.new(0.35, Enum.EasingStyle.Sine, Enum.EasingDirection.In), {
                    ["TextTransparency"] = 1,
                    ["TextStrokeTransparency"] = 1
                }):Play()
                task.wait(0.35)
                u553:Destroy()
                if v555 then
                    v555:Destroy()
                end
                if u554 then
                    u554:Destroy()
                end
            end)
        end
        u191 = v548
        task.wait()
        changehpgui()
    end)
    Player.NRPBS:WaitForChild("MaxHealth").Changed:connect(function() --[[Anonymous function at line 3961]]
        wait()
        changehpgui()
    end)
    local _ = Vector3.new
    local v556 = { "Running", "Climbing" }
    local v557 = { "Jumping" }
    for v558 = 1, #v556 do
        Humanoid[v556[v558]]:connect(function(p559) --[[Anonymous function at line 3976]]
            active.Value = p559 > 1
        end)
    end
    for v560 = 1, #v557 do
        Humanoid[v557[v560]]:connect(function(_) --[[Anonymous function at line 3981]]
            active.Value = false
        end)
    end
end
Player.CharacterAdded:connect(function(_) --[[Anonymous function at line 3987]]
    assign()
end)
prevtick = tick()
function script.GetAnims.OnInvoke() --[[Anonymous function at line 3993]]
    return Animations
end
u11.Heartbeat:Connect(function() --[[Anonymous function at line 3997]]
    --[[
    Upvalues:
        [1] = u4
    --]]
    u4.Events.Look:FireServer(camera.CFrame.LookVector, nil, nil)
end)
u11.RenderStepped:Connect(function(p561) --[[Anonymous function at line 4001]]
    --[[
    Upvalues:
        [1] = u12
        [2] = u202
        [3] = u10
        [4] = u19
        [5] = u4
    --]]
    local v562 = tick()
    local v563 = rstick
    local v564 = 60 * (v562 - prevtick)
    v563.Value = math.clamp(v564, 0, 4)
    prevtick = v562
    if u12.died.Value == false and not menew.Enabled then
        vmhandler.work(p561)
    end
    for v565 = 1, #stepmodnd do
        stepmodnd[v565][1].work(p561)
    end
    if Humanoid and (Player.NRPBS.Health.Value <= 0 and player.Status.Team.Value ~= "Spectator") then
        died200()
    end
    u202:updateAll()
    if u12.died.Value == false and (game.Workspace:FindFirstChild("Map") and (game.Workspace.Map:FindFirstChild("Geometry") and game.Workspace.Map:FindFirstChild("Clips"))) then
        for v566 = 1, #stepmod do
            stepmod[v566][1].work(p561)
        end
    end
    if Character:FindFirstChild("Stunned") then
        if Animations.humidle and Animations.humidle.IsPlaying == false then
            Animations.humidle:Play()
        end
    elseif Animations.humidle and Animations.humidle.IsPlaying == true then
        Animations.humidle:Stop()
    end
    if v562 - lastwtdtick >= 0.2 then
        lastwtdtick = v562
        sP.Parent.Nametags:ClearAllChildren()
        local v567 = u10:GetPlayers()
        for v568 = 1, #v567 do
            if v567[v568] and (v567[v568].Name ~= player.Name and (v567[v568].Character and v567[v568].Character:FindFirstChild("Hex"))) then
                if v567[v568]:FindFirstChild("Hex") then
                    v567[v568].Character.Hex.Enabled = true
                else
                    v567[v568].Character.Hex.Enabled = false
                end
            end
            if v567[v568] and (v567[v568].Name ~= player.Name and (v567[v568]:FindFirstChild("Status") and (v567[v568].Status.Team.Value ~= "Spectator" and (v567[v568].Character and (v567[v568].Character:FindFirstChild("Gun") and (v567[v568].Character:FindFirstChild("Spawned") and v567[v568].Character:FindFirstChild("Head"))))))) then
                if v567[v568].Character:FindFirstChild("Gear") and (v567[v568].Character.Gear:FindFirstChild("Partner") and (v567[v568].Character:FindFirstChild("HumanoidRootPart") and (player and (player.Character:FindFirstChild("HumanoidRootPart") and (v567[v568].Character.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).magnitude <= 8)))) then
                    local v569 = script.Nametag:clone()
                    v569.Name = v567[v568].Name .. "partner"
                    v569.plrname.TextColor3 = v567[v568].TeamColor.Color
                    v569.Enabled = true
                    v569.Adornee = v567[v568].Character.Head
                    v569.plrname.Text = "Taunt to accept"
                    v569.Parent = sP.Parent.Nametags
                    if player.Status.Team.Value == "Spectator" then
                        v569.Enabled = false
                    end
                else
                    local v570 = teamcheck.isteam(player, v567[v568].Character)
                    if wkspc.gametype.Value == "Concussion Mania 2" and (v567[v568].Character:FindFirstChild("Marked") and v570 == false) then
                        v567[v568].Character.Marked.Enabled = true
                    elseif v567[v568].Character:FindFirstChild("Marked") and v567[v568].Character.Marked.Enabled == true then
                        v567[v568].Character.Marked.Enabled = false
                    end
                    if v570 == true or player.Status.Team.Value == "Spectator" then
                        local v571 = script.Nametag:clone()
                        v571.Name = v567[v568].Name
                        v571.plrname.TextColor3 = v567[v568].TeamColor.Color
                        v571.Enabled = true
                        if player.Status.Team.Value == "Spectator" then
                            v571.Enabled = false
                        end
                        v571.Adornee = v567[v568].Character.Head
                        v571.plrname.Text = v567[v568].Name
                        v571.Parent = sP.Parent.Nametags
                        if wkspc.BR.Value == true then
                            v571.plrname.TextColor3 = v567[v568].DesignColor.Value.Color
                        end
                    end
                end
            end
        end
        FixKillFeed()
        look = camera.CFrame.LookVector.y
        if Humanoid.Sit == true then
            local v572 = Camera.CFrame.lookVector
            local v573 = Camera.CFrame.lookVector.Y
            look2 = v572 - Vector3.new(0, v573, 0)
        else
            look2 = nil
        end
        if taunting.Value == true or disarmed.Value == true then
            look = 0
            look2 = nil
        end
        if Character and (Character.PrimaryPart and (Character.PrimaryPart.Position.Y <= -40000 and u19 == false)) then
            Character:PivotTo(game.Workspace.SpectatorBox.SpawnLocation.CFrame * CFrame.new(0, 10, 0))
            u4.Events.KillMe:FireServer()
            u19 = true
            delay(1, function() --[[Anonymous function at line 4120]]
                --[[
                Upvalues:
                    [1] = u19
                --]]
                u19 = false
            end)
        end
        if look and lastlook then
            if look2 ~= lastlook2 and (lastlook2 == nil or (look2 == nil or look2 and (lastlook2 and look2:Dot(lastlook2) <= 0.91))) then
                ::l81::
                if Humanoid and (Player.NRPBS.Health.Value > 0 and (Character:FindFirstChild("IsAPlayer") and (Character and Character:FindFirstChild("Head")))) then
                    u4.Events.ControlTurn:FireServer(look, look2, nil, nil)
                    lastlook2 = look2
                    lastlook = look
                end
                goto l26
            end
            if look ~= lastlook then
                local v574 = look - lastlook
                if math.abs(v574) >= 0.09 and taunting.Value == false or (taunting.Value == true or disarmed.Value == true) then
                    goto l81
                end
            end
        end
    end
    ::l26::
end)
u4.Events.EquipGun.OnClientEvent:connect(function(p575) --[[Anonymous function at line 4136]]
    amby:Fire("equipgun", { p575, true })
end)
assign()
setcharacter()
amby.Event:connect(function(p576, p577) --[[Anonymous function at line 4143]]
    --[[
    Upvalues:
        [1] = u11
        [2] = u4
        [3] = u18
    --]]
    local v578 = p577 == nil and ({} or p577) or p577
    if p576 == "mapSkin" then
        mapSkin(unpack(v578))
    elseif p576 == "equipgun" then
        local v579 = wkspc.gametype.Value == "Bombfest"
        if v579 and (player.Status.Level.Value == 33 or player.NRPBS.EquippedTool.Value == v578[1]) then
            return
        end
        if v579 and taunting.Value then
            if partnert.Value == true then
                ftauntend.Value = true
            end
            if selectedtaunt.Value then
                tauntend.Value = true
                ftauntend.Value = true
            else
                jumping.Value = true
            end
            repeat
                u11.RenderStepped:Wait()
            until not taunting.Value
        end
        local v580 = (v579 or (wkspc.gametype.Value == "Shooting Range" or (wkspc.gametype.Value == "Shooting Challenge" or wkspc.gametype.Value == "New Years"))) and u4.Weapons:FindFirstChild(v578[1])
        if v580 then
            if not v579 then
                u18 = v578[1]
            end
            if v580:FindFirstChild("Melee") then
                melee.Value = v578[1]
                amby:Fire("makeInvisible")
                amby:Fire("updateInventory")
                if equipped.Value == "melee" then
                    wep.autoequip()
                end
            else
                primary.Value = v578[1]
                updtprimary()
                amby:Fire("makeInvisible")
                amby:Fire("updateInventory")
                if equipped.Value == "primary" then
                    wep.autoequip()
                end
            end
            if v578[2] then
                if v580:FindFirstChild("Melee") then
                    primary.Value = ""
                end
                equipped.Value = v580:FindFirstChild("Melee") and "melee" or "primary"
                wep.autoequip()
                return
            end
        end
    else
        if p576 == "colorarm" then
            colorarm(unpack(v578))
            return
        end
        if p576 == "inducefalldamage" then
            inducefalldamage(unpack(v578))
            return
        end
        if p576 == "disarm" then
            disarm(unpack(v578))
            return
        end
        if p576 == "undisarm" then
            undisarm(unpack(v578))
            return
        end
        if p576 == "switchspecmode" then
            switchspecmode(unpack(v578))
            return
        end
        if p576 == "ToggleTeamSelection" then
            ToggleTeamSelection(unpack(v578))
            return
        end
        if p576 == "updateTS" then
            updateTS(unpack(v578))
            return
        end
        if p576 == "LevelChanged" then
            LevelChanged(unpack(v578))
            return
        end
        if p576 == "playannouncer" then
            playannouncer(unpack(v578))
            return
        end
        if p576 == "updtprimary" then
            updtprimary(unpack(v578))
            return
        end
        if p576 == "setreviveme" then
            reviveme = v578[1]
            return
        end
        if p576 == "setcharacter" then
            setcharacter(unpack(v578))
            return
        end
        if p576 == "gotomenu" then
            gotomenu(unpack(v578))
            return
        end
        if p576 == "dotaunt" then
            dotaunt(unpack(v578))
            return
        end
        if p576 == "loadtaunt" then
            loadtaunt(unpack(v578))
            return
        end
        if p576 == "jumpme" then
            jumpme(unpack(v578))
            return
        end
        if p576 == "updateAnimations" then
            Animations = v578[1]
        end
    end
end)
coroutine.resume(coroutine.create(function() --[[Anonymous function at line 4237]]
    --[[
    Upvalues:
        [1] = u70
    --]]
    while task.wait(0.0375) do
        u70.Value = u70.Value + 0.001
        if u70.Value >= 2100000000 then
            u70.Value = -2100000000
        end
    end
end))
