
--pre


local yes = Instance.new("Sound", game.Workspace)
yes.SoundId = "rbxassetid://336653405"
yes.Name = "yes"

local no = Instance.new("Sound", game.Workspace)
no.SoundId = "rbxassetid://336653432"
no.Name = "no"

local notifications = loadstring(game:HttpGet("https://raw.githubusercontent.com/GamerEmilianoFF/scripts/main/notify.lua", true))()


notifications:notify {
    Title = "Notify Credits", 
    Description = "Credits of notify: AbstractPoo",
    Icon = 6031071053, 
    Length = 2
}
no:Play()


notifications:notify {
    Title = "Trip Hub", 
    Description = "Thx for buy Trip Hub Premiun",
    Icon = 6031071053, 
    Length = 5
}
no:Play()



local tiempo = 3

--[[

notifications:notify{
    Title = "Title", 
    Description = "Description",
    Icon = 6031071053, -- icon id (string or integer)
    Accept = { -- settings for accept button
        Text = "Yes",
        Callback = function()
            print("Accepted")
        end
    },
    Dismiss = { --settings for dismiss button
        Text = "No",
        Callback = function()
            print("Dismissed")
        end
    },
    Length = 3 -- duration of notification
}

]]--











--UI LIBRARY--



local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/elxocasXD/UI-LIBRARY/main/Kavo.lua"))()












local Window = Library.CreateLib("Trip Hub Premiun                                    discord.gg/79fKXVuJfr", "Spotify")











local Tab = Window:NewTab("Main")



local Section = Tab:NewSection("Speed Bypass")


local SpeedB = 230


Section:NewButton("Speed KeyBind (F)", "Key (F)", function()
yes:Play()
    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    plr = game:GetService('Players').LocalPlayer
    down = true
    function onButton1Down(mouse)
        down = true
        while down do
            if not down then break end
            local char = plr.Character
            char.HumanoidRootPart.Velocity = char.HumanoidRootPart.CFrame.lookVector * SpeedB
            wait()
        end
    end
    function onButton1Up(mouse)
        down = false
    end
    function onSelected(mouse)
        mouse.KeyDown:connect(function(f) if f:lower()=="f"then onButton1Down(mouse)end end)
        mouse.KeyUp:connect(function(f) if f:lower()=="f"then onButton1Up(mouse)end end)
    end
    onSelected(game.Players.LocalPlayer:GetMouse())
--end
end)



Section:NewButton("Speed KeyBind (C)", "Key (C)", function()
yes:Play()
    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
        plr = game:GetService('Players').LocalPlayer
           down = true
           function onButton1Down(mouse)
               down = true
               while down do
                   if not down then break end
                   local char = plr.Character
                   char.HumanoidRootPart.Velocity = char.HumanoidRootPart.CFrame.lookVector * SpeedB
                   wait()
               end
           end
           function onButton1Up(mouse)
               down = false
           end
           function onSelected(mouse)
               mouse.KeyDown:connect(function(c) if c:lower()=="c"then onButton1Down(mouse)end end)
               mouse.KeyUp:connect(function(c) if c:lower()=="c"then onButton1Up(mouse)end end)
           end
           onSelected(game.Players.LocalPlayer:GetMouse())
           
       --end
end)

Section:NewSlider("Speed Slider", "Speed Slider", 350, 0, function(value) 
    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
SpeedB = value

end)


local Section = Tab:NewSection("CFrame Speed")

Section:NewButton("Damage Fix", "", function()
yes:Play()
    for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
        if v:IsA("Script") and v.Name ~= "Health" and v.Name ~= "Sound" and v:FindFirstChild("LocalScript") then
            v:Destroy()
        end
    end
    game.Players.LocalPlayer.CharacterAdded:Connect(function(char)
        repeat
            wait()
        until game.Players.LocalPlayer.Character
        char.ChildAdded:Connect(function(child)
            if child:IsA("Script") then 
                wait(0.1)
                if child:FindFirstChild("LocalScript") then
                    child.LocalScript:FireServer()
                end
            end
        end)
    end)
end)
Section:NewButton("CFrame Speed (C)", "", function()
yes:Play()

        repeat
        wait()
    until game:IsLoaded()
    local L_134_ = game:service('Players')
    local L_135_ = L_134_.LocalPlayer
    repeat
        wait()
    until L_135_.Character
    local L_136_ = game:service('UserInputService')
    local L_137_ = game:service('RunService')
    getgenv().Multiplier = 0.5
    local L_138_ = true
    local L_139_
    L_136_.InputBegan:connect(function(L_140_arg0)
        if L_140_arg0.KeyCode == Enum.KeyCode.LeftBracket then
            Multiplier = Multiplier + 0.01
            print(Multiplier)
            wait(0.2)
            while L_136_:IsKeyDown(Enum.KeyCode.LeftBracket) do
                wait()
                Multiplier = Multiplier + 0.01
                print(Multiplier)
            end
        end
        if L_140_arg0.KeyCode == Enum.KeyCode.RightBracket then
            Multiplier = Multiplier - 0.01
            print(Multiplier)
            wait(0.2)
            while L_136_:IsKeyDown(Enum.KeyCode.RightBracket) do
                wait()
                Multiplier = Multiplier - 0.01
                print(Multiplier)
            end
        end
        if L_140_arg0.KeyCode == Enum.KeyCode.C then
            L_138_ = not L_138_
            if L_138_ == true then
                repeat
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + game.Players.LocalPlayer.Character.Humanoid.MoveDirection * Multiplier
                    game:GetService("RunService").Stepped:wait()
                until L_138_ == false
            end
        end
    end)
end)
Section:NewSlider("CFrame Speed Slider", "", 6, 0, function(s)
    getgenv().Multiplier = s
end)

Section:NewButton("CFrame Speed Button (MOB)", "for Mob", function()
yes:Play()

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()

notifications:notify {
    Title = "Trip Hub", 
    Description = "modified by Space#0234",
    Icon = 6031071053, 
    Length = tiempo
}
    loadstring(game:HttpGet("https://raw.githubusercontent.com/GamerEmilianoFF/scripts/main/CFrame%20toggle.lua",true))()

end)


local Section = Tab:NewSection("Speed (For mobile)")



Section:NewButton("Speed Button (MOB)", "for Mob", function()
yes:Play()

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()

notifications:notify {
    Title = "Trip Hub", 
    Description = "modified by Space#0234",
    Icon = 6031071053, 
    Length = tiempo
}

    loadstring(game:HttpGet("https://raw.githubusercontent.com/GamerEmilianoFF/madebyemiliano/main/Speed%20bypass",true))()

end)

Section:NewButton("Speed Toggle (MOB)", "for Mob", function()
yes:Play()

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()

notifications:notify {
    Title = "Trip Hub", 
    Description = "modified by Space#0234",
    Icon = 6031071053, 
    Length = tiempo
}

    loadstring(game:HttpGet("https://raw.githubusercontent.com/GamerEmilianoFF/toggles_speed/main/Speed",true))()

end)

local Section = Tab:NewSection("Server Sided")


Section:NewButton("Server Finder Hub", "search server", function()
yes:Play()

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    loadstring(game:HttpGet("https://www.scriptblox.com/raw/Server-Browser_80", true))();

end)

Section:NewButton("enter server fast","xd", function(value)
yes:Play()

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    local Http = game:GetService("HttpService")
        local TPS = game:GetService("TeleportService")
        local Api = "https://games.roblox.com/v1/games/"
         
        local _place = game.PlaceId
        local _servers = Api.._place.."/servers/Public?sortOrder=Asc&limit=100"
        function ListServers(cursor)
           local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or ""))
           return Http:JSONDecode(Raw)
        end
         
        local Server, Next; repeat
           local Servers = ListServers(Next)
           Server = Servers.data[1]
           Next = Servers.nextPageCursor
        until Server
         
        TPS:TeleportToPlaceInstance(_place,Server.id,game.Players.LocalPlayer)
    end)

Section:NewButton("Rejoin", "Rejoin", function()
yes:Play()

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    loadstring(game:HttpGet("https://pastebin.com/raw/hAaXGTdq",true))()

end)

local Section = Tab:NewSection("Anti Stomp")

Section:NewButton("anti stomp (J)","pc",  function(value)
yes:Play()

notifications:notify {
    Title = "Trip Hub", 
    Description = "by Space#0234",
    Icon = 6031071053, 
    Length = tiempo
}

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
      local tecla = Enum.KeyCode.J
        local lol = game:GetService("UserInputService")
        
        lol.InputBegan:Connect(function(key)
                if key.KeyCode == tecla then

    loadstring(game:HttpGet("https://raw.githubusercontent.com/GamerEmilianoFF/scripts_v2/main/anti%20stomp",true))()

             end
        end)
    end)
    

Section:NewButton("anti stomp (k)","pc",  function(value)
yes:Play()

notifications:notify {
    Title = "Trip Hub", 
    Description = "by Space#0234",
    Icon = 6031071053, 
    Length = tiempo
}

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
      local tecla = Enum.KeyCode.K
        local lol = game:GetService("UserInputService")
        
        lol.InputBegan:Connect(function(key)
                if key.KeyCode == tecla then

    loadstring(game:HttpGet("https://raw.githubusercontent.com/GamerEmilianoFF/scripts_v2/main/anti%20stomp",true))()

             end
        end)
    end)
    
    Section:NewButton("anti stomp (u)","pc", function(value)
        yes:Play()

notifications:notify {
    Title = "Trip Hub", 
    Description = "by Space#0234",
    Icon = 6031071053, 
    Length = tiempo
}

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
      local tecla = Enum.KeyCode.U
        local lol = game:GetService("UserInputService")
        
        lol.InputBegan:Connect(function(key)
                if key.KeyCode == tecla then
           loadstring(game:HttpGet("https://raw.githubusercontent.com/GamerEmilianoFF/scripts_v2/main/anti%20stomp",true))()
end
        end)
    end)
    
    Section:NewButton("anti stomp (L)","pc", function(value)
        yes:Play()

notifications:notify {
    Title = "Trip Hub", 
    Description = "by Space#0234",
    Icon = 6031071053, 
    Length = tiempo
}

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
      local tecla = Enum.KeyCode.L
        local lol = game:GetService("UserInputService")
        
        lol.InputBegan:Connect(function(key)
                if key.KeyCode == tecla then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/GamerEmilianoFF/scripts_v2/main/anti%20stomp",true))()

             end
        end)
    end)
    
    Section:NewButton("anti stomp (h)","pc", function(value)
        yes:Play()

notifications:notify {
    Title = "Trip Hub", 
    Description = "by Space#0234",
    Icon = 6031071053, 
    Length = tiempo
}

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
      local tecla = Enum.KeyCode.H
        local lol = game:GetService("UserInputService")
        
        lol.InputBegan:Connect(function(key)
                if key.KeyCode == tecla then
           loadstring(game:HttpGet("https://raw.githubusercontent.com/GamerEmilianoFF/scripts_v2/main/anti%20stomp",true))()

             end
        end)
    end)
    
    Section:NewButton("anti stomp (t)","pc", function(value)
        yes:Play()

notifications:notify {
    Title = "Trip Hub", 
    Description = "by Space#0234",
    Icon = 6031071053, 
    Length = tiempo
}

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
      local tecla = Enum.KeyCode.T
        local lol = game:GetService("UserInputService")
        
        lol.InputBegan:Connect(function(key)
                if key.KeyCode == tecla then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/GamerEmilianoFF/scripts_v2/main/anti%20stomp",true))()

             end
        end)
    end)

Section:NewButton("anti stomp (New) (H)","pc", function(value)
    yes:Play()

notifications:notify {
    Title = "Trip Hub", 
    Description = "by Space#0234",
    Icon = 6031071053, 
    Length = tiempo
}

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
      local tecla = Enum.KeyCode.H
        local lol = game:GetService("UserInputService")
        
        lol.InputBegan:Connect(function(key)
                if key.KeyCode == tecla then
      game.Players.LocalPlayer.Character.Head.Neck:Destroy()
game.Players.LocalPlayer.Character.Head.NeckRigAttachment:Destroy()
             end
        end)
    end)

Section:NewButton("Anti Stomp Button (MOB)", "For Mob", function()
    yes:Play()

notifications:notify {
    Title = "Trip Hub", 
    Description = "by Space#0234",
    Icon = 6031071053, 
    Length = tiempo
}

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/GamerEmilianoFF/scripts/main/anti%20stomp%20button",true))()

end)


local Section = Tab:NewSection("Chat Mods")


Section:NewButton("Chat Spy v1", "v1", function()
    yes:Play()

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    loadstring(game:HttpGet('https://pastebin.com/raw/TBRu2TW5'))()

end)

Section:NewButton("Chat Spy v2", "v2", function()
    yes:Play()

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    loadstring(game:HttpGet('https://pastebin.com/raw/7MYwu6cD'))()

end)

Section:NewToggle("dark chat","enjoy", function(value)

notifications:notify {
    Title = "Trip Hub", 
    Description = "by Space#0234",
    Icon = 6031071053, 
    Length = tiempo
}

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
       game.Players.LocalPlayer.Information.DarkChat.Value = value
    end)

Section:NewButton("Trash Talk Button (MOB)", "For Mob", function()
    yes:Play()

notifications:notify {
    Title = "Trip Hub", 
    Description = "by Space#0234",
    Icon = 6031071053, 
    Length = tiempo
}

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/GamerEmilianoFF/GamerEmilianoFF/main/trash%20gui",true))()

end)


local Section = Tab:NewSection("Jumps Mods")


Section:NewButton("No Limits Jumps ", "Destroy 3 Jumps Limits", function()
    yes:Play()

notifications:notify {
    Title = "Trip Hub", 
    Description = "by Space#0234",
    Icon = 6031071053, 
    Length = tiempo
}

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/GamerEmilianoFF/infinite_jumps/main/Jumps",true))()

end)

Section:NewButton("Inf Jumps (MOB)", "Jump for fly", function()
    yes:Play()

notifications:notify {
    Title = "Trip Hub", 
    Description = "by Space#0234",
    Icon = 6031071053, 
    Length = tiempo
}

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()

    local InfiniteJumpEnabled = true
     
    game:GetService("UserInputService").JumpRequest:connect(function()
     
        if InfiniteJumpEnabled then
     
            game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
     
        end
     
    end)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/GamerEmilianoFF/infinite_jumps/main/Jumps",true))()
end)


Section:NewButton("inf jump (PC)", "you can jump how many times you want", function()
    yes:Play()

notifications:notify {
    Title = "Trip Hub", 
    Description = "by SoftVortex",
    Icon = 6031071053, 
    Length = tiempo
}

local Player = game:GetService'Players'.LocalPlayer;
local UIS = game:GetService'UserInputService';

_G.JumpHeight = 50;

function Action(Object, Function) if Object ~= nil then Function(Object); end end

UIS.InputBegan:connect(function(UserInput)
    if UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.Space then
        Action(Player.Character.Humanoid, function(self)
            if self:GetState() == Enum.HumanoidStateType.Jumping or self:GetState() == Enum.HumanoidStateType.Freefall then
                Action(self.Parent.HumanoidRootPart, function(self)
                    self.Velocity = Vector3.new(0, _G.JumpHeight, 0);
                end)
            end
        end)
    end
end)
end)

local Section = Tab:NewSection("Other Mods")


Section:NewButton("No Shadows", "Removes All Shadows", function()
    yes:Play()

notifications:notify {
    Title = "Trip Hub", 
    Description = "by Space#0234",
    Icon = 6031071053, 
    Length = tiempo
}

game:GetService("Lighting").GlobalShadows = false
game:GetService("Lighting").ShadowSoftness = 0
end)

Section:NewButton("Anti Flashbang", "AntiFlashBang", function()
    yes:Play()

notifications:notify {
    Title = "Trip Hub", 
    Description = "by Space#0234",
    Icon = 6031071053, 
    Length = tiempo
}

		while wait() do
			local XD = game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui
	
			if XD:FindFirstChild("whiteScreen") then
				XD.whiteScreen:Destroy()
			end
			wait(0.2)
		end
end)



Section:NewButton("Spin (F)","pc", function(value)
    yes:Play()

notifications:notify {
    Title = "Trip Hub", 
    Description = "by Space#0234",
    Icon = 6031071053, 
    Length = tiempo
}

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    
local L_165_ = false
	local L_166_ = game:GetService("UserInputService");
	L_166_.InputBegan:Connect(function(L_167_arg0, L_168_arg1)
		if (L_167_arg0.KeyCode == Enum.KeyCode.F and L_168_arg1 == false) then
			if L_165_ == false then
				L_165_ = true
				wait()
				getgenv().urspeed = 20
				local L_169_ = game.Players.LocalPlayer.Character
				while wait() do
					L_169_.HumanoidRootPart.CFrame = L_169_.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(urspeed), 0)
				end
			else
				L_165_ = false
				getgenv().urspeed = 0
			end
		end
	end);
	game:GetService('RunService').Stepped:connect(function()
		if L_165_ == true then
		end
	end)
	game:GetService('RunService').Stepped:connect(function()
		if L_165_ == false then
			stopTracks();
		end
	end)
    end)

	local speed = 20

Section:NewButton("Fly (X)","pc", function(value)
    yes:Play()

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
      --loadstring(game:HttpGet("https://pastebin.com/raw/uxKf9adp",true))()

local plr = game.Players.LocalPlayer
	local mouse = plr:GetMouse()

	localplayer = plr

	if workspace:FindFirstChild("Core") then
		workspace.Core:Destroy()
	end

	local Core = Instance.new("Part")
	Core.Name = "Core"
	Core.Size = Vector3.new(0.05, 0.05, 0.05)

	spawn(function()
		Core.Parent = workspace
		local Weld = Instance.new("Weld", Core)
		Weld.Part0 = Core
		Weld.Part1 = localplayer.Character.LowerTorso
		Weld.C0 = CFrame.new(0, 0, 0)
	end)

	workspace:WaitForChild("Core")

	local torso = workspace.Core
	flying = true
	local keys={a=false,d=false,w=false,s=false} 
	local e1
	local e2
	local function start()
		local pos = Instance.new("BodyPosition",torso)
		local gyro = Instance.new("BodyGyro",torso)
		pos.Name="EPIXPOS"
		pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
		pos.position = torso.Position
		gyro.maxTorque = Vector3.new(9e9, 9e9, 9e9) 
		gyro.cframe = torso.CFrame
		repeat
			wait()
			localplayer.Character.Humanoid.PlatformStand=true
			local new=gyro.cframe - gyro.cframe.p + pos.position
			if not keys.w and not keys.s and not keys.a and not keys.d then
				speed = 20
			end
			if keys.w then 
				new = new + workspace.CurrentCamera.CoordinateFrame.lookVector * speed
				speed=speed+0
			end
			if keys.s then 
				new = new - workspace.CurrentCamera.CoordinateFrame.lookVector * speed
				speed=speed+0
			end
			if keys.d then 
				new = new * CFrame.new(speed,0,0)
				speed=speed+0
			end
			if keys.a then 
				new = new * CFrame.new(-speed,0,0)
				speed=speed+0
			end
			if speed>20 then
				speed=5
			end
			pos.position=new.p
			if keys.w then
				gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(-math.rad(speed*0),0,0)
			elseif keys.s then
				gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(math.rad(speed*0),0,0)
			else
				gyro.cframe = workspace.CurrentCamera.CoordinateFrame
			end
		until flying == false
		if gyro then gyro:Destroy() end
		if pos then pos:Destroy() end
		flying=false
		localplayer.Character.Humanoid.PlatformStand=false
		speed=20
	end
	e1=mouse.KeyDown:connect(function(key)
		if not torso or not torso.Parent then flying=false e1:disconnect() e2:disconnect() return end
		if key=="w" then
			keys.w=true
		elseif key=="s" then
			keys.s=true
		elseif key=="a" then
			keys.a=true
		elseif key=="d" then
			keys.d=true
		elseif key=="x" then
			if flying==true then
				flying=false
			else
				flying=true
				start()
			end
		end
	end)
	e2=mouse.KeyUp:connect(function(key)
		if key=="w" then
			keys.w=false
		elseif key=="s" then
			keys.s=false
		elseif key=="a" then
			keys.a=false
		elseif key=="d" then
			keys.d=false
		end
	end)
	start()

    end)

    
Section:NewSlider("Speed Fly Slider", "Speed Slider", 100, 0, function(value) 

speed = value

end)






Section:NewButton("No-Clip Toggle", "No-Clip", function()
    yes:Play()

notifications:notify {
    Title = "Trip Hub", 
    Description = "PATCHED :(",
    Icon = 6031071053, 
    Length = tiempo
}

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/GamerEmilianoFF/scripts/main/noclip", true))()

end)

Section:NewButton("Kick Me Button", "Kick me", function()
    yes:Play()

notifications:notify {
    Title = "Trip Hub", 
    Description = "by Space#0234",
    Icon = 6031071053, 
    Length = tiempo
}

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    loadstring(game:HttpGet("https://pastebin.com/raw/x6pKVqxw", true))()

end)



Section:NewButton("No Fog", "No Fog", function()
    yes:Play()

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    loadstring(game:HttpGet("https://pastebin.com/raw/06iG6YkU", true))()

end)

local Section = Tab:NewSection("Mods dhm")

Section:NewSlider("kill streak","good" ,0,99999,function(value)
    game.Players.LocalPlayer.Information.Streaks.Value = value
   end)


Section:NewButton("inf zoom", "inf zoom", function()
    yes:Play()

notifications:notify {
    Title = "Trip Hub", 
    Description = "by Space#0234",
    Icon = 6031071053, 
    Length = tiempo
}

game:GetService("Players").LocalPlayer.CameraMaxZoomDistance = math.huge
     game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Aim.Top.Visible = false
     game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Aim.Right.Visible = false
     game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Aim.Left.Visible = false
     game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Aim.Bottom.Visible = false 
end)


Section:NewToggle("Auto Stomp", "AutoStomp", function(value)

notifications:notify {
    Title = "Trip Hub", 
    Description = "by SoftVortex",
    Icon = 6031071053, 
    Length = tiempo
}

_G.stompem = value
        while _G.stompem do
      wait(0.01)
        game.ReplicatedStorage.MainRemote:FireServer("Stomp")
end

end)

Section:NewSlider("anti-slow Speed", "First select the speed", 50, 5, function(value)
spids = value
end)

   Section:NewButton("anti slow","anti slow no perm", function(value)
        yes:Play()

notifications:notify {
    Title = "Trip Hub", 
    Description = "by Oblivion",
    Icon = 6031071053, 
    Length = tiempo
}

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
       --anti slow
    local a={}local b={}local c={}local d={}local e={}local f={}local function g()local h=3;local i=checkcaller;local j=getrawmetatable(game)setreadonly(j,false)local k=j.__index;local l=j.__newindex;local m=j.__namecall;j.__index=newcclosure(function(n,o)if i()then return k(n,o)end;if a[n]and a[n][o]then local p=a[n][o]if p["IsCallback"]==true then return p["Value"](n)else return p["Value"]end end;if c[o]then local q=c[o]if q["IsCallback"]==true then return q["Value"](n)else return q["Value"]end end;if e[n]and e[n][o]then return f[n][o]end;return k(n,o)end)j.__newindex=newcclosure(function(r,s,t)if i()then return l(r,s,t)end;if b[r]and b[r][s]then local u=b[r][s]if u["Callback"]==nil then return else u["Callback"](r,t)return end end;if d[s]then local v=d[s]if v["Callback"]==nil then return else v["Callback"](r,t)return end end;if e[r]and e[r][s]then local w=e[r][s]if type(t)~=w["Type"]then error("bad argument #3 to '"..s.."' ("..w["Type"].." expected, got "..type(s)..")")end;f[r][s]=t;return end;return l(r,s,t)end)local x = game.Players.LocalPlayer.Character.Humanoid;local function v(y)local z=k(x,y)local A=type(z)if not e[x]then e[x]={}end;if not f[x]then f[x]={}end;e[x][y]={Type=A}f[x][y]=k(x,y)local B=function()e[x][y]=nil;f[x][y]=nil end;return{remove=B,Remove=B}end;v("WalkSpeed")v("JumpPower")end;g()game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = spids ;game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50;wait()
    end)







Section:NewButton("Spam Report Player", "(FE)", function()
    yes:Play()

notifications:notify {
    Title = "Trip Hub", 
    Description = "auto report player (FE)",
    Icon = 6031071053, 
    Length = tiempo
}

    loadstring(game:HttpGet("https://raw.githubusercontent.com/GamerEmilianoFF/scripts/main/spam%20report.lua",true))()


end)




local Section = Tab:NewSection("Player")


Section:NewButton("Korblox (Right)", "Client", function()

    yes:Play()

notifications:notify {
    Title = "Trip Hub", 
    Description = "only you can see it :(",
    Icon = 6031071053, 
    Length = tiempo
}

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Invooker11/Koblox-and-Headless/main/Right%20Leg",true))()

end)

Section:NewButton("Korblox (Left)", "Client", function()
    yes:Play()

notifications:notify {
    Title = "Trip Hub", 
    Description = "only you can see it :(",
    Icon = 6031071053, 
    Length = tiempo
}

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/GamerEmilianoFF/korblox-left/main/xd",true))()

end)

Section:NewButton("Headless", "Client", function()
    yes:Play()

notifications:notify {
    Title = "Trip Hub", 
    Description = "only you can see it :(",
    Icon = 6031071053, 
    Length = tiempo
}

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Invooker11/Koblox-and-Headless/main/Headless"))()

end)

Section:NewButton("korblox right (FE)","FE", function(value)
    yes:Play()

notifications:notify {
    Title = "Trip Hub", 
    Description = "everyone can see it :D",
    Icon = 6031071053, 
    Length = tiempo
}

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
      game.Players.LocalPlayer.Character.RightUpperLeg:Destroy()
    end)

    Section:NewButton("Headless (FE) (BUGGY)","FE", function(value)
        yes:Play()

notifications:notify {
    Title = "Trip Hub", 
    Description = "everyone can see it :D",
    Icon = 6031071053, 
    Length = tiempo
}


        loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
        pcall(function()
            game.Players.LocalPlayer.Character.Head.Neck:Destroy()
            game.Players.LocalPlayer.Character.UpperTorso.NeckAttachment:Destroy()
            game.Players.LocalPlayer.Character.Humanoid.HealthDisplayDistance = math.huge
            game.Players.LocalPlayer.Character.Humanoid.NameDisplayDistance = math.huge
            game.Players.LocalPlayer.Character.Head.Size = Vector3.new(0,0,0)
            game.Players.LocalPlayer.Character.Head.Massless = true
            game.Players.LocalPlayer.Character.Head.CanCollide = false
    
            heazd = true
    
            while heazd == true do 
                pcall(function()  
                    game.Players.LocalPlayer.Character.Head.NeckRigAttachment.CFrame =  CFrame.new(0, 100000.4736328125, 0)
                    game.Players.LocalPlayer.Character.UpperTorso.NeckRigAttachment.CFrame =  CFrame.new(0, 100000.4736328125, 0)
                    game.Players.LocalPlayer.Character.Head.CFrame = CFrame.new(0, 100000.4736328125, 0)
                end)
                wait()
            end
        end)
        end)


  Section:NewButton("Headless (FE) (FIXED)","FE", function(value)
    yes:Play()

notifications:notify {
    Title = "Trip Hub", 
    Description = "everyone can see it :D",
    Icon = 6031071053, 
    Length = tiempo
}

        loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
          	local plr = game.Players.LocalPlayer
	plr.Character.Head:BreakJoints()
	plr.Character.Head.Position = Vector3.new(0, 999999999999, 0)
        end)



local Tab = Window:NewTab("Teleport")
--42 buttons

local Section = Tab:NewSection("Important weapones")


Section:NewButton("[Revolver] - $1600", "[Revolver] - $1600", function()
    yes:Play()

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    local new = game:GetService("Workspace").Ignored.Shop.Guns["[Revolver] - $1600"].Head.CFrame

    local ts = game:GetService("TweenService")
    local char = game.Players.LocalPlayer.Character
    
    local part = char.HumanoidRootPart
    local ti = TweenInfo.new(8, Enum.EasingStyle.Linear)
    local tp = {CFrame = new}
    ts:Create(part, ti, tp):Play()
end)

Section:NewButton("[Double Barrel SG] - $800", "[Double Barrel SG] - $800", function()
    yes:Play()

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    local new = game:GetService("Workspace").Ignored.Shop.Guns["[Double Barrel SG] - $800"].Head.CFrame

    local ts = game:GetService("TweenService")
    local char = game.Players.LocalPlayer.Character
    
    local part = char.HumanoidRootPart
    local ti = TweenInfo.new(8, Enum.EasingStyle.Linear)
    local tp = {CFrame = new}
    ts:Create(part, ti, tp):Play()
end)

Section:NewButton("[Shotgun] - $1250", "[Shotgun] - $1250", function()
    yes:Play()

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    local new = game:GetService("Workspace").Ignored.Shop.Guns["[Shotgun] - $1250"].Head.CFrame

    local ts = game:GetService("TweenService")
    local char = game.Players.LocalPlayer.Character
    
    local part = char.HumanoidRootPart
    local ti = TweenInfo.new(9, Enum.EasingStyle.Linear)
    local tp = {CFrame = new}
    ts:Create(part, ti, tp):Play()
end)

Section:NewButton("[Grenade Launcher] - $10000", "[Grenade Launcher] - $10000", function()
    yes:Play()

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    local new = game:GetService("Workspace").Ignored.Shop.Guns["[Grenade Launcher] - $10000"].Head.CFrame

    local ts = game:GetService("TweenService")
    local char = game.Players.LocalPlayer.Character
    
    local part = char.HumanoidRootPart
    local ti = TweenInfo.new(9, Enum.EasingStyle.Linear)
    local tp = {CFrame = new}
    ts:Create(part, ti, tp):Play()
end)

Section:NewButton("[Golden AK-47] - $5250", "[Golden AK-47] - $5250", function()
    yes:Play()

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    local new = game:GetService("Workspace").Ignored.Shop.Guns["[Golden AK-47] - $5250"].Head.CFrame

    local ts = game:GetService("TweenService")
    local char = game.Players.LocalPlayer.Character
    
    local part = char.HumanoidRootPart
    local ti = TweenInfo.new(9, Enum.EasingStyle.Linear)
    local tp = {CFrame = new}
    ts:Create(part, ti, tp):Play()
end)

local Section = Tab:NewSection("All Weapones")


Section:NewButton("[Railgun] - $4450", "[Railgun] - $4450", function()
    yes:Play()

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    local new = game:GetService("Workspace").Ignored.Shop.Guns["[Railgun] - $4450"].Head.CFrame

    local ts = game:GetService("TweenService")
    local char = game.Players.LocalPlayer.Character
    
    local part = char.HumanoidRootPart
    local ti = TweenInfo.new(9, Enum.EasingStyle.Linear)
    local tp = {CFrame = new}
    ts:Create(part, ti, tp):Play()
end)

Section:NewButton("[AR] - $1350", "[AR] - $1350", function()
    yes:Play()

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    local new = game:GetService("Workspace").Ignored.Shop.Guns["[AR] - $1350"].Head.CFrame

    local ts = game:GetService("TweenService")
    local char = game.Players.LocalPlayer.Character
    
    local part = char.HumanoidRootPart
    local ti = TweenInfo.new(9, Enum.EasingStyle.Linear)
    local tp = {CFrame = new}
    ts:Create(part, ti, tp):Play()
end)

Section:NewButton("[AUG] - $1550", "[AUG] - $1550", function()
    yes:Play()

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    local new = game:GetService("Workspace").Ignored.Shop.Guns["[AUG] - $1550"].Head.CFrame

    local ts = game:GetService("TweenService")
    local char = game.Players.LocalPlayer.Character
    
    local part = char.HumanoidRootPart
    local ti = TweenInfo.new(9, Enum.EasingStyle.Linear)
    local tp = {CFrame = new}
    ts:Create(part, ti, tp):Play()
end)

Section:NewButton("[Deagle] - $750", "[Deagle] - $750", function()
    yes:Play()

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    local new = game:GetService("Workspace").Ignored.Shop.Guns["[Deagle] - $750"].Head.CFrame

    local ts = game:GetService("TweenService")
    local char = game.Players.LocalPlayer.Character
    
    local part = char.HumanoidRootPart
    local ti = TweenInfo.new(9, Enum.EasingStyle.Linear)
    local tp = {CFrame = new}
    ts:Create(part, ti, tp):Play()
end)

Section:NewButton("[Double Barrel SG] - $800", "[Double Barrel SG] - $800", function()
    yes:Play()

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    local new = game:GetService("Workspace").Ignored.Shop.Guns["[Double Barrel SG] - $800"].Head.CFrame

    local ts = game:GetService("TweenService")
    local char = game.Players.LocalPlayer.Character
    
    local part = char.HumanoidRootPart
    local ti = TweenInfo.new(9, Enum.EasingStyle.Linear)
    local tp = {CFrame = new}
    ts:Create(part, ti, tp):Play()
end)

Section:NewButton("[DrumGun] - $1350", "[DrumGun] - $1350", function()
    yes:Play()

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    local new = game:GetService("Workspace").Ignored.Shop.Guns["[DrumGun] - $1350"].Head.CFrame

    local ts = game:GetService("TweenService")
    local char = game.Players.LocalPlayer.Character
    
    local part = char.HumanoidRootPart
    local ti = TweenInfo.new(9, Enum.EasingStyle.Linear)
    local tp = {CFrame = new}
    ts:Create(part, ti, tp):Play()
end)

Section:NewButton("[Flamethrower] - $7550", "[Flamethrower] - $7550", function()
    yes:Play()

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    local new = game:GetService("Workspace").Ignored.Shop.Guns["[Flamethrower] - $7550"].Head.CFrame

    local ts = game:GetService("TweenService")
    local char = game.Players.LocalPlayer.Character
    
    local part = char.HumanoidRootPart
    local ti = TweenInfo.new(9, Enum.EasingStyle.Linear)
    local tp = {CFrame = new}
    ts:Create(part, ti, tp):Play()
end)

Section:NewButton("[Vector] - $1550", "[Vector] - $1550", function()
    yes:Play()

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    local new = game:GetService("Workspace").Ignored.Shop.Guns["[Vector] - $1550"].Head.CFrame

    local ts = game:GetService("TweenService")
    local char = game.Players.LocalPlayer.Character
    
    local part = char.HumanoidRootPart
    local ti = TweenInfo.new(9, Enum.EasingStyle.Linear)
    local tp = {CFrame = new}
    ts:Create(part, ti, tp):Play()
end)

Section:NewButton("[Golden AK-47] - $5250", "[Golden AK-47] - $5250", function()
    yes:Play()

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    local new = game:GetService("Workspace").Ignored.Shop.Guns["[Golden AK-47] - $5250"].Head.CFrame

    local ts = game:GetService("TweenService")
    local char = game.Players.LocalPlayer.Character
    
    local part = char.HumanoidRootPart
    local ti = TweenInfo.new(9, Enum.EasingStyle.Linear)
    local tp = {CFrame = new}
    ts:Create(part, ti, tp):Play()
end)

Section:NewButton("[LMG] - $4250", "[LMG] - $4250", function()
    yes:Play()

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    local new = game:GetService("Workspace").Ignored.Shop.Guns["[LMG] - $4250"].Head.CFrame

    local ts = game:GetService("TweenService")
    local char = game.Players.LocalPlayer.Character
    
    local part = char.HumanoidRootPart
    local ti = TweenInfo.new(9, Enum.EasingStyle.Linear)
    local tp = {CFrame = new}
    ts:Create(part, ti, tp):Play()
end)

Section:NewButton("[P90] - $1000", "[P90] - $1000", function()
    yes:Play()

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    local new = game:GetService("Workspace").Ignored.Shop.Guns["[P90] - $1000"].Head.CFrame

    local ts = game:GetService("TweenService")
    local char = game.Players.LocalPlayer.Character
    
    local part = char.HumanoidRootPart
    local ti = TweenInfo.new(9, Enum.EasingStyle.Linear)
    local tp = {CFrame = new}
    ts:Create(part, ti, tp):Play()
end)

Section:NewButton("[PlasmaRifle] - $12500", "[PlasmaRifle] - $12500", function()
    yes:Play()

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    local new = game:GetService("Workspace").Ignored.Shop.Guns["[PlasmaRifle] - $12500"].Head.CFrame

    local ts = game:GetService("TweenService")
    local char = game.Players.LocalPlayer.Character
    
    local part = char.HumanoidRootPart
    local ti = TweenInfo.new(9, Enum.EasingStyle.Linear)
    local tp = {CFrame = new}
    ts:Create(part, ti, tp):Play()
end)

Section:NewButton("[RPG] - $6000", "[RPG] - $6000", function()
    yes:Play()

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    local new = game:GetService("Workspace").Ignored.Shop.Guns["[RPG] - $6000"].Head.CFrame

    local ts = game:GetService("TweenService")
    local char = game.Players.LocalPlayer.Character
    
    local part = char.HumanoidRootPart
    local ti = TweenInfo.new(9, Enum.EasingStyle.Linear)
    local tp = {CFrame = new}
    ts:Create(part, ti, tp):Play()
end)

Section:NewButton("[Homing Launcher] - $12000", "[Homing Launcher] - $12000", function()
    yes:Play()

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    local new = game:GetService("Workspace").Ignored.Shop.Guns["[Homing Launcher] - $12000"].Head.CFrame

    local ts = game:GetService("TweenService")
    local char = game.Players.LocalPlayer.Character
    
    local part = char.HumanoidRootPart
    local ti = TweenInfo.new(9, Enum.EasingStyle.Linear)
    local tp = {CFrame = new}
    ts:Create(part, ti, tp):Play()
end)

Section:NewButton("[Revolver] - $1600", "[Revolver] - $1600", function()
    yes:Play()

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    local new = game:GetService("Workspace").Ignored.Shop.Guns["[Revolver] - $1600"].Head.CFrame

    local ts = game:GetService("TweenService")
    local char = game.Players.LocalPlayer.Character
    
    local part = char.HumanoidRootPart
    local ti = TweenInfo.new(9, Enum.EasingStyle.Linear)
    local tp = {CFrame = new}
    ts:Create(part, ti, tp):Play()
end)

Section:NewButton("[Shotgun] - $1250", "[Shotgun] - $1250", function()
    yes:Play()

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    local new = game:GetService("Workspace").Ignored.Shop.Guns["[Shotgun] - $1250"].Head.CFrame

    local ts = game:GetService("TweenService")
    local char = game.Players.LocalPlayer.Character
    
    local part = char.HumanoidRootPart
    local ti = TweenInfo.new(9, Enum.EasingStyle.Linear)
    local tp = {CFrame = new}
    ts:Create(part, ti, tp):Play()
end)

Section:NewButton("[SilencerAR] - $1550", "[SilencerAR] - $1550", function()
    yes:Play()

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    local new = game:GetService("Workspace").Ignored.Shop.Guns["[SilencerAR] - $1550"].Head.CFrame

    local ts = game:GetService("TweenService")
    local char = game.Players.LocalPlayer.Character
    
    local part = char.HumanoidRootPart
    local ti = TweenInfo.new(9, Enum.EasingStyle.Linear)
    local tp = {CFrame = new}
    ts:Create(part, ti, tp):Play()
end)

Section:NewButton("[Silencer] - $550", "[Silencer] - $550", function()
    yes:Play()

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    local new = game:GetService("Workspace").Ignored.Shop.Guns["[Silencer] - $550"].Head.CFrame

    local ts = game:GetService("TweenService")
    local char = game.Players.LocalPlayer.Character
    
    local part = char.HumanoidRootPart
    local ti = TweenInfo.new(9, Enum.EasingStyle.Linear)
    local tp = {CFrame = new}
    ts:Create(part, ti, tp):Play()
end)

Section:NewButton("[Sniper] - $2000", "[Sniper] - $2000", function()
    yes:Play()

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    local new = game:GetService("Workspace").Ignored.Shop.Guns["[Sniper] - $2000"].Head.CFrame

    local ts = game:GetService("TweenService")
    local char = game.Players.LocalPlayer.Character
    
    local part = char.HumanoidRootPart
    local ti = TweenInfo.new(9, Enum.EasingStyle.Linear)
    local tp = {CFrame = new}
    ts:Create(part, ti, tp):Play()
end)

Section:NewButton("[TacticalShotgun] - $1550", "[TacticalShotgun] - $1550", function()
    yes:Play()

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    local new = game:GetService("Workspace").Ignored.Shop.Guns["[TacticalShotgun] - $1550"].Head.CFrame

    local ts = game:GetService("TweenService")
    local char = game.Players.LocalPlayer.Character
    
    local part = char.HumanoidRootPart
    local ti = TweenInfo.new(9, Enum.EasingStyle.Linear)
    local tp = {CFrame = new}
    ts:Create(part, ti, tp):Play()
end)

Section:NewButton("[UMP] - $1100", "[UMP] - $1100", function()
    yes:Play()

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    local new = game:GetService("Workspace").Ignored.Shop.Guns["[UMP] - $1100"].Head.CFrame

    local ts = game:GetService("TweenService")
    local char = game.Players.LocalPlayer.Character
    
    local part = char.HumanoidRootPart
    local ti = TweenInfo.new(9, Enum.EasingStyle.Linear)
    local tp = {CFrame = new}
    ts:Create(part, ti, tp):Play()
end)

Section:NewButton("[AK-47] - $2250", "[AK-47] - $2250", function()
    yes:Play()

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    local new = game:GetService("Workspace").Ignored.Shop.Guns["[AK-47] - $2250"].Head.CFrame

    local ts = game:GetService("TweenService")
    local char = game.Players.LocalPlayer.Character
    
    local part = char.HumanoidRootPart
    local ti = TweenInfo.new(9, Enum.EasingStyle.Linear)
    local tp = {CFrame = new}
    ts:Create(part, ti, tp):Play()
end)

Section:NewButton("[Grenade Launcher] - $10000", "[Grenade Launcher] - $10000", function()
    yes:Play()

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    local new = game:GetService("Workspace").Ignored.Shop.Guns["[Grenade Launcher] - $10000"].Head.CFrame

    local ts = game:GetService("TweenService")
    local char = game.Players.LocalPlayer.Character
    
    local part = char.HumanoidRootPart
    local ti = TweenInfo.new(9, Enum.EasingStyle.Linear)
    local tp = {CFrame = new}
    ts:Create(part, ti, tp):Play()
end)

Section:NewButton("[AA12] - $2650", "[AA12] - $2650", function()
    yes:Play()

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    local new = game:GetService("Workspace").Ignored.Shop.Guns["[AA12] - $2650"].Head.CFrame

    local ts = game:GetService("TweenService")
    local char = game.Players.LocalPlayer.Character
    
    local part = char.HumanoidRootPart
    local ti = TweenInfo.new(9, Enum.EasingStyle.Linear)
    local tp = {CFrame = new}
    ts:Create(part, ti, tp):Play()
end)

Section:NewButton("[XM8] - $5550", "[XM8] - $5550", function()
    yes:Play()

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    local new = game:GetService("Workspace").Ignored.Shop.Guns["[XM8] - $5550"].Head.CFrame

    local ts = game:GetService("TweenService")
    local char = game.Players.LocalPlayer.Character
    
    local part = char.HumanoidRootPart
    local ti = TweenInfo.new(9, Enum.EasingStyle.Linear)
    local tp = {CFrame = new}
    ts:Create(part, ti, tp):Play()
end)

Section:NewButton("[SMG] - $700", "[SMG] - $700", function()
    yes:Play()

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    local new = game:GetService("Workspace").Ignored.Shop.Guns["[SMG] - $700"].Head.CFrame

    local ts = game:GetService("TweenService")
    local char = game.Players.LocalPlayer.Character
    
    local part = char.HumanoidRootPart
    local ti = TweenInfo.new(9, Enum.EasingStyle.Linear)
    local tp = {CFrame = new}
    ts:Create(part, ti, tp):Play()
end)

Section:NewButton("[HMinigun] - $68500", "[HMinigun] - $68500", function()
    yes:Play()

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    local new = game:GetService("Workspace").Ignored.Shop.Guns["[HMinigun] - $68500"].Head.CFrame

    local ts = game:GetService("TweenService")
    local char = game.Players.LocalPlayer.Character
    
    local part = char.HumanoidRootPart
    local ti = TweenInfo.new(9, Enum.EasingStyle.Linear)
    local tp = {CFrame = new}
    ts:Create(part, ti, tp):Play()
end)

Section:NewButton("[R8] - $2800", "[R8] - $2800", function()
    yes:Play()

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    local new = game:GetService("Workspace").Ignored.Shop.Guns["[R8] - $2800"].Head.CFrame

    local ts = game:GetService("TweenService")
    local char = game.Players.LocalPlayer.Character
    
    local part = char.HumanoidRootPart
    local ti = TweenInfo.new(9, Enum.EasingStyle.Linear)
    local tp = {CFrame = new}
    ts:Create(part, ti, tp):Play()
end)

Section:NewButton("[Famas] - $3800", "[Famas] - $3800", function()
    yes:Play()

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    local new = game:GetService("Workspace").Ignored.Shop.Guns["[Famas] - $3800"].Head.CFrame

    local ts = game:GetService("TweenService")
    local char = game.Players.LocalPlayer.Character
    
    local part = char.HumanoidRootPart
    local ti = TweenInfo.new(9, Enum.EasingStyle.Linear)
    local tp = {CFrame = new}
    ts:Create(part, ti, tp):Play()
end)

Section:NewButton("[SCAR-H] - $2850", "[SCAR-H] - $2850", function()
    yes:Play()

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    local new = game:GetService("Workspace").Ignored.Shop.Guns["[SCAR-H] - $2850"].Head.CFrame

    local ts = game:GetService("TweenService")
    local char = game.Players.LocalPlayer.Character
    
    local part = char.HumanoidRootPart
    local ti = TweenInfo.new(9, Enum.EasingStyle.Linear)
    local tp = {CFrame = new}
    ts:Create(part, ti, tp):Play()
end)

Section:NewButton("[Ray Gun] - $9500", "[Ray Gun] - $9500", function()
    yes:Play()

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    local new = game:GetService("Workspace").Ignored.Shop.Guns["[Ray Gun] - $9500"].Head.CFrame

    local ts = game:GetService("TweenService")
    local char = game.Players.LocalPlayer.Character
    
    local part = char.HumanoidRootPart
    local ti = TweenInfo.new(9, Enum.EasingStyle.Linear)
    local tp = {CFrame = new}
    ts:Create(part, ti, tp):Play()
end)

Section:NewButton("[Glock] - $350", "[Glock] - $350", function()
    yes:Play()

    local new = game:GetService("Workspace").Ignored.Shop.Guns["[Glock] - $350"].Head.CFrame

    local ts = game:GetService("TweenService")
    local char = game.Players.LocalPlayer.Character
    
    local part = char.HumanoidRootPart
    local ti = TweenInfo.new(9, Enum.EasingStyle.Linear)
    local tp = {CFrame = new}
    ts:Create(part, ti, tp):Play()
end)

Section:NewButton("[LMinigun] - $100000", "[LMinigun] - $100000", function()
    yes:Play()

    local new = game:GetService("Workspace").Ignored.Shop.Guns["[LMinigun] - $100000"].Head.CFrame

    local ts = game:GetService("TweenService")
    local char = game.Players.LocalPlayer.Character
    
    local part = char.HumanoidRootPart
    local ti = TweenInfo.new(9, Enum.EasingStyle.Linear)
    local tp = {CFrame = new}
    ts:Create(part, ti, tp):Play()
end)

Section:NewButton("[Tec-9] - $1575", "[Tec-9] - $1575", function()
    yes:Play()

    local new = game:GetService("Workspace").Ignored.Shop.Guns["[Tec-9] - $1575"].Head.CFrame

    local ts = game:GetService("TweenService")
    local char = game.Players.LocalPlayer.Character
    
    local part = char.HumanoidRootPart
    local ti = TweenInfo.new(9, Enum.EasingStyle.Linear)
    local tp = {CFrame = new}
    ts:Create(part, ti, tp):Play()
end)

Section:NewButton("[Akimbo SMG] - $2675", "[Akimbo SMG] - $2675", function()
    yes:Play()

    local new = game:GetService("Workspace").Ignored.Shop.Guns["[Akimbo SMG] - $2675"].Head.CFrame

    local ts = game:GetService("TweenService")
    local char = game.Players.LocalPlayer.Character
    
    local part = char.HumanoidRootPart
    local ti = TweenInfo.new(9, Enum.EasingStyle.Linear)
    local tp = {CFrame = new}
    ts:Create(part, ti, tp):Play()
    
end)

local Section = Tab:NewSection("Armor")

Section:NewButton("[High-Medium Armor] - $550", "[High-Medium Armor] - $550", function()
    yes:Play()

    local new = game:GetService("Workspace").Ignored.Shop.Armor["[High-Medium Armor] - $550"].Head.CFrame

    local ts = game:GetService("TweenService")
    local char = game.Players.LocalPlayer.Character
    
    local part = char.HumanoidRootPart
    local ti = TweenInfo.new(9, Enum.EasingStyle.Linear)
    local tp = {CFrame = new}
    ts:Create(part, ti, tp):Play()
end)

Section:NewButton("[High Armor] - $550", "[High Armor] - $550", function()
    yes:Play()

    local new = game:GetService("Workspace").Ignored.Shop.Armor["[High Armor] - $550"].Head.CFrame

    local ts = game:GetService("TweenService")
    local char = game.Players.LocalPlayer.Character
    
    local part = char.HumanoidRootPart
    local ti = TweenInfo.new(9, Enum.EasingStyle.Linear)
    local tp = {CFrame = new}
    ts:Create(part, ti, tp):Play()
end)






local Tab = Window:NewTab("Cursor custom")
local Section = Tab:NewSection("Cursors")


Section:NewButton("Cursor Red Circle", "Cursor Red Circle", function()
    yes:Play()

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    local IAPortable = Instance.new("ScreenGui")
    local Cursor = Instance.new("ImageLabel")
    local Hitmarker = Instance.new("ImageLabel")
    IAPortable.Name = "IAPortable"
    IAPortable.Parent = game:GetService('CoreGui')
    IAPortable.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    Cursor.Name = "Cursor"
    Cursor.Parent = IAPortable
    Cursor.AnchorPoint = Vector2.new(0.5, 0.5)
    Cursor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Cursor.BackgroundTransparency = 20.000
    Cursor.Size = UDim2.new(0, 150, 0, 350)
    Cursor.Image = "rbxassetid://973823018"
    Cursor.ScaleType = Enum.ScaleType.Fit
    Cursor.Position = UDim2.new(0.5, 0, 0.46, 0)

    notifications:notify {
        Title = "Trip Hub", 
        Description = "by Space#0234",
        Icon = 6031071053, 
        Length = tiempo
    }

end)

Section:NewButton("Cursor White (+)", "(+)", function()
    yes:Play()

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    local IAPortable = Instance.new("ScreenGui")
    local Cursor = Instance.new("ImageLabel")
    local Hitmarker = Instance.new("ImageLabel")
    IAPortable.Name = "IAPortable"
    IAPortable.Parent = game:GetService('CoreGui')
    IAPortable.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    Cursor.Name = "Cursor"
    Cursor.Parent = IAPortable
    Cursor.AnchorPoint = Vector2.new(0.5, 0.5)
    Cursor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Cursor.BackgroundTransparency = 20.000
    Cursor.Size = UDim2.new(0, 70, 0, 25)
    Cursor.Image = "rbxassetid://3874001308"
    Cursor.ScaleType = Enum.ScaleType.Fit
    Cursor.Position = UDim2.new(0.5, 0, 0.5, 0)

    notifications:notify {
        Title = "Trip Hub", 
        Description = "by Space#0234",
        Icon = 6031071053, 
        Length = tiempo
    }

end)

Section:NewButton("Cursor white Circle", "Circle", function()
    yes:Play()

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    local IAPortable = Instance.new("ScreenGui")
    local Cursor = Instance.new("ImageLabel")
    local Hitmarker = Instance.new("ImageLabel")
    IAPortable.Name = "IAPortable"
    IAPortable.Parent = game:GetService('CoreGui')
    IAPortable.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    Cursor.Name = "Cursor"
    Cursor.Parent = IAPortable
    Cursor.AnchorPoint = Vector2.new(0.5, 0.5)
    Cursor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Cursor.BackgroundTransparency = 1.000
    Cursor.Size = UDim2.new(0, 400, 0, 300)
    Cursor.Image = "rbxassetid://3355815697"
    Cursor.ScaleType = Enum.ScaleType.Fit
    Cursor.Position = UDim2.new(0.5, 0, 0.5, 0)

    notifications:notify {
        Title = "Trip Hub", 
        Description = "by Space#0234",
        Icon = 6031071053, 
        Length = tiempo
    }

end)


Section:NewButton("Cursor Changer", "Cursor Changer", function()
    yes:Play()

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()

    loadstring(game:HttpGet("https://raw.githubusercontent.com/GamerEmilianoFF/cursors/main/Cursor%20Changer",true))()
 notifications:notify {
        Title = "Trip Hub", 
        Description = "by Space#0234 and _-_-_-_-_-_-_-_-_-_-_-_-_#4562",
        Icon = 6031071053, 
        Length = tiempo
    }

end)

Section:NewLabel("Destroy Cursor")


Section:NewButton("Destroy", "Destroy", function()
    no:Play()

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    game.CoreGui.IAPortable:Destroy()
    game.CoreGui.IAPortable:Destroy()
    game.CoreGui.IAPortable:Destroy()
    game.CoreGui.IAPortable:Destroy()
    game.CoreGui.IAPortable:Destroy()
    game.CoreGui.IAPortable:Destroy()
    game.CoreGui.IAPortable:Destroy()
    game.CoreGui.IAPortable:Destroy()
    game.CoreGui.IAPortable:Destroy()
    game.CoreGui.IAPortable:Destroy()
    game.CoreGui.IAPortable:Destroy()
    game.CoreGui.IAPortable:Destroy()
end)





local Tab = Window:NewTab("Fov")
local Section = Tab:NewSection("Fov")

Section:NewButton("fov 70", "70", function()
    yes:Play()

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    local FOV = 70
    game.Workspace.Camera.FieldOfView = FOV
end)

Section:NewButton("fov 80", "80", function()
    yes:Play()

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    local FOV = 80
    game.Workspace.Camera.FieldOfView = FOV
end)

Section:NewButton("fov 90", "90", function()
    yes:Play()

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    local FOV = 90
    game.Workspace.Camera.FieldOfView = FOV
end)

Section:NewButton("fov 100", "100", function()
    yes:Play()

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    local FOV = 100
    game.Workspace.Camera.FieldOfView = FOV
end)

Section:NewButton("fov 110", "110", function()
    yes:Play()

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    local FOV = 110
    game.Workspace.Camera.FieldOfView = FOV
end)

Section:NewButton("fov 120", "120", function()
    yes:Play()

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    local FOV = 120
    game.Workspace.Camera.FieldOfView = FOV
end)

Section:NewButton("Fov Changer", "changer", function()
    yes:Play()

notifications:notify {
    Title = "Trip Hub", 
    Description = "cum",
    Icon = 6031071053, 
    Length = tiempo
}

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    loadstring(game:HttpGet("https://pastebin.com/raw/wC4V0q1S", true))()

end)



local Tab = Window:NewTab("Esp")
local Section = Tab:NewSection("Esp")

Section:NewButton("UNIX Esp ", "UNIX Esp", function()
    yes:Play()

notifications:notify {
    Title = "Trip Hub", 
    Description = "BY IDK",
    Icon = 6031071053, 
    Length = tiempo
}

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    spawn(loadstring(game:HttpGet("https://pastebin.com/raw/zKjj0TQD", true)))();

end)

Section:NewToggle("Esp Box and Name", "Esp Box and Name", function(value)
    yes:Play()

notifications:notify {
    Title = "Trip Hub", 
    Description = "BY IDK",
    Icon = 6031071053, 
    Length = tiempo
}

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    local ESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kiriot22/ESP-Lib/main/ESP.lua"))()
    ESP:Toggle(value)
end)

Section:NewButton("Esp V2 (Pc)", "For PC", function()
    yes:Play()

notifications:notify {
    Title = "Trip Hub", 
    Description = "BY IDK",
    Icon = 6031071053, 
    Length = tiempo
}

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnamedESP.lua"))()

end)

Section:NewButton("fates esp and aimlock","PC/MOB", function(value)
    yes:Play()

notifications:notify {
    Title = "Trip Hub", 
    Description = "BY IDK",
    Icon = 6031071053, 
    Length = tiempo
}

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/fatesc/fates-esp/main/main.lua"))()
    end)

Section:NewButton("Bliss Hit Box (PC)", "For PC", function()
    yes:Play()

notifications:notify {
    Title = "Trip Hub", 
    Description = "BY IDK",
    Icon = 6031071053, 
    Length = tiempo
}

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Cornyllius/ESPs/main/BlissESP.lua", true))()

end)

Section:NewButton("Owl Hub", "Owl Hub", function()
    yes:Play()

notifications:notify {
    Title = "Trip Hub", 
    Description = "BY IDK",
    Icon = 6031071053, 
    Length = tiempo
}

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    local t = {}
    setmetatable(t, {
    __index = function(t, k)
        return function() end
    end
    })
    getgenv().Input = t
     
    local funcs = {"writefile", "readfile", "appendfile"}
    for i,v in pairs(funcs) do
    getgenv()[v] = function() end
    end
     
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"))();
end)

Section:NewButton("View Player", "View Player", function()
    yes:Play()

notifications:notify {
    Title = "Trip Hub", 
    Description = "BY Space#0234",
    Icon = 6031071053, 
    Length = tiempo
}

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/GamerEmilianoFF/scripts/main/view%20scripts"))()

end)



local Section = Tab:NewSection("Esp Fill")


Section:NewToggle("Esp fill", "esp fill", function(state)
    if state then
getgenv().enabled = true --Toggle on/off
getgenv().filluseteamcolor = false --Toggle fill color using player team color on/off
getgenv().outlineuseteamcolor = false --Toggle outline color using player team color on/off
getgenv().fillcolor = Color3.new(0, 0, 0) --Change fill color, no need to edit if using team color
getgenv().outlinecolor = Color3.new(1, 1, 1) --Change outline color, no need to edit if using team color
getgenv().filltrans = 5 --Change fill transparency
getgenv().outlinetrans = 0 
 
loadstring(game:HttpGet("https://raw.githubusercontent.com/GamerEmilianoFF/esp/main/esp.lua"))()
    else
getgenv().enabled = false 

     end
end)



Section:NewColorPicker("Esp fill Color", "esp fill", Color3.fromRGB(1,1,1), function(cpp)

getgenv().outlinecolor = cpp


end)




local Tab = Window:NewTab("Locks")
local Section = Tab:NewSection("Aim lock")

Section:NewButton("Aim Ware", "Aim ware", function()
    yes:Play()

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Hyotinhofofinho/s1mple/main/LIXO"))()

end)

Section:NewButton("The Ware", "The ware", function()
    yes:Play()

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/carlcoded/Scripts/main/carltw'))()

end)

Section:NewButton("Xware", "Xware", function()
    yes:Play()

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    loadstring(game:HttpGet("https://pastebin.com/raw/chPzqgtN"))()

end)

Section:NewButton("x15", "x15", function()
    yes:Play()

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/66GdaGod/15X-CRACKED/main/EZ%20CRACKED%20BY%20MIN%20X%20ZORDO"))()

end)

Section:NewButton("Kitten Legit", "Kitten Legit", function()
    yes:Play()

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    loadstring(game:HttpGet("https://pastebin.com/raw/Tfey2JbA"))()

end)
    
Section:NewButton("Temporal X v2.0.3","pc", function(value)
    yes:Play()

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    loadstring(game:HttpGet("https://pastebin.com/raw/w2S8YyDt", true))()
    end)



Section:NewLabel("Locks By Trip Hub (MOB)")

Section:NewButton("Lock dot (pc/mob)", "BY Space#0234 and owner of the script", function()
    yes:Play()

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()

notifications:notify {
    Title = "Trip Hub", 
    Description = "PATCHED :(",
    Icon = 6031071053, 
    Length = tiempo
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/GamerEmilianoFF/aim/main/lock/lock%20circle", true))()
end)

Section:NewButton("Lock-Trip", "BY Space#0234", function()
    yes:Play()

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/GamerEmilianoFF/aim/main/lock-trip", true))()

notifications:notify {
    Title = "Trip Hub", 
    Description = "modified by Space#0234",
    Icon = 6031071053, 
    Length = tiempo
}

end)

Section:NewButton("Aimbot-Trip", "BY Space#0234", function()
    yes:Play()

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/GamerEmilianoFF/aim/main/aimbot", true))()

notifications:notify {
    Title = "Trip Hub", 
    Description = "modified by Space#0234",
    Icon = 6031071053, 
    Length = tiempo
}

end)


Section:NewButton("hitbox (pc/mob)", "BY Space#0234 and owner of the script", function()
    yes:Play()

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()

notifications:notify {
    Title = "Trip Hub", 
    Description = "PATCHED :(",
    Icon = 6031071053, 
    Length = tiempo
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/GamerEmilianoFF/aim/main/hitbox.lua", true))()
end)


Section:NewButton("Dot Blue(pc/mob)", "BY Space#0234 and owner of the script", function()
    yes:Play()

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
notifications:notify {
    Title = "Trip Hub", 
    Description = "WORKS! :D",
    Icon = 6031071053, 
    Length = tiempo
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/GamerEmilianoFF/aim/main/dot_blue.lua", true))()
end)



Section:NewButton("Silent Red (pc/mob)", "BY Space#0234", function()
    yes:Play()

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
notifications:notify {
    Title = "Trip Hub", 
    Description = "WORKS! :D",
    Icon = 6031071053, 
    Length = tiempo
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/GamerEmilianoFF/aim/main/silent%20red", true))()
end)



Section:NewLabel("Silent Aim")

 

Section:NewButton("Rainbow Lock and Esp", "Pc", function()
    yes:Play()

    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    loadstring(game:HttpGet("https://pastebin.com/raw/SgTvDfd9"))()

end)


Section:NewSlider("Silent Fov Slider", "Fov Slider", 320, 0, function(xdxd) 
notifications:notify {
    Title = "Trip Hub", 
    Description = "first you must select the size of the fov and then execute the button below called (silent aim) ",
    Icon = 6031071053, 
    Length = 10
}


_G.FOV = xdxd

end)


Section:NewButton("silent aim","", function(value)
    yes:Play()

loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()


_G.Prediction =  (  .18  )
 
 
_G.AimKey =  (  "c"  )
 
 

 
local SilentAim = true
local LocalPlayer = game:GetService("Players").LocalPlayer
local Players = game:GetService("Players")
local Mouse = LocalPlayer:GetMouse()
local Camera = game:GetService("Workspace").CurrentCamera
hookmetamethod = hookmetamethod
Drawing = Drawing
 
_G.FOV_CIRCLE = Drawing.new("Circle")
 
local FOV_CIRCLE = _G.FOV_CIRCLE
 
FOV_CIRCLE.Visible = true
FOV_CIRCLE.Filled = false
FOV_CIRCLE.Thickness = 1
FOV_CIRCLE.Transparency = 1
FOV_CIRCLE.Color = Color3.new(0, 1, 0)
FOV_CIRCLE.Radius = _G.FOV
FOV_CIRCLE.Position = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
-- Options
Options = {
    Torso = "HumanoidRootPart";
    Head = "Head";
}
 
local function MoveFovCircle()
    pcall(function()
        local DoIt = true
        spawn(function()
            while DoIt do task.wait()
                FOV_CIRCLE.Position = Vector2.new(Mouse.X, (Mouse.Y + 36))
            end
        end)
    end)
end coroutine.wrap(MoveFovCircle)()
 
Mouse.KeyDown:Connect(function(KeyPressed)
    if KeyPressed == (_G.AimKey:lower()) then
        if SilentAim == false then
            FOV_CIRCLE.Color = Color3.new(0, 1, 0)
            SilentAim = true
        elseif SilentAim == true then
            FOV_CIRCLE.Color = Color3.new(1, 0, 0)
            SilentAim = false
        end
    end
end)
 
local oldIndex = nil 
oldIndex = hookmetamethod(game, "__index", function(self, Index)
    if self == Mouse and (Index == "Hit") then 
        local Distance = 9e9
        local Targete = nil
        if SilentAim then
            
            for _, v in pairs(Players:GetPlayers()) do 
                if v ~= LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Humanoid") and v.Character:FindFirstChild("Humanoid").Health > 0 then
                    local Enemy = v.Character    
                    local CastingFrom = CFrame.new(Camera.CFrame.Position, Enemy[Options.Torso].CFrame.Position) * CFrame.new(0, 0, -4)
                    local RayCast = Ray.new(CastingFrom.Position, CastingFrom.LookVector * 9000)
                    local World, ToSpace = workspace:FindPartOnRayWithIgnoreList(RayCast, {LocalPlayer.Character:FindFirstChild("Head")})
                    local RootWorld = (Enemy[Options.Torso].CFrame.Position - ToSpace).magnitude
                    if RootWorld < 4 then
                        local RootPartPosition, Visible = Camera:WorldToScreenPoint(Enemy[Options.Torso].Position)
                        if Visible then
                            local Real_Magnitude = (Vector2.new(Mouse.X, Mouse.Y) - Vector2.new(RootPartPosition.X, RootPartPosition.Y)).Magnitude
                            if Real_Magnitude < Distance and Real_Magnitude < FOV_CIRCLE.Radius then
                                Distance = Real_Magnitude
                                Targete = Enemy
                            end
                        end
                    end
                end
            end
        end
        
        if Targete ~= nil and Targete[Options.Torso] and Targete:FindFirstChild("Humanoid").Health > 0 then
            if SilentAim then
                local ShootThis = Targete[Options.Torso] -- or Options.Head
                local Predicted_Position = ShootThis.CFrame + (ShootThis.Velocity * _G.Prediction + Vector3.new(0,-1,0)) --  (-1) = Less blatant
                return ((Index == "Hit" and Predicted_Position)) -- Return
            end
        end
        
    end
    return oldIndex(self, Index)
end)


   end)




Section:NewLabel("dot lock")


Section:NewButton("Enable", "", function(state)
    yes:Play()

_G.KEY = "q"
_G.PART = "HumanoidRootPart"
_G.PRED = 0.225
_G.NOTIF = false
_G.ENABLED = true
_G.AIR = false
_G.AIRpart = "LowerTorso"
_G.View = false
getgenv().BenNotif = false
_G.DOT = true
_G.BOX = true
local CC = game:GetService"Workspace".CurrentCamera
    local Plr
    local enabled = falseWD
    --local accomidationfactor = 0.13880--
    local mouse = game.Players.LocalPlayer:GetMouse()
    local placemarker = Instance.new("Part", game.Workspace)

        function makemarker(Parent, Adornee, Color, Size, Size2)
        local e = Instance.new("BillboardGui", Parent)
        e.Name = "PP"
        e.Adornee = Adornee
        e.Size = UDim2.new(Size, Size2, Size, Size2)
        e.AlwaysOnTop = _G.DOT
        local a = Instance.new("Frame", e)
        if _G.DOT == true then
        a.Size = UDim2.new(1, 0, 1, 0)
        else
        a.Size = UDim2.new(0, 0, 0, 0)
        end
        if _G.DOT == true then
        a.Transparency = 0
        a.BackgroundTransparency = 0
        else
        a.Transparency = 1
        a.BackgroundTransparency = 1
        end
        a.BackgroundColor3 = Color
        local g = Instance.new("UICorner", a)
        if _G.DOT == false then
        g.CornerRadius = UDim.new(0, 0)
        else
        g.CornerRadius = UDim.new(50, 50) 
        end
        return(e)
    end

    
    local data = game.Players:GetPlayers()
    function noob(player)
        local character
        repeat wait() until player.Character
        local handler = makemarker(guimain, player.Character:WaitForChild(_G.PART), Color3.fromRGB(238, 130, 238), 0.3, 3)
        handler.Name = player.Name
        player.CharacterAdded:connect(function(Char) handler.Adornee = Char:WaitForChild(_G.PART) end)


        spawn(function()
            while wait() do
                if player.Character then
                    TextLabel.Text = player.Name..tostring(player:WaitForChild("leaderstats").Wanted.Value).." | "..tostring(math.floor(player.Character:WaitForChild("Humanoid").Health))
                end
            end
        end)
    end

    for i = 1, #data do
        if data[i] ~= game.Players.LocalPlayer then
            noob(data[i])
        end
    end

    game.Players.PlayerAdded:connect(function(Player)
        noob(Player)
    end)

    getgenv().spawn(function()
        placemarker.Anchored = true
        placemarker.CanCollide = false
        if _G.BOX == true then
        placemarker.Size = Vector3.new(7, 7, 7)
        else
        placemarker.Size = Vector3.new(0, 0, 0)
        end
        placemarker.Transparency = 0.7
        if _G.DOT then
        makemarker(placemarker, placemarker, Color3.fromRGB(45, 80, 150), 0.3, 3)
        end
    end)

    game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(k)
        if k == _G.KEY and _G.ENABLED then
            if _G.View then
	game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
end
            if enabled == true then
                enabled = false
                       if getgenv().BenNotif then
    sound1:Play()
end
                if _G.NOTIF == true then
                    Plr = getClosestPlayerToCursor()
                game.StarterGui:SetCore("SendNotification", {
                    Title = "EPL";
                    Text = "Unlocked",
                    Duration = 3
                })
            end
            else
                Plr = getClosestPlayerToCursor()
                if _G.View then
                        	game.Workspace.CurrentCamera.CameraSubject = Plr.Character
                end
                    	if getgenv().BenNotif then
                            sound:Play()
                        end
                enabled = true
                if _G.NOTIF == true then
 
                    game.StarterGui:SetCore("SendNotification", {
                        Title = "EPL";
                        Text = ""..tostring(Plr.Character.Humanoid.DisplayName),
                        Duration = 3
                    })
 
                end
            end
        end
    end)
    function getClosestPlayerToCursor()
        local closestPlayer
        local shortestDistance = math.huge

        for i, v in pairs(game.Players:GetPlayers()) do
            if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("HumanoidRootPart") then
                local pos = CC:WorldToViewportPoint(v.Character.PrimaryPart.Position)
                local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(mouse.X, mouse.Y)).magnitude
                if magnitude < shortestDistance then
                    closestPlayer = v
                    shortestDistance = magnitude
                end
            end
        end
        return closestPlayer
    end

    game:GetService"RunService".Stepped:connect(function()
        if enabled and Plr.Character and Plr.Character:FindFirstChild("HumanoidRootPart") then
            placemarker.CFrame = CFrame.new(Plr.Character[_G.PART].Position + (Plr.Character[_G.PART].Velocity * _G.PRED))
        else
            placemarker.CFrame = CFrame.new(0, 9999, 0)
        end
    end)

    local mt = getrawmetatable(game)
    local old = mt.__namecall
    setreadonly(mt, false)
    mt.__namecall = newcclosure(function(...)
        local args = {...}
        if enabled and getnamecallmethod() == "FireServer" and args[2] == "UpdateMousePos" then
            args[3] = (Plr.Character[_G.PART].Position + (Plr.Character[_G.PART].Velocity * _G.PRED))
            return old(unpack(args))
        end
        return old(...)
    end)
    if _G.AIR == true then

        if Plr.Character.Humanoid.Jump == true and Plr.Character.Humanoid.FloorMaterial == Enum.Material.Air then
            _G.AIRpart = "RightFoot"
        else
            Plr.Character:WaitForChild("Humanoid").StateChanged:Connect(function(old,new)
                if new == Enum.HumanoidStateType.Freefall then
                _G.AIRpart = "RightFoot"
                else
                    _G.AIRpart = "LowerTorso"
                end
            end)
        end
    end
end)

Section:NewTextBox("Key", "", function(txt)
	_G.KEY = txt
end)
Section:NewTextBox("Prediction", "", function(txt)
	_G.PRED = txt
end)
Section:NewDropdown("Aim Part", "", {"Head", "UpperTorso", "HumanoidRootPart", "LowerTorso"}, function(arg)
    _G.PART = ""..arg
end)
local Section = Tab:NewSection("Toggles")
Section:NewToggle("Notification", "", function(state)
    _G.NOTIF = state
end)
Section:NewToggle("Ben Notif Sound", "", function(state)
    getgenv().BenNotif = state
end)
Section:NewToggle("ViewPlayer", "", function(state)
    _G.View = state
end)
Section:NewToggle("AirShotFunction", "", function(state)
    _G.AIR = state
end)
Section:NewDropdown("AirShot Part", "", {"Head", "UpperTorso", "HumanoidRootPart", "LowerTorso"}, function(arg)
    _G.AIRpart = ""..arg
end)

Section:NewLabel("Cam Lock")

Section:NewButton("Enable", "", function(state)
 getgenv().AimPart = "HumanoidRootPart" -- For R15 Games: {UpperTorso, LowerTorso, HumanoidRootPart, Head} | For R6 Games: {Head, Torso, HumanoidRootPart}  
    getgenv().AimlockKey = "q"
    getgenv().AimRadius = 30 -- How far away from someones character you want to lock on at
    getgenv().ThirdPerson = true 
    getgenv().FirstPerson = true
    getgenv().TeamCheck = false -- Check if Target is on your Team (True means it wont lock onto your teamates, false is vice versa) (Set it to false if there are no teams)
    getgenv().PredictMovement = true -- Predicts if they are moving in fast velocity (like jumping) so the aimbot will go a bit faster to match their speed 
    getgenv().PredictionVelocity = 7.5
    getgenv().Smoothness = false
    getgenv().SmoothnessAmount = 0.022
    getgenv().AOR = false
    getgenv().AORpart = "LowerTorso"
    local Players, Uis, RService, SGui = game:GetService"Players", game:GetService"UserInputService", game:GetService"RunService", game:GetService"StarterGui";
    local Client, Mouse, Camera, CF, RNew, Vec3, Vec2 = Players.LocalPlayer, Players.LocalPlayer:GetMouse(), workspace.CurrentCamera, CFrame.new, Ray.new, Vector3.new, Vector2.new;
    local Aimlock, MousePressed, CanNotify = true, false, false;
    local AimlockTarget;
    local OldPre;
    

    
    getgenv().WorldToViewportPoint = function(P)
        return Camera:WorldToViewportPoint(P)
    end
    
    getgenv().WorldToScreenPoint = function(P)
        return Camera.WorldToScreenPoint(Camera, P)
    end
    
    getgenv().GetObscuringObjects = function(T)
        if T and T:FindFirstChild(getgenv().AimPart) and Client and Client.Character:FindFirstChild("Head") then 
            local RayPos = workspace:FindPartOnRay(RNew(
                T[getgenv().AimPart].Position, Client.Character.Head.Position)
            )
            if RayPos then return RayPos:IsDescendantOf(T) end
        end
    end
    
    getgenv().GetNearestTarget = function()
        -- Credits to whoever made this, i didnt make it, and my own mouse2plr function kinda sucks
        local players = {}
        local PLAYER_HOLD  = {}
        local DISTANCES = {}
        for i, v in pairs(Players:GetPlayers()) do
            if v ~= Client then
                table.insert(players, v)
            end
        end
        for i, v in pairs(players) do
            if v.Character ~= nil then
                local AIM = v.Character:FindFirstChild("Head")
                if getgenv().TeamCheck == true and v.Team ~= Client.Team then
                    local DISTANCE = (v.Character:FindFirstChild("Head").Position - game.Workspace.CurrentCamera.CFrame.p).magnitude
                    local RAY = Ray.new(game.Workspace.CurrentCamera.CFrame.p, (Mouse.Hit.p - game.Workspace.CurrentCamera.CFrame.p).unit * DISTANCE)
                    local HIT,POS = game.Workspace:FindPartOnRay(RAY, game.Workspace)
                    local DIFF = math.floor((POS - AIM.Position).magnitude)
                    PLAYER_HOLD[v.Name .. i] = {}
                    PLAYER_HOLD[v.Name .. i].dist= DISTANCE
                    PLAYER_HOLD[v.Name .. i].plr = v
                    PLAYER_HOLD[v.Name .. i].diff = DIFF
                    table.insert(DISTANCES, DIFF)
                elseif getgenv().TeamCheck == false and v.Team == Client.Team then 
                    local DISTANCE = (v.Character:FindFirstChild("Head").Position - game.Workspace.CurrentCamera.CFrame.p).magnitude
                    local RAY = Ray.new(game.Workspace.CurrentCamera.CFrame.p, (Mouse.Hit.p - game.Workspace.CurrentCamera.CFrame.p).unit * DISTANCE)
                    local HIT,POS = game.Workspace:FindPartOnRay(RAY, game.Workspace)
                    local DIFF = math.floor((POS - AIM.Position).magnitude)
                    PLAYER_HOLD[v.Name .. i] = {}
                    PLAYER_HOLD[v.Name .. i].dist= DISTANCE
                    PLAYER_HOLD[v.Name .. i].plr = v
                    PLAYER_HOLD[v.Name .. i].diff = DIFF
                    table.insert(DISTANCES, DIFF)
                end
            end
        end
        
        if unpack(DISTANCES) == nil then
            return nil
        end
        
        local L_DISTANCE = math.floor(math.min(unpack(DISTANCES)))
        if L_DISTANCE > getgenv().AimRadius then
            return nil
        end
        
        for i, v in pairs(PLAYER_HOLD) do
            if v.diff == L_DISTANCE then
                return v.plr
            end
        end
        return nil
    end
    
    Mouse.KeyDown:Connect(function(a)
        if not (Uis:GetFocusedTextBox()) then 
            if a == AimlockKey and AimlockTarget == nil then
                pcall(function()
                    if MousePressed ~= true then MousePressed = true end 
                    local Target;Target = GetNearestTarget()
                    if Target ~= nil then 
                        AimlockTarget = Target
                    end
                end)
            elseif a == AimlockKey and AimlockTarget ~= nil then
                if AimlockTarget ~= nil then AimlockTarget = nil end
                if MousePressed ~= false then 
                    MousePressed = false 
                end
            end
        end
    end)
    
    RService.RenderStepped:Connect(function()
        if getgenv().ThirdPerson == true and getgenv().FirstPerson == true then 
            if (Camera.Focus.p - Camera.CoordinateFrame.p).Magnitude > 1 or (Camera.Focus.p - Camera.CoordinateFrame.p).Magnitude <= 1 then 
                CanNotify = true 
            else 
                CanNotify = false 
            end
        elseif getgenv().ThirdPerson == true and getgenv().FirstPerson == false then 
            if (Camera.Focus.p - Camera.CoordinateFrame.p).Magnitude > 1 then 
                CanNotify = true 
            else 
                CanNotify = false 
            end
        elseif getgenv().ThirdPerson == false and getgenv().FirstPerson == true then 
            if (Camera.Focus.p - Camera.CoordinateFrame.p).Magnitude <= 1 then 
                CanNotify = true 
            else 
                CanNotify = false 
            end
        end
        if Aimlock == true and MousePressed == true then 
            if AimlockTarget and AimlockTarget.Character and AimlockTarget.Character:FindFirstChild(getgenv().AimPart) then 
                if getgenv().FirstPerson == true then
                    if CanNotify == true then
                        if getgenv().PredictMovement == true then
                            if getgenv().Smoothness == true then
                                --// The part we're going to lerp/smoothen \\--
                                local Main = CF(Camera.CFrame.p, AimlockTarget.Character[getgenv().AimPart].Position + AimlockTarget.Character[getgenv().AimPart].Velocity/PredictionVelocity)
                                
                                --// Making it work \\--
                                Camera.CFrame = Camera.CFrame:Lerp(Main, getgenv().SmoothnessAmount, Enum.EasingStyle.Elastic, Enum.EasingDirection.InOut)
                            else
                                Camera.CFrame = CF(Camera.CFrame.p, AimlockTarget.Character[getgenv().AimPart].Position + AimlockTarget.Character[getgenv().AimPart].Velocity/PredictionVelocity)
                            end
                        elseif getgenv().PredictMovement == false then 
                            if getgenv().Smoothness == true then
                                --// The part we're going to lerp/smoothen \\--
                                local Main = CF(Camera.CFrame.p, AimlockTarget.Character[getgenv().AimPart].Position)

                                --// Making it work \\--
                                Camera.CFrame = Camera.CFrame:Lerp(Main, getgenv().SmoothnessAmount, Enum.EasingStyle.Elastic, Enum.EasingDirection.InOut)
                            else
                                Camera.CFrame = CF(Camera.CFrame.p, AimlockTarget.Character[getgenv().AimPart].Position)
                            end
                        end
                    end
                end
            end
        end
            if getgenv().AOR == true then

        if Plr.Character.Humanoid.Jump == true and Plr.Character.Humanoid.FloorMaterial == Enum.Material.Air then
            getgenv().AORpart = "RightFoot"
        else
            Plr.Character:WaitForChild("Humanoid").StateChanged:Connect(function(old,new)
                if new == Enum.HumanoidStateType.Freefall then
                getgenv().AORpart = "RightFoot"
                else
                    getgenv().AORpart = "LowerTorso"
                end
            end)
        end
    end
    end)
    end)
Section:NewTextBox("Key", "", function(txt)
	getgenv().AimlockKey = txt
end)
Section:NewTextBox("Prediction", "", function(txt)
	getgenv().PredictionVelocity = txt
end)
Section:NewDropdown("Aim Part", "", {"Head", "UpperTorso", "HumanoidRootPart", "LowerTorso"}, function(arg)
    getgenv().AimPart = ""..arg
end)

Section:NewToggle("AirShotFunction", "", function(state)
    getgenv().AOR = state
end)

Section:NewDropdown("AirShot Part", "", {"Head", "UpperTorso", "HumanoidRootPart", "LowerTorso"}, function(arg)
    getgenv().AORpart = ""..arg
end)

Section:NewToggle("Smoothing", "", function(state)
    getgenv().Smoothness = state
end)
Section:NewTextBox("Smoothing Amount", "", function(txt)
	getgenv().SmoothnessAmount = txt
end)





local Jit = math.random(30, 90)
local Angle = 60
getgenv().Spinbot = true
getgenv().Jitter = true
getgenv().AntiAim1 = true
getgenv().AntiAim2 = true
getgenv().BlatantAA = true
getgenv().antilock = true
getgenv().antilockspeed = 0.18


Section:NewLabel("Anti Lock")


Section:NewButton("Anti Lock (WORKS)", "For Lockers L", function()
yes:Play()	

 loadstring(game:HttpGet("https://raw.githubusercontent.com/nyulachan/nyula/main/nantilock",true))()

end)

Section:NewToggle("jitter", "", function(state)
getgenv().Jitter = state
if getgenv().Jitter == true then
    repeat
        task.wait()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position) *
                CFrame.Angles(0, math.rad(Angle) + math.rad((math.random(1, 2) == 1 and Jit or -Jit)), 0)
            until getgenv().Jitter == false
        end
end)
Section:NewToggle("Spinbot", "", function(state)
getgenv().Spinbot = state
if getgenv().Spinbot == true then
repeat
    task.wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(555), 0)
until getgenv().Spinbot == false
    end
end)
Section:NewToggle("Blatant Spinbot", "", function(state)
getgenv().AntiAim1 = state
if getgenv().AntiAim1 == true then
    repeat
        task.wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity =
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * -250
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(555), 0)
    until getgenv().AntiAim1 == false
    end
end)
Section:NewToggle("SlingShot AA (ASS)", "", function(state)
    getgenv().AntiAim2 = state
    if getgenv().AntiAim2 == true then
        repeat
        task.wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0.999, 0)
        until getgenv().AntiAim2 == false
        end
end)
Section:NewToggle("Super Blatant FlySpin AA", "", function(state)
    getgenv().BlatantAA = state
    local Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
if getgenv().BlatantAA == true  then
    repeat
    task.wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = (CFrame.new(Position) + Vector3.new(math.random(-15, 15), math.random(-15, 15), math.random(-15, 15))) * CFrame.Angles(math.rad(math.random(-180, 180)), math.rad(math.random(-180, 180)), math.rad(math.random(-180, 180)))
until getgenv().BlatantAA == false
end
end)
Section:NewToggle("Normal AA", "", function(state)
getgenv().antilock = state
if getgenv().antilock == true then
    repeat
        task.wait()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame +
                -game.Players.LocalPlayer.Character.Humanoid.MoveDirection * getgenv().antilockspeed
until getgenv().antilock == false
end
end)
Section:NewTextBox("Normal AA Speed", "", function(state)
	getgenv().antilockspeed = state
end)








local Tab = Window:NewTab("Skins")
local Section = Tab:NewSection("Guns Skins")

Section:NewButton("Red Sparkle Time", "Red Sparkle Time", function()
    yes:Play()

game.ReplicatedStorage.MainRemote:FireServer("Skin", "3461309563")
end)
Section:NewButton("Blood", "Blood", function()
    yes:Play()

game.ReplicatedStorage.MainRemote:FireServer("Skin", "108941805")
end)
Section:NewButton("Red Grime", "Red Grime", function()
    yes:Play()

game.ReplicatedStorage.MainRemote:FireServer("Skin","280779721")
end)
Section:NewButton("Gold", "Gold", function()
    yes:Play()

game.ReplicatedStorage.MainRemote:FireServer("Skin","134632723")
end)
Section:NewButton("Monster assault Camo", "Monster assault Camo", function()
    yes:Play()

game.ReplicatedStorage.MainRemote:FireServer("Skin","142656364")
end)
Section:NewButton("Chill Triangles", "Chill Triangles", function()
    yes:Play()

game.ReplicatedStorage.MainRemote:FireServer("Skin","807738028")
end)
Section:NewButton("Blue Bandana", "Blue Bandana", function()
    yes:Play()

game.ReplicatedStorage.MainRemote:FireServer("Skin","5657430676")
end)
Section:NewButton("Red Bandana", "Red Bandana", function()
    yes:Play()

game.ReplicatedStorage.MainRemote:FireServer("Skin","5657568372")
end)
Section:NewButton("Worms", "Worms", function()
    yes:Play()

game.ReplicatedStorage.MainRemote:FireServer("Skin","7545514855")
end)
Section:NewButton("Supreme + Louis vuitton", "Supreme + Louis vuitton", function()
    yes:Play()

game.ReplicatedStorage.MainRemote:FireServer("Skin","1156146426")
end)
Section:NewButton("Nice Looking Green Skin", "Green Skin", function()
    yes:Play()

game.ReplicatedStorage.MainRemote:FireServer("Skin","4944059812")
end)
Section:NewButton("Nice Skin", "Nice Skin", function()
    yes:Play()

game.ReplicatedStorage.MainRemote:FireServer("Skin","3155472478")
end)
Section:NewButton("Cool Skin", "Cool Skin", function()
    yes:Play()

game.ReplicatedStorage.MainRemote:FireServer("Skin","2669398912")
end)
Section:NewButton("Lightning", "Lightning", function()
    yes:Play()

game.ReplicatedStorage.MainRemote:FireServer("Skin","5366577617")
end)
Section:NewButton("Space DVD", "Space DVD", function()
    yes:Play()

game.ReplicatedStorage.MainRemote:FireServer("Skin","521581065")
end)
Section:NewButton("Blue LV", "Blue LV", function()
    yes:Play()

game.ReplicatedStorage.MainRemote:FireServer("Skin","5486664842")
end)
Section:NewButton("Lava", "Lava", function()
    yes:Play()

game.ReplicatedStorage.MainRemote:FireServer("Skin","6238541572")
end)

Section:NewButton("sanrio", "sanrio", function()
    yes:Play()

    game.ReplicatedStorage.MainRemote:FireServer("Skin","10142373277")
    end)

    Section:NewButton("my melody pink and white", "my melody pink and white", function()
        yes:Play()

        game.ReplicatedStorage.MainRemote:FireServer("Skin","10142315257")
        end)

        Section:NewButton("my melody full pink matching", "my melody full pink matching", function()
            yes:Play()

            game.ReplicatedStorage.MainRemote:FireServer("Skin","10142308798")
            end)

            Section:NewButton("kuromi full pink matching", "kuromi full pink matching", function()
                yes:Play()

                game.ReplicatedStorage.MainRemote:FireServer("Skin","10144459264")
                end)

                Section:NewButton("cinnamon roll", "cinnamon roll", function()
                    yes:Play()

                    game.ReplicatedStorage.MainRemote:FireServer("Skin","10142245992")
                    end)

                    Section:NewButton("hello kitty", "hello kitty", function()
                        yes:Play()

                        game.ReplicatedStorage.MainRemote:FireServer("Skin","10141707840")
                        end)

                        Section:NewButton("hello kitty 2", "hello kitty 2", function()
                            yes:Play()

                            game.ReplicatedStorage.MainRemote:FireServer("Skin","10141722124")
                            end)

                            Section:NewButton("pompompurin", "pompompurin", function()
                                yes:Play()

                                game.ReplicatedStorage.MainRemote:FireServer("Skin","10142378746")
                                end)

                                Section:NewButton("badtz maru ", "badtz maru ", function()
                                    yes:Play()

                                    game.ReplicatedStorage.MainRemote:FireServer("Skin","10155574621")
                                    end)

                                    Section:NewButton("keroppi", "keroppi", function()
                                        yes:Play()

                                        game.ReplicatedStorage.MainRemote:FireServer("Skin","10155587101")
                                        end)

                                        Section:NewButton("tuxedo-sam", "tuxedo-sam", function()
                                            yes:Play()

                                            game.ReplicatedStorage.MainRemote:FireServer("Skin","10155609648")
                                            end)

                                            Section:NewButton("pink camo", "pink camo", function()
                                                yes:Play()

                                                game.ReplicatedStorage.MainRemote:FireServer("Skin","10265975848")
                                                end)

                                                Section:NewButton("duolingo", "duolingo", function()
                                                    yes:Play()

                                                    game.ReplicatedStorage.MainRemote:FireServer("Skin","10278895457")
                                                    end)

                                                    Section:NewButton("red camo", "red camo", function()
                                                        yes:Play()

                                                        game.ReplicatedStorage.MainRemote:FireServer("Skin","10620461727")
                                                        end)

                                                      Section:NewButton("Halloween ", "Halloween ", function()
                                                        yes:Play()

                                                          game.ReplicatedStorage.MainRemote:FireServer("Skin","5727756841")
                                                            end)

                                                            Section:NewButton("Gold & Silver", "Gold & Silver", function()
                                                                yes:Play()

                                                                game.ReplicatedStorage.MainRemote:FireServer("Skin","657186982")
                                                                  end)

                                                                  Section:NewButton("Dark Knight ", "Dark Knight ", function()
                                                                    yes:Play()

                                                                    game.ReplicatedStorage.MainRemote:FireServer("Skin","116758234")
                                                                      end)
    
                                                                      Section:NewButton("American Flag", "American Flag", function()
                                                                        yes:Play()

                                                                        game.ReplicatedStorage.MainRemote:FireServer("Skin","1048316")
                                                                          end)
        
                                                                          Section:NewButton("Robux ", "Robux ", function()
                                                                            yes:Play()

                                                                            game.ReplicatedStorage.MainRemote:FireServer("Skin","628747868")
                                                                              end)
            
                                                                              Section:NewButton("Mechanic ", "Mechanic ", function()
                                                                                yes:Play()

                                                                                game.ReplicatedStorage.MainRemote:FireServer("Skin","6112041659")
                                                                                  end)
                
                                                                                  Section:NewButton("Black Supreme", "Black Supreme", function()
                                                                                    yes:Play()

                                                                                    game.ReplicatedStorage.MainRemote:FireServer("Skin","6087336636")
                                                                                      end)
                    
                                                                                      Section:NewButton("Japanese ", "Japanese ", function()
                                                                                        yes:Play()

                                                                                        game.ReplicatedStorage.MainRemote:FireServer("Skin","6990050129")
                                                                                          end)
                        
                                                                                          Section:NewButton("Orange ", "Orange ", function()
                                                                                            yes:Play()

                                                                                            game.ReplicatedStorage.MainRemote:FireServer("Skin","5746371802")
                                                                                              end)
                            
                                                                                              Section:NewButton("Red Sparkle Time", "Red Sparkle Time", function()
                                                                                                yes:Play()

                                                                                                game.ReplicatedStorage.MainRemote:FireServer("Skin","3461309563")
                                                                                                  end)
                                
                                                                                                  Section:NewButton("Rainbow ", "Rainbow ", function()
                                                                                                    yes:Play()

                                                                                                    game.ReplicatedStorage.MainRemote:FireServer("Skin","51150837")
                                                                                                      end)
                                    
                                                                                                      Section:NewButton("rick roll", "rick roll", function()
                                                                                                        yes:Play()

                                                                                                        game.ReplicatedStorage.MainRemote:FireServer("Skin","9673653415")
                                                                                                          end)
                                        
                                                                                                          Section:NewButton("bunny", "bunny", function()
                                                                                                            yes:Play()

                                                                                                            game.ReplicatedStorage.MainRemote:FireServer("Skin","10142341981")
                                                                                                              end)
                                            
                                                                                                              Section:NewButton("Cat", "Cat", function()
                                                                                                                yes:Play()

                                                                                                                game.ReplicatedStorage.MainRemote:FireServer("Skin","10142361053")
                                                                                                                  end)
                                                
                                                                                                                  Section:NewButton("Panda", "Panda", function()
                                                                                                                    yes:Play()

                                                                                                                    game.ReplicatedStorage.MainRemote:FireServer("Skin","10141742891")
                                                                                                                      end)
                                                    
                                                                                                                      Section:NewButton("skull", "skull", function()
                                                                                                                        yes:Play()

                                                                                                                        game.ReplicatedStorage.MainRemote:FireServer("Skin","10144445209 ")
                                                                                                                          end)
                                                        
                                                                                                                          Section:NewButton("pikachu", "pikachu", function()
                                                                                                                            yes:Play()

                                                                                                                            game.ReplicatedStorage.MainRemote:FireServer("Skin","10144394708")
                                                                                                                              end)
                                                            
                                                                                                                              Section:NewButton("all red matching", "all red matching", function()
                                                                                                                                yes:Play()

                                                                                                                                game.ReplicatedStorage.MainRemote:FireServer("Skin","10163934404 ")
                                                                                                                                  end)
                                                                
                                                                                                                                  Section:NewButton("batman logo", "batman logo", function()
                                                                                                                                    yes:Play()

                                                                                                                                    game.ReplicatedStorage.MainRemote:FireServer("Skin","10144885505")
                                                                                                                                      end)
                                                                    
                                                                                                                                      Section:NewButton("batman", "batman", function()
                                                                                                                                        yes:Play()

                                                                                                                                        game.ReplicatedStorage.MainRemote:FireServer("Skin","10144866113")
                                                                                                                                          end)
                                                                        
                                                                                                                                          Section:NewButton("SuperMan", "SuperMan", function()
                                                                                                                                            yes:Play()

                                                                                                                                            game.ReplicatedStorage.MainRemote:FireServer("Skin","10144856736")
                                                                                                                                              end)
   
                                                                                
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
Section:NewLabel("Kill Streak Effect Skin")
Section:NewLabel("CLIENT")




Section:NewButton("Normal", "client", function()
    yes:Play()
game.Players.LocalPlayer.Information.Tag.Value = "Normal"
end)

Section:NewButton("Rainbow", "client", function()
    yes:Play()
game.Players.LocalPlayer.Information.Tag.Value = "Rainbow"
end)

Section:NewButton("Rock", "client", function()
    yes:Play()
game.Players.LocalPlayer.Information.Tag.Value = "Rock"
end)

Section:NewButton("Pacman", "client", function()
    yes:Play()
game.Players.LocalPlayer.Information.Tag.Value = "Pacman"
end)

Section:NewButton("Diamond", "client", function()
    yes:Play()
game.Players.LocalPlayer.Information.Tag.Value = "Diamond"
end)

Section:NewButton("Wings", "client", function()
    yes:Play()
game.Players.LocalPlayer.Information.Tag.Value = "Wings"
end)

Section:NewButton("Tanya", "client", function()
    yes:Play()
game.Players.LocalPlayer.Information.Tag.Value = "Tanya"
end)

Section:NewButton("Heaven", "client", function()
    yes:Play()
game.Players.LocalPlayer.Information.Tag.Value = "Heaven"
end)

Section:NewButton("Blue", "client", function()
    yes:Play()
game.Players.LocalPlayer.Information.Tag.Value = "Blue"
end)

Section:NewButton("Serpent", "client", function()
    yes:Play()
game.Players.LocalPlayer.Information.Tag.Value = "Serpent"
end)

Section:NewButton("Plush", "client", function()
    yes:Play()
game.Players.LocalPlayer.Information.Tag.Value = "Plush"
end)

Section:NewButton("Samurai", "client", function()
    yes:Play()
game.Players.LocalPlayer.Information.Tag.Value = "Samurai"
end)

Section:NewButton("Candy", "client", function()
    yes:Play()
game.Players.LocalPlayer.Information.Tag.Value = "Candy"
end)

Section:NewButton("Glitch", "client", function()
    yes:Play()
game.Players.LocalPlayer.Information.Tag.Value = "Glitch"
end)

Section:NewButton("Ruby", "client", function()
    yes:Play()
game.Players.LocalPlayer.Information.Tag.Value = "Ruby"
end)

Section:NewButton("Kurumi", "client", function()
    yes:Play()
game.Players.LocalPlayer.Information.Tag.Value = "Kurumi"
end)

Section:NewButton("Kurumi", "client", function()
    yes:Play()
game.Players.LocalPlayer.Information.Tag.Value = "Kurumi"
end)

Section:NewButton("Summer", "client", function()
    yes:Play()
game.Players.LocalPlayer.Information.Tag.Value = "Summer"
end)

Section:NewButton("Hallo", "client", function()
    yes:Play()
game.Players.LocalPlayer.Information.Tag.Value = "Hallo"
end)

Section:NewButton("Easter", "client", function()
    yes:Play()
game.Players.LocalPlayer.Information.Tag.Value = "Easter"
end)

Section:NewButton("Grandmaster", "client", function()
    yes:Play()
game.Players.LocalPlayer.Information.Tag.Value = "Grandmaster"
end)

Section:NewButton("Sakura", "client", function()
    yes:Play()
game.Players.LocalPlayer.Information.Tag.Value = "Sakura"
end)

Section:NewButton("Easter Egg", "client", function()
    yes:Play()
game.Players.LocalPlayer.Information.Tag.Value = "Easter Egg"
end)

Section:NewButton("Menacing", "client", function()
    yes:Play()
game.Players.LocalPlayer.Information.Tag.Value = "Menacing"
end)

Section:NewButton("Zoku", "client", function()
    yes:Play()
game.Players.LocalPlayer.Information.Tag.Value = "Zoku"
end)

Section:NewButton("Kitten", "client", function()
    yes:Play()
game.Players.LocalPlayer.Information.Tag.Value = "Kitten"
end)

Section:NewButton("Thunder", "client", function()
    yes:Play()
game.Players.LocalPlayer.Information.Tag.Value = "Thunder"
end)

Section:NewButton("Goth", "client", function()
    yes:Play()
game.Players.LocalPlayer.Information.Tag.Value = "Goth"
end)

Section:NewButton("Sailor", "client", function()
    yes:Play()
game.Players.LocalPlayer.Information.Tag.Value = "Sailor"
end)

Section:NewButton("Boombox", "client", function()
    yes:Play()
game.Players.LocalPlayer.Information.Tag.Value = "Boombox"
end)

Section:NewButton("Money", "client", function()
    yes:Play()
game.Players.LocalPlayer.Information.Tag.Value = "Money"
end)

Section:NewButton("Valentine", "client", function()
    yes:Play()
game.Players.LocalPlayer.Information.Tag.Value = "Valentine"
end)

Section:NewButton("Wobble", "client", function()
    yes:Play()
game.Players.LocalPlayer.Information.Tag.Value = "Wobble"
end)

                                                    


local Tab = Window:NewTab("Animations (FE)")
local Section = Tab:NewSection("Animations FE")

Section:NewButton("Animations Changer (FE)", "animator changer", function()
    yes:Play()
    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    loadstring(game:HttpGet('https://pastebin.com/raw/fXvQVQb9'))()

end)

Section:NewButton("Toy", "Toy", function()
    yes:Play()
    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=782841498"
    Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=782845736"
    Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=782843345"
    Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=782842708"
    Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=782847020"
    Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=782843869"
    Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=782846423"
    game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

Section:NewButton("SuperHero", "SuperHero", function()
    yes:Play()
    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616111295"
    Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616113536"
    Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616122287"
    Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616117076"
    Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616115533"
    Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616104706"
    Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616108001"
    game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

Section:NewButton("Stylish", "Stylish", function()
    yes:Play()
    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616136790"
    Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616138447"
    Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616146177"
    Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616140816"
    Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616139451"
    Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616133594"
    Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616134815"
    game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

Section:NewButton("robot", "robot", function()
    yes:Play()
    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616088211"
    Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616089559"
    Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616095330"
    Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616091570"
    Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616090535"
    Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616086039"
    Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616087089"
    game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

Section:NewButton("pirate", "pirate", function()
    yes:Play()
    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    local Animate = game.Players.LocalPlayer.Character.Animate
    Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616006778"
    Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616008087"
    Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616013216"
    Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616013216"
    Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616008936"
    Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616005863"
    Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=616012453"
    Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=616011509"
        game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

Section:NewButton("ninja", "ninja", function()
    yes:Play()
    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    local Animate = game.Players.LocalPlayer.Character.Animate
    Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=656117400"
    Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=656118341"
    Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=656121766"
    Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=656118852"
    Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=656117878"
    Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=656114359"
    Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=656115606"
end)

Section:NewButton("levitation", "levitation", function()
    yes:Play()
    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    loadstring(game:HttpGet('https://pastebin.com/raw/AryTwN4z'))()

end)

Section:NewButton("elder", "elder", function()
    yes:Play()
    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=845397899"
    Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=845400520"
    Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=845403856"
    Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=845386501"
    Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=845398858"
    Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=845392038"
    Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=845396048"
    game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

Section:NewButton("buddly", "buddly", function()
    yes:Play()
    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    local Animate = game.Players.LocalPlayer.Character.Animate
    Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=910004836"
    Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=910009958"
    Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=910034870"
    Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=910025107"
    Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=910016857"
    Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=910001910"
    Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=910030921"
    Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=910028158"
        game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

Section:NewButton("astronaut", "astronaut", function()
    yes:Play()
    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    local Animate = game.Players.LocalPlayer.Character.Animate
    Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=891621366"
    Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=891633237"
    Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=891667138"
    Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=891636393"
    Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=891627522"
    Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=891609353"
    Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=891617961"
        game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

Section:NewButton("princess", "princess", function()
    yes:Play()
    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    local Animate = game.Players.LocalPlayer.Character.Animate
    Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=941003647"
    Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=941013098"
    Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=941028902"
    Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=941015281"
    Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=941008832"
    Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=940996062"
    Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=941000007"
        game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

Section:NewButton("zombie", "zombie", function()
    yes:Play()
    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    local Animate = game.Players.LocalPlayer.Character.Animate
    Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616158929"
    Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616160636"
    Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616168032"
    Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616163682"
    Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616161997"
    Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616156119"
    Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616157476"
end)






local Tab = Window:NewTab("Anti-Lag")
local Section = Tab:NewSection("Anti lag")

Section:NewButton("Anti Lag (Recommended)", "", function()
    yes:Play()
    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/GamerEmilianoFF/anti-lag-v2-fps/main/Dhm",true))()

end)

Section:NewButton("Anti Lag v2", "", function()
    yes:Play()
    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/GamerEmilianoFF/anti_lag_v3/main/Dont",true))()

end)

Section:NewButton("Anti Lag (Dont Face)", "", function()
    yes:Play()
    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    loadstring(game:HttpGet("https://pastebin.com/raw/YBD6W1Hn",true))()

end)

Section:NewButton("Anti Lag (Dont shirt)", "", function()
    yes:Play()
    loadstring(game:HttpGet("https://pastebin.com/raw/d1rMxaf9",true))()
    loadstring(game:HttpGet("https://pastebin.com/raw/gp1zFQak",true))()

end)

Section:NewButton("Fps booster (Recommended)","AND RTX", function(value)
    yes:Play()

    local timeBegan = tick()
    for i,v in ipairs(workspace:GetDescendants()) do
        if v:IsA("BasePart") then 
            v.Material = "SmoothPlastic"
        end
    end
    for i,v in ipairs(game:GetService("Lighting"):GetChildren()) do
        v:Destroy()
    end
    local timeEnd = tick() - timeBegan
    local timeMS = math.floor(timeEnd*1000)
    print("SmoothFPS loaded successfully in " .. timeMS .. "ms")

    notifications:notify {
        Title = "Trip Hub", 
        Description = "the best anti-lag By Space#0234",
        Icon = 6031071053, 
        Length = tiempo
    }

    end)


local Tab = Window:NewTab("Credits")
local Section = Tab:NewSection("Credits")


Section:NewButton("Copy Discord link", "Discord", function()
    no:Play()
setclipboard("https://discord.gg/79fKXVuJfr")
end)

Section:NewButton("Copy Roblox link", "Roblox", function()
    no:Play()
setclipboard("https://www.roblox.com/users/2205701910/profile")
end)

Section:NewButton("Copy Youtube link", "Youtube", function()
    no:Play()
setclipboard("https://www.youtube.com/channel/UCRiszwo8e1FmlWUBhPRMUsQ")
end)

local Section = Tab:NewSection("Settings UI")

Section:NewToggle("Disable Sounds", "Disable Sounds", function(value)
if value then

yes.Volume = "0"
no.Volume = "0"

else 

yes.Volume = "0.5"
no.Volume = "0.5"

end
end)

Section:NewKeybind("close/open Key", "key (Y)", Enum.KeyCode.Y, function()
	Library:ToggleUI()
end)

Section:NewButton("close/open Ui Button ", "For mob", function()
--By Space#0234
yes:Play()
local button = Instance.new("ScreenGui")
local TopBar = Instance.new("Frame")
local mini = Instance.new("TextButton")
local x = Instance.new("TextButton")
local framee = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local UICorner_2 = Instance.new("UICorner")
local textt = Instance.new("TextLabel")



button.Name = "button"
button.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
button.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
button.ResetOnSpawn = false

TopBar.Name = "TopBar"
TopBar.Parent = button
TopBar.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
TopBar.BorderColor3 = Color3.fromRGB(27, 42, 53)
TopBar.BorderSizePixel = 0
TopBar.Position = UDim2.new(0.0744680837, 0, 0.0784066543, 0)
TopBar.Size = UDim2.new(0, 232, 0, 37)

mini.Name = "mini"
mini.Parent = TopBar
mini.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
mini.BackgroundTransparency = 5.000
mini.Position = UDim2.new(0.663793087, 0, 0.0285714287, 0)
mini.Size = UDim2.new(0, 42, 0, 34)
mini.Font = Enum.Font.SourceSans
mini.Text = "-"
mini.TextColor3 = Color3.fromRGB(255, 255, 255)
mini.TextScaled = true
mini.TextSize = 14.000
mini.TextWrapped = true

x.Name = "x"
x.Parent = TopBar
x.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
x.BackgroundTransparency = 5.000
x.Position = UDim2.new(0.844827592, 0, -2.17982702e-07, 0)
x.Size = UDim2.new(0, 36, 0, 35)
x.Font = Enum.Font.SourceSans
x.Text = "x"
x.TextColor3 = Color3.fromRGB(255, 0, 0)
x.TextScaled = true
x.TextSize = 14.000
x.TextWrapped = true

framee.Name = "framee"
framee.Parent = TopBar
framee.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
framee.Position = UDim2.new(-0.00182105752, 0, 0.783783555, 0)
framee.Size = UDim2.new(0, 232, 0, 74)

TextButton.Parent = framee
TextButton.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
TextButton.Position = UDim2.new(0.0462964028, 0, 0.167782724, 0)
TextButton.Size = UDim2.new(0, 211, 0, 48)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Close/Open"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

textt.Name = "textt"
textt.Parent = TopBar
textt.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
textt.BackgroundTransparency = 5.000
textt.Position = UDim2.new(0.044475358, 0, 0, 0)
textt.Size = UDim2.new(0, 143, 0, 34)
textt.Font = Enum.Font.SourceSans
textt.Text = "By Space#0234"
textt.TextColor3 = Color3.fromRGB(255, 255, 255)
textt.TextScaled = true
textt.TextSize = 14.000
textt.TextWrapped = true

UICorner.CornerRadius = UDim.new(0, 10)
UICorner.Parent = TextButton

UICorner_2.CornerRadius = UDim.new(0, 10)
UICorner_2.Parent = framee

-- Scripts:

local function DPOJU_fake_script() -- mini.mini 
	local script = Instance.new('LocalScript', mini)

	local framee = game.Players.LocalPlayer.PlayerGui.button.TopBar.framee
	local Button = game.Players.LocalPlayer.PlayerGui.button.TopBar.framee.TextButton


	local state = true

	local TweenService = game:GetService("TweenService")

	local Tweentime = 0.5

	local GlobalTweenInfo = TweenInfo.new(Tweentime)

	local function Tween(GuiObject, Dictionary)
		local TweenBase = TweenService:Create(GuiObject, GlobalTweenInfo, Dictionary)
		TweenBase:Play()

	end
	script.Parent.MouseButton1Down:Connect(function()

		state = not state
		if not state then


			script.Parent.Text = "+"
			Tween(framee, {Size = UDim2.new(0,0,0,0)})
			Tween(Button, {Size = UDim2.new(0,0,0,0)})
			for i, v in pairs(script.Parent.Parent.Parent:GetChildren()) do
				if v:IsA("TextButton") then 

					v.Visible = false
					v.TextLabel.Visible = false
				end
			end


		else


			script.Parent.Text = "-"
			Tween(framee, {Size = UDim2.new(0, 232,0,74)})
			Tween(Button, {Size = UDim2.new(0, 211,0,48)})
			for i, v in pairs(script.Parent.Parent.Parent:GetChildren()) do
				if v:IsA("TextButton") then 
					--script:

					v.Visible = true
					v.TextLabel.Visible = true


				end
			end
		end
	end)
	end



coroutine.wrap(DPOJU_fake_script)()
local function VIQNG_fake_script() -- x.close 
	local script = Instance.new('LocalScript', x)


	local Top = game.Players.LocalPlayer.PlayerGui.button.TopBar.framee
	local But = game.Players.LocalPlayer.PlayerGui.button.TopBar.framee.TextButton
	local ez = game.Players.LocalPlayer.PlayerGui.button.TopBar




	script.Parent.MouseButton1Down:Connect(function()

		game.TweenService:Create(But, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut),{

			Visible = false
		} 

		):Play()
		wait()

		game.TweenService:Create(Top, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut),{

			BackgroundTransparency = 1
		} 

		):Play()
		wait()

		game.TweenService:Create(ez, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {



			Size = UDim2.new(0,0,0,0),
			Visible = false,

			Position = UDim2.new(0, ez.AbsolutePosition.X + (ez.AbsoluteSize.X / 2), 0, ez.AbsolutePosition.Y + (ez.AbsoluteSize.Y / 2))
		}):Play()
		wait(2)


		local framee = game.Players.LocalPlayer.PlayerGui.button:Destroy()


	end)


end
coroutine.wrap(VIQNG_fake_script)()
local function UKQGHD_fake_script() -- TextButton.Open 
	local script = Instance.new('LocalScript', TextButton)

	local state = true
	script.Parent.MouseButton1Down:Connect(function()
		state = not state
		if not state then
			script.Parent.Text = "open UI"
			game:GetService("CoreGui")["Trip Hub"].Enabled = false
			for i, v in pairs(script.Parent.Parent.Parent:GetChildren()) do
				if v:IsA("TextButton") then 
					--script:

					v.Visible = false
					v.TextButton.Visible = false
				end
			end
		else
			script.Parent.Text = "close UI"
			game:GetService("CoreGui")["Trip Hub"].Enabled = true
			for i, v in pairs(script.Parent.Parent.Parent:GetChildren()) do
				if v:IsA("TextButton") then 
					--script:

					v.Visible = true
					v.TextButton.Visible = true
				end
			end
		end
	end)

end
coroutine.wrap(UKQGHD_fake_script)()
local function NZUQWVR_fake_script() -- TopBar.Dragg 
	local script = Instance.new('LocalScript', TopBar)

	local top = game.Players.LocalPlayer.PlayerGui.button.TopBar

	top.Active = true
	top.Draggable = true
end
coroutine.wrap(NZUQWVR_fake_script)()

end)
 

local Section = Tab:NewSection("Themes for UI")

Section:NewButton("Select Themes", "8 new themes", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/elxocasXD/scripts/main/select.lua"))()

end)




--noti owner
loadstring(game:HttpGet("https://raw.githubusercontent.com/GamerEmilianoFF/scripts/main/theow.lua"))()







_G.Rainbow_Enabled = false -- enables rainbow line
 
_G.Low_FPS_Enabled = {
    true, -- true/false
    20, -- amount of frames before changing colors
    Color3.fromRGB(255,0,0) -- color for Low_FPS
}
 
_G.High_Ping_Enabled = {
    true, -- true/false
    350, -- amount of ping before changing colors
    Color3.fromRGB(255,0,0) -- color for High_Ping
}
 
_G.Time_Format = 12 -- 24/12
 
loadstring(game:HttpGet(("https://raw.githubusercontent.com/IiIIiIiIIIiiIiiIIiIIIii-warrior/scripts/master/fps.lua"), true))()
