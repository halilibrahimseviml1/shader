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
