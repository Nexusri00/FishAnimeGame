-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- CQMVC093bmVyVXNlcklkDEdldEF0dHJpYnV0ZQh0b251bWJlcgZVc2VySWQHRW5hYmxlZAVhcHBseQ9Qcm94aW1pdHlQcm9tcHQDSXNBGEdldFByb3BlcnR5Q2hhbmdlZFNpZ25hbAdDb25uZWN0GUdldEF0dHJpYnV0ZUNoYW5nZWRTaWduYWwEaG9vawRnYW1lEUNvbGxlY3Rpb25TZXJ2aWNlCkdldFNlcnZpY2UHUGxheWVycwtMb2NhbFBsYXllcgZpcGFpcnMPT3duZXJPbmx5UHJvbXB0CUdldFRhZ2dlZBZHZXRJbnN0YW5jZUFkZGVkU2lnbmFsAAMFAAIAAAAa+wIAAG8EAQC8AgISAgAAAJ8CAwBMPgACpAEEAAAAMECfAQACkAABAA0ADgAAAAAA+wEBAE0BAeYFAAAA8QAJAAEAAAD7AQAATQEB8AYAAAAOAQQA+wEAAKkCAAAwAgHwBgAAAIIAAQAHAgAAAAAAAAAAAwEDAgMDBAAAMEADBAMFABIGARgAAAAAAAAAAAAAAQAAAAAAAAAAAAADAAAAAhMAAAAABwEBAAAAMG8DAAC8AQD+AQAAAJ8BAwIrAQEAggABANkBAAASAAAAEgIAAG8EAgC8AgCUAwAAAJ8CAwJSBAEAvAICxwQAAACfAgMBbwQFALwCABYGAAAAnwIDAlIEAQC8AgLHBAAAAJ8CAwFvBgUAvAQAEggAAACfBAMATD4AAqQDCgAAAJBAnwMAApACAwcNAgwABwAAAPsDAABNAwPmCwAAAPECBwADAAAATQMA8AIAAAAOAwMAqQMAADADAPACAAAAggABAAwDBwMIAwUDCQMKAwEDCwIAAAAAAAAAAAMCAwMEAACQQAMEAQAQDAEYAAAAAAAAAQAACAAAAAAAAAABAAAAAAAAAPgAAAAAAAAAAAEAAAAAAAAAAAADAAAGEQAAAAALAAABAAAnowAAAKQAAQAAAABAbwICALwAABYDAAAAnwADAqQBAQAAAABAbwMEALwBARYDAAAAnwEDAk0CATEFAAAAwAMGABIAAgCkBAgAAABwQG8HCQC8BQAFCgAAAJ8FAwCfBAAEUQQDAFIJAwBSCggAnwkCAW4E/P8CAACAbwYJALwEAF4LAAAAnwQDAlIGAwC8BATHDAAAAJ8EAwGCAAEADQMNBAAAAEADDgMPAxADEQYBAxIEAABwQAMTAxQDFQMKAQEBAAEYAAkAAAAAAAEAAAAAAAIAAwAPAAAAAAAAAAEAAP8AAwAAAAAAAAABAQAAAAAChJbcXXAj0o8QKmL9ifx5dPSOyym2UrZc

-- https://lua.expert/
local CollectionService = game:GetService("CollectionService")
local LocalPlayer = game:GetService("Players").LocalPlayer

local function hook(p1) --[[ hook | Line: 16 | Upvalues: LocalPlayer (copy) ]]
	if not p1:IsA("ProximityPrompt") then
		return
	end

	local function apply() --[[ apply | Line: 18 | Upvalues: p1 (copy), LocalPlayer (ref) ]]
		local v2 = tonumber(p1:GetAttribute("OwnerUserId")) or 0

		if v2 == 0 or (v2 == LocalPlayer.UserId or not p1.Enabled) then
			return
		end

		p1.Enabled = false
	end

	p1:GetPropertyChangedSignal("Enabled"):Connect(apply)
	p1:GetAttributeChangedSignal("OwnerUserId"):Connect(apply)

	local v1 = tonumber(p1:GetAttribute("OwnerUserId")) or 0

	if v1 == 0 or (v1 == LocalPlayer.UserId or not p1.Enabled) then
		return
	end

	p1.Enabled = false
end

for i, v in ipairs(CollectionService:GetTagged("OwnerOnlyPrompt")) do
	hook(v)
end

CollectionService:GetInstanceAddedSignal("OwnerOnlyPrompt"):Connect(hook)