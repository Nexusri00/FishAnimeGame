-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- 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

-- https://lua.expert/
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local SharedClientLoop = require(ReplicatedStorage:WaitForChild("Modules"):WaitForChild("SharedClientLoop"))
local LocalPlayer = Players.LocalPlayer
local PlayerPlots = workspace:WaitForChild("PlayerPlots")
local t = {}

local function plotFor(p1) --[[ plotFor | Line: 25 | Upvalues: PlayerPlots (copy) ]]
	local v1 = p1

	while v1 and v1.Parent do
		if v1.Parent == PlayerPlots then
			return v1
		end

		v1 = v1.Parent
	end

	return nil
end

local function addBox(p1) --[[ addBox | Line: 36 | Upvalues: PlayerPlots (copy), t (copy) ]]
	local v1 = p1
	local v2, v3, v4, v5, v6

	while v1 and v1.Parent do
		if v1.Parent == PlayerPlots then
			v2 = v1

			if not v1 then
				return
			end

			v3 = t[v1]

			if not v3 then
				v4 = v1:FindFirstChild("Home")

				if not (v4 and v4:IsA("BasePart")) then
					return
				end

				v5 = {
					shown = true,
					boxes = {},
					home = v4
				}
				t[v1] = v5
				v3 = v5
			end

			v6 = v3.boxes
			table.insert(v6, p1)

			if v3.shown then
				return
			end

			p1.Visible = false

			return
		end

		v1 = v1.Parent
	end

	v2 = nil

	if not v2 then
		return
	end

	v3 = t[v2]

	if not v3 then
		v4 = v2:FindFirstChild("Home")

		if not (v4 and v4:IsA("BasePart")) then
			return
		end

		v5 = {
			shown = true,
			boxes = {},
			home = v4
		}
		t[v2] = v5
		v3 = v5
	end

	v6 = v3.boxes
	table.insert(v6, p1)

	if v3.shown then
		return
	end

	p1.Visible = false
end

for i, v in ipairs(PlayerPlots:GetDescendants()) do
	if v:IsA("SelectionBox") then
		addBox(v)
	end
end

PlayerPlots.DescendantAdded:Connect(function(p1) --[[ Line: 55 | Upvalues: addBox (copy) ]]
	if not p1:IsA("SelectionBox") then
		return
	end

	addBox(p1)
end)

local v1 = 0

SharedClientLoop.RegisterHeartbeat("PlotAdornmentCull", function(p1) --[[ Line: 60 | Upvalues: v1 (ref), LocalPlayer (copy), t (copy) ]]
	v1 = v1 + p1

	if v1 < 0.5 then
		return
	end

	v1 = 0

	local Character = LocalPlayer.Character
	local v12 = if Character then Character:FindFirstChild("HumanoidRootPart") else Character

	if not v12 then
		return
	end

	local Position = v12.Position

	for k, v in pairs(t) do
		if k.Parent then
			local Position2 = v.home.Position
			local v2 = Position.X - Position2.X
			local v3 = Position.Z - Position2.Z
			local v4 = v2 * v2 + v3 * v3 <= 22500

			if v4 ~= v.shown then
				v.shown = v4

				local boxes = v.boxes

				for i = #boxes, 1, -1 do
					local v5 = boxes[i]

					if v5.Parent then
						v5.Visible = v4

						continue
					end

					table.remove(boxes, i)
				end
			end

			continue
		end

		t[k] = nil
	end
end)