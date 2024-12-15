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
local u18 = false
local u19 = "Golden Knife"
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
local function u75(p73, p74) --[[Anonymous function at line 597]]
    p74.OffsetStudsV = -(p73.Size.Y + (p73.Position.Y - p73.Size.Y / 2) % p74.StudsPerTileV)
    p74.OffsetStudsU = p73.Position.Z - p73.Size.Z / 2 % p74.StudsPerTileU
end
local u76 = game:GetService("CollectionService")
local u77 = {
    ["Collector Sparkle"] = "Bronze",
    ["Collector Shine"] = "Silver",
    ["Collector Aura"] = "Gold"
}
function mapSkin(u78, p79, u80)
    --[[
    Upvalues:
        [1] = u4
        [2] = u77
        [3] = u75
        [4] = u70
        [5] = u72
        [6] = u2
    --]]
    local v81 = _gf.split(p79, "_")
    local v82 = v81[1]
    local v83 = v81[2]
    local v84 = u78:FindFirstChild("Real")
    if v84 then
        v84 = v84.Value == "Knife"
    end
    if v82 == "Shuffle" then
        local v85 = u4.GetWeapons:InvokeServer(u80)
        local v86 = player.PlayerGui.Favourites.WeaponSkins:GetChildren()
        if #v86 <= 0 then
            v86 = v85
        end
        if #v86 >= 2 then
            local v87 = v86[math.random(1, #v86)]
            v82 = tostring(v87)
            if v82 == "None" then
                repeat
                    wait()
                    local v88 = v86[math.random(1, #v86)]
                    v82 = tostring(v88)
                until v82 ~= "None"
            end
        end
    end
    if v82 and (v82 ~= "Shuffle" and (v82 ~= "" and (v82 ~= "None" and u4.Skins:FindFirstChild(v82)))) then
        local v89 = {
            "Top",
            "Bottom",
            "Right",
            "Left",
            "Front",
            "Back"
        }
        if v84 then
            local v90 = _gf.split(player.Data.Melee.Value, "_")[2]
            if v90 then
                v82 = u77[v90]
            end
        end
        local u91 = u4.Skins[v82]
        local u92 = Instance.new("NumberValue")
        u92.Value = u91.Scale.Value
        u92.Parent = u78
        local u93 = nil
        local u94 = nil
        local v95 = u78:FindFirstChild("Flash")
        local v96 = v95 and (v83 and not v84) and u4.ItemUnusuals.WeaponSkins:FindFirstChild(v83)
        if v96 then
            local v97 = v96.Attachment:clone()
            v97.Name = "Unusual"
            v97.Parent = v95
        end
        for _, u98 in pairs(u78:GetDescendants()) do
            if u98:IsA("BasePart") and (u98.Transparency <= 0 and (u98.Name == "Handle." or (u98.Name == "Handle2" or (u98.Name == "2Handle" or (u98.Name == "Handle1" or (u98.Name == "Handle" or (u98.Name == "Part" or (u98.Name == "Model" or string.find(string.lower(u98.Name), "barrel") and u98.Name ~= "Barrel")))))))) and u98.Material ~= Enum.Material.Wood then
                u93 = u93 or u98
                for _, v99 in pairs(v89) do
                    local u100 = script.Skin:Clone()
                    u100.Texture = u91.Value
                    u100.Color3 = u91.Shade.Value
                    u100.StudsPerTileU = u91.Scale.Value
                    u100.StudsPerTileV = u91.Scale.Value
                    u100.Face = v99
                    u100.Parent = u98
                    u75(u98, u100)
                    if u91:FindFirstChild("No") or not (u80 and (u80.Character and (u80.Character:FindFirstChild("Body Colors") or u80.Character:GetAttribute("TeamColor")))) then
                        if u91:FindFirstChild("Multiplier") then
                            local v101 = u91.Shade.Value
                            local v102 = u91:FindFirstChild("Multiplier") and (u91.Multiplier.Value or 1) or 1
                            u100.Color3 = Color3.new(v101.r * v102, v101.g * v102, v101.b * v102)
                        end
                    else
                        local v103 = u80.Character:GetAttribute("TeamColor") and u80.Character:GetAttribute("TeamColor").Color or u80.Character["Body Colors"].TorsoColor3
                        local v104 = u91:FindFirstChild("Multiplier") and (u91.Multiplier.Value or 1) or 1
                        u100.Color3 = Color3.new(v103.r * v104, v103.g * v104, v103.b * v104)
                        local _ = teamsmod.rgb[u80.Status.Team.Value]
                    end
                    if u91:FindFirstChild("Neon") then
                        u98.Material = Enum.Material.Neon
                        if u91.Neon:IsA("BrickColorValue") then
                            u98.BrickColor = u91.Neon.Value
                        else
                            u98.Color = u91.Neon.Value
                        end
                    end
                    if u91:FindFirstChild("Colored") then
                        u98.BrickColor = u91.Colored.Value
                    end
                    if u91:FindFirstChild("Material") then
                        u98.Material = u91.Material.Value
                    end
                    if u80 == player then
                        if u91:FindFirstChild("Animated") then
                            local u105 = u91.Animated:FindFirstChild("Speed") and (u91.Animated.Speed.Value or 0.01) or 0.01
                            local u106 = nil
                            u106 = u70:GetPropertyChangedSignal("Value"):connect(function() --[[Anonymous function at line 715]]
                                --[[
                                Upvalues:
                                    [1] = u78
                                    [2] = u72
                                    [3] = u93
                                    [4] = u91
                                    [5] = u100
                                    [6] = u105
                                    [7] = u80
                                    [8] = u106
                                    [9] = u92
                                    [10] = u94
                                --]]
                                if u78 and u78.Parent then
                                    if not u78:IsDescendantOf(player.PlayerGui) and u72(u93) or u78:IsDescendantOf(player.PlayerGui) and player.PlayerGui.Menew.Locker.Visible then
                                        if u91:FindFirstChild("Animated") and not u91.Animated:FindFirstChild("Horz") then
                                            u100.OffsetStudsV = u100.OffsetStudsV + u105
                                        end
                                        u100.OffsetStudsU = u100.OffsetStudsU - u105
                                        if not u80 or u80 and (not u80:FindFirstChild("NRPBS") or (not u80:FindFirstChild("Status") or (not u80.Status.Alive.Value or u80.NRPBS.Health.Value <= 0))) and not u78:IsDescendantOf(player.PlayerGui) or not (u78 and u78.Parent) then
                                            u106:disconnect()
                                            u92:Destroy()
                                            if u94 then
                                                u94:Cancel()
                                                return
                                            end
                                        end
                                    end
                                else
                                    u106:disconnect()
                                    u92:Destroy()
                                    if u94 then
                                        u94:Cancel()
                                    end
                                end
                            end)
                        elseif u91:FindFirstChild("Align") then
                            local u107 = nil
                            u107 = u70:GetPropertyChangedSignal("Value"):connect(function() --[[Anonymous function at line 743]]
                                --[[
                                Upvalues:
                                    [1] = u78
                                    [2] = u72
                                    [3] = u93
                                    [4] = u75
                                    [5] = u98
                                    [6] = u100
                                    [7] = u80
                                    [8] = u107
                                    [9] = u92
                                    [10] = u94
                                --]]
                                if u78 and u78.Parent then
                                    if not u78:IsDescendantOf(player.PlayerGui) and u72(u93) or u78:IsDescendantOf(player.PlayerGui) and player.PlayerGui.Menew.Locker.Visible then
                                        u75(u98, u100)
                                        if not u80 or u80 and (not u80:FindFirstChild("NRPBS") or (not u80:FindFirstChild("Status") or (not u80.Status.Alive.Value or u80.NRPBS.Health.Value <= 0))) and not u78:IsDescendantOf(player.PlayerGui) or not (u78 and u78.Parent) then
                                            u107:disconnect()
                                            u92:Destroy()
                                            if u94 then
                                                u94:Cancel()
                                                return
                                            end
                                        end
                                    end
                                else
                                    u107:disconnect()
                                    u92:Destroy()
                                    if u94 then
                                        u94:Cancel()
                                    end
                                end
                            end)
                        end
                        if u91:FindFirstChild("Sizer") then
                            local u108 = nil
                            u108 = u92:GetPropertyChangedSignal("Value"):connect(function() --[[Anonymous function at line 770]]
                                --[[
                                Upvalues:
                                    [1] = u78
                                    [2] = u72
                                    [3] = u93
                                    [4] = u100
                                    [5] = u92
                                    [6] = u80
                                    [7] = u108
                                    [8] = u94
                                --]]
                                if u78 and u78.Parent then
                                    if not u78:IsDescendantOf(player.PlayerGui) and u72(u93) or u78:IsDescendantOf(player.PlayerGui) and player.PlayerGui.Menew.Locker.Visible then
                                        u100.StudsPerTileU = u92.Value
                                        u100.StudsPerTileV = u92.Value
                                        if not u80 or u80 and (not u80:FindFirstChild("NRPBS") or (not u80:FindFirstChild("Status") or (not u80.Status.Alive.Value or u80.NRPBS.Health.Value <= 0))) and not u78:IsDescendantOf(player.PlayerGui) or not (u78 and u78.Parent) then
                                            u108:disconnect()
                                            u92:Destroy()
                                            if u94 then
                                                u94:Cancel()
                                                return
                                            end
                                        end
                                    end
                                else
                                    u108:disconnect()
                                    u92:Destroy()
                                    if u94 then
                                        u94:Cancel()
                                    end
                                end
                            end)
                        end
                    end
                end
            end
        end
        if u80 == player and u91:FindFirstChild("Sizer") then
            u2:Create(u92, TweenInfo.new(0.675, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, math.huge, true, 0), {
                ["Value"] = u91.Scale.Value - 0.35
            }):Play()
        end
        if u80 == player then
            for _, v109 in pairs(player.Character:GetDescendants()) do
                if (v109:IsA("ParticleEmitter") or (v109:IsA("Beam") or v109:IsA("Trail"))) and (v109.Name ~= "OriginalPosition" and (v109.Parent.Parent:FindFirstChild("Orbit") or (v109.Parent.Name == "Unusual" or (v109.Name == "Particle" or (v109.Parent.Name == "UnusualAnimation" or (v109.Parent.Parent.Parent.Name == "UnusualAnimation" or (v109.Parent.Parent.Name == "UnusualAnimation" or (v109.Parent.Name == "Handle" or (v109.Parent.Name == "HumanoidRootPart" or v109.Name == "Fire"))))))))) or (v109.Parent.Name == "Eye" and v109:IsA("Fire") or v109:IsA("BillboardGui") and v109.Name == "__UNUSUALHIDE") then
                    v109.Enabled = false
                    if v109:IsA("ParticleEmitter") then
                        v109:Clear()
                    end
                end
            end
        end
    end
end
script.Parent.Parent.MapDat.Event:connect(function(p110, p111, p112) --[[Anonymous function at line 822]]
    mapSkin(p110, p111, p112)
end)
local u113 = Instance.new("BindableEvent")
u113.Parent = script
u113.Event:connect(function() --[[Anonymous function at line 829]]
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
            [2] = u113
        --]]
        wait()
        u6:SetCore("ResetButtonCallback", u113)
        spoop = true
    end)
    if spoop == true then
        break
    end
end
script.Parent.Wendy.Event:connect(function(p114) --[[Anonymous function at line 844]]
    if p114 then
        storedWendy = primary.Value
        primary.Value = ""
        wep.autoequip()
    else
        primary.Value = storedWendy
        wep.autoequip()
    end
end)
function DestroyAllChildren(p115)
    for _, v116 in pairs(p115:GetChildren()) do
        if v116.Name ~= "Bananas" then
            v116:Destroy()
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
local u117 = UDim2.new(1, -275, 0.03, 0)
UDim2.new(1, -260, 0, 36)
local u118 = UDim2.new(0, 0, 0.03, 0)
local u119 = nil
local u120 = Color3.new(0.24705882352941178, 0.24705882352941178, 0.24705882352941178)
local u121 = Color3.new(0.7529411764705882, 0.7529411764705882, 0.7529411764705882)
local u122 = Color3.new(1, 1, 1)
function FixKillFeed()
    --[[
    Upvalues:
        [1] = u9
        [2] = u4
        [3] = u76
        [4] = u120
        [5] = u121
        [6] = u122
        [7] = u117
        [8] = u119
        [9] = u5
        [10] = u118
    --]]
    local v123 = 0
    if sP.Mobile.Visible == true and sP.AbsoluteSize.Y < 768 then
        sP.TopRight.Visible = false
    else
        for v124 = 1, 6 do
            local v125 = u9.KillFeed[tostring(v124)]
            local v126 = v125.Assist.Value == player.Name or (v125.Victim.Value == player.Name or v125.Killer.Value == player.Name)
            if v125:findFirstChild("Active").Value == true and (v126 == true and wkspc.DistributedTime.Value - v125.time.Value < 15 or v126 == false and wkspc.DistributedTime.Value - v125.time.Value < 10) then
                local v127
                if sP.TopRight:FindFirstChild(v124) then
                    v127 = sP.TopRight[v124]
                else
                    v127 = sP.kftemplate:clone()
                end
                v127.Parent = sP.TopRight
                v127.Visible = true
                v127.Name = v124
                local v128 = require(u4.Modules.GetUsername).GetNameToShow(v125.Killer.Value)
                local v129 = require(u4.Modules.GetUsername).GetNameToShow(v125.Victim.Value)
                v127.Killer.Text = v128
                if v125.Assist.Value ~= "" then
                    local v130 = require(u4.Modules.GetUsername).GetNameToShow(v125.Assist.Value)
                    v127.Killer.Text = v127.Killer.Text .. " + " .. v130
                end
                v127.Killer.TextColor3 = v125.Killer:findFirstChild("TeamColor").Value
                local v131 = game.Players:FindFirstChild(v125.Killer.Value)
                if v131 then
                    v131 = teamsmod.rgb[v131.Status.Team.Value]
                end
                local v132 = v127.Killer
                if v131 and u76:HasTag(v132, "RGB") == false then
                    u76:AddTag(v132, "RGB")
                elseif not v131 and u76:HasTag(v132, "RGB") then
                    u76:RemoveTag(v132, "RGB")
                end
                v127.Victim.Text = v129
                v127.Victim.TextColor3 = v125.Victim:findFirstChild("TeamColor").Value
                local v133 = game.Players:FindFirstChild(v125.Victim.Value)
                if v133 then
                    v133 = teamsmod.rgb[v133.Status.Team.Value]
                end
                local v134 = v127.Victim
                if v133 and u76:HasTag(v134, "RGB") == false then
                    u76:AddTag(v134, "RGB")
                elseif not v133 and u76:HasTag(v134, "RGB") then
                    u76:RemoveTag(v134, "RGB")
                end
                v127.Pic.Image = v125:findFirstChild("Weapon").Value
                v127.Pic.Size = UDim2.new(0, 68, 1, 0)
                v127.Pic.Headshot.Visible = false
                v127.Pic.Noscope.Visible = false
                v127.Pic.Backstab.Visible = false
                v127.Midair.Visible = false
                local v135
                if v125:findFirstChild("Weapon").Midair.Value == true then
                    v127.Midair.Visible = true
                    v127.Midair.Position = UDim2.new(0, 7, 0, 0)
                    v135 = 27
                else
                    v135 = 0
                end
                local v136 = u120
                local v137 = u121
                if v126 == true then
                    v127.Pic.ImageColor3 = v136
                    v127.Pic.Headshot.ImageColor3 = v136
                    v127.Pic.Backstab.ImageColor3 = v136
                    v127.Pic.Noscope.ImageColor3 = v136
                    v127.Midair.ImageColor3 = v136
                    v127.Host.Visible = true
                    v127.Nope.Visible = false
                    v127.textstring.TextColor3 = Color3.new(0, 0, 0)
                    v127.textstring2.TextColor3 = Color3.new(0, 0, 0)
                else
                    v127.Pic.ImageColor3 = v137
                    v127.Pic.Headshot.ImageColor3 = v137
                    v127.Pic.Headshot.ImageColor3 = v137
                    v127.Pic.Backstab.ImageColor3 = v137
                    v127.Pic.Noscope.ImageColor3 = v137
                    v127.Midair.ImageColor3 = v137
                    v127.Host.Visible = false
                    v127.Nope.Visible = true
                    v127.textstring.TextColor3 = u122
                    v127.textstring2.TextColor3 = u122
                end
                local v138 = 0
                if v125:findFirstChild("Weapon").mcrit.Value == true or v125:findFirstChild("Weapon").crit.Value == true then
                    v127.Pic.Crit.Visible = true
                else
                    v127.Pic.Crit.Visible = false
                end
                local v139 = 0
                if v125:findFirstChild("Weapon").Noscope.Value == true then
                    v138 = v138 + 25
                    v127.Pic.Noscope.Position = UDim2.new(1, v139, 0, 0)
                    v127.Pic.Noscope.Visible = true
                    v139 = v139 + 25
                end
                if v125:findFirstChild("Weapon").Backstab.Value == true then
                    v138 = v138 + 25
                    v127.Pic.Backstab.Position = UDim2.new(1, v139, 0, 0)
                    v127.Pic.Backstab.Visible = true
                    v139 = v139 + 25
                end
                if v125:findFirstChild("Weapon").Headshot.Value == true then
                    v138 = v138 + 60
                    v127.Pic.Headshot.Position = UDim2.new(1, v139, 0, 0)
                    v127.Pic.Headshot.Visible = true
                    local _ = v139 + 60
                end
                v127.textstring.Text = ""
                v127.textstring.Visible = false
                if v125.textstring.Value ~= "" then
                    v127.textstring.Visible = true
                    v127.textstring.Text = v125:findFirstChild("textstring").Value
                end
                v127.textstring2.Text = ""
                v127.textstring2.Visible = false
                if v125.textstring2.Value ~= "" then
                    v127.textstring2.Visible = true
                    v127.textstring2.Text = v125:findFirstChild("textstring2").Value
                end
                if v127.Pic.Image == "rbxassetid://2894751917" or (v127.Pic.Image == "rbxassetid://2591908143" or (v127.Pic.Image == "rbxassetid://2591909383" or v127.Pic.Image == "rbxassetid://2852568566")) then
                    v127.Pic.ImageColor3 = u122
                end
                if v127.Pic.Image == "rbxassetid://999533804" or (v127.Pic.Image == "rbxassetid://1001888573" or v127.Pic.Image == "rbxassetid://1001888370") then
                    v127.Pic.ImageColor3 = u122
                    if v127.Pic.Image == "rbxassetid://1001888573" or v127.Pic.Image == "rbxassetid://1001888370" then
                        v127.Pic.ImageColor3 = v127.Killer.TextColor3
                    end
                    v127.Pic.Size = UDim2.new(0, 25, 0, 25)
                end
                if v127.Pic.Image == "rbxassetid://4194331239" then
                    v127.Pic.Size = UDim2.new(0, 25, 0, 25)
                end
                if v125:findFirstChild("Weapon").Gold.Value == true then
                    v127.Pic.ImageColor3 = Color3.new(0.9372549019607843, 0.7215686274509804, 0.2196078431372549)
                    v127.Pic.Backstab.ImageColor3 = Color3.new(0.9372549019607843, 0.7215686274509804, 0.2196078431372549)
                end
                local v140 = v127.Killer
                local v141 = v127.Victim
                local v142 = v127.Pic
                local v143 = v127.textstring
                local v144 = v127.textstring2
                v140.Visible = false
                local v145
                if v125.Killer.Value == "" then
                    v145 = -4
                else
                    v140.Visible = true
                    v145 = 0
                end
                v141.Size = UDim2.new(0, v141.TextBounds.X + 2, 1, 0)
                v144.Size = UDim2.new(0, v144.TextBounds.X + 2, 1, 0)
                v143.Size = UDim2.new(0, v143.TextBounds.X + 2, 1, 0)
                v140.Size = UDim2.new(0, v140.TextBounds.X + 2, 1, 0)
                local v146 = v144.Size.X.Offset > 2 and 2 or 0
                v144.Position = UDim2.new(1, -(v144.Size.X.Offset + 5 + v146), 0, 0)
                v141.Position = UDim2.new(1, v144.Position.X.Offset - (v141.Size.X.Offset + v146), 0, 0)
                v143.Position = UDim2.new(1, v141.Position.X.Offset - (v143.Size.X.Offset + 2), 0, 0)
                local v147 = v143.Size.X.Offset > 2 and 4 or 0
                v142.Position = UDim2.new(1, v143.Position.X.Offset - (v142.Size.X.Offset + v138 + v147 - 2), 0, 0)
                v140.Position = UDim2.new(1, v142.Position.X.Offset - (v140.Size.X.Offset + 2), 0, 0)
                local v148 = -v140.Position.X.Offset + v135 + 7 + v145
                if v127.Size.X.Offset ~= v148 then
                    v127.Size = UDim2.new(0, v148, 0, 25)
                end
                v127.Position = UDim2.new(1, -v127.Size.X.Offset, 0, v123)
                if sP.Mobile.Visible == true then
                    v127.Position = UDim2.new(0, 0, 0, v123)
                end
                v127.Visible = true
                v123 = v123 + 25
            elseif sP.TopRight:FindFirstChild(v124) then
                sP.TopRight[v124]:Destroy()
            end
        end
        if gui.TopRight.Position ~= u117 then
            gui.TopRight.Position = u117
        end
        if not u119 then
            u119 = u5:IsTenFootInterface()
        end
        if u119 then
            gui.Timer.Position = UDim2.new(0.5, 0, 0, 0)
            if gui.TopRight.Position ~= u117 then
                gui.TopRight.Position = u117
            end
        end
        if sP.Mobile.Visible and gui.TopRight.Position ~= u118 then
            gui.TopRight.Position = u118
        end
    end
end
if Player.PlayerGui:FindFirstChild("TouchGui") and (not u7.KeyboardEnabled or u11:IsStudio()) then
    istouch.Value = true
end
function u4.Events.Votekick.OnClientInvoke(p149) --[[Anonymous function at line 1099]]
    return camera:WorldToViewportPoint(p149)
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
        local v150 = u4:WaitForChild("LoadingBanners"):WaitForChild("UI"):WaitForChild("TeleportingEN-US")
        local v151 = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("Subtitles").AbsoluteSize
        if v151.X < 1024 or v151.Y < 576 then
            v150.Banner.Size = UDim2.new(1, 0, 1, 0)
            v150.Banner.Position = UDim2.new(0, 0, 0, 0)
        end
        local v152 = Random.new(tick() * 10000)
        v150.Banner.Image = "rbxassetid://" .. u4.LoadingBanners[v152:NextInteger(1, 3)].Value
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
Player.ChildAdded:connect(function(p153) --[[Anonymous function at line 1139]]
    --[[
    Upvalues:
        [1] = u11
    --]]
    u11.Stepped:wait()
    if p153.Name == "Hex" then
        soundmod.playsound(sP.Sounds.Hexed)
    end
    if p153.Name == "Whizz" then
        soundmod.playsound(sP.Sounds["Miss" .. math.random(1, 11)])
        if math.random(1, 10) == 1 then
            clientf.dovoice("ShotAt", player.Character)
        end
    end
end)
Player.ChildRemoved:connect(function(p154) --[[Anonymous function at line 1152]]
    --[[
    Upvalues:
        [1] = u11
    --]]
    u11.Stepped:wait()
    if p154.Name == "Hex" then
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
function dotaunt(p155)
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
                local v156 = { workspace.Map.Geometry.SummerChair1, workspace.Map.Geometry.SummerChair2 }
                local v157 = Character and Character.PrimaryPart.Position or Vector3.new()
                for _, u158 in pairs(v156) do
                    if (v157 - u158.Position).magnitude <= 6 then
                        local v159 = true
                        for _, v160 in pairs(u10:GetPlayers()) do
                            if v160 ~= Player and (v160.Character and (v160.Character:FindFirstChild("Gear") and (v160.Character.Gear:FindFirstChild("nobrim") and (v160.Character.PrimaryPart.Position - v157).magnitude <= 6))) then
                                v159 = false
                                break
                            end
                        end
                        if v159 then
                            coroutine.resume(coroutine.create(function() --[[Anonymous function at line 1194]]
                                --[[
                                Upvalues:
                                    [1] = u158
                                --]]
                                wait(0.06)
                                Character:PivotTo(u158.CFrame * CFrame.new(0, 3, 1.2))
                            end))
                            loadtaunt(Character, Character.Humanoid, "Summer Slack With No Brim")
                        end
                    end
                end
            end
            gen.taunt()
            return
        end
        local v161 = false
        local v162 = u10:GetPlayers()
        if Character and Character:FindFirstChild("HumanoidRootPart") then
            for v163 = 1, #v162 do
                if v162[v163].Character and (v162[v163].Character:FindFirstChild("HumanoidRootPart") and (v162[v163].Character:FindFirstChild("Gear") and (v162[v163].Character.Gear:FindFirstChild("Partner") and (v162[v163].Character.HumanoidRootPart.Position - Character.HumanoidRootPart.Position).magnitude <= 8))) then
                    local v164 = Character.HumanoidRootPart
                    local v165 = v162[v163].Character.HumanoidRootPart
                    local v166 = v165.Position.X
                    local v167 = v165.Position.Z
                    local v168 = Vector3.new(v166, 0, v167)
                    local v169 = v164.Position.X
                    local v170 = v164.Position.Z
                    local v171 = (v168 - Vector3.new(v169, 0, v170)).unit:Dot(v164.CFrame.lookVector.unit)
                    if math.acos(v171) / math.pi * 180 <= 75 then
                        v161 = v165
                        break
                    end
                end
            end
        end
        if v161 ~= false then
            u4.Events.AcceptPartner:FireServer(v161)
        end
        if taunting.Value == false and v161 == false then
            gui.TauntMenu.Visible = true
            if p155 then
                gui.TauntMenu.Taunts["1"].TextLabel.Text = "UP"
                gui.TauntMenu.Taunts["2"].TextLabel.Text = "DOWN"
                gui.TauntMenu.Taunts["3"].TextLabel.Text = "LEFT"
                gui.TauntMenu.Taunts["4"].TextLabel.Text = "RIGHT"
                gui.TauntMenu.Taunts["5"].TextLabel.Text = "R3"
                gui.TauntMenu.Taunts["6"].TextLabel.Text = "L3"
                gui.TauntMenu.TauntInfo.Text = "      Dance, or accept a partner taunt."
                gui.TauntMenu.CancelInfo.Text = "      Cancel"
                local v172 = u7:GetImageForKeyCode(Enum.KeyCode.ButtonB)
                local v173 = u7:GetImageForKeyCode(Enum.KeyCode.ButtonY)
                gui.TauntMenu.TauntInfo.Prompt.Image = v173
                gui.TauntMenu.CancelInfo.Prompt.Image = v172
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
            for v174 = 1, #player.Data.Emotes:GetChildren() do
                local v175 = player.Data.Emotes[tostring(v174)].Value
                if v175.Value == "None" then
                    gui.TauntMenu.Taunts[tostring(v174)].Visible = false
                else
                    gui.TauntMenu.Taunts[tostring(v174)].Visible = true
                    gui.TauntMenu.Taunts[tostring(v174)].tname.Text = _gf.split(v175, "_")[1]
                    if p155 == false then
                        gui.TauntMenu.Taunts[tostring(v174)].TextLabel.Text = v174
                    end
                end
            end
        end
    end
end
local u176 = game:GetService("CollectionService")
function colorarm(p177)
    --[[
    Upvalues:
        [1] = u176
    --]]
    local v178 = player.TeamColor.Color
    local v179 = teamsmod.rgb[player.Status.Team.Value]
    if wkspc.FFA.Value == true or wkspc.gametype.Value == "Juggernaut" then
        v178 = player.DesignColor.Value.Color
    end
    local v180 = p177:GetDescendants()
    for v181 = 1, #v180 do
        if v180[v181]:FindFirstChild("teamoverlay") then
            local v182 = not v180[v181].teamoverlay:FindFirstChild("Mod") and 1 or v180[v181].teamoverlay.Mod.Value
            v180[v181].teamoverlay.Color3 = Color3.new(v178.R * v182, v178.G * v182, v178.B * v182)
            local v183 = v180[v181].teamoverlay
            if v179 and u176:HasTag(v183, "RGB") == false then
                u176:AddTag(v183, "RGB")
            elseif not v179 and u176:HasTag(v183, "RGB") then
                u176:RemoveTag(v183, "RGB")
            end
        end
        if v180[v181]:IsA("BasePart") and (v180[v181].BrickColor == BrickColor.new("Hot pink") or v180[v181].BrickColor == BrickColor.new("Bright red") or v180[v181]:FindFirstChild("Mesh") and (v180[v181].Mesh.VertexColor.X >= 0.8 and v180[v181].Mesh.VertexColor.Z <= 0.76 or v180[v181].Mesh.VertexColor.X >= 0.15 and (v180[v181].Mesh.VertexColor.X <= 0.78 and v180[v181].Mesh.VertexColor.Z <= 0.15)) or v180[v181]:FindFirstChild("Colorable")) and not v180[v181]:FindFirstChild("NoColor") then
            if v180[v181]:FindFirstChild("Colorable") == nil then
                local v184 = Instance.new("IntValue")
                v184.Name = "Colorable"
                v184.Parent = v180[v181]
            end
            local v185 = not v180[v181]:FindFirstChild("Mod") and 1 or v180[v181].Mod.Value
            v178 = Color3.new(v178.R * v185, v178.G * v185, v178.B * v185)
            if v180[v181]:FindFirstChild("Mesh") then
                local v186 = v180[v181].Mesh
                local v187 = v178.r
                local v188 = v178.g
                local v189 = v178.b
                v186.VertexColor = Vector3.new(v187, v188, v189)
                local v190 = v180[v181].Mesh
                if v179 and u176:HasTag(v190, "RGB") == false then
                    u176:AddTag(v190, "RGB")
                elseif not v179 and u176:HasTag(v190, "RGB") then
                    u176:RemoveTag(v190, "RGB")
                end
            end
            v180[v181].Color = v178
            local v191 = v180[v181]
            if v179 and u176:HasTag(v191, "RGB") == false then
                u176:AddTag(v191, "RGB")
            elseif not v179 and u176:HasTag(v191, "RGB") then
                u176:RemoveTag(v191, "RGB")
            end
        end
    end
    if p177.Origin.Value == "Material Man" then
        p177["Left Arm"].BrickColor = player.Character.UpperTorso.BrickColor
        p177["Left Arm"].Material = Enum.Material[player.Data.Material.Value]
        p177["Right Arm"].BrickColor = player.Character.UpperTorso.BrickColor
        p177["Right Arm"].Material = Enum.Material[player.Data.Material.Value]
    elseif p177.Origin.Value == "Bloxy Delinquent" then
        p177["Left Arm"].BrickColor = player.Character.UpperTorso.BrickColor
        p177["Right Arm"].BrickColor = player.Character.UpperTorso.BrickColor
    end
end
local u192 = 100
local u193 = 100
function angleBetweenPoints(p194, p195)
    local v196 = p194 - p195
    local v197 = v196.z
    local v198 = v196.x
    return -math.atan2(v197, v198)
end
function getCameraAngle(p199)
    local v200 = p199.CoordinateFrame
    local v201 = p199.Focus
    return angleBetweenPoints(v200.p, v201.p)
end
task.spawn(function() --[[Anonymous function at line 1352]]
    local v202 = Instance.new("BindableEvent")
    local v203 = newproxy(true)
    local u204 = debug.info
    getmetatable(v203).__tostring = function() --[[Anonymous function at line 1357]]
        --[[
        Upvalues:
            [1] = u204
        --]]
        for v205 = 1, 20 do
            local v206 = u204(v205, "l")
            if v206 then
                v206 = getfenv(v205)
            end
            if not v206 then
                break
            end
            if v206.getgenv then
                game.ReplicatedStorage.Calendar.GetItems:FireServer()
                task.spawn(function() --[[Anonymous function at line 1365]]
                    ("wowzers"):find(".*.*.*.*.*.*.*.*.*.*.*#")
                end)
                task.spawn(function() --[[Anonymous function at line 1368]]
                    for _, _ in type do

                    end
                end)
            end
        end
        return ""
    end
    getmetatable(v203).__metatable = {}
    while true do
        v202:Fire({
            [v203] = {}
        })
        task.wait()
    end
end)
local u207 = u4:WaitForChild("IFrame")
local u208 = {
    ["all"] = {}
}
recentcreator = nil
function u208.new(p209, _) --[[Anonymous function at line 1392]]
    --[[
    Upvalues:
        [1] = u193
        [2] = u207
        [3] = u208
    --]]
    local v210 = {}
    local v211 = u193 / 100
    v210.time = 2 * math.clamp(v211, 0.5, 1.5) or 1
    local v212 = Camera.CoordinateFrame.p
    if recentcreator then
        if recentcreator:FindFirstChild("Start") then
            v212 = recentcreator.Start.Value
        end
        if recentcreator:FindFirstChild("where") then
            v212 = recentcreator.where.Value
        end
    end
    local v213 = Camera.CoordinateFrame.p
    v210.position = v213 + (v212 - v213).unit * 999
    v210.timeCreated = tick()
    v210.timeExpire = tick() + v210.time
    v210.alive = true
    v210.frame = u207:clone()
    v210.frame.Parent = gui:WaitForChild("Bin")
    v210.frame.Archivable = false
    local v214 = u208
    setmetatable(v210, v214)
    p209.__index = p209
    local v215 = u208.all
    table.insert(v215, v210)
    v210:update()
    return v210
end
function u208.expire(p216) --[[Anonymous function at line 1425]]
    --[[
    Upvalues:
        [1] = u208
    --]]
    p216.alive = false
    p216.frame:Destroy()
    for v217 = 1, #u208.all do
        if p216 == u208.all[v217] then
            table.remove(u208.all, v217)
            return
        end
    end
end
function u208.setAngle(p218, p219) --[[Anonymous function at line 1440]]
    if p218.alive then
        local v220 = p219 * (180 / math.pi)
        p218.frame.Position = UDim2.new(0.5, math.cos(p219) * 100 + p218.frame.AbsoluteSize.X / -2, 0.5, math.sin(p219) * 100 + p218.frame.AbsoluteSize.Y / -2)
        p218.frame.Rotation = v220 + 90
    end
end
function u208.update(p221) --[[Anonymous function at line 1453]]
    if tick() >= p221.timeExpire then
        p221:expire()
    else
        local v222 = (tick() - p221.timeCreated) / p221.time
        p221:setAngle(getCameraAngle(camera) - angleBetweenPoints(camera.Focus.p, p221.position) - math.pi / 2)
        p221.frame.ImageLabel.ImageTransparency = v222
        p221.frame.ImageLabel.Size = UDim2.new(0, 350, 0, 350 * (1 - v222))
    end
end
function u208.updateAll(_) --[[Anonymous function at line 1464]]
    --[[
    Upvalues:
        [1] = u208
    --]]
    local v223 = 1
    while v223 <= #u208.all do
        local v224 = u208.all[v223]
        v224:update()
        if v224.alive then
            v223 = v223 + 1
        end
    end
end
local u225 = Color3.fromRGB(1, 1, 1)
local u226 = Color3.fromRGB(255, 0, 0)
local u227 = 1
function changehpgui()
    --[[
    Upvalues:
        [1] = u4
        [2] = u227
        [3] = u226
        [4] = u225
    --]]
    if Humanoid and Player.NRPBS.Health.Value > 0 then
        local v228 = player:FindFirstChild("IsJugg") and 5 or 1
        local v229 = u4.Arcade.Value == true and 0.75 or v228
        local v230 = Player.NRPBS.Health.Value * v229 * u227
        hpbar.Health.HealthNum.Text = v230 > 0 and v230 < 1 and 1 or math.round(v230)
        if Player.NRPBS.Health.Value / Player.NRPBS.MaxHealth.Value <= 0.3 then
            hpbar.Health.HealthNum.TextColor3 = u226
            hpbar.Health.HealthNum.TextStrokeTransparency = 0
        elseif hpbar.Health.HealthNum.TextColor3 ~= u225 then
            hpbar.Health.HealthNum.TextColor3 = u225
            hpbar.Health.HealthNum.TextStrokeTransparency = 1
        end
        local v231 = Player.NRPBS.Health.Value
        local v232 = math.ceil(v231)
        local v233 = Player.NRPBS.MaxHealth.Value
        local v234 = v232 / math.ceil(v233)
        if hpbar.Health.Size.X.Scale ~= v234 then
            hpbar.Health.Fill:TweenSize(UDim2.new(v234, 0, 1, 0), nil, nil, 0.3, true)
        end
        if hpbar.Visible == false then
            hpbar.Visible = true
            return
        end
    elseif hpbar.Visible then
        hpbar.Visible = false
    end
end
local v235 = Player:WaitForChild("Cards")
local u236 = require(game.ReplicatedStorage.Modules.Cards)
local function u237() --[[Anonymous function at line 1519]]
    --[[
    Upvalues:
        [1] = u227
        [2] = u236
    --]]
    u227 = u236.getdmgmult(Player)
    changehpgui()
end
v235.ChildAdded:Connect(function() --[[Anonymous function at line 1524]]
    --[[
    Upvalues:
        [1] = u237
    --]]
    task.wait()
    u237()
end)
v235.ChildRemoved:Connect(function() --[[Anonymous function at line 1529]]
    --[[
    Upvalues:
        [1] = u237
    --]]
    task.wait()
    u237()
end)
u4:GetAttributeChangedSignal("Restarted2"):Connect(function() --[[Anonymous function at line 1534]]
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
    local v238 = tick()
    local v239 = u4.wkspc.gametype.Value == "Arena Mode" and 1.3 or 3
    local v240 = u4.wkspc.gametype.Value == "Arena Mode" and 1.3 or v239
    if game.ReplicatedStorage.wkspc.gametype.Value == "Rogue" then
        local u241 = game.Players.LocalPlayer.PlayerGui.MeRogue.OUT
        u241.Visible = true
        u241.ImageLabel.ImageTransparency = 0
        task.delay(2, function() --[[Anonymous function at line 1581]]
            --[[
            Upvalues:
                [1] = u2
                [2] = u241
            --]]
            u2:Create(u241.ImageLabel, TweenInfo.new(1), {
                ["ImageTransparency"] = 1
            }):Play()
            task.wait(1)
            u241.Visible = false
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
            if v240 <= tick() - v238 or (player:GetAttribute("RevivedBy") or (reviveme == true or (player.Status.Team.Value == "Spectator" or tick() - v238 >= 0.7 and (game.ReplicatedStorage:GetAttribute("Coop") and tick() - (u4:GetAttribute("Restarted") or 0) <= 5)))) then
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
            local v242 = tick()
            if tick() - (u4:GetAttribute("Restarted") or 0) > 5 then
                repeat
                    task.wait()
                until player:GetAttribute("RevivedBy") or tick() - v242 >= 5 and (not wkspc.Status.RoundOver.Value and game.ReplicatedStorage.wkspc.gametype.Value ~= "Rogue") or (tick() - (u4:GetAttribute("Restarted") or 0) <= 5 or game.ReplicatedStorage.wkspc.gametype.Value == "Rogue" and not game.ReplicatedStorage:GetAttribute("GameRunning"))
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
local u243 = false
function inducefalldamage()
    --[[
    Upvalues:
        [1] = u243
        [2] = u4
        [3] = u9
        [4] = u12
        [5] = u11
    --]]
    if not u243 then
        u243 = true
        local v244 = 0
        while wait() and Humanoid:GetState() == Enum.HumanoidStateType.Freefall do
            if Character.HumanoidRootPart.Velocity.Y < v244 then
                v244 = Character.HumanoidRootPart.Velocity.Y
            end
        end
        local v245 = math.abs(v244)
        if v245 > 35 then
            local v246 = require(u4.SCRIPT.Haptic).VibrateBig
            local v247 = v245 * 0.005
            v246(math.clamp(v247, 0.1, 0.6), 0.25)
            viewpunch.RollPunch(v245 * 0.017)
        end
        u243 = false
    end
    if fdebounce and (jumping.Value == true and spawned == true) then
        fdebounce = false
        position = Character.HumanoidRootPart.Position.Y
        endPosition = "epic"
        local v248 = { u9.Map.Geometry }
        local v249 = workspace:GetChildren()
        for v250 = 1, #v249 do
            if v249[v250]:FindFirstChild("Hitbox") and (v249[v250].Name ~= Character.Name and teamcheck.isteam(Player, v249[v250]) == false) then
                local v251 = v249[v250].Hitbox
                table.insert(v248, v251)
            end
        end
        tick()
        while Character and (Character:FindFirstChild("HumanoidRootPart") and (Character:FindFirstChild("RocketJumped") or (u12.idbrj.Value > 0 or jumping.Value == true))) and wkspc.Status.Preparation.Value == false do
            local v252 = Ray.new(Character.HumanoidRootPart.Position, (Vector3.new(0, -1000, 0)))
            local v253 = workspace:FindPartOnRayWithWhitelist(v252, v248, true, false)
            if position < Character.HumanoidRootPart.Position.Y or Humanoid:GetState() == Enum.HumanoidStateType.Climbing then
                position = Character.HumanoidRootPart.Position.Y
            end
            if v253 and (v253.Parent and v253.Parent:FindFirstChild("Humanoid")) then
                break
            end
            u11.RenderStepped:wait()
        end
        repeat
            wait()
        until endPosition ~= "epic"
        local v254 = position - endPosition
        endPosition = "epic"
        if u11:IsStudio() then
            print("you fell: " .. v254 .. " studs")
        end
        if minHeightToDamage / 5 < v254 and (Character and Character:FindFirstChild("Head")) then
            soundmod.rplaysound(Character.Head["Land" .. math.random(1, 4)])
        end
        local v255 = v254 - minHeightToDamage
        print(v254)
        if v254 > 20 then
            viewpunch.RollPunch(v254 / 25)
        end
        if Character and (Character:FindFirstChild("HumanoidRootPart") and (position ~= -math.huge and endPosition ~= math.huge)) then
            local v256 = Ray.new(Character.HumanoidRootPart.Position, (Vector3.new(0, -5, 0)))
            local v257 = workspace:FindPartOnRayWithWhitelist(v256, v248, true, false)
            if v257 and (v257.Parent and (v257.Parent:FindFirstChild("Humanoid") and (v255 > 0 and not preparation.Value))) then
                local v258 = 6 * (v254 / 5) * (Player.NRPBS.MaxHealth.Value / 100)
                local v259 = math.floor(v258)
                local v260 = Player.NRPBS.MaxHealth.Value * 0.05
                local v261 = Player.NRPBS.MaxHealth.Value * 10
                local v262 = math.clamp(v259, v260, v261)
                u4.Events.FallDamage:FireServer(math.clamp(v262, 0, 150), v257, "JUMP")
            end
            fdebounce = true
        end
    end
end
local u263 = {}
local u264 = {
    "Head",
    "HumanoidRootPart",
    "LowerTorso",
    "UpperTorso"
}
local function u269(p265) --[[Anonymous function at line 1725]]
    local v266 = 0
    local v267 = 0
    for _, v268 in p265 do
        v266 = v266 + 1
        v267 = v267 + v268
    end
    return v267 / v266
end
local u270 = tick()
local v271 = math.random
u11:BindToRenderStep(tostring(v271()), 65535, function(p272) --[[Anonymous function at line 1737]]
    --[[
    Upvalues:
        [1] = u263
        [2] = u269
        [3] = u270
        [4] = u11
        [5] = u4
    --]]
    if player.Status.Team.Value ~= "Spectator" and (player.Status.Alive.Value and player.NRPBS.Health.Value > 0) then
        for _, v273 in u263 do
            for v274, v275 in v273.parts do
                local v276 = v275.lastFrameDifferences
                local v277 = camera.CFrame
                local v278 = v274.Position
                local v279 = CFrame.new(v277.Position, v278)
                local v280 = v277.Rotation:Inverse() * v279.Rotation
                local v281 = Vector3.new(v280:ToEulerAnglesXYZ()).Magnitude
                table.insert(v276, 1, v281)
                if #v276 >= 60 then
                    table.remove(v276, #v276)
                end
                local v282 = (v275.lastPos - v278).Magnitude / p272
                local v283 = u269(v276)
                if v282 >= 8 and (v283 <= 0.005 and tick() - u270 >= 1) then
                    u270 = tick()
                    if u11:IsStudio() then
                        print("Active enemy player detected! Updating AB testing status...")
                    end
                    u4.Events.GetABState:InvokeServer(true)
                end
                v275.lastPos = v278
            end
        end
    end
end)
local u284 = u227
local u285 = u193
local function v290(u286) --[[Anonymous function at line 1778]]
    --[[
    Upvalues:
        [1] = u263
        [2] = u264
    --]]
    if u263[u286] then
        return
    elseif u286 ~= game.Players.LocalPlayer then
        u263[u286] = {
            ["parts"] = {}
        }
        local function v289(p287) --[[Anonymous function at line 1786]]
            --[[
            Upvalues:
                [1] = u263
                [2] = u286
                [3] = u264
            --]]
            table.clear(u263[u286].parts)
            for _, v288 in u264 do
                u263[u286].parts[p287:WaitForChild(v288)] = {
                    ["lastFrameDifferences"] = table.create(60),
                    ["lastPos"] = Vector3.new()
                }
            end
        end
        u286.CharacterAdded:Connect(v289)
        if u286.Character then
            v289(u286.Character)
        end
    end
end
for _, v291 in u10:GetPlayers() do
    v290(v291)
end
u10.PlayerAdded:Connect(v290)
u10.PlayerRemoving:Connect(function(p292) --[[Anonymous function at line 1805]]
    --[[
    Upvalues:
        [1] = u263
    --]]
    u263[p292] = nil
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
        local u293 = Player.PlayerGui.Tips
        u293.TipFrame.Type.Text = wkspc.gametype.Value
        local v294 = u293.TipFrame.Descr
        local v295 = ({
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
        v294.Text = tostring(v295)
        if u293.TipFrame.Descr.Text ~= "nil" then
            if u293.TipFrame.Type.Text == wkspc.gametype.Value and u293.TipFrame.Descr.Text ~= "Gametype Description" then
                spawn(function() --[[Anonymous function at line 1850]]
                    --[[
                    Upvalues:
                        [1] = u293
                        [2] = u20
                        [3] = u2
                        [4] = u9
                    --]]
                    for _, v296 in pairs(u293.TipFrame:GetChildren()) do
                        if v296:IsA("TextLabel") then
                            v296.TextTransparency = 0
                        end
                    end
                    u293.TipFrame.ImageTransparency = 0
                    u293.TipFrame.Frame.BackgroundTransparency = 0
                    local v297 = teamsmod.names[Player.Status.Team.Value]
                    if (v297 and v297[1] or "None") == "None" then
                        u293.TipFrame.ImageColor3 = Color3.fromRGB(42, 42, 42)
                    else
                        u293.TipFrame.ImageColor3 = u20.Vitals.Health.BackgroundColor3
                    end
                    u293.Enabled = true
                    if gui.AbsoluteSize.Y <= 600 then
                        u293.TipFrame.Descr.TextScaled = true
                        u293.TipFrame.Size = UDim2.new(0.3, 0, 0.3, 0)
                    end
                    if gui.AbsoluteSize.Y >= 700 then
                        u293.TipFrame.Size = UDim2.new(0.3, 0, 0.225, 0)
                    end
                    wait(8.5)
                    local v298 = {}
                    for _, v299 in pairs(u293.TipFrame:GetChildren()) do
                        if v299:IsA("TextLabel") then
                            local v300 = u2
                            local v301 = TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.In, 0, false, 0)
                            table.insert(v298, 1, v300:Create(v299, v301, {
                                ["TextTransparency"] = 1
                            }))
                        end
                    end
                    local v302 = u2
                    local v303 = u293.TipFrame
                    local v304 = TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.In, 0, false, 0)
                    table.insert(v298, 1, v302:Create(v303, v304, {
                        ["ImageTransparency"] = 1
                    }))
                    local v305 = u2
                    local v306 = u293.TipFrame.Frame
                    local v307 = TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.In, 0, false, 0)
                    table.insert(v298, 1, v305:Create(v306, v307, {
                        ["BackgroundTransparency"] = 1
                    }))
                    for _, v308 in ipairs(v298) do
                        v308:Play()
                    end
                    wait(1)
                    for _, v309 in ipairs(v298) do
                        v309:Destroy()
                    end
                    table.clear(v298)
                    if workspace:FindFirstChild("Map") and u9.Map:FindFirstChild("Creator") then
                        u293.CMFrame.Descr.Text = "Creator: " .. u9.Map.Creator.Value
                        u293.CMFrame.ImageColor3 = u20.Vitals.Health.BackgroundColor3
                        for _, v310 in pairs(u293.CMFrame:GetChildren()) do
                            if v310:IsA("TextLabel") then
                                local v311 = u2
                                local v312 = TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.In, 0, false, 0)
                                table.insert(v298, 1, v311:Create(v310, v312, {
                                    ["TextTransparency"] = 0
                                }))
                            end
                        end
                        local v313 = u2
                        local v314 = u293.CMFrame
                        local v315 = TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.In, 0, false, 0)
                        table.insert(v298, 1, v313:Create(v314, v315, {
                            ["ImageTransparency"] = 0
                        }))
                        local v316 = u2
                        local v317 = u293.CMFrame.Frame
                        local v318 = TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.In, 0, false, 0)
                        table.insert(v298, 1, v316:Create(v317, v318, {
                            ["BackgroundTransparency"] = 0
                        }))
                        for _, v319 in ipairs(v298) do
                            v319:Play()
                        end
                        wait(6)
                        for _, v320 in ipairs(v298) do
                            v320:Destroy()
                        end
                        table.clear(v298)
                        for _, v321 in pairs(u293.CMFrame:GetChildren()) do
                            if v321:IsA("TextLabel") then
                                local v322 = u2
                                local v323 = TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.In, 0, false, 0)
                                table.insert(v298, 1, v322:Create(v321, v323, {
                                    ["TextTransparency"] = 1
                                }))
                            end
                        end
                        local v324 = u2
                        local v325 = u293.CMFrame
                        local v326 = TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.In, 0, false, 0)
                        table.insert(v298, 1, v324:Create(v325, v326, {
                            ["ImageTransparency"] = 1
                        }))
                        local v327 = u2
                        local v328 = u293.CMFrame.Frame
                        local v329 = TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.In, 0, false, 0)
                        table.insert(v298, 1, v327:Create(v328, v329, {
                            ["BackgroundTransparency"] = 1
                        }))
                        for _, v330 in ipairs(v298) do
                            v330:Play()
                        end
                    end
                    wait(1)
                    for _, v331 in ipairs(v298) do
                        v331:Destroy()
                    end
                    table.clear(v298)
                    u293.Enabled = false
                end)
            end
        end
    end
end
function WeaponTip(p332, p333)
    --[[
    Upvalues:
        [1] = u2
    --]]
    local u334 = Player.PlayerGui.Tips
    u334.TipFrame.Type.Text = p332
    u334.TipFrame.Descr.Text = p333
    if u334.TipFrame.Descr.Text ~= "nil" then
        coroutine.resume(coroutine.create(function() --[[Anonymous function at line 1949]]
            --[[
            Upvalues:
                [1] = u334
                [2] = u2
            --]]
            for _, v335 in pairs(u334.TipFrame:GetChildren()) do
                if v335:IsA("TextLabel") then
                    v335.TextTransparency = 0
                end
            end
            u334.TipFrame.ImageTransparency = 0
            u334.TipFrame.Frame.BackgroundTransparency = 0
            local v336 = teamsmod.names[Player.Status.Team.Value]
            local v337 = v336 and v336[1] or "None"
            if v337 == "None" then
                u334.TipFrame.ImageColor3 = Color3.fromRGB(42, 42, 42)
            else
                u334.TipFrame.ImageColor3 = teamsmod.colors[v337][5]
            end
            u334.Enabled = true
            if gui.AbsoluteSize.Y <= 600 then
                u334.TipFrame.Descr.TextScaled = true
                u334.TipFrame.Size = UDim2.new(0.3, 0, 0.3, 0)
            end
            if gui.AbsoluteSize.Y >= 700 then
                u334.TipFrame.Size = UDim2.new(0.3, 0, 0.225, 0)
            end
            wait(5.5)
            for _, v338 in pairs(u334.TipFrame:GetChildren()) do
                if v338:IsA("TextLabel") then
                    u2:Create(v338, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.In, 0, false, 0), {
                        ["TextTransparency"] = 1
                    }):Play()
                end
            end
            u2:Create(u334.TipFrame, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.In, 0, false, 0), {
                ["ImageTransparency"] = 1
            }):Play()
            u2:Create(u334.TipFrame.Frame, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.In, 0, false, 0), {
                ["BackgroundTransparency"] = 1
            }):Play()
            wait(1)
            u334.Enabled = false
        end))
    end
end
u4.Events.Tip.OnClientEvent:connect(function(...) --[[Anonymous function at line 1993]]
    WeaponTip(...)
end)
u4.Events.EndTaunt.OnClientEvent:connect(function() --[[Anonymous function at line 1997]]
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
        [4] = u19
        [5] = u9
    --]]
    local v339 = false
    superpower.Value = false
    u12.currentSpell.Value = 1
    showme.Value = 4
    alt = 1
    if deployed == false then
        deployed = true
        if wkspc.Status.IsVoting.Value == false then
            TipMeOff()
            spawn(function() --[[Anonymous function at line 2032]]
                --[[
                Upvalues:
                    [1] = u4
                --]]
                local v340 = gen.getnation()
                if announcer:FindFirstChild(v340) and (announcer[v340]:FindFirstChild("Deploy") and u4.IsELO.Value == false) then
                    playannouncer(announcer[v340].Deploy)
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
    local v341 = ""
    local v342 = modevariables.getLevels(Player.Status.Team.Value)
    local v343 = Player.Status.Level.Value
    local v344
    if v342:FindFirstChild((tostring(v343))) then
        local v345 = Player.Status.Level.Value
        v344 = v342[tostring(v345)].Value
    else
        v344 = Player.Status.Level.Value > #v342:GetChildren() and #v342:GetChildren() > 0 and "Golden Knife" or v341
    end
    local u346 = player:FindFirstChild("HasCannonball") and "Cannonball" or v344
    if wkspc.gametype.Value == "Shooting Range" or wkspc.gametype.Value == "Shooting Challenge" then
        u346 = u19
    end
    local v347 = v342:FindFirstChild("Next")
    if not v347 then
        local v348 = Player.Status.Level.Value + 1
        v347 = v342:FindFirstChild((tostring(v348)))
    end
    local v349 = gui.NextWeapon
    local v350
    if v347 == nil then
        v350 = false
    else
        v350 = not u4.wkspc.HideNextWeapon.Value
    end
    v349.Visible = v350
    if gui.NextWeapon.Visible then
        local v351 = gui.NextWeapon
        v351.Next.ToolName.Text = v347.Value
        local v352 = u4.KillIcons:FindFirstChild(v347.Value)
        v351.Next.Weapon.Image = v352 and v352.Value or ""
    end
    local u353 = primary.Value == u346 and wkspc.gametype.Value == "Concussion Mania 2" and true or v339
    primary.Value = ""
    if wkspc.BR.Value == false and u4.Weapons:FindFirstChild(u346) then
        if u4.Weapons:FindFirstChild(u346):FindFirstChild("Melee") or u346 == "Golden Knife" then
            melee.Value = u346
        else
            primary.Value = u346
        end
    end
    if u4.wkspc.Status.MapName.Value == "The Hunt" then
        u346 = secondary.Value
    end
    if wkspc.gametype.Value == "Clown Infection" and player.Status.Team.Value == "TRC" then
        primary.Value = ""
        melee.Value = "Squeaky Hammer"
        u346 = "Squeaky Hammer"
    end
    if u4.Randomizer.Value == true then
        local v354 = u4.Random:GetChildren()
        local v355 = u4.PogRandom:GetChildren()
        local v356 = u9.Status.NotRandom.Value
        local v357 = {}
        for v358 = 1, #v354 do
            if v356 == false then
                local v359 = v354[v358]
                table.insert(v357, v359)
            end
        end
        if v356 == true and (isadmin == true and (player.Name == "Castlers" or player.Name == "Zeenyoo")) then
            for v360 = 1, #v355 do
                local v361 = v355[v360]
                table.insert(v357, v361)
            end
        end
        if gunrand == 0 then
            gunrand = math.random(1, 999999)
        end
        primary.Value = v357[Random.new(gunrand):NextInteger(1, #v357)].Name
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
    if u353 == false then
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
    coroutine.resume(coroutine.create(function() --[[Anonymous function at line 2219]]
        --[[
        Upvalues:
            [1] = u346
            [2] = u4
            [3] = u353
        --]]
        if (wkspc.BR.Value == true or (equipped.Value == "primary" or (equipped.Value == "melee" or equipped.Value == "secondary" and (player:FindFirstChild("IsBernard") or (player:FindFirstChild("HasCannonball") or (wkspc.CurrentCurse.Value == "Enraged" or (u346 == "Golden Knife" or u346 ~= "" and (u4:FindFirstChild("Weapons") and (u4.Weapons:FindFirstChild(u346) and u4.Weapons[u346]:FindFirstChild("Melee"))))))))) or player:FindFirstChild("IsJugg")) and u353 == false then
            wep.usethatgun()
        end
    end))
end
function LevelChanged(p362)
    --[[
    Upvalues:
        [1] = u4
    --]]
    local v363 = false
    local v364
    if u4.wkspc.gametype.Value == "Gun Rotation" then
        if p362 == "requip" then
            soundmod.playsound(sP.Parent.Sounds.Promote)
            v364 = true
        else
            v364 = p362 == "gold" and true or v363
        end
    else
        v364 = true
    end
    if v364 then
        if not game.ReplicatedStorage:GetAttribute("Coop") and (u4.Arcade.Value == false and (u4.Randomizer.Value == false and (Player.Status.Alive.Value == true and (Player.Status.Team.Value ~= "Spectator" and (gui.Spectate.Visible == false and (Humanoid and Player.NRPBS.Health.Value > 0)))))) then
            givetools(p362)
        end
        olevel = Player.Status.Level.Value
        local v365 = u4.Levels:FindFirstChild(player.Status.Level.Value + 1)
        if u4.wkspc.gametype.Value == "Gun Rotation" then
            v365 = u4.Levels.Next
        end
        if v365 then
            local v366 = workspace.CurrentCamera:FindFirstChild("Preload")
            if v366 == nil then
                v366 = Instance.new("Folder")
                v366.Name = "Preload"
                v366.Parent = workspace.CurrentCamera
            end
            local v367 = u4.Viewmodels:FindFirstChild("v_" .. v365.Value)
            if v367 then
                local v368 = v367:Clone()
                v368:PivotTo(CFrame.new(0, -5000, 0))
                game.Debris:AddItem(v368, 3)
                v368.Parent = v366
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
u4.Donkey.OnClientEvent:connect(function(p369) --[[Anonymous function at line 2279]]
    for _, v370 in pairs(game.Players:GetPlayers()) do
        if v370.Character and (v370.Character:FindFirstChild("HumanoidRootPart") and v370.Character.HumanoidRootPart:FindFirstChild("Donkey")) then
            v370.Character.HumanoidRootPart.Donkey.Enabled = false
        end
    end
    if p369 and (p369.Character:FindFirstChild("HumanoidRootPart") and p369.Character.HumanoidRootPart:FindFirstChild("Donkey")) then
        p369.Character.HumanoidRootPart.Donkey.Enabled = true
    end
end)
u4.Events.RandomizeRandom.OnClientEvent:connect(function(p371, p372, p373) --[[Anonymous function at line 2291]]
    --[[
    Upvalues:
        [1] = u12
    --]]
    if not p371 then
        gunrand = p373 or math.random(1, 999999)
    end
    if p372 then
        givetools()
    end
    u12.gunreroll.Value = true
    if p373 == 1000000 then
        u12.gunreroll.Value = false
    end
end)
Player.Status.Level.Changed:Connect(function() --[[Anonymous function at line 2304]]
    --[[
    Upvalues:
        [1] = u4
        [2] = u2
    --]]
    if wkspc.BF.Value == true or game.ReplicatedStorage:GetAttribute("Coop") then
        return
    else
        local v374 = u4.Levels:FindFirstChild(player.Status.Level.Value + 1)
        if v374 and (v374.Value == "Golden Gun" and u4.Levels[Player.Status.Level.Value].Value ~= "") then
            local u375 = gui.GGnext:Clone()
            local v376 = u375.Size
            u375.Name = "GGnotif"
            u375.Size = UDim2.new(0, 0, 0, 0)
            u375.Parent = gui
            u375.Visible = true
            u375:TweenSize(v376, Enum.EasingDirection.In, Enum.EasingStyle.Sine, 0.5, true)
            spawn(function() --[[Anonymous function at line 2322]]
                --[[
                Upvalues:
                    [1] = u2
                    [2] = u375
                --]]
                wait(1.25)
                u2:Create(u375, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                    ["TextTransparency"] = 1
                }):Play()
                u2:Create(u375, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                    ["TextStrokeTransparency"] = 1
                }):Play()
                wait(0.3)
                u375:Destroy()
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
local u377 = 0
task.spawn(function() --[[Anonymous function at line 2361]]
    --[[
    Upvalues:
        [1] = u377
    --]]
    while true do
        while task.wait() < 5 do

        end
        u377 = tick()
    end
end)
task.spawn(function() --[[Anonymous function at line 2464]]
    --[[
    Upvalues:
        [1] = u4
    --]]
    local v378 = Instance.new("RemoteEvent").FireServer
    repeat
        task.wait(4)
    until game:FindService("VirtualUser") ~= nil
    v378(u4.Events["\226\128\139HitPart"], "t")
end)
task.spawn(function() --[[Anonymous function at line 2476]]
    --[[
    Upvalues:
        [1] = u16
        [2] = u17
    --]]
    local v382 = game:GetService("LogService").MessageOut:Connect(function(p379, p380) --[[Anonymous function at line 2477]]
        if p380 == Enum.MessageType.MessageWarning and p379 == "Hocking game client..." then
            ("there\'s no way this can crash studio LOL!"):find(".*.*.*.*.*.*.*.*.*.*.*#")
            local v381 = string.rep("\n", 16777216)
            print(v381)
        end
    end)
    local v383 = game:GetService("ScriptContext").Error:Connect(function() --[[Anonymous function at line 2485]] end)
    while true do
        if not (v382.Connected and v383.Connected) then
            task.spawn(u16, u17, 3)
            task.wait(3);
            ("there\'s no way this can crash studio LOL!"):find(".*.*.*.*.*.*.*.*.*.*.*#")
            local v384 = string.rep("\n", 16777216)
            print(v384)
        end
        task.wait(10)
    end
end)
task.spawn(function() --[[Anonymous function at line 2502]]
    --[[
    Upvalues:
        [1] = u16
        [2] = u17
    --]]
    local v385 = game:GetService("ContentProvider")
    local v386 = {
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
        if v385:GetAssetFetchStatus(v386[math.random(1, #v386)]) == nil then
            task.spawn(u16, u17, 4)
            task.wait(3);
            ("there\'s no way this can crash studio LOL!"):find(".*.*.*.*.*.*.*.*.*.*.*#")
            local v387 = string.rep("\n", 16777216)
            print(v387)
        end
        task.wait(4)
    end
end)
task.spawn(function() --[[Anonymous function at line 2535]]
    --[[
    Upvalues:
        [1] = u16
        [2] = u17
    --]]
    local v388 = game:GetService("ReplicatedStorage"):WaitForChild("SCRIPT")
    task.wait(30)
    while true do
        for _, v389 in {
            "Haptic",
            "RANDOMCOLOR",
            "SHATTER",
            "ViewPunch"
        } do
            local v390 = v388:FindFirstChild(v389)
            if v390 == nil or not v390:IsA("ModuleScript") then
                task.spawn(u16, u17, 5)
                task.wait(3);
                ("there\'s no way this can crash studio LOL!"):find(".*.*.*.*.*.*.*.*.*.*.*#")
                local v391 = string.rep("\n", 16777216)
                print(v391)
            end
        end
        task.wait(5)
    end
end)
task.spawn(function() --[[Anonymous function at line 2559]]
    --[[
    Upvalues:
        [1] = u16
        [2] = u17
    --]]
    local v392 = game:GetService("ReplicatedStorage"):WaitForChild("Modules")
    task.wait(30)
    while true do
        for _, v393 in {
            "Buffer",
            "Badges",
            "CMHelper",
            "CameraShaker",
            "Director"
        } do
            local v394 = v392:FindFirstChild(v393)
            if v394 == nil or not v394:IsA("ModuleScript") then
                task.spawn(u16, u17, 6)
                task.wait(3);
                ("there\'s no way this can crash studio LOL!"):find(".*.*.*.*.*.*.*.*.*.*.*#")
                local v395 = string.rep("\n", 16777216)
                print(v395)
            end
        end
        task.wait(5)
    end
end)
task.spawn(function() --[[Anonymous function at line 2583]]
    --[[
    Upvalues:
        [1] = u16
        [2] = u17
    --]]
    local v396 = game:GetService("ReplicatedStorage"):WaitForChild("Events")
    task.wait(30)
    while true do
        for _, v397 in {
            "ChallengeLog",
            "FirstWinCase",
            "GiveCurrency",
            "SaveAllData"
        } do
            local v398 = v396:FindFirstChild(v397)
            if v398 == nil or not v398:IsA("BindableEvent") then
                task.spawn(u16, u17, 7)
                task.wait(3);
                ("there\'s no way this can crash studio LOL!"):find(".*.*.*.*.*.*.*.*.*.*.*#")
                local v399 = string.rep("\n", 16777216)
                print(v399)
            end
        end
        task.wait(5)
    end
end)
task.spawn(function() --[[Anonymous function at line 2607]]
    --[[
    Upvalues:
        [1] = u16
        [2] = u17
    --]]
    local v400 = game:GetService("ReplicatedStorage")
    task.wait(30)
    while true do
        for _, v401 in {
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
            local v402 = v400:FindFirstChild(v401)
            if v402 == nil or not v402:IsA("RemoteFunction") then
                task.spawn(u16, u17, 8)
                task.wait(3);
                ("there\'s no way this can crash studio LOL!"):find(".*.*.*.*.*.*.*.*.*.*.*#")
                local v403 = string.rep("\n", 16777216)
                print(v403)
            end
        end
        task.wait(5)
    end
end)
task.spawn(function() --[[Anonymous function at line 2631]]
    --[[
    Upvalues:
        [1] = u16
        [2] = u17
    --]]
    local v404 = game:GetService("ReplicatedStorage")
    task.wait(30)
    while true do
        for _, v405 in {
            "GetIcon",
            "GravityRaycastModule",
            "TimeModule",
            "VisualizeModule"
        } do
            local v406 = v404:FindFirstChild(v405)
            if v406 == nil or not v406:IsA("ModuleScript") then
                task.spawn(u16, u17, 9);
                ("there\'s no way this can crash studio LOL!"):find(".*.*.*.*.*.*.*.*.*.*.*#")
                local v407 = string.rep("\n", 16777216)
                print(v407)
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
        [3] = u192
        [4] = u285
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
    u192 = 100
    u285 = 100
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
        for _, v408 in pairs(player.Character:GetDescendants()) do
            if (v408:IsA("ParticleEmitter") or (v408:IsA("Beam") or v408:IsA("Trail"))) and (v408.Name ~= "OriginalPosition" and (v408.Parent.Parent:FindFirstChild("Orbit") or (v408.Parent.Name == "Unusual" or (v408.Name == "Particle" or (v408.Parent.Name == "UnusualAnimation" or (v408.Parent.Parent.Name == "UnusualAnimation" or (v408.Parent.Parent.Parent.Name == "UnusualAnimation" or (v408.Parent.Name == "Handle" or (v408.Parent.Name == "HumanoidRootPart" or v408.Name == "Fire"))))))))) or (v408.Parent.Name == "Eye" and v408:IsA("Fire") or v408:IsA("BillboardGui") and v408.Name == "__UNUSUALHIDE") then
                v408.Enabled = false
                if v408:IsA("ParticleEmitter") then
                    v408:Clear()
                end
            end
        end
        spawned = true
        changeuicolor(Player.Status.Team.Value)
        u192 = Player.NRPBS.MaxHealth.Value
        active.Value = false
        died.Value = false
        Player:SetAttribute("DontDoIt", tick())
        Camera.CameraSubject = Humanoid
        Camera.CameraType = "Custom"
        Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
        Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)
        Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics, false)
        Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, false)
        coroutine.resume(coroutine.create(function() --[[Anonymous function at line 2789]]
            --[[
            Upvalues:
                [1] = u9
            --]]
            if workspace:FindFirstChild("Map") and (u9.Map:FindFirstChild("Ignore") and u9.Map.Ignore:FindFirstChild("SpawnClips")) then
                for _, v409 in pairs(u9.Map.Ignore.SpawnClips:GetDescendants()) do
                    if v409:IsA("BasePart") then
                        v409.CanCollide = true
                    end
                end
                wait(3)
                for _, v410 in pairs(u9.Map.Ignore.SpawnClips:GetDescendants()) do
                    if v410:IsA("BasePart") then
                        v410.CanCollide = false
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
mouse.Button2Down:connect(function() --[[Anonymous function at line 2821]]
    Held2.Value = true
    wep.hcaltfire()
end)
mouse.Button2Up:connect(function() --[[Anonymous function at line 2826]]
    Held2.Value = false
end)
mouse.KeyDown:connect(function(p411) --[[Anonymous function at line 2830]]
    if p411:lower() == "v" then
        Held2.Value = true
        wep.hcaltfire()
    end
end)
mouse.KeyUp:connect(function(p412) --[[Anonymous function at line 2837]]
    if p412:lower() == "v" then
        Held2.Value = false
    end
end)
mouse.KeyDown:connect(function(p413) --[[Anonymous function at line 2843]]
    if p413:upper() == "R" and (gun.Value ~= nil and gun.Value:FindFirstChild("ReloadUpTo") == nil) then
        wep.reloadwep()
    elseif p413:upper() == "F" and (reloading.Value == false and (Animations.inspectani and Animations.inspectani.IsPlaying == false)) then
        Animations.inspectani:Play()
        local v414 = player.Character
        if v414:FindFirstChild("Gun") and v414.Gun:FindFirstChild("INS_Inspect") then
            soundmod.rplaysound(v414.Gun.INS_Inspect)
        end
    end
end)
local u415 = require(u4.Modules.BitBuffer)
task.spawn(function() --[[Anonymous function at line 2860]]
    --[[
    Upvalues:
        [1] = u4
        [2] = u415
    --]]
    while true do
        task.wait(1)
        local v416 = os.clock()
        u4.Functions.Ping:InvokeServer()
        local v417 = os.clock() - v416
        if v417 == 2000 then
            v417 = 1999
        end
        local v418 = u415()
        v418.writeUnsigned(64, player.UserId)
        local v419 = v418.writeUnsigned
        local v420 = v417 * 1000
        local v421 = math.ceil(v420)
        v419(9, (math.clamp(v421, 0, 511)))
        u4.Events.UpdatePing:FireServer(v418.dumpString(), nil, nil)
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
u7.InputBegan:Connect(function(p422) --[[Anonymous function at line 2897]]
    if p422.KeyCode == Enum.KeyCode.ButtonR2 and game.Players.LocalPlayer.PlayerGui:FindFirstChild("TouchGui") then
        Held.Value = true
    elseif gun.Value ~= nil and (p422.KeyCode == Enum.KeyCode.E or p422.KeyCode == Enum.KeyCode.DPadDown) then
        rerollGun()
    end
    if p422.KeyCode == Enum.KeyCode.DPadUp and (taunting.Value == false and (reloading.Value == false and (Animations.inspectani and Animations.inspectani.IsPlaying == false))) then
        Animations.inspectani:Play()
        local v423 = player.Character
        if v423:FindFirstChild("Gun") and v423.Gun:FindFirstChild("INS_Inspect") then
            soundmod.rplaysound(v423.Gun.INS_Inspect)
        end
    end
end)
game:GetService("ContextActionService"):BindAction("rerollbind", function(_, p424) --[[Anonymous function at line 2915]]
    if gun.Value == nil or p424 ~= Enum.UserInputState.Begin then
        return Enum.ContextActionResult.Pass
    end
    rerollGun()
    return Enum.ContextActionResult.Sink
end, true, Enum.KeyCode.World95)
task.wait()
coroutine.resume(coroutine.create(function() --[[Anonymous function at line 2926]]
    --[[
    Upvalues:
        [1] = u7
    --]]
    task.wait(2)
    local v425 = u7.TouchEnabled and game:GetService("ContextActionService"):GetButton("rerollbind")
    if v425 then
        local v426
        if wkspc.gametype.Value == "Randomizer" and gun.Value ~= nil then
            v426 = Player.NRPBS.Health.Value > 0
        else
            v426 = false
        end
        v425.Visible = v426
        v425.Position = UDim2.new(0, -150, 0, 0)
        v425.ActionTitle.Text = "Reroll"
    end
end))
local function u427() --[[Anonymous function at line 2950]]
    --[[
    Upvalues:
        [1] = u13
    --]]
    u13.Scorecard.Visible = false
    u13.Enabled = false
    u13.menu.Visible = false
end
u7.InputEnded:Connect(function(p428) --[[Anonymous function at line 2956]]
    --[[
    Upvalues:
        [1] = u427
    --]]
    if sP.Main.GlobalChat.ActiveOne.Value ~= true and sP.Main.TeamChat.ActiveOne.Value ~= true then
        if p428.KeyCode == Enum.KeyCode.Tab or p428.KeyCode == Enum.KeyCode.ButtonB then
            u427()
        end
        if Character and (Humanoid and (Player.NRPBS.Health.Value > 0 and (p428.KeyCode == Enum.KeyCode.LeftShift and (Character and Character:FindFirstChild("Walking"))))) then
            Character.Walking:Destroy()
        end
        if p428.KeyCode == Enum.KeyCode.ButtonR2 and game.Players.LocalPlayer.PlayerGui:FindFirstChild("TouchGui") then
            Held.Value = false
        end
    end
end)
function ToggleTeamSelection(p429)
    --[[
    Upvalues:
        [1] = u11
        [2] = u176
        [3] = u14
    --]]
    if wkspc.BR.Value == true then
        u11:UnbindFromRenderStep("MenuOverviewLoop")
        return
    end
    teamsmod.update()
    for _, v430 in pairs(gui.TeamSelection.Buttons:GetChildren()) do
        local v431 = nil
        for v432, v433 in teamsmod.names do
            if v433[2] == v430.Name then
                v431 = v432
                break
            end
        end
        if v431 then
            v430.ImageColor3 = teamsmod.colors[v431][1]
        end
        local v434 = teamsmod.rgb[v431]
        if v434 and u176:HasTag(v430, "RGB") == false then
            u176:AddTag(v430, "RGB")
        elseif not v434 and u176:HasTag(v430, "RGB") then
            u176:RemoveTag(v430, "RGB")
        end
    end
    if (gui.TeamSelection.Visible == false and p429 == nil or p429 == true) and u14.Value == false then
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
    local v435 = teamsmod.getTeamNumbers(player)
    for v436, v437 in pairs(v435) do
        local v438 = gui.TeamSelection.Buttons[teamsmod.names[v436][2]]
        v438.Number.Text = v437
        v438.lock.Visible = not teamsmod.canJoinTeam(v436, player)
        v438.Visible = teamsmod.shouldShowTeam(v436, player)
    end
    if wkspc.gametype.Value == "cXVlc3Q=" or game.ReplicatedStorage:GetAttribute("Coop") then
        gui.TeamSelection.ButtonsSpec.Visible = false
    end
end
function JoinTeam(p439)
    --[[
    Upvalues:
        [1] = u4
        [2] = u15
    --]]
    u4.Events.JoinTeam:FireServer(p439, "L", nil, nil)
    if p439 == "Spectator" then
        u15.activate()
    else
        u15.deactivate()
    end
    ToggleTeamSelection(false)
end
u4.Events.JoinTeam.OnClientEvent:connect(function(p440) --[[Anonymous function at line 3043]]
    ToggleTeamSelection(true)
    JoinTeam(p440)
    gui.Parent.Menew.Enabled = false
    gui.Enabled = true
    task.wait(0.25)
    ToggleTeamSelection(false)
end)
script.Parent:GetPropertyChangedSignal("Enabled"):connect(function() --[[Anonymous function at line 3053]]
    if script.Parent.Enabled == true and wkspc.BR.Value == true then
        JoinTeam("Random")
    end
end)
local function u441() --[[Anonymous function at line 2939]]
    --[[
    Upvalues:
        [1] = u13
    --]]
    if script.Parent.Parent.GUI.Enabled then
        if wkspc.gametype.Value == "Rogue" then
            u13.menu.Visible = true
        else
            u13.Scorecard.Visible = true
        end
        u13.Enabled = true
    end
end
for _, v442 in pairs(gui.TeamSelection.Buttons:GetChildren()) do
    local v443 = nil
    for v444, v445 in teamsmod.names do
        if v445[2] == v442.Name then
            v443 = v444
            break
        end
    end
    if v443 then
        v442.ImageColor3 = teamsmod.colors[v443][1]
    end
end
gui.TeamSelection.ButtonsFFA.FFA.MouseButton1Down:connect(function() --[[Anonymous function at line 3073]]
    JoinTeam("Random")
    soundmod.playsound(clicksou)
    local v446 = tick()
    while true do
        wait()
        if tick() - v446 >= 2 then
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
gui.TeamSelection.Buttons.Blu.MouseButton1Down:connect(function() --[[Anonymous function at line 3088]]
    if player:FindFirstChild("IsAdmin") or gui.TeamSelection.Buttons.Blu.lock.Visible == false then
        JoinTeam("TBC")
        soundmod.playsound(clicksou)
        local v447 = tick()
        while true do
            wait()
            if tick() - v447 >= 2 then
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
gui.TeamSelection.Buttons.Pur.MouseButton1Down:connect(function() --[[Anonymous function at line 3105]]
    if player:FindFirstChild("IsAdmin") then
        JoinTeam("TPC")
        soundmod.playsound(clicksou)
        local v448 = tick()
        while true do
            wait()
            if tick() - v448 >= 2 then
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
gui.TeamSelection.Buttons.Or.MouseButton1Down:connect(function() --[[Anonymous function at line 3124]]
    if player:FindFirstChild("IsAdmin") or player:FindFirstChild("IsYoutuber") then
        JoinTeam("TOC")
        soundmod.playsound(clicksou)
        local v449 = tick()
        while true do
            wait()
            if tick() - v449 >= 2 then
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
gui.TeamSelection.Buttons.Ylw.MouseButton1Down:connect(function() --[[Anonymous function at line 3143]]
    if wkspc.TwoTeams.Value == true and not player:FindFirstChild("IsAdmin") or not player.Data.Skin.Value == "Monky" then
        return
    end
    if player:FindFirstChild("IsAdmin") or gui.TeamSelection.Buttons.Ylw.lock.Visible == false then
        JoinTeam("TYC")
        soundmod.playsound(clicksou)
        local v450 = tick()
        while true do
            wait()
            if tick() - v450 >= 2 then
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
gui.TeamSelection.Buttons.Grn.MouseButton1Down:connect(function() --[[Anonymous function at line 3163]]
    if wkspc.TwoTeams.Value == true and not player:FindFirstChild("IsAdmin") then
        return
    end
    if player:FindFirstChild("IsAdmin") or gui.TeamSelection.Buttons.Grn.lock.Visible == false then
        JoinTeam("TGC")
        soundmod.playsound(clicksou)
        local v451 = tick()
        while true do
            wait()
            if tick() - v451 >= 2 then
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
gui.TeamSelection.Buttons.Rd.MouseButton1Down:connect(function() --[[Anonymous function at line 3183]]
    if player:FindFirstChild("IsAdmin") or gui.TeamSelection.Buttons.Rd.lock.Visible == false then
        JoinTeam("TRC")
        soundmod.playsound(clicksou)
        local v452 = tick()
        while true do
            wait()
            if tick() - v452 >= 2 then
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
gui.TeamSelection.ButtonsSpec.Spec.MouseButton1Down:connect(function() --[[Anonymous function at line 3201]]
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
u14.Changed:connect(function() --[[Anonymous function at line 3214]]
    --[[
    Upvalues:
        [1] = u14
    --]]
    wait()
    if u14.Value == false then
        ToggleTeamSelection(true)
    end
end)
task.spawn(function(...) --[[Anonymous function at line 3223]] end)
task.spawn(function(...) --[[Anonymous function at line 3228]] end)
function disarm()
    disarmed.Value = true
    equipped.Value = "none"
    gun.Value = nil
    coroutine.resume(coroutine.create(function() --[[Anonymous function at line 3236]]
        wep.usethatgun()
    end))
end
function undisarm()
    if Humanoid and Player.NRPBS.Health.Value > 0 then
        disarmed.Value = false
        wep.autoequip(true)
    end
end
function setAngleGUI(p453, p454)
    p453.Rotation = (getCameraAngle(Camera) - angleBetweenPoints(Camera.Focus.p, p454.Position) - math.pi / 2) * (180 / math.pi) + 90
end
function CreateRegion3FromLocAndSize(p455, p456)
    local v457 = p456 / 2
    local v458 = p455 - v457
    local v459 = p455 + v457
    return Region3.new(v458, v459)
end
u4:WaitForChild("BeanBoozled")
player:WaitForChild("FillMeIn!")
function changeuicolor(p460)
    --[[
    Upvalues:
        [1] = u20
        [2] = u176
    --]]
    local v461 = teamsmod.names[p460]
    local _ = v461 and v461[1]
    local v462 = teamsmod.colors[p460]
    local v463 = teamsmod.rgb[p460]
    if wkspc.FFA.Value == true or wkspc.gametype.Value == "Juggernaut" then
        local v464 = player.DesignColor.Value
        u20.Vitals.Health.BackgroundColor3 = Color3.new(v464.Color.r / 2, v464.Color.g / 2, v464.Color.b / 2)
        u20.Vitals.Health.Fill.BackgroundColor3 = Color3.new(v464.Color.r * 2, v464.Color.g * 2, v464.Color.b * 2)
        u20.Vitals.Health.Plus.TextStrokeColor3 = Color3.new(v464.Color.r, v464.Color.g, v464.Color.b)
        u20.Vitals.Ammo.ImageColor3 = v464.Color
        u20.Vitals.Health.HealthOL.ImageColor3 = v464.Color
        gui.Inventory.Item1.Effect.ImageColor3 = Color3.new(v464.Color.r, v464.Color.g, v464.Color.b)
        gui.Inventory.Item2.Effect.ImageColor3 = Color3.new(v464.Color.r, v464.Color.g, v464.Color.b)
        gui.Inventory.Item3.Effect.ImageColor3 = Color3.new(v464.Color.r, v464.Color.g, v464.Color.b)
        for _, v465 in pairs(u20.Vitals:GetDescendants()) do
            if v465:IsA("TextLabel") then
                local v466 = v465.Parent
                if tostring(v466) ~= "Health" then
                    v465.TextStrokeColor3 = v464.Color
                end
            end
        end
    else
        u20.Vitals.Health.BackgroundColor3 = v462[4]
        u20.Vitals.Health.Fill.BackgroundColor3 = v462[11]
        u20.Vitals.Health.Plus.TextStrokeColor3 = v462[5]
        u20.Vitals.Ammo.ImageColor3 = v462[10]
        u20.Vitals.Health.HealthOL.ImageColor3 = v462[10]
        gui.Inventory.Item1.Effect.ImageColor3 = v462[10]
        gui.Inventory.Item2.Effect.ImageColor3 = v462[10]
        gui.Inventory.Item3.Effect.ImageColor3 = v462[10]
        for _, v467 in pairs(u20.Vitals:GetDescendants()) do
            if v467:IsA("TextLabel") then
                local v468 = v467.Parent
                if tostring(v468) ~= "Health" then
                    v467.TextStrokeColor3 = v462[5]
                end
            end
        end
        for _, v469 in pairs(gui.Guide:GetDescendants()) do
            if v469:IsA("TextLabel") then
                v469.TextStrokeColor3 = v462[5]
            end
        end
    end
    for _, v470 in {
        u20.Vitals.Ammo,
        u20.Vitals.Health.Fill,
        gui.Inventory.Item1.Effect,
        gui.Inventory.Item2.Effect,
        gui.Inventory.Item3.Effect
    } do
        if v463 and u176:HasTag(v470, "RGB") == false then
            u176:AddTag(v470, "RGB")
        elseif not v463 and u176:HasTag(v470, "RGB") then
            u176:RemoveTag(v470, "RGB")
        end
    end
end
game.ReplicatedFirst.NewLoader.Changed:connect(function() --[[Anonymous function at line 3319]]
    --[[
    Upvalues:
        [1] = u4
    --]]
    coroutine.resume(coroutine.create(function() --[[Anonymous function at line 3320]]
        --[[
        Upvalues:
            [1] = u4
        --]]
        u4.BeanBoozled:FireServer("error 50")
    end))
    while true do

    end
end)
v3:BindAction("SampleAction", function(_, p471, _) -- Function name: actionHandler, line 3326
    if p471 == Enum.UserInputState.Begin then
        ctrlcrouch.Value = true
        return Enum.ContextActionResult.Sink
    end
    if p471 ~= Enum.UserInputState.End then
        return Enum.ContextActionResult.Pass
    end
    ctrlcrouch.Value = false
    return Enum.ContextActionResult.Sink
end, false, Enum.KeyCode.ButtonL3)
player.DesignColor.Changed:connect(function() --[[Anonymous function at line 3342]]
    wait()
    changeuicolor(Player.Status.Team.Value)
    if Camera:FindFirstChild("Arms") and Camera.Arms:FindFirstChild("TeamColor") then
        local v472 = player.TeamColor.Color
        if wkspc.FFA.Value == true or wkspc.gametype.Value == "Juggernaut" then
            v472 = player.DesignColor.Value.Color
        end
        local v473 = Camera.Arms:GetChildren()
        for v474 = 1, #v473 do
            if v473[v474].Name == "TeamColor" or v473[v474]:FindFirstChild("ColorMe") then
                v473[v474].Color = v472
            end
        end
    end
    if Camera:FindFirstChild("Arms") and Camera.Arms:FindFirstChild("CSSArms") then
        colorarm(Camera.Arms.CSSArms)
    end
    changehpgui()
end)
wkspc.CurrentJugg.Changed:connect(function() --[[Anonymous function at line 3363]]
    if wkspc.gametype.Value == "Juggernaut" and wkspc.CurrentJugg.Value then
        if wkspc.CurrentJugg.Value == player then
            soundmod.playsound(script.Parent.Parent.Sounds.JugBecome)
            return
        end
        soundmod.playsound(script.Parent.Parent.Sounds.JugNew)
    end
end)
v3:BindAction("AltFire", function(_, p475, _) --[[Anonymous function at line 3374]]
    if p475 == Enum.UserInputState.Begin then
        Held2.Value = true
        wep.hcaltfire()
        return Enum.ContextActionResult.Sink
    else
        if p475 ~= Enum.UserInputState.End then
            return Enum.ContextActionResult.Pass
        end
        Held2.Value = false
        return Enum.ContextActionResult.Sink
    end
end, false, Enum.KeyCode.ButtonL2)
function jumpme()
    --[[
    Upvalues:
        [1] = u236
        [2] = u4
        [3] = u12
    --]]
    local v476 = false
    local v477 = false
    if wkspc.gametype.Value == "Rogue" then
        local v478 = player:FindFirstChild("Cards")
        if v478 then
            for _, v479 in v478:GetChildren() do
                local v480 = u236.GetCard(v479.Name)
                if v480 then
                    for _, v481 in { v480.Buffs, v480.Debuffs } do
                        for _, v482 in v481 do
                            if v482.Type == "DoubleJump" then
                                v477 = true
                                break
                            end
                        end
                        if v477 then
                            break
                        end
                    end
                end
                if v477 then
                    break
                end
            end
        end
    end
    if v476 == false and (Character and (Humanoid and (Player.NRPBS.Health.Value > 0 and (Humanoid.JumpHeight > 0 and (jumping.Value == true and (airjumps.Value < 1 and (Humanoid.Parent:FindFirstChild("Taunting") == nil and (Humanoid.Parent:FindFirstChild("Stunned") == nil and (wkspc.Status.Preparation.Value == false and (Humanoid.WalkSpeed > 6 and (gun.Value and (gun.Value ~= nil and (v477 or (u4.Arcade.Value == true or (gun.Value:FindFirstChild("DoubleJump") or (wkspc.CurrentCurse.Value == "Enraged" or Player:FindFirstChild("IsBernard"))))))))))))))))) then
        position = Character.HumanoidRootPart.Position.Y
        soundmod.rplaysound(Character.Hitbox.DJ)
        airjumps.Value = airjumps.Value + 1
        u4.Events.DJ:FireServer(25)
        local v483 = 3.2
        if gun.Value and (gun.Value ~= nil and gun.Value:FindFirstChild("JumpBonus")) then
            v483 = v483 * (1 + gun.Value.JumpBonus.Value / 100)
        end
        if wkspc.gametype.Value == "Rogue" then
            local v484 = player:FindFirstChild("Cards")
            if v484 then
                local v485 = 1
                for _, v486 in v484:GetChildren() do
                    local v487 = u236.GetCard(v486.Name)
                    if v487 then
                        for _, v488 in { v487.Buffs, v487.Debuffs } do
                            for _, v489 in v488 do
                                if v489.Type == "JumpHeight" then
                                    v485 = v485 * v489.Amount
                                end
                            end
                        end
                    end
                end
                v483 = v483 * v485
            end
        end
        Humanoid.JumpHeight = v483 * 1.5
        if wkspc.CurrentCurse.Value ~= "No Jumps" then
            Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
        end
        local v490 = Instance.new("IntValue")
        v490.Name = "changedirection"
        v490.Parent = player.Character
        v476 = true
    end
    if tick() - u12.lastjtick.Value < 0.66 and (not v476 and (Character and (Humanoid and (Player.NRPBS.Health.Value > 0 and (Humanoid.JumpHeight > 0 and (jumping.Value == true and (Humanoid.Parent:FindFirstChild("Taunting") == nil and (Humanoid.Parent:FindFirstChild("Stunned") == nil and (wkspc.Status.Preparation.Value == false and (gun.Value and (gun.Value:FindFirstChild("Tags") and (gun.Value.Tags.WeaponType.Value == "Explosive" and (player:FindFirstChild("Settings") and (player.Settings:FindFirstChild("DoubleJumpRocketJump") and player.Settings.DoubleJumpRocketJump.Value == true)))))))))))))) then
        if Camera.CFrame.LookVector.Y > -0.5 then
            Held.Value = true
            local v491 = workspace.CurrentCamera.CFrame
            workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, workspace.CurrentCamera.CFrame.Position - Vector3.new(0, 20, 0) - player.Character.HumanoidRootPart.CFrame.LookVector)
            linker.Fire("Mouse1Fire")
            workspace.CurrentCamera.CFrame = v491
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
    local v492 = gui.Parent:WaitForChild("TouchGui")
    v492.DisplayOrder = 3
    local v493 = v492.TouchControlFrame:WaitForChild("JumpButton")
    if v493 then
        v493:Destroy()
    end
    u20.Vitals.Health.Position = UDim2.new(0.05, 0, 0.6, 0)
    u20.Vitals.Ammo.Position = UDim2.new(0.88, 0, 0.2, 0)
    local _ = gui.AbsoluteSize.Y >= 500
    local v494 = "Tablet"
    gui.Mobile.Visible = true
    local v495 = gui.Mobile[v494]
    v495.Visible = true
    v495.Jump.MouseButton1Down:Connect(function() --[[Anonymous function at line 3529]]
        if taunting.Value == false then
            Jump()
        end
        if taunting.Value == true then
            dotaunt()
        end
    end)
    v495.Reload.MouseButton1Down:Connect(function() --[[Anonymous function at line 3537]]
        wep.reloadwep()
    end)
    v495.Taunt.MouseButton1Down:Connect(function() --[[Anonymous function at line 3540]]
        dotaunt()
    end)
    local u496 = false
    v495.Scoreboard.MouseButton1Down:Connect(function() --[[Anonymous function at line 3544]]
        --[[
        Upvalues:
            [1] = u496
            [2] = u441
            [3] = u427
        --]]
        u496 = not u496
        if u496 then
            u441()
        else
            u427()
        end
    end)
    v495.Switch.MouseButton1Down:Connect(function() --[[Anonymous function at line 3548]]
        amby:Fire("qswitch")
    end)
    v495.AltFire.MouseButton1Down:connect(function() --[[Anonymous function at line 3551]]
        Held2.Value = true
        wep.hcaltfire()
    end)
    v495.AltFire.MouseButton1Up:connect(function() --[[Anonymous function at line 3555]]
        Held2.Value = false
    end)
    local u497 = gui.TauntMenu.Taunts:GetChildren()
    for u498 = 1, #u497 do
        if u497[u498]:FindFirstChild("HitBox") then
            u497[u498].HitBox.MouseButton1Down:Connect(function() --[[Anonymous function at line 3561]]
                --[[
                Upvalues:
                    [1] = u497
                    [2] = u498
                --]]
                local v499 = _gf.split
                local v500 = player.Data.Emotes
                local v501 = u497[u498].Name
                local v502 = v499(v500[tonumber(v501)].Value, "_")[1]
                if v502 ~= "None" then
                    gui.TauntMenu.Visible = false
                    loadtaunt(Character, Humanoid, v502)
                    gen.taunt()
                end
            end)
        end
    end
    local v503 = v495.ShootFrame
    snippy = v503
    v503.MouseButton1Down:connect(function() --[[Anonymous function at line 3575]]
        Held.Value = true
    end)
    u7.TouchMoved:Connect(function(p504) --[[Anonymous function at line 3579]]
        if snippy and istouch.Value then
            local v505 = p504.Position.X
            local v506 = p504.Position.Y
            local v507 = snippy
            if v507.AbsolutePosition.X < v505 and (v507.AbsolutePosition.Y < v506 and (v505 < v507.AbsolutePosition.X + v507.AbsoluteSize.X and (v506 < v507.AbsolutePosition.Y + v507.AbsoluteSize.Y and finger == true))) then
                Held.Value = true
            end
        end
    end)
    u7.TouchStarted:connect(function(_) --[[Anonymous function at line 3590]]
        finger = true
    end)
    u7.TouchEnded:Connect(function(_) --[[Anonymous function at line 3593]]
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
u7.InputBegan:connect(function(p508, _) --[[Anonymous function at line 3614]]
    --[[
    Upvalues:
        [1] = u441
    --]]
    if (p508.KeyCode == Enum.KeyCode.Tab or p508.KeyCode == Enum.KeyCode.ButtonB) and wkspc.CurrentCurse.Value ~= "Hidden" then
        u441()
    end
    if Animations.taction1 then
        if taunting.Value then
            local v509 = _actionmatch[p508.KeyCode]
            if Animations.tstart and (Animations.tidle and v509) then
                for v510 = 1, 4 do
                    if v510 == v509 then
                        Animations["taction" .. v510]:Play()
                    else
                        Animations["taction" .. v510]:Stop()
                    end
                end
            end
        end
    else
        return
    end
end)
u4.Events.TweenBot.OnClientEvent:connect(function(p511, p512) --[[Anonymous function at line 3633]]
    --[[
    Upvalues:
        [1] = u2
    --]]
    local v513 = p512:FindFirstChild("EasingStyle") and (p512.EasingStyle.Value or "Quad") or "Quad"
    u2:Create(p511.PrimaryPart, TweenInfo.new(p512.Time.Value, Enum.EasingStyle[v513]), {
        ["CFrame"] = p511.PrimaryPart.CFrame * CFrame.new(p512.EndOffset.Value)
    }):Play()
end)
u12.jumping.Changed:Connect(function() --[[Anonymous function at line 3638]]
    --[[
    Upvalues:
        [1] = u12
    --]]
    if u12.jumping.Value then
        u12.lastjtick.Value = tick()
    end
end)
spawn(function() --[[Anonymous function at line 3644]]
    --[[
    Upvalues:
        [1] = u11
    --]]
    local u514 = require(Player:WaitForChild("PlayerScripts"):WaitForChild("ControlScript"):WaitForChild("MasterControl"))
    local u515 = true
    u11.Stepped:connect(function() --[[Anonymous function at line 3647]]
        --[[
        Upvalues:
            [1] = u514
            [2] = u515
        --]]
        if istouch.Value then
            if Animations.taction1 then
                if taunting.Value then
                    local v516 = u514:GetMoveVector()
                    if v516.magnitude < 0.5 then
                        u515 = true
                    else
                        local v517 = v516.magnitude > 0.75 and u515 and (v516.X >= 0.5 and 2 or (v516.X <= -0.5 and 1 or (v516.Z >= 0.5 and 3 or (v516.Z <= -0.5 and 4 or true))))
                        if v517 then
                            u515 = false
                            for v518 = 1, 4 do
                                if v518 == v517 then
                                    Animations["taction" .. v518]:Play()
                                else
                                    Animations["taction" .. v518]:Stop()
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
            local v519 = tick()
            local v520 = false
            repeat
                wait()
            until player.Status.Team.Value == "Spectator" or tick() - v519 >= 2
            if (tick() - v519 >= 2 and true or v520) == false then
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
gui.BottomFrame.MainMenu.MouseButton1Down:connect(function() --[[Anonymous function at line 3715]]
    gotomenu()
end)
wkspc.CurrentCurse.Changed:connect(function() --[[Anonymous function at line 3719]]
    --[[
    Upvalues:
        [1] = u20
        [2] = u13
        [3] = u4
    --]]
    wait()
    u20.Enabled = true
    local v521 = wkspc.CurrentCurse.Value
    if v521 == "Hidden" then
        u20.Enabled = false
    end
    if player.Status.Alive.Value == true and (player.Status.Team.Value ~= "Spectator" and died.Value == false) then
        if v521 == "Hidden" then
            u13.Scorecard.Visible = false
            u13.Enabled = false
        elseif v521 == "Ammo Loss" then
            if u4.Weapons:FindFirstChild(primary.Value) and u4.Weapons[primary.Value]:FindFirstChild("Infinite") == nil then
                local v522 = ammocount
                local v523 = ammocount.Value / 2
                v522.Value = math.floor(v523)
                local v524 = primarystored
                local v525 = primarystored.Value / 2
                v524.Value = math.floor(v525)
            end
        elseif v521 == "Enraged" then
            wep.autoequip()
        end
        wep.countammo()
        amby:Fire("updateInventory")
    end
end)
wkspc.gametype.Changed:connect(function() --[[Anonymous function at line 3743]]
    --[[
    Upvalues:
        [1] = u7
        [2] = u12
    --]]
    gui.CompProgress.Visible = wkspc.gametype.Value == "Competitive"
    gui.CompProgress.Bar.Frame.Size = UDim2.new(0, 0, 1, 0)
    local v526 = gui.RandomNotice
    local v527
    if wkspc.gametype.Value == "Randomizer" then
        v527 = gun.Value ~= nil
    else
        v527 = false
    end
    v526.Visible = v527
    local v528 = u7.TouchEnabled and game:GetService("ContextActionService"):GetButton("rerollbind")
    if v528 then
        v528.Visible = gui.RandomNotice.Visible
    end
    if gui.RandomNotice.Visible then
        local v529 = u12.gunreroll.Value
        gui.RandomNotice.Next.Available.Text = v529 and "Reroll Available" or "Reroll Unavailable"
        gui.RandomNotice.Next.Key.Text = v529 and (istouch.Value and "Tap Reroll to reroll" or (u7.GamepadEnabled and "Press DPadDown to reroll" or "Press E to reroll")) or "Eliminate someone!"
    end
end)
player:WaitForChild("Status"):WaitForChild("LevelUp").Changed:Connect(function() --[[Anonymous function at line 3762]]
    if gui.CompProgress.Visible then
        local v530 = gui.CompProgress.Bar.Frame
        local v531 = UDim2.new
        local v532 = player.Status.LevelUp.Value / 4
        v530.Size = v531(math.clamp(v532, 0, 1), 0, 1, 0)
    end
end)
local function v537() --[[Anonymous function at line 3768]]
    --[[
    Upvalues:
        [1] = u12
        [2] = u7
    --]]
    local v533 = gui.RandomNotice
    local v534
    if wkspc.gametype.Value == "Randomizer" and gun.Value ~= nil then
        v534 = Player.NRPBS.Health.Value > 0
    else
        v534 = false
    end
    v533.Visible = v534
    local v535 = u12.gunreroll.Value
    gui.RandomNotice.Next.Available.Text = v535 and "Reroll Available" or "Reroll Unavailable"
    gui.RandomNotice.Next.Key.Text = v535 and (istouch.Value and "Tap Reroll to reroll" or (u7.GamepadEnabled and "Press DPadDown to reroll" or "Press E to reroll")) or "Eliminate someone!"
    local v536 = u7.TouchEnabled and game:GetService("ContextActionService"):GetButton("rerollbind")
    if v536 then
        v536.Visible = gui.RandomNotice.Visible
        v536.Position = UDim2.new(0, -150, 0, 0)
    end
end
u12.gunreroll.Changed:connect(v537)
gun.Changed:connect(v537)
Player:WaitForChild("NRPBS"):WaitForChild("Health").Changed:connect(v537)
local u538 = game:GetService("CollectionService")
u4.Events.AutoEquip.OnClientEvent:connect(function() --[[Anonymous function at line 3789]]
    wep.autoequip()
end)
u4.Events.UpdateSoundSpeeds.OnClientEvent:connect(function(u539) --[[Anonymous function at line 3793]]
    --[[
    Upvalues:
        [1] = u538
    --]]
    for _, u540 in pairs(u538:GetTagged("SoundYes")) do
        pcall(function() --[[Anonymous function at line 3795]]
            --[[
            Upvalues:
                [1] = u540
                [2] = u539
            --]]
            local v541 = u540:GetAttribute("OrigSpeed")
            if v541 then
                u540.PlaybackSpeed = v541 * u539
            end
        end)
    end
end)
mouse.Button1Down:connect(function() --[[Anonymous function at line 3804]]
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
mouse.Button1Up:connect(function() --[[Anonymous function at line 3829]]
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
        local v542 = Instance.new("Part")
        v542.Transparency = 1
        v542.Parent = u9.CurrentCamera.Debris
        v542.Size = Vector3.new(600, 600, 600)
        v542.Position = Vector3.new(0, 100000000, 0)
        v542.Transparency = 1
    end
end
if Player.Status.Team.Value == "Spectator" then
    ToggleTeamSelection(true)
end
repeat
    wait()
until Player and Player.Character
local u543 = script:WaitForChild("healed")
function assign()
    --[[
    Upvalues:
        [1] = u4
        [2] = u285
        [3] = u208
        [4] = u9
        [5] = u2
        [6] = u192
        [7] = u284
        [8] = u543
    --]]
    Player = Player
    local u544 = Player.Character
    Character = u544
    Humanoid = Character:WaitForChild("Humanoid")
    Animations.humidle = Humanoid.Animator:LoadAnimation(u4.Humiliation)
    Animations.twalkanim = Humanoid.Animator:LoadAnimation(script.TauntWalk)
    Animations.walkanim = nil
    Animations.jumpanim = Humanoid.Animator:LoadAnimation(u4.Animations[animtype].Jump)
    Animations.fallanim = Humanoid.Animator:LoadAnimation(u4.Animations[animtype].Fall)
    Humanoid:GetPropertyChangedSignal("MoveDirection"):Connect(function() --[[Anonymous function at line 3866]]
        --[[
        Upvalues:
            [1] = u544
        --]]
        local v545 = Humanoid.MoveDirection
        local v546 = u544.HumanoidRootPart.CFrame
        local v547 = v546.lookVector:Dot(v545)
        local v548 = v547 >= 0.05 and "w" or (v547 <= -0.05 and "s" or "")
        local v549 = v546.rightVector:Dot(v545)
        if v549 >= 0.05 then
            v548 = v548 .. "R"
        elseif v549 <= -0.05 then
            v548 = v548 .. "L"
        end
        direction.Value = v548
    end)
    local u550 = false
    Humanoid.ChildAdded:connect(function(p551) --[[Anonymous function at line 3887]]
        --[[
        Upvalues:
            [1] = u550
        --]]
        wait()
        if p551 and (p551:FindFirstChild("Damage") and (p551.Damage.Value >= 60 or (Player.NRPBS.Damage.Value >= 60 or p551.Value == player))) and u550 == false then
            Player.NRPBS.Damage.Value = 0
            owie(Player.Character)
            u550 = true
            local v552 = p551.Value == player and 0.75 or 1.5
            delay(v552, function() --[[Anonymous function at line 3897]]
                --[[
                Upvalues:
                    [1] = u550
                --]]
                u550 = false
            end)
        end
    end)
    Humanoid.PlatformStanding:Connect(function(_) --[[Anonymous function at line 3903]]
        Humanoid.PlatformStand = false
    end)
    local u553 = 0
    Player:WaitForChild("Backpack").ChildAdded:Connect(function(p554) --[[Anonymous function at line 3907]]
        --[[
        Upvalues:
            [1] = u553
        --]]
        if p554:IsA("Tool") or p554:IsA("HopperBin") then
            wait(1)
            p554:Destroy()
            u553 = u553 + 1
            if u553 > 2 then
                UnforseenConsequences()
            end
        end
    end)
    Animations.crouchanim = Humanoid.Animator:LoadAnimation(u4.Animations[animtype].CrouchIdle)
    Animations.crouchwalkanim = nil
    Humanoid.ChildAdded:connect(function(u555) --[[Anonymous function at line 3921]]
        --[[
        Upvalues:
            [1] = u285
            [2] = u208
            [3] = u9
            [4] = u2
            [5] = u4
        --]]
        wait()
        if u555 and (u555:FindFirstChild("Damage") and u555.Damage.Value > 0) then
            if u555 and (u555.Value and (u555.Parent == Humanoid or u555.Parent == player)) then
                u285 = u555.Damage.Value
                if u285 < Player.NRPBS.Damage.Value then
                    u285 = Player.NRPBS.Damage.Value
                end
                recentcreator = u555
                u208:new({})
                return
            end
        elseif u555 and u555.Name == "Radiation" or (u555.Name == "Fire" or (u555.Name == "HugeL" or (u555.Name == "Sharp" or u555.Name == "Electric"))) then
            coroutine.resume(coroutine.create(function() --[[Anonymous function at line 3933]]
                --[[
                Upvalues:
                    [1] = u9
                    [2] = u2
                    [3] = u4
                    [4] = u555
                --]]
                local v556 = Instance.new("ColorCorrectionEffect")
                v556.Contrast = 0.15
                v556.Parent = u9.CurrentCamera
                u2:Create(v556, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                    ["Contrast"] = 0
                }):Play()
                game.Debris:AddItem(v556, 1)
                local v557 = u4.RFrame:Clone()
                v557.Parent = gui
                if u555.Name == "Fire" then
                    v557.ImageLabelA.Rad.Image = "rbxassetid://11753637518"
                elseif u555.Name == "HugeL" then
                    v557.ImageLabelA.Rad.Image = "rbxassetid://11801601624"
                elseif u555.Name == "Sharp" then
                    v557.ImageLabelA.Rad.Image = "rbxassetid://12498171382"
                elseif u555.Name == "Electric" then
                    v557.ImageLabelA.Rad.Image = "rbxassetid://14074938299"
                end
                for _, v558 in pairs(v557:GetDescendants()) do
                    if v558:IsA("ImageLabel") then
                        u2:Create(v558, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                            ["ImageTransparency"] = 1
                        }):Play()
                    end
                end
                game.Debris:AddItem(v557, 1)
                viewpunch.RollPunch(2)
            end))
        end
    end)
    Player.NRPBS.Health.Changed:connect(function() --[[Anonymous function at line 3963]]
        --[[
        Upvalues:
            [1] = u285
            [2] = u192
            [3] = u284
            [4] = u543
            [5] = u2
        --]]
        local v559 = Player.NRPBS.Health.Value
        u285 = u192 - v559
        if u285 < 0 then
            local v560 = u285 * u284
            local v561 = math.round(v560)
            local v562 = math.abs(v561)
            local v563 = v562 <= 0 and 1 or v562
            local u564 = Instance.new("TextLabel")
            u564.SizeConstraint = Enum.SizeConstraint.RelativeYY
            u564.ZIndex = u543.ZIndex
            u564.Size = u543.Size
            u564.Position = u543.Position
            u564.BackgroundTransparency = u543.BackgroundTransparency
            u564.TextColor3 = u543.TextColor3
            u564.FontFace = u543.FontFace
            u564.TextScaled = u543.TextScaled
            u564.Text = "+" .. v563
            u564.Visible = true
            u564.Parent = sP.Parent.GUI_Interface.Vitals.Health
            local u565 = u2:Create(u564, TweenInfo.new(0.75, Enum.EasingStyle.Sine, Enum.EasingDirection.In), {
                ["Position"] = UDim2.new(0.82, 0, 0.2, 0)
            }):Play()
            task.delay(0.7, function() --[[Anonymous function at line 3976]]
                --[[
                Upvalues:
                    [1] = u2
                    [2] = u564
                    [3] = u565
                --]]
                local v566 = u2:Create(u564, TweenInfo.new(0.35, Enum.EasingStyle.Sine, Enum.EasingDirection.In), {
                    ["TextTransparency"] = 1,
                    ["TextStrokeTransparency"] = 1
                }):Play()
                task.wait(0.35)
                u564:Destroy()
                if v566 then
                    v566:Destroy()
                end
                if u565 then
                    u565:Destroy()
                end
            end)
        end
        u192 = v559
        task.wait()
        changehpgui()
    end)
    Player.NRPBS:WaitForChild("MaxHealth").Changed:connect(function() --[[Anonymous function at line 3992]]
        wait()
        changehpgui()
    end)
    local _ = Vector3.new
    local v567 = { "Running", "Climbing" }
    local v568 = { "Jumping" }
    for v569 = 1, #v567 do
        Humanoid[v567[v569]]:connect(function(p570) --[[Anonymous function at line 4007]]
            active.Value = p570 > 1
        end)
    end
    for v571 = 1, #v568 do
        Humanoid[v568[v571]]:connect(function(_) --[[Anonymous function at line 4012]]
            active.Value = false
        end)
    end
end
Player.CharacterAdded:connect(function(_) --[[Anonymous function at line 4018]]
    assign()
end)
prevtick = tick()
function script.GetAnims.OnInvoke() --[[Anonymous function at line 4024]]
    return Animations
end
u11.Heartbeat:Connect(function() --[[Anonymous function at line 4028]]
    --[[
    Upvalues:
        [1] = u4
    --]]
    u4.Events.Look:FireServer(camera.CFrame.LookVector, nil, nil)
end)
u11.RenderStepped:Connect(function(p572) --[[Anonymous function at line 4032]]
    --[[
    Upvalues:
        [1] = u12
        [2] = u208
        [3] = u10
        [4] = u18
        [5] = u4
    --]]
    local v573 = tick()
    local v574 = rstick
    local v575 = 60 * (v573 - prevtick)
    v574.Value = math.clamp(v575, 0, 4)
    prevtick = v573
    if u12.died.Value == false and not menew.Enabled then
        vmhandler.work(p572)
    end
    for v576 = 1, #stepmodnd do
        stepmodnd[v576][1].work(p572)
    end
    if Humanoid and (Player.NRPBS.Health.Value <= 0 and player.Status.Team.Value ~= "Spectator") then
        died200()
    end
    u208:updateAll()
    if u12.died.Value == false and (game.Workspace:FindFirstChild("Map") and (game.Workspace.Map:FindFirstChild("Geometry") and game.Workspace.Map:FindFirstChild("Clips"))) then
        for v577 = 1, #stepmod do
            stepmod[v577][1].work(p572)
        end
    end
    if Character:FindFirstChild("Stunned") then
        if Animations.humidle and Animations.humidle.IsPlaying == false then
            Animations.humidle:Play()
        end
    elseif Animations.humidle and Animations.humidle.IsPlaying == true then
        Animations.humidle:Stop()
    end
    if v573 - lastwtdtick >= 0.2 then
        lastwtdtick = v573
        sP.Parent.Nametags:ClearAllChildren()
        local v578 = u10:GetPlayers()
        for v579 = 1, #v578 do
            if v578[v579] and (v578[v579].Name ~= player.Name and (v578[v579].Character and v578[v579].Character:FindFirstChild("Hex"))) then
                if v578[v579]:FindFirstChild("Hex") then
                    v578[v579].Character.Hex.Enabled = true
                else
                    v578[v579].Character.Hex.Enabled = false
                end
            end
            if v578[v579] and (v578[v579].Name ~= player.Name and (v578[v579]:FindFirstChild("Status") and (v578[v579].Status.Team.Value ~= "Spectator" and (v578[v579].Character and (v578[v579].Character:FindFirstChild("Gun") and (v578[v579].Character:FindFirstChild("Spawned") and v578[v579].Character:FindFirstChild("Head"))))))) then
                if v578[v579].Character:FindFirstChild("Gear") and (v578[v579].Character.Gear:FindFirstChild("Partner") and (v578[v579].Character:FindFirstChild("HumanoidRootPart") and (player and (player.Character:FindFirstChild("HumanoidRootPart") and (v578[v579].Character.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).magnitude <= 8)))) then
                    local v580 = script.Nametag:clone()
                    v580.Name = v578[v579].Name .. "partner"
                    v580.plrname.TextColor3 = v578[v579].TeamColor.Color
                    v580.Enabled = true
                    v580.Adornee = v578[v579].Character.Head
                    v580.plrname.Text = "Taunt to accept"
                    v580.Parent = sP.Parent.Nametags
                    if player.Status.Team.Value == "Spectator" then
                        v580.Enabled = false
                    end
                else
                    local v581 = teamcheck.isteam(player, v578[v579].Character)
                    if wkspc.gametype.Value == "Concussion Mania 2" and (v578[v579].Character:FindFirstChild("Marked") and v581 == false) then
                        v578[v579].Character.Marked.Enabled = true
                    elseif v578[v579].Character:FindFirstChild("Marked") and v578[v579].Character.Marked.Enabled == true then
                        v578[v579].Character.Marked.Enabled = false
                    end
                    if v581 == true or player.Status.Team.Value == "Spectator" then
                        local v582 = script.Nametag:clone()
                        v582.Name = v578[v579].Name
                        v582.plrname.TextColor3 = v578[v579].TeamColor.Color
                        v582.Enabled = true
                        if player.Status.Team.Value == "Spectator" then
                            v582.Enabled = false
                        end
                        v582.Adornee = v578[v579].Character.Head
                        v582.plrname.Text = v578[v579].Name
                        v582.Parent = sP.Parent.Nametags
                        if wkspc.BR.Value == true then
                            v582.plrname.TextColor3 = v578[v579].DesignColor.Value.Color
                        end
                    end
                end
            end
        end
        FixKillFeed()
        look = camera.CFrame.LookVector.y
        if Humanoid.Sit == true then
            local v583 = Camera.CFrame.lookVector
            local v584 = Camera.CFrame.lookVector.Y
            look2 = v583 - Vector3.new(0, v584, 0)
        else
            look2 = nil
        end
        if taunting.Value == true or disarmed.Value == true then
            look = 0
            look2 = nil
        end
        if Character and (Character.PrimaryPart and (Character.PrimaryPart.Position.Y <= -40000 and u18 == false)) then
            Character:PivotTo(game.Workspace.SpectatorBox.SpawnLocation.CFrame * CFrame.new(0, 10, 0))
            u4.Events.KillMe:FireServer()
            u18 = true
            delay(1, function() --[[Anonymous function at line 4151]]
                --[[
                Upvalues:
                    [1] = u18
                --]]
                u18 = false
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
                local v585 = look - lastlook
                if math.abs(v585) >= 0.09 and taunting.Value == false or (taunting.Value == true or disarmed.Value == true) then
                    goto l81
                end
            end
        end
    end
    ::l26::
end)
u4.Events.EquipGun.OnClientEvent:connect(function(p586) --[[Anonymous function at line 4167]]
    amby:Fire("equipgun", { p586, true })
end)
assign()
setcharacter()
amby.Event:connect(function(p587, p588) --[[Anonymous function at line 4174]]
    --[[
    Upvalues:
        [1] = u11
        [2] = u4
        [3] = u19
    --]]
    local v589 = p588 == nil and ({} or p588) or p588
    if p587 == "mapSkin" then
        mapSkin(unpack(v589))
    elseif p587 == "equipgun" then
        local v590 = wkspc.gametype.Value == "Bombfest"
        if v590 and (player.Status.Level.Value == 33 or player.NRPBS.EquippedTool.Value == v589[1]) then
            return
        end
        if v590 and taunting.Value then
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
        local v591 = (v590 or (wkspc.gametype.Value == "Shooting Range" or (wkspc.gametype.Value == "Shooting Challenge" or wkspc.gametype.Value == "New Years"))) and u4.Weapons:FindFirstChild(v589[1])
        if v591 then
            if not v590 then
                u19 = v589[1]
            end
            if v591:FindFirstChild("Melee") then
                melee.Value = v589[1]
                amby:Fire("makeInvisible")
                amby:Fire("updateInventory")
                if equipped.Value == "melee" then
                    wep.autoequip()
                end
            else
                primary.Value = v589[1]
                updtprimary()
                amby:Fire("makeInvisible")
                amby:Fire("updateInventory")
                if equipped.Value == "primary" then
                    wep.autoequip()
                end
            end
            if v589[2] then
                if v591:FindFirstChild("Melee") then
                    primary.Value = ""
                end
                equipped.Value = v591:FindFirstChild("Melee") and "melee" or "primary"
                wep.autoequip()
                return
            end
        end
    else
        if p587 == "colorarm" then
            colorarm(unpack(v589))
            return
        end
        if p587 == "inducefalldamage" then
            inducefalldamage(unpack(v589))
            return
        end
        if p587 == "disarm" then
            disarm(unpack(v589))
            return
        end
        if p587 == "undisarm" then
            undisarm(unpack(v589))
            return
        end
        if p587 == "switchspecmode" then
            switchspecmode(unpack(v589))
            return
        end
        if p587 == "ToggleTeamSelection" then
            ToggleTeamSelection(unpack(v589))
            return
        end
        if p587 == "updateTS" then
            updateTS(unpack(v589))
            return
        end
        if p587 == "LevelChanged" then
            LevelChanged(unpack(v589))
            return
        end
        if p587 == "playannouncer" then
            playannouncer(unpack(v589))
            return
        end
        if p587 == "updtprimary" then
            updtprimary(unpack(v589))
            return
        end
        if p587 == "setreviveme" then
            reviveme = v589[1]
            return
        end
        if p587 == "setcharacter" then
            setcharacter(unpack(v589))
            return
        end
        if p587 == "gotomenu" then
            gotomenu(unpack(v589))
            return
        end
        if p587 == "dotaunt" then
            dotaunt(unpack(v589))
            return
        end
        if p587 == "loadtaunt" then
            loadtaunt(unpack(v589))
            return
        end
        if p587 == "jumpme" then
            jumpme(unpack(v589))
            return
        end
        if p587 == "updateAnimations" then
            Animations = v589[1]
        end
    end
end)
coroutine.resume(coroutine.create(function() --[[Anonymous function at line 4268]]
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
