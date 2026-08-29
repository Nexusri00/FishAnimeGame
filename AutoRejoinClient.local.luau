-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- CQMUAl9HFV9fQW50aUlkbGVTeW50aGV0aWNBdAJvcwVjbG9jawRidW1wBGdhbWUQVXNlcklucHV0U2VydmljZQpHZXRTZXJ2aWNlEVJlcGxpY2F0ZWRTdG9yYWdlB1JlbW90ZXMMV2FpdEZvckNoaWxkDkF1dG9SZWpvaW5JZGxlDkZpbmRGaXJzdENoaWxkCklucHV0QmVnYW4HQ29ubmVjdAxJbnB1dENoYW5nZWQNV2luZG93Rm9jdXNlZAR0YXNrBHdhaXQKRmlyZVNlcnZlcgACAwABAAAAEqQAAQAAAABATQAA2gIAAAAOAAgApAIFAAAQMICfAgECJgECAG8CBgBgAQIAAgAAAIIAAQCkAQUAABAwgJ8BAQLeAQAAggABAAcDAQQAAABAAwIDAwMEBAAQMIACAAAAAAAA4D8AHQUBGAAAAAABAAAAAAAAAAABAAAAASEAAAAACQAAAQAASaMAAACkAAEAAAAAQG8CAgC8AAAWAwAAAJ8AAwKkAQEAAAAAQG8DBAC8AQEWAwAAAJ8BAwJvBAUAvAIB0wYAAACfAgMCbwUHALwDAgMIAAAAnwMDAisDBwBvBgcAjAceALwEAtMGAAAAnwQEAlIDBABIAPj/pAQLAAAokICfBAEC2QUAABIBBP9NBgCCDAAAAFIIBQC8BgbHDQAAAJ8GAwFNBgDZDgAAAFIIBQC8BgbHDQAAAJ8GAwFNBgBkDwAAAFIIBQC8BgbHDQAAAJ8GAwGkBhIAAEQAgYwHDwCfBgIBpAcLAAAokICfBwECJgYHBIwHhAN9BwgABgAAALwGA2sTAAAAnwYCAaQGEgAARACBjActAJ8GAgFIAO3/wQQAAIIAAQAUAwYEAAAAQAMHAwgDCQMKAwsDDAMNAwMDBAQAKJCAAw4DDwMQAxEDEgMTBABEAIEDFAEAAQABGAAIAAAAAAABAAAAAAAMAAAAAQAAAAEBAAAAAAD/BAAAAQAIAAAAAAABAAAAAAABAAAAAAADAAAAAQAAAAAAAAEAAAQAAAD5CQABAAAAAAEtEB594TKLxW6FbUDVGVfsXQgJCR/UdHw=

-- https://lua.expert/
local UserInputService = game:GetService("UserInputService")
local Remotes = game:GetService("ReplicatedStorage"):WaitForChild("Remotes")
local AutoRejoinIdle = Remotes:FindFirstChild("AutoRejoinIdle")

while not AutoRejoinIdle do
	AutoRejoinIdle = Remotes:WaitForChild("AutoRejoinIdle", 30)
end

local v1 = os.clock()

local function bump() --[[ bump | Line: 29 | Upvalues: v1 (ref) ]]
	local __AntiIdleSyntheticAt = _G.__AntiIdleSyntheticAt

	if not (__AntiIdleSyntheticAt and os.clock() - __AntiIdleSyntheticAt < 0.5) then
		v1 = os.clock()
	end
end

UserInputService.InputBegan:Connect(bump)
UserInputService.InputChanged:Connect(bump)
UserInputService.WindowFocused:Connect(bump)

while true do
	task.wait(15)

	if os.clock() - v1 >= 900 then
		AutoRejoinIdle:FireServer()
		task.wait(45)
	end
end