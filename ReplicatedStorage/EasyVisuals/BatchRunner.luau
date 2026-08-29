-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- CQMUBXBhaXJzBXBjYWxsBHdhcm4TW0Vhc3lWaXN1YWxzQmF0Y2hdIAh0b3N0cmluZwZydW5BbGwTVW5yZWdpc3RlckhlYXJ0YmVhdBBFYXN5VmlzdWFsc0JhdGNoC3N0b3BJZkVtcHR5EVJlZ2lzdGVySGVhcnRiZWF0DWVuc3VyZVJ1bm5pbmcJQ29ubmVjdGVkCkRpc2Nvbm5lY3QIUmVnaXN0ZXIHcmVxdWlyZQZzY3JpcHQGUGFyZW50B01vZHVsZXMMV2FpdEZvckNoaWxkEFNoYXJlZENsaWVudExvb3AABg0BAQAAABikAQEAAAAAQPsCAACfAQIEFwEQAKQGAwAAACBAUgcFAFIIAACfBgMDKwYKAKQIBQAAAEBAbwoGALs/BwNSDAcApAsIAAAAcECfCwICcwkKC58IAgFuAe//AgAAAIIAAQAJAwEEAAAAQAMCBAAAIEADAwQAAEBAAwQDBQQAAHBAAA0GARgAAAAAAAEAAAAAAQEAAAAAAAAAAAD9AAYOAAAAAAIAAwAAAA/7AAAAjAEAALcBAwAAAAAA+wABACsAAQCCAAEAqQAAAN4AAQD7AAIATQAAngAAAABvAQEAnwACAYIAAQACAwcDCAAWCQEYAAAAAAAAAAEAAQAAAAABFwAAAAADAAQAAAAQ+wAAACsABAD7AAEAjAEAAH0AAgABAAAAggABAKkAAQDeAAAA+wACAE0AABsAAAAAbwEBAPsCAwCfAAMBggABAAIDCgMIABwLARgAAAAAAAAAAQABAAAAAAABHQAAAAADAAcAAAAf+wAAAA4AAQCCAAEAqQABAN4AAAD7AAEAqQEAADABANEAAAAA+wACAPsBAwDGAgAAagIAAfsABAB4AAAB3gAEAPsABACMAQAAtwELAAAAAAD7AAUAKwABAIIAAQCpAAAA3gAFAPsABgBNAACeAgAAAG8BAwCfAAIBggABAAQDDAIAAAAAAADwPwMHAwgALAABGBYAAAEAAQAAAAEAAAABAADmAAAAAAAAAQABAAAAABoXAAAAAAUBBgAAACr7AQAAlQEBAN4BAAD7AQAA+wIBAJUCAgDeAgEA+wICAGoAAgH7AgMAKwINAPsCAQCMAwAAfQICAAMAAABlAAgAqQIBAN4CAwD7AgQATQICGwEAAABvAwIA+wQFAJ8CAwGpAgAA/wMCAAAAAACpBAEAMAQD0QMAAADZBAAAEgEC/xIAAwASAgIAEgABABICAQASAgMAEgIEADAEAxoEAAAAwQIAAIIDAgAFAgAAAAAAAPA/AwoDCAMMAw0BAyIOARgGAAABAQAAAQD3AAAAAAAAAQABAAAAAAAKAQABAAABAAAAAAAAAAAACAAdAAAAAAoAAAECAC+jAAAApAABAAAAAECkAQMAAAAgQE0BASQEAAAATQEBJAQAAABvAwUAvAEB0wYAAACfAQMCbwMHALwBAdMGAAAAnwEDAJ8AAAL/AQEAAAAAAP8CAAAAAAAAjAMAAIwEAACpBQAAwAYIABIAAgDZBwEAEgED/xIBBf8SAAAA2QgCABIBBf8SAQP/EgAAABIABgDZCQMAEgEE/xIBA/8SAAIAEgEF/xIAAAASAAYAMAkBgwkAAADBAwAAggECAAoDDwQAAABAAxAEAAAgQAMRAxIDEwMUBgADDgQAAQIEAQABGAADAAAAAAAAAAAAAAAAAAAAAAIAAgABAQECAAkAAAAGAAAAAAYAAAAAAAAAABUAAQAAAAAFe7+kSBLEXa/Um3wgxOXANgunszxJe85J

-- https://lua.expert/
local SharedClientLoop = require(script.Parent.Parent:WaitForChild("Modules"):WaitForChild("SharedClientLoop"))
local t = {}
local t2 = {}
local v1 = 0
local v2 = 0
local v3 = false

local function runAll(p1) --[[ runAll | Line: 13 | Upvalues: t2 (copy) ]]
	for k, v in pairs(t2) do
		local ok, result = pcall(v, p1)

		if not ok then
			warn("[EasyVisualsBatch] " .. tostring(result))
		end
	end
end

local function stopIfEmpty() --[[ stopIfEmpty | Line: 22 | Upvalues: v1 (ref), v3 (ref), SharedClientLoop (copy) ]]
	if not (v1 > 0) and v3 then
		v3 = false
		SharedClientLoop.UnregisterHeartbeat("EasyVisualsBatch")
	end
end

local function ensureRunning() --[[ ensureRunning | Line: 28 | Upvalues: v3 (ref), v1 (ref), SharedClientLoop (copy), runAll (copy) ]]
	if not (v3 or v1 <= 0) then
		v3 = true
		SharedClientLoop.RegisterHeartbeat("EasyVisualsBatch", runAll)
	end
end

function t.Register(p1) --[[ Register | Line: 34 | Upvalues: v2 (ref), v1 (ref), t2 (copy), v3 (ref), SharedClientLoop (copy), runAll (copy) ]]
	v2 = v2 + 1

	local v12 = v2

	v1 = v1 + 1
	t2[v12] = p1

	local v22, v32

	if v3 or v1 <= 0 then
		v22 = false
		v32 = {
			Connected = true
		}
		function v32.Disconnect() --[[ Line: 44 | Upvalues: v22 (ref), v32 (copy), t2 (ref), v12 (copy), v1 (ref), v3 (ref), SharedClientLoop (ref) ]]
			if v22 then
				return
			end

			v22 = true
			v32.Connected = false
			t2[v12] = nil
			v1 = v1 - 1

			if v1 > 0 then
				return
			end

			if not v3 then
				return
			end

			v3 = false
			SharedClientLoop.UnregisterHeartbeat("EasyVisualsBatch")
		end

		return v32
	end

	v3 = true
	SharedClientLoop.RegisterHeartbeat("EasyVisualsBatch", runAll)
	v22 = false
	v32 = {
		Connected = true
	}
	function v32.Disconnect() --[[ Line: 44 | Upvalues: v22 (ref), v32 (copy), t2 (ref), v12 (copy), v1 (ref), v3 (ref), SharedClientLoop (ref) ]]
		if v22 then
			return
		end

		v22 = true
		v32.Connected = false
		t2[v12] = nil
		v1 = v1 - 1

		if v1 > 0 then
			return
		end

		if not v3 then
			return
		end

		v3 = false
		SharedClientLoop.UnregisterHeartbeat("EasyVisualsBatch")
	end

	return v32
end

return t