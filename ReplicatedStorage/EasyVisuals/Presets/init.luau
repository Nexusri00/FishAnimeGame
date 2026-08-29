-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- CQMGBnNjcmlwdA5HZXREZXNjZW5kYW50cwxNb2R1bGVTY3JpcHQDSXNBBE5hbWUHcmVxdWlyZQABCgAAAQAAG6MAAACkAAEAAAAAQLwAAEcCAAAAnwACAv8BAAAAAAAAUgIAAMYDAADGBAAAZAIMAG8JAwC8Bwb+BAAAAJ8HAwIOBwcATQcGugUAAACkCAcAAABgQFIJBgCfCAICaggBB24C8/8CAAAAggECAAgDAQQAAABAAwIDAwMEAwUDBgQAAGBAAAEAARgAAAAAAAABAAIAAAABAAAAAAEAAAAAAAD+AAUBAAAAAAA=

-- https://lua.expert/
local t = {}

for v1, v2 in script:GetDescendants() do
	if v2:IsA("ModuleScript") then
		t[v2.Name] = require(v2)
	end
end

return t