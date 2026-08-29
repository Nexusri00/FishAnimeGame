-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- CQMNDkZpbmRGaXJzdENoaWxkB0Rlc3Ryb3kEZ2FtZRFSZXBsaWNhdGVkU3RvcmFnZQpHZXRTZXJ2aWNlB1JlbW90ZXMMV2FpdEZvckNoaWxkEUhpZGVHYW1lcGFzc01vZGVsCXdvcmtzcGFjZQtQbGF5ZXJQbG90cwVQbG90OA1PbkNsaWVudEV2ZW50B0Nvbm5lY3QAAgQBAQAAAAr7AQAAUgMAALwBAQMAAAAAnwEDAg4BAwC8AgFQAQAAAJ8CAgGCAAEAAgMBAwIABQABGAAAAAAAAQEAAAIGAAAAAAYAAAECACGjAAAApAABAAAAAEBvAgIAvAAAFgMAAACfAAMCbwMEALwBANMFAAAAnwEDAm8DBgC8AQHTBQAAAJ8BAwKkAggAAABwQG8ECQC8AgLTBQAAAJ8CAwJvBAoAvAIC0wUAAACfAgMCTQMBjAsAAADABQwAEgACALwDA8cNAAAAnwMDAYIAAQAOAwMEAAAAQAMEAwUDBgMHAwgDCQQAAHBAAwoDCwMMBgADDQEAAQABGAAAAAAAAAABAAAAAAAAAAEAAAAAAAAAAAACAAAAAAAABgEAAAAAAdqzkzfo/HDwtr/f77QVuCmqq4RD6Hf5Ng==

-- https://lua.expert/
local HideGamepassModel = game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("HideGamepassModel")
local Plot8 = workspace:WaitForChild("PlayerPlots"):WaitForChild("Plot8")

HideGamepassModel.OnClientEvent:Connect(function(p1) --[[ Line: 5 | Upvalues: Plot8 (copy) ]]
	local v1 = Plot8:FindFirstChild(p1)

	if not v1 then
		return
	end

	v1:Destroy()
end)