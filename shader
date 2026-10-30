-- // LIGHTNING HUB - Key System
-- // Prepared by: halilibrahimseviml1

local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")
local CoreGui = game:GetService("CoreGui")
local TweenService = game:GetService("TweenService")

local LocalPlayer = Players.LocalPlayer
local KeyListURL = "https://pastebin.com/raw/4XqE6xg0"
local DiscordURL = "https://discord.gg/Aju5HECm3"

-- Key System GUI Setup
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "LightningKeySystem"
ScreenGui.Parent = CoreGui
ScreenGui.ResetOnSpawn = false

local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 300, 0, 200)
MainFrame.Position = UDim2.new(0.5, -150, 0.5, -100)
MainFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
MainFrame.BorderSizePixel = 0
MainFrame.Parent = ScreenGui

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 8)
UICorner.Parent = MainFrame

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 0, 40)
Title.BackgroundTransparency = 1
Title.Text = "LIGHTNING HUB - Key System"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 14
Title.Font = Enum.Font.GothamBold
Title.Parent = MainFrame

local TextBox = Instance.new("TextBox")
TextBox.Size = UDim2.new(0.85, 0, 0, 35)
TextBox.Position = UDim2.new(0.075, 0, 0, 45)
TextBox.PlaceholderText = "Enter key here..."
TextBox.Text = ""
TextBox.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextSize = 13
TextBox.Font = Enum.Font.Gotham
TextBox.Parent = MainFrame

local TextBoxCorner = Instance.new("UICorner")
TextBoxCorner.CornerRadius = UDim.new(0, 6)
TextBoxCorner.Parent = TextBox

local SubmitBtn = Instance.new("TextButton")
SubmitBtn.Size = UDim2.new(0.85, 0, 0, 35)
SubmitBtn.Position = UDim2.new(0.075, 0, 0, 90)
SubmitBtn.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
SubmitBtn.Text = "Submit Key"
SubmitBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
SubmitBtn.TextSize = 14
SubmitBtn.Font = Enum.Font.GothamBold
SubmitBtn.Parent = MainFrame

local BtnCorner = Instance.new("UICorner")
BtnCorner.CornerRadius = UDim.new(0, 6)
BtnCorner.Parent = SubmitBtn

local GetKeyBtn = Instance.new("TextButton")
GetKeyBtn.Size = UDim2.new(0.85, 0, 0, 35)
GetKeyBtn.Position = UDim2.new(0.075, 0, 0, 135)
GetKeyBtn.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
GetKeyBtn.Text = "Get Key"
GetKeyBtn.TextColor3 = Color3.fromRGB(200, 200, 200)
GetKeyBtn.TextSize = 14
GetKeyBtn.Font = Enum.Font.GothamBold
GetKeyBtn.Parent = MainFrame

local GetKeyCorner = Instance.new("UICorner")
GetKeyCorner.CornerRadius = UDim.new(0, 6)
GetKeyCorner.Parent = GetKeyBtn

-- Yan Bildirim (Notification) Arayüzü
local function ShowNotification(message)
    local NotifFrame = Instance.new("Frame")
    NotifFrame.Size = UDim2.new(0, 180, 0, 40)
    NotifFrame.Position = UDim2.new(1, 10, 0.5, -20) -- Sağ tarafta gizli başlar
    NotifFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    NotifFrame.BorderSizePixel = 0
    NotifFrame.Parent = MainFrame

    local NotifCorner = Instance.new("UICorner")
    NotifCorner.CornerRadius = UDim.new(0, 6)
    NotifCorner.Parent = NotifFrame

    local NotifText = Instance.new("TextLabel")
    NotifText.Size = UDim2.new(1, 0, 1, 0)
    NotifText.BackgroundTransparency = 1
    NotifText.Text = message
    NotifText.TextColor3 = Color3.fromRGB(0, 255, 128)
    NotifText.TextSize = 12
    NotifText.Font = Enum.Font.GothamBold
    NotifText.Parent = NotifFrame

    -- Kayma Animasyonu (İçeri Kayma)
    TweenService:Create(NotifFrame, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        Position = UDim2.new(1, 15, 0.5, -20)
    }):Play()

    -- 2 saniye sonra kaybolma
    task.delay(2, function()
        local tweenOut = TweenService:Create(NotifFrame, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
            Position = UDim2.new(1, 10, 0.5, -20)
        })
        tweenOut:Play()
        tweenOut.Completed:Connect(function()
            NotifFrame:Destroy()
        end)
    end)
end

-- Get Key Buton Mantığı
GetKeyBtn.MouseButton1Click:Connect(function()
    if setclipboard then
        setclipboard(DiscordURL)
    elseif toclipboard then
        toclipboard(DiscordURL)
    end
    ShowNotification("Kopyalandı!")
end)

-- Function to launch main script upon valid key
local function StartMainScript()
    ScreenGui:Destroy()
    print("Key verified! Executing script...")
--[================================================================]--
-- LIGHTNING HUB - PERFECT INVISIBLE-FIXED REFLECTION ENGINE
-- Prepared by: halilibrahimseviml1
-- Target: Roblox Exploits / Executors
--[================================================================]--

local Lighting = game:GetService("Lighting")
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")

local player = Players.LocalPlayer

-- ====================================================================
-- TEMİZLİK MOTORU (Önceki tüm efektleri temizler)
-- ====================================================================
for _, v in ipairs(Lighting:GetChildren()) do
	if v.Name:find("RealisticShader_") or v.Name:find("UltraShader_") then
		v:Destroy()
	end
end

-- ====================================================================
-- 1. IŞIK VE GÖLGE MOTORU
-- ====================================================================
Lighting.Technology = Enum.Technology.Future
Lighting.GlobalShadows = true
Lighting.ShadowSoftness = 0.05
Lighting.Brightness = 1.45
Lighting.ClockTime = 14.0 
Lighting.GeographicLatitude = 45.0
Lighting.OutdoorAmbient = Color3.fromRGB(135, 135, 140)
Lighting.Ambient = Color3.fromRGB(85, 85, 90)
Lighting.EnvironmentSpecularScale = 2.2
Lighting.EnvironmentDiffuseScale = 1.2

-- ====================================================================
-- 2. CANLI VE NET TONLAR (Uzaklar Asla Bulanıklaşmaz)
-- ====================================================================
local cc = Instance.new("ColorCorrectionEffect")
cc.Name = "RealisticShader_CC"
cc.Brightness = 0.01
cc.Contrast = 0.15
cc.Saturation = 0.1
cc.TintColor = Color3.fromRGB(255, 255, 255)
cc.Parent = Lighting

local bloom = Instance.new("BloomEffect")
bloom.Name = "RealisticShader_Bloom"
bloom.Intensity = 0.25
bloom.Size = 20
bloom.Threshold = 0.8
bloom.Parent = Lighting

-- ====================================================================
-- 3. GÖRÜNMEZ BLOKLARI KORuyan TAM YANSIMA MOTORU
-- ====================================================================
local function ApplySafeGlassEngine()
	for _, obj in ipairs(Workspace:GetDescendants()) do
		if obj:IsA("BasePart") then
			-- Görünmez blokları (Transparency = 1 veya CanCollide kapalı/gizli alanlar) atla!
			if obj.Transparency >= 0.95 or obj.Name == "Hitbox" or obj.Name == "Invisible" then
				-- Bu bloklara dokunmuyoruz, gizli kalıyorlar
				continue
			end

			local isCharacter = false
			if obj.Parent and obj.Parent:FindFirstChildOfClass("Humanoid") then
				isCharacter = true
			end

			if isCharacter then
				-- Karakterlerin yüzünü ve kafasını bozmadan vücut kısımlarını cam gibi parlat
				if obj.Name ~= "Head" and not obj:FindFirstChildOfClass("Decal") then
					obj.Material = Enum.Material.Glass
					obj.Reflectance = 0.75
				end
			else
				-- Haritadaki normal zeminler, duvarlar cam gibi parlar
				obj.Material = Enum.Material.Glass
				obj.Reflectance = 0.80
			end
		end
	end
end

-- Çalıştır
ApplySafeGlassEngine()

player.CharacterAdded:Connect(function()
	task.wait(1)
	ApplySafeGlassEngine()
end)
-- Key Verification Handling
SubmitBtn.MouseButton1Click:Connect(function()
    local userKey = TextBox.Text
    
    local success, result = pcall(function()
        return game:HttpGet(KeyListURL)
    end)
    
    if success then
        local isValid = false
        for key in string.gmatch(result, "[^\r\n]+") do
            if string.match(key, "^%s*(.-)%s*$") == userKey then
                isValid = true
                break
            end
        end
        
        if isValid then
            SubmitBtn.Text = "Success!"
            SubmitBtn.BackgroundColor3 = Color3.fromRGB(0, 255, 128)
            task.wait(1)
            StartMainScript()
        else
            SubmitBtn.Text = "Invalid Key!"
            SubmitBtn.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
            task.wait(1.5)
            SubmitBtn.Text = "Submit Key"
            SubmitBtn.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
        end
    else
        SubmitBtn.Text = "Connection Error!"
        task.wait(1.5)
        SubmitBtn.Text = "Submit Key"
    end
end)
