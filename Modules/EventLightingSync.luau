-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- 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

-- https://lua.expert/
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Lighting = game:GetService("Lighting")
local Constants = require(ReplicatedStorage:WaitForChild("Constants"))
local v1 = if Constants.TypeEvents then Constants.TypeEvents.Events or {} else {}
local t = {}

local function stateRemote() --[[ stateRemote | Line: 60 | Upvalues: ReplicatedStorage (copy) ]]
	local Remotes = ReplicatedStorage:FindFirstChild("Remotes")

	return if Remotes then Remotes:FindFirstChild("TypeEventState") or nil else nil
end

function t.canonical() --[[ canonical | Line: 67 | Upvalues: ReplicatedStorage (copy), v1 (copy) ]]
	local Remotes = ReplicatedStorage:FindFirstChild("Remotes")
	local v12

	if Remotes then
		local TypeEventState = Remotes:FindFirstChild("TypeEventState")

		v12 = if TypeEventState then TypeEventState else nil
	else
		v12 = nil
	end

	if not v12 then
		return nil
	end

	local t = {}
	local v2 = false

	for k, v in pairs(v12:GetAttributes()) do
		if string.sub(k, 1, 7) == "TEBase_" then
			t[string.sub(k, 8)] = v
			v2 = true
		end
	end

	if not v2 then
		return nil
	end

	local __TypeEventGetState = _G.__TypeEventGetState

	if type(__TypeEventGetState) == "function" then
		local ok, result = pcall(__TypeEventGetState)

		if ok and (type(result) == "table" and (result.active == true and result.eventName)) then
			local v4 = v1[tostring(result.eventName)]
			local v5 = if type(v4) == "table" then v4.Lighting or nil else nil

			if type(v5) == "table" then
				for k, v in pairs(v5) do
					if t[k] ~= nil then
						t[k] = v
					end
				end
			end
		end
	end

	return t
end
function t.apply() --[[ apply | Line: 110 | Upvalues: t (copy), Lighting (copy) ]]
	local v1 = t.canonical()

	if not v1 then
		return false
	end

	for k, v in pairs(v1) do
		pcall(function() --[[ Line: 116 | Upvalues: Lighting (ref), k (copy), v (copy) ]]
			Lighting[k] = v
		end)
	end

	return true
end
function t.fog() --[[ fog | Line: 125 | Upvalues: t (copy) ]]
	local v1 = t.canonical()

	if v1 then
		return v1.FogStart, v1.FogEnd
	end

	return nil, nil
end

return t