-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- CQMhCEJhc2VQYXJ0A0lzQQhvblRhZ2dlZApvblVudGFnZ2VkBG5leHQPUGVyZm9ybWFuY2VNb2RlDEdldEF0dHJpYnV0ZQJvcwVjbG9jawZDb2xvcjMHZnJvbUhTVgVwYWlycwZQYXJlbnQFQ29sb3IEZ2FtZRFDb2xsZWN0aW9uU2VydmljZQpHZXRTZXJ2aWNlClJ1blNlcnZpY2UGaXBhaXJzC1JhaW5ib3dQYXJ0CUdldFRhZ2dlZBZHZXRJbnN0YW5jZUFkZGVkU2lnbmFsB0Nvbm5lY3QYR2V0SW5zdGFuY2VSZW1vdmVkU2lnbmFsB3JlcXVpcmURUmVwbGljYXRlZFN0b3JhZ2UHTW9kdWxlcwxXYWl0Rm9yQ2hpbGQQU2hhcmVkQ2xpZW50TG9vcAdQbGF5ZXJzC0xvY2FsUGxheWVyEVJlZ2lzdGVySGVhcnRiZWF0ElJhaW5ib3dQYXJ0SGFuZGxlcgAEBAEBAAAACW8DAAC8AQD+AQAAAJ8BAwIOAQMA+wEAAKkCAQBqAgEAggABAAIDAQMCAAwDARgAAAAAAAEAAAINAAAAAAMBAQAAAAT7AQAAxgIAAGoCAQCCAAEAAAASBAEYAAAAARMAAAAACgEDAAAANqQBAQAAAABA+wIAAJ8BAgIrAQEAggABAPsBAQBvAwIAvAEBEgMAAACfAQMCKgEEAAEAAICMAQAA3gECAIIAAQD7AQIAQwEBAN4BAgD7AQIAbwIEAGABAgACAAAAggABAIwBAADeAQIApAMIAAAcYICfAwECIQIDBT4BAgWkAgsAACiQgFIDAQCMBAEAjAUBAJ8CBAKkAw0AAADAQPsEAACfAwIEFwMJAE0IBiQOAAAADggDADACBqQPAAAAZQADAPsIAADGCQAAagkIBm4D9v8BAAAAggABABADBQQAAABAAwYDBwIRERERERGhPwIAAAAAAAAiQAMIAwkEABxggAMKAwsEACiQgAMMBAAAwEADDQMOAB8AARgAAAAAAAADAAAAAAAAAQABAgAAAQAAAAABAAIAAAAAAQAAAAAAAgAAAAABAAABAAACAAD8AAcgAAAAAA4AAAEAAFijAAAApAABAAAAAEBvAgIAvAAAFgMAAACfAAMCpAEBAAAAAEBvAwQAvAEBFgMAAACfAQMC/wIAAAAAAACMAwAAwAQFABIAAgDABQYAEgACAKQGCAAAAHBAbwkJALwHAAUKAAAAnwcDAJ8GAARRBgcAbw0LALwLCv4MAAAAnwsDAg4LAgCpCwEAagsCCm4G+P8CAACAbwgJALwGAF4NAAAAnwYDAlIIBAC8BgbHDgAAAJ8GAwFvCAkAvAYA3A8AAACfBgMCUggFALwGBscOAAAAnwYDAaQGEQAAAABBpAcBAAAAAEBvCRIAvAcHFgMAAACfBwMCbwkTALwHB9MUAAAAnwcDAm8JFQC8BwfTFAAAAJ8HAwCfBgACpAcBAAAAAEBvCRYAvAcHFgMAAACfBwMCTQcHMRcAAABNCAYbGAAAAG8JGQDZCgIAEgACABIABwASAQP/nwgDAcEDAACCAAEAGgMPBAAAAEADEAMRAxIGAAYBAxMEAABwQAMUAxUDAQMCAxYDFwMYAxkEAAAAQQMaAxsDHAMdAx4DHwMgAyEDAAECAQABGAAAAAAAAAABAAAAAAAHAAECAAYABAAAAAAAAAD3AAAAAAEACAAEAAAAAAAAAAEAAAAAAAAAAgAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAEAAAAAAAAAFwABAAAAAAPb/R7OGa6/Zvg2dYpt3EYiq+UJuuk5dM8=

-- https://lua.expert/
local CollectionService = game:GetService("CollectionService")

game:GetService("RunService")

local t = {}

local function onTagged(p1) --[[ onTagged | Line: 12 | Upvalues: t (copy) ]]
	if not p1:IsA("BasePart") then
		return
	end

	t[p1] = true
end

local function onUntagged(p1) --[[ onUntagged | Line: 18 | Upvalues: t (copy) ]]
	t[p1] = nil
end

local v1 = 0

for i, v in ipairs(CollectionService:GetTagged("RainbowPart")) do
	if v:IsA("BasePart") then
		t[v] = true
	end
end

CollectionService:GetInstanceAddedSignal("RainbowPart"):Connect(onTagged)
CollectionService:GetInstanceRemovedSignal("RainbowPart"):Connect(onUntagged)

local SharedClientLoop = require(game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("SharedClientLoop"))
local LocalPlayer = game:GetService("Players").LocalPlayer

SharedClientLoop.RegisterHeartbeat("RainbowPartHandler", function(p1) --[[ Line: 31 | Upvalues: t (copy), LocalPlayer (copy), v1 (ref) ]]
	if not next(t) then
		return
	end

	if LocalPlayer:GetAttribute("PerformanceMode") == true then
		v1 = 0

		return
	end

	v1 = v1 + p1

	if v1 < 0.03333333333333333 then
		return
	end

	v1 = 0

	local v2 = Color3.fromHSV(os.clock() % 9 / 9, 1, 1)

	for k in pairs(t) do
		if k.Parent then
			k.Color = v2

			continue
		end

		t[k] = nil
	end
end)