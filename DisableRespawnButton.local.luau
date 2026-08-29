-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- CQMIE1Jlc2V0QnV0dG9uQ2FsbGJhY2sHU2V0Q29yZQRnYW1lClN0YXJ0ZXJHdWkKR2V0U2VydmljZQVwY2FsbAR0YXNrBHdhaXQAAgQAAQAAAAf7AAAAbwIAAKkDAAC8AAC/AQAAAJ8ABAGCAAEAAgMBAwIABgABGAAAAAAAAAEHAAAAAAcAAAEAABejAAAApAABAAAAAEBvAgIAvAAAFgMAAACfAAMCjAMBAIwBFACMAgEAqAELAKQEBQAAAEBAwAUGABIAAACfBAICKwQFAKQFCQAAIHCAbwYKAJ8FAgGLAfX/ggABAAsDAwQAAABAAwQDBQMGBAAAQEAGAAMHAwgEACBwgAKamZmZmZm5PwEAAQABGAABAAAAAAADAAAAAQAAAAADAQAAAPsHAQAAAAABVd3GPpE/zhXetfvGYq1qKiXF0UpnGaw/

-- https://lua.expert/
local StarterGui = game:GetService("StarterGui")

for i = 1, 20 do
	if pcall(function() --[[ Line: 6 | Upvalues: StarterGui (copy) ]]
		StarterGui:SetCore("ResetButtonCallback", false)
	end) then
		break
	end

	task.wait(0.1)
end