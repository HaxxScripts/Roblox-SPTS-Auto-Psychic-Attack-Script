local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local PAttackGui = Instance.new("ScreenGui")

PAttackGui.Name = "PAttackGui"
PAttackGui.Parent = game.CoreGui

------------------------------------------------------------------ Welcome Frame

local WelcomeFrame = Instance.new("Frame")

WelcomeFrame.Name = "WelcomeFrame"
WelcomeFrame.Parent = PAttackGui

WelcomeFrame.Position = UDim2.new(0.3, 0, 0.125, 0)
WelcomeFrame.Size = UDim2.new(0.4, 0, 0.7, 0)

WelcomeFrame.BackgroundColor3 = Color3.new(0.188235, 0, 0.188235)

--------------------------- Welcome Frame Text

local WelcomeFrameLabel = Instance.new("TextButton")
local WelcomeFrameText = "Psychic Auto Attack Script.\n\n Made by HaxxScripts, This scirpt is free, if you paid for it, you should report it. To use this script, you have to have a high enough psychic is do the soul attack. \nThis scirpt only targets people who you are able to kill with psychic. You may also need to go close to people to kill them,\n the highier your psychic, the farther away you can kill people with!\nYou can help us make more scripts and programs by donating in Bitcoin, this is completey optional of course. (Click on the Code to Copy.)"

WelcomeFrameLabel.Name = "WelcomeFrameLabel"
WelcomeFrameLabel.Parent = WelcomeFrame
WelcomeFrameLabel.BackgroundTransparency = 1
WelcomeFrameLabel.Position = UDim2.new(0.1, 0, 0.1, 0)
WelcomeFrameLabel.Size = UDim2.new(0.8, 0, 0.8, 0)

WelcomeFrameLabel.Selected = true

WelcomeFrameLabel.Font = Enum.Font.SourceSansItalic
WelcomeFrameLabel.Text = WelcomeFrameText
WelcomeFrameLabel.TextColor3 = Color3.new(255, 255, 255)
WelcomeFrameLabel.TextSize = 18
WelcomeFrameLabel.TextStrokeTransparency = 1
WelcomeFrameLabel.TextWrapped = true
WelcomeFrameLabel.TextXAlignment = Enum.TextXAlignment.Center
WelcomeFrameLabel.TextYAlignment = Enum.TextYAlignment.Top

--------------------------- Welcome Frame Text

local OwnerBTCReceiveBoxWelcomeFrame = Instance.new("TextBox")
local Owner_BTC_Receive_ID = "bc1qns62v5xu6nn57xvypxugql09fupzzkgvv0nvkh"

OwnerBTCReceiveBoxWelcomeFrame.Name = "OwnerBTCReceiveBoxWelcomeFrame"
OwnerBTCReceiveBoxWelcomeFrame.Parent = WelcomeFrame
OwnerBTCReceiveBoxWelcomeFrame.BackgroundTransparency = 1
OwnerBTCReceiveBoxWelcomeFrame.BorderSizePixel = 2
OwnerBTCReceiveBoxWelcomeFrame.Position = UDim2.new(0.2, 0, 0.5, 0)
OwnerBTCReceiveBoxWelcomeFrame.Size = UDim2.new(0.6, 0, 0.3, 0)
OwnerBTCReceiveBoxWelcomeFrame.Font = Enum.Font.SourceSansItalic
OwnerBTCReceiveBoxWelcomeFrame.Text = "bc1qns62v5xu6nn57xvypxugql09fupzzkgvv0nvkh"
OwnerBTCReceiveBoxWelcomeFrame.TextColor3 = Color3.new(255, 255, 255)
OwnerBTCReceiveBoxWelcomeFrame.TextScaled = true
OwnerBTCReceiveBoxWelcomeFrame.TextStrokeTransparency = 1
OwnerBTCReceiveBoxWelcomeFrame.TextWrapped = true
OwnerBTCReceiveBoxWelcomeFrame.TextScaled = true

OwnerBTCReceiveBoxWelcomeFrame.Focused:Connect(function()
	OwnerBTCReceiveBoxWelcomeFrame.Text = Owner_BTC_Receive_ID
end)

OwnerBTCReceiveBoxWelcomeFrame.FocusLost:Connect(function()
	OwnerBTCReceiveBoxWelcomeFrame.Text = Owner_BTC_Receive_ID
end)

--------------------------- Welcome Frame Close Button

local WelcomeFrameCloseButton = Instance.new("TextButton")

WelcomeFrameCloseButton.Name = "WelcomeFrameCloseButton"
WelcomeFrameCloseButton.Parent = WelcomeFrame
WelcomeFrameCloseButton.BackgroundColor3 = Color3.new(0.490196, 0, 0.00784314)
WelcomeFrameCloseButton.BackgroundTransparency = 0
WelcomeFrameCloseButton.BorderColor3 = Color3.new(0, 0, 0)
WelcomeFrameCloseButton.BorderSizePixel = 2
WelcomeFrameCloseButton.Position = UDim2.new(0.45, 0, 0.8, 0)
WelcomeFrameCloseButton.Size = UDim2.new(0.1, 0, 0.05, 0)
WelcomeFrameCloseButton.Selected = true
WelcomeFrameCloseButton.Font = Enum.Font.Cartoon
WelcomeFrameCloseButton.Text = "Close"
WelcomeFrameCloseButton.TextColor3 = Color3.new(255, 255, 255)
WelcomeFrameCloseButton.TextScaled = true
WelcomeFrameCloseButton.TextSize = 14
WelcomeFrameCloseButton.TextStrokeTransparency = 0
WelcomeFrameCloseButton.TextWrapped = true

WelcomeFrameCloseButton.MouseButton1Up:Connect(function()
	WelcomeFrame:Destroy()
end)


------------------------------------------------------------------ Attack All
local TogglePAttackAll = Instance.new("TextButton")
local Attack_All_Active = false 

TogglePAttackAll.Name = "TogglePAttackAll"
TogglePAttackAll.Parent = PAttackGui
TogglePAttackAll.BackgroundColor3 = Color3.new(32, 0, 48)
TogglePAttackAll.BackgroundTransparency = 0.5
TogglePAttackAll.BorderColor3 = Color3.new(0, 0, 0)
TogglePAttackAll.BorderSizePixel = 2
TogglePAttackAll.Position = UDim2.new(0.89, 0, 0.44, 0)
TogglePAttackAll.Size = UDim2.new(0.1, 0, 0.05, 0)
TogglePAttackAll.Selected = true
TogglePAttackAll.Font = Enum.Font.Cartoon
TogglePAttackAll.Text = "START SOUL ATTACK ON ALL"
TogglePAttackAll.TextColor3 = Color3.new(129, 0, 193)
TogglePAttackAll.TextScaled = true
TogglePAttackAll.TextSize = 14
TogglePAttackAll.TextStrokeTransparency = 0
TogglePAttackAll.TextWrapped = true

TogglePAttackAll.MouseButton1Up:Connect(function()
	if not Attack_All_Active then
		TogglePAttackAll.Text = "STOP SOUL ATTACK ON ALL"
		TogglePAttackAll.BackgroundColor3 = Color3.new(67, 139, 255)
		TogglePAttackAll.TextColor3 = Color3.new(97, 164, 193)
		Attack_All_Active = true
	else
		TogglePAttackAll.Text = "START SOUL ATTACK ON ALL"
		TogglePAttackAll.BackgroundColor3 = Color3.new(32, 0, 48)
		TogglePAttackAll.TextColor3 = Color3.new(129, 0, 193)
		Attack_All_Active = false
	end
end)

spawn(function()
	while wait() do
		while Attack_All_Active do
			for i,v in pairs(game.Players:GetPlayers()) do
				pcall(function()
					if (game.Players[LocalPlayer.Name].PrivateStats.PsychicPower.Value / 10) > game.Players[v.Name].PrivateStats.PsychicPower.Value then
						game.ReplicatedStorage.RemoteEvent:FireServer({"Skill_SoulAttack_Start",game.Players[v.Name]})
						game.ReplicatedStorage.RemoteEvent:FireServer({"Skill_SoulAttack_End"})
					end
				end)
				wait()
			end
		end
	end
end)

------------------------------------------------------------------ Attack Only VIllain
local TogglePAttackAllVillain = Instance.new("TextButton")
local Attack_All_Villain_Active = false

TogglePAttackAllVillain.Name = "TogglePAttackAllVillain"
TogglePAttackAllVillain.Parent = PAttackGui
TogglePAttackAllVillain.BackgroundColor3 = Color3.new(32, 0, 48)
TogglePAttackAllVillain.BackgroundTransparency = 0.5
TogglePAttackAllVillain.BorderColor3 = Color3.new(0, 0, 0)
TogglePAttackAllVillain.BorderSizePixel = 2
TogglePAttackAllVillain.Position = UDim2.new(0.89, 0, 0.36, 0)
TogglePAttackAllVillain.Size = UDim2.new(0.1, 0, 0.05, 0)
TogglePAttackAllVillain.Selected = true
TogglePAttackAllVillain.Font = Enum.Font.Cartoon
TogglePAttackAllVillain.Text = "START SOUL ATTACK ON ALL VILLAINS"
TogglePAttackAllVillain.TextColor3 = Color3.new(129, 0, 193)
TogglePAttackAllVillain.TextScaled = true
TogglePAttackAllVillain.TextSize = 14
TogglePAttackAllVillain.TextStrokeTransparency = 0
TogglePAttackAllVillain.TextWrapped = true

TogglePAttackAllVillain.MouseButton1Up:Connect(function()
	if not Attack_All_Villain_Active then
		TogglePAttackAllVillain.Text = "STOP SOUL ATTACK ON ALL VILLAINS"
		TogglePAttackAllVillain.BackgroundColor3 = Color3.new(67, 139, 255)
		TogglePAttackAllVillain.TextColor3 = Color3.new(97, 164, 193)
		Attack_All_Villain_Active = true
	else
		TogglePAttackAllVillain.Text = "START SOUL ATTACK ON ALL VILLAINS"
		TogglePAttackAllVillain.BackgroundColor3 = Color3.new(32, 0, 48)
		TogglePAttackAllVillain.TextColor3 = Color3.new(129, 0, 193)
		Attack_All_Villain_Active = false
	end
end)

spawn(function()
	while wait() do
		while Attack_All_Villain_Active do
			for i,v in pairs(game.Players:GetPlayers()) do
				pcall(function()
					if (game.Players[LocalPlayer.Name].PrivateStats.PsychicPower.Value / 10) > game.Players[v.Name].PrivateStats.PsychicPower.Value and game.Players[v.Name].PrivateStats.Reputation.Value < 0 then
						game.ReplicatedStorage.RemoteEvent:FireServer({"Skill_SoulAttack_Start",game.Players[v.Name]})
						game.ReplicatedStorage.RemoteEvent:FireServer({"Skill_SoulAttack_End"})
					end
				end)
				wait()
			end
		end
	end
end)

------------------------------------------------------------------ Attack Only Hero
local TogglePAttackAllHero = Instance.new("TextButton")
local Attack_All_Hero_Active = false

TogglePAttackAllHero.Name = "TogglePAttackAllHero"
TogglePAttackAllHero.Parent = PAttackGui
TogglePAttackAllHero.BackgroundColor3 = Color3.new(32, 0, 48)
TogglePAttackAllHero.BackgroundTransparency = 0.5
TogglePAttackAllHero.BorderColor3 = Color3.new(0, 0, 0)
TogglePAttackAllHero.BorderSizePixel = 2
TogglePAttackAllHero.Position = UDim2.new(0.89, 0, 0.28, 0)
TogglePAttackAllHero.Size = UDim2.new(0.1, 0, 0.05, 0)
TogglePAttackAllHero.Selected = true
TogglePAttackAllHero.Font = Enum.Font.Cartoon
TogglePAttackAllHero.Text = "START SOUL ATTACK ON ALL HEROES"
TogglePAttackAllHero.TextColor3 = Color3.new(129, 0, 193)
TogglePAttackAllHero.TextScaled = true
TogglePAttackAllHero.TextSize = 14
TogglePAttackAllHero.TextStrokeTransparency = 0
TogglePAttackAllHero.TextWrapped = true

TogglePAttackAllHero.MouseButton1Up:Connect(function()
	if not Attack_All_Hero_Active then
		TogglePAttackAllHero.Text = "STOP SOUL ATTACK ON ALL HEROES"
		TogglePAttackAllHero.BackgroundColor3 = Color3.new(67, 139, 255)
		TogglePAttackAllHero.TextColor3 = Color3.new(97, 164, 193)
		Attack_All_Hero_Active = true
	else
		TogglePAttackAllHero.Text = "START SOUL ATTACK ON ALL HEROES"
		TogglePAttackAllHero.BackgroundColor3 = Color3.new(32, 0, 48)
		TogglePAttackAllHero.TextColor3 = Color3.new(129, 0, 193)
		Attack_All_Hero_Active = false
	end
end)

spawn(function()
	while wait() do
		while Attack_All_Hero_Active do
			for i,v in pairs(game.Players:GetPlayers()) do
				pcall(function()
					if (game.Players[LocalPlayer.Name].PrivateStats.PsychicPower.Value / 10) > game.Players[v.Name].PrivateStats.PsychicPower.Value and game.Players[v.Name].PrivateStats.Reputation.Value > 0 then
						game.ReplicatedStorage.RemoteEvent:FireServer({"Skill_SoulAttack_Start",game.Players[v.Name]})
						game.ReplicatedStorage.RemoteEvent:FireServer({"Skill_SoulAttack_End"})
					end
				end)
				wait()
			end
		end
	end
end)

------------------------------------------------------------------ Attack Only Innocent
local TogglePAttackAllInnocent = Instance.new("TextButton")
local Attack_All_Innocent_Active = false

TogglePAttackAllInnocent.Name = "TogglePAttackAllInnocent"
TogglePAttackAllInnocent.Parent = PAttackGui
TogglePAttackAllInnocent.BackgroundColor3 = Color3.new(32, 0, 48)
TogglePAttackAllInnocent.BackgroundTransparency = 0.5
TogglePAttackAllInnocent.BorderColor3 = Color3.new(0, 0, 0)
TogglePAttackAllInnocent.BorderSizePixel = 2
TogglePAttackAllInnocent.Position = UDim2.new(0.89, 0, 0.2, 0)
TogglePAttackAllInnocent.Size = UDim2.new(0.1, 0, 0.05, 0)
TogglePAttackAllInnocent.Selected = true
TogglePAttackAllInnocent.Font = Enum.Font.Cartoon
TogglePAttackAllInnocent.Text = "START SOUL ATTACK ON ALL INNOCENT"
TogglePAttackAllInnocent.TextColor3 = Color3.new(129, 0, 193)
TogglePAttackAllInnocent.TextScaled = true
TogglePAttackAllInnocent.TextSize = 14
TogglePAttackAllInnocent.TextStrokeTransparency = 0
TogglePAttackAllInnocent.TextWrapped = true

TogglePAttackAllInnocent.MouseButton1Up:Connect(function()
	if not Attack_All_Innocent_Active then
		TogglePAttackAllInnocent.Text = "STOP SOUL ATTACK ON ALL INNOCENT"
		TogglePAttackAllInnocent.BackgroundColor3 = Color3.new(67, 139, 255)
		TogglePAttackAllInnocent.TextColor3 = Color3.new(97, 164, 193)
		Attack_All_Innocent_Active = true
	else
		TogglePAttackAllInnocent.Text = "START SOUL ATTACK ON ALL INNOCENT"
		TogglePAttackAllInnocent.BackgroundColor3 = Color3.new(32, 0, 48)
		TogglePAttackAllInnocent.TextColor3 = Color3.new(129, 0, 193)
		Attack_All_Innocent_Active = false
	end
end)

spawn(function()
	while wait() do
		while Attack_All_Innocent_Active do
			for i,v in pairs(game.Players:GetPlayers()) do
				pcall(function()
					if (game.Players[LocalPlayer.Name].PrivateStats.PsychicPower.Value / 10) > game.Players[v.Name].PrivateStats.PsychicPower.Value and game.Players[v.Name].PrivateStats.Reputation.Value == 0 then
						game.ReplicatedStorage.RemoteEvent:FireServer({"Skill_SoulAttack_Start",game.Players[v.Name]})
						game.ReplicatedStorage.RemoteEvent:FireServer({"Skill_SoulAttack_End"})
					end
				end)
				wait()
			end
		end
	end
end)

------------------------------------------------------------------ Donate Text
local DonateLabel = Instance.new("TextButton")

DonateLabel.Name = "DonateLabel"
DonateLabel.Parent = PAttackGui
DonateLabel.BackgroundColor3 = Color3.new(1, 0, 0)
DonateLabel.BackgroundTransparency = 1
DonateLabel.BorderColor3 = Color3.new(0, 0, 0)
DonateLabel.BorderSizePixel = 2
DonateLabel.Position = UDim2.new(0.89, 0, 0.12, 0)
DonateLabel.Size = UDim2.new(0.1, 0, 0.05, 0)
DonateLabel.Selected = true
DonateLabel.Font = Enum.Font.SourceSansItalic
DonateLabel.Text = "Donate to fund more scripts in Bitcoin! (Click the Code to Copy):"
DonateLabel.TextColor3 = Color3.new(255, 255, 255)
DonateLabel.TextScaled = true
DonateLabel.TextSize = 14
DonateLabel.TextStrokeTransparency = 1
DonateLabel.TextWrapped = true
DonateLabel.TextXAlignment = Enum.TextXAlignment.Left

------------------------------------------------------------------ BTC Account Number

local OwnerBTCReceiveBox = Instance.new("TextBox")
local Owner_BTC_Receive_ID = "bc1qns62v5xu6nn57xvypxugql09fupzzkgvv0nvkh"

OwnerBTCReceiveBox.Name = "OwnerBTCReceiveBox"
OwnerBTCReceiveBox.Parent = PAttackGui
OwnerBTCReceiveBox.BackgroundTransparency = 1
OwnerBTCReceiveBox.BorderSizePixel = 2
OwnerBTCReceiveBox.Position = UDim2.new(0.89, 0, 0.16, 0)
OwnerBTCReceiveBox.Size = UDim2.new(0.1, 0, 0.05, 0)
OwnerBTCReceiveBox.Font = Enum.Font.SourceSansItalic
OwnerBTCReceiveBox.Text = "bc1qns62v5xu6nn57xvypxugql09fupzzkgvv0nvkh"
OwnerBTCReceiveBox.TextColor3 = Color3.new(255, 255, 255)
OwnerBTCReceiveBox.TextScaled = true
OwnerBTCReceiveBox.TextSize = 14
OwnerBTCReceiveBox.TextStrokeTransparency = 1
OwnerBTCReceiveBox.TextWrapped = true
OwnerBTCReceiveBox.TextScaled = true

OwnerBTCReceiveBox.Focused:Connect(function()
	OwnerBTCReceiveBox.Text = Owner_BTC_Receive_ID
end)

OwnerBTCReceiveBox.FocusLost:Connect(function()
	OwnerBTCReceiveBox.Text = Owner_BTC_Receive_ID
end)