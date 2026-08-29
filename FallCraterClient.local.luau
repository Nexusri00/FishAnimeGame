-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- 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

-- https://lua.expert/
local Players = game:GetService("Players")

game:GetService("ReplicatedStorage")

local LocalPlayer = Players.LocalPlayer
local Crater_Module = require(game.ReplicatedStorage.Modules.Crater_Module)
local v1 = nil
local v2 = nil
local v3 = nil
local v4 = nil
local v5 = 0

local function spawnCrater() --[[ spawnCrater | Line: 16 | Upvalues: v1 (ref), Crater_Module (copy) ]]
	local v12 = v1 and v1:FindFirstChild("HumanoidRootPart")

	if v12 then
		Crater_Module:Spawn({
			Amount = 12,
			AmountPerUnit = 2,
			DespawnTime = 5,
			Position = v12.Position,
			Radius = { 3, 6 },
			Angle = { 10, 30 },
			Size = { 2.5, 3 },
			Offset = {
				X = 0,
				Y = 0.5,
				Z = 0
			}
		})
	end
end

local function bindCharacter(p1) --[[ bindCharacter | Line: 34 | Upvalues: v1 (ref), v2 (ref), v3 (ref), v4 (ref), v5 (ref), spawnCrater (copy) ]]
	v1 = p1
	v2 = p1 and (p1:FindFirstChildOfClass("Humanoid") or p1:WaitForChild("Humanoid", 10)) or nil
	v3 = if p1 then p1:FindFirstChild("HumanoidRootPart") or (p1:WaitForChild("HumanoidRootPart", 10) or nil) else nil

	if v4 then
		v4:Disconnect()
		v4 = nil
	end

	if v2 and v3 then
		v4 = v2.StateChanged:Connect(function(p1, p2) --[[ Line: 47 | Upvalues: v3 (ref), v5 (ref), spawnCrater (ref) ]]
			if p1 ~= Enum.HumanoidStateType.Freefall and p1 ~= Enum.HumanoidStateType.FallingDown then
				return
			end

			if p2 == Enum.HumanoidStateType.Freefall or p2 == Enum.HumanoidStateType.FallingDown then
				return
			end

			if v3.Velocity.Y * -1 < 160 then
				return
			end

			local v1 = os.clock()

			if not (v1 - v5 < 1) then
				v5 = v1
				spawnCrater()
			end
		end)
	end
end

LocalPlayer.CharacterAdded:Connect(bindCharacter)

if not LocalPlayer.Character then
	return
end

bindCharacter(LocalPlayer.Character)