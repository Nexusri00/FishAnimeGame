-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- CQMIDFZpZXdwb3J0U2l6ZQFZB3JlZnJlc2gJd29ya3NwYWNlDUN1cnJlbnRDYW1lcmEYR2V0UHJvcGVydHlDaGFuZ2VkU2lnbmFsB0Nvbm5lY3QCcHgABAMAAgAAABP7AAAADgADAPsAAABNAACwAAAAAA4ACgBNAQB4AQAAAIwCAABgAgYAAQAAAE0CAHgBAAAAPgECAt4BAQCCAAEAjAEBAN4BAQCCAAEAAwMBAwICAAAAAAC4ikAAEgMBGAAAAAAAAQAAAAAAAQAAAAACAAITAAAAAAMAAwAAACb7AAAADgABAIIAAQCkAAEAAAAAQE0AAEgCAAAA3gAAAPsAAAAOABsA+wAAAA4AAwD7AAAATQAAsAMAAAAOAAoATQEAeAQAAACMAgAAYAIGAAEAAABNAgB4BAAAAD4BAgXeAQEAZQACAIwBAQDeAQEA+wAAAG8CAwC8AACUBgAAAJ8AAwL7AgIAvAAAxwcAAACfAAMBggABAAgDBAQAAABAAwUDAQMCAgAAAAAAuIpAAwYDBwAfAAEYDQAAAQAAAAABAPEAAAAAAQAAAAAAAQAAAAACAA0AAAAAAAAAAAITAAAAAAMBAQAAAAP7AgAACQEAAoIBAgAAACoIARgAAAArAAAAAAcAAAECADejAAAA/wABAAAAAACMAQEApAIBAAAAAEBNAgJIAgAAANkDAAASAQL/EgEB/w4CGABSBAIADgQCAE0EArADAAAADgQJAE0FBHgEAAAAjAYAAGAGBQAFAAAATQUEeAQAAAA+AQUFZQABAIwBAQBvBgMAvAQClAYAAACfBAMCUgYDALwEBMcHAAAAnwQDAWUADQCkBAEAAAAAQG8GAgC8BASUBgAAAJ8EAwLZBgEAEgEC/xIBAf8SAAMAvAQExwcAAACfBAMB2QQCABIBAf8wBABkCAAAAMEBAACCAAIACQMEBAAAAEADBQMBAwICAAAAAAC4ikADBgMHAwgDAAECAQABGAAMAAICAAAAAQAACfgAAAABAAAAAAABAAAAAgYAAAAAAAAAAAIAAAAAAAAAAAAAAAALAAAABAABAAAAAANL6fOnwQ3uZdKfKq5KuGxwO/Hk03ktmaY=

-- https://lua.expert/
local t = {}
local v1 = 1
local CurrentCamera = workspace.CurrentCamera

local function refresh() --[[ refresh | Line: 18 | Upvalues: CurrentCamera (ref), v1 (ref) ]]
	local v12 = CurrentCamera and CurrentCamera.ViewportSize

	v1 = if v12 and v12.Y > 0 then v12.Y / 855 else 1
end

if CurrentCamera then
	local v2 = CurrentCamera and CurrentCamera.ViewportSize

	v1 = if v2 and v2.Y > 0 then v2.Y / 855 else 1
	CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(refresh)
else
	workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function() --[[ Line: 31 | Upvalues: CurrentCamera (ref), v1 (ref), refresh (copy) ]]
		if CurrentCamera then
			return
		end

		CurrentCamera = workspace.CurrentCamera

		if not CurrentCamera then
			return
		end

		local v12 = CurrentCamera and CurrentCamera.ViewportSize

		v1 = if v12 and v12.Y > 0 then v12.Y / 855 else 1
		CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(refresh)
	end)
end

function t.px(p1) --[[ px | Line: 42 | Upvalues: v1 (ref) ]]
	return p1 * v1
end

return t