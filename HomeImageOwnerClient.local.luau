-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- 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

-- https://lua.expert/
local LocalPlayer = game:GetService("Players").LocalPlayer
local PlayerPlots = workspace:WaitForChild("PlayerPlots")

local function homeBillboard(p1) --[[ homeBillboard | Line: 15 ]]
	local Home = p1:FindFirstChild("Home")

	if not (Home and Home:IsA("BasePart")) then
		return nil
	end

	local BillboardGui = Home:FindFirstChild("BillboardGui")

	if BillboardGui and BillboardGui:IsA("BillboardGui") then
		return BillboardGui
	end

	return nil
end

local function applyOne(p1) --[[ applyOne | Line: 23 | Upvalues: LocalPlayer (copy) ]]
	local Home = p1:FindFirstChild("Home")
	local v1

	if Home and Home:IsA("BasePart") then
		local BillboardGui = Home:FindFirstChild("BillboardGui")

		v1 = if BillboardGui and BillboardGui:IsA("BillboardGui") then BillboardGui else nil
	else
		v1 = nil
	end

	if not v1 then
		return
	end

	v1.Enabled = p1.Name == LocalPlayer:GetAttribute("PlotName")
end

local function applyAll() --[[ applyAll | Line: 29 | Upvalues: PlayerPlots (copy), LocalPlayer (copy) ]]
	for i, v in ipairs(PlayerPlots:GetChildren()) do
		local v1
		local Home = v:FindFirstChild("Home")

		if Home and Home:IsA("BasePart") then
			local BillboardGui = Home:FindFirstChild("BillboardGui")

			v1 = if BillboardGui and BillboardGui:IsA("BillboardGui") then BillboardGui else nil
		else
			v1 = nil
		end

		if v1 then
			v1.Enabled = v.Name == LocalPlayer:GetAttribute("PlotName")
		end
	end
end

LocalPlayer:GetAttributeChangedSignal("PlotName"):Connect(applyAll)

for i, v in ipairs(PlayerPlots:GetChildren()) do
	local v1
	local Home = v:FindFirstChild("Home")

	if Home and Home:IsA("BasePart") then
		local BillboardGui = Home:FindFirstChild("BillboardGui")

		v1 = if BillboardGui and BillboardGui:IsA("BillboardGui") then BillboardGui else nil
	else
		v1 = nil
	end

	if v1 then
		v1.Enabled = v.Name == LocalPlayer:GetAttribute("PlotName")
	end
end

PlayerPlots.DescendantAdded:Connect(function(p1) --[[ Line: 40 | Upvalues: PlayerPlots (copy), LocalPlayer (copy) ]]
	if not p1:IsA("BillboardGui") or (not p1.Parent or p1.Parent.Name ~= "Home") then
		return
	end

	local v1 = p1.Parent.Parent

	if not v1 or v1.Parent ~= PlayerPlots then
		return
	end

	local Home = v1:FindFirstChild("Home")
	local v2

	if Home and Home:IsA("BasePart") then
		local BillboardGui = Home:FindFirstChild("BillboardGui")

		v2 = if BillboardGui and BillboardGui:IsA("BillboardGui") then BillboardGui else nil
	else
		v2 = nil
	end

	if not v2 then
		return
	end

	v2.Enabled = v1.Name == LocalPlayer:GetAttribute("PlotName")
end)