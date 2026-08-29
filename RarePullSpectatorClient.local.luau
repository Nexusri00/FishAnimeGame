-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- CQMdBnR5cGVvZghJbnN0YW5jZQZQbGF5ZXIDSXNBBHR5cGUFdGFibGUABnJhcml0eQh0b3N0cmluZw1QbGF5U3BlY3RhdG9yCW9yaWdpblBvcwphbGxvd1NvdW5kBGdhbWUHUGxheWVycwpHZXRTZXJ2aWNlEVJlcGxpY2F0ZWRTdG9yYWdlC0xvY2FsUGxheWVyB1JlbW90ZXMMV2FpdEZvckNoaWxkEVJhcmVQdWxsQnJvYWRjYXN0B3JlcXVpcmUJQ29uc3RhbnRzB01vZHVsZXMTSGVhcnRSYXJlUHVsbENsaWVudAZpcGFpcnMLUmFyaXR5T3JkZXIJQ2VsZXN0aWFsDU9uQ2xpZW50RXZlbnQHQ29ubmVjdAACCQIEAAAAObssAANSAwAApAIBAAAAAECfAgIC8AIGAAIAAIBvBAMAvAIA/gQAAACfAgMCKwIBAIIAAQD7AgAAmgACAAIAAACCAAEAuygBA1IDAQCkAgYAAABQQJ8CAgLwAgIABwAAAIIAAQBNBAGSCQAAAJADBAi7PwMCpAILAAAAoECfAgIC8AICAAgAAICCAAEA+wMBAE0DA94MAAAA4gQPADACBJIJAAAATQUBUA0AAAAwBQRQDQAAAPsIAgCHBwgCkAYHEPsHAwC3BwIABgAAAKkFAAGpBQEAMAUErA4AAACfAwIBggABABEDAQQAAABAAwIDAwMEAwUEAABQQAMGAwcDCAMJBAAAoEADCgMLAwwFAwkNDgIAAAAAAAAAAAAZAAEYAAAAAAAAAAAAAAAAAAEAAAABAAAAAAAAAAEAAAAAAAABAAABAAAAAQABAAAAAQAAAAAAAAAAAP0FGgAAAAANAAABAABFowAAAKQAAQAAAABAbwICALwAABYDAAAAnwADAqQBAQAAAABAbwMEALwBARYDAAAAnwEDAk0CADEFAAAAbwUGALwDAdMHAAAAnwMDAm8GCAC8BAPTBwAAAJ8EAwKkBQoAAACQQG8ICwC8BgHTBwAAAJ8GAwCfBQACpAYKAAAAkEBvCQwAvAcB0wcAAACfBwMCbwkNALwHB9MHAAAAnwcDAJ8GAAL/BwAAAAAAAKQIDwAAAOBATQkFmBAAAAArCQIA/wkAAAAAAACfCAIEUQgBAGoLBwxuCP7/AgAAgE0JB8YSAAAAkAgJEU0JBIwTAAAAwAsUABIAAgASAAYAEgAHABIACAC8CQnHFQAAAJ8JAwGCAAEAFgMNBAAAAEADDgMPAxADEQMSAxMDFAMVBAAAkEADFgMXAxgDGQQAAOBAAxoCAAAAAAAA8H8DGwMcBgADHQEAAQABGAAHAAAAAAABAAAAAAACAAEAAAABAAAAAQAAAAAAAAEAAAAAAAAAAAAABAABAAAAAAAAAAAB/wADAAACAAAAAAAAAAAADAEAAAAAAR8jRmCATBUbAxeUa6I80LVvO1EULecsYQ==

-- https://lua.expert/
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local LocalPlayer = Players.LocalPlayer
local RarePullBroadcast = ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("RarePullBroadcast")
local Constants = require(ReplicatedStorage:WaitForChild("Constants"))
local HeartRarePullClient = require(ReplicatedStorage:WaitForChild("Modules"):WaitForChild("HeartRarePullClient"))
local t = {}
local v1 = ipairs

for v3, v4 in v1(Constants.RarityOrder or {}) do
	t[v4] = v3
end

local v5 = t.Celestial or (1 / 0)

RarePullBroadcast.OnClientEvent:Connect(function(p1, p2) --[[ Line: 25 | Upvalues: LocalPlayer (copy), HeartRarePullClient (copy), t (copy), v5 (copy) ]]
	if typeof(p1) ~= "Instance" or not p1:IsA("Player") then
		return
	end

	if p1 == LocalPlayer then
		return
	end

	if type(p2) ~= "table" then
		return
	end

	local v2 = tostring(p2.rarity or "")

	if v2 == "" then
		return
	end

	local t2 = {
		rarity = v2,
		originPos = p2.originPos
	}

	t2.allowSound = v5 < (t[v2] or 0)
	HeartRarePullClient.PlaySpectator(t2)
end)