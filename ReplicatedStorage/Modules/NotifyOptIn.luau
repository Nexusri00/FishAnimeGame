-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Bytecode (Base64):
-- CQMQE0NhblByb21wdE9wdEluQXN5bmMLUHJvbXB0T3B0SW4EdGFzawR3YWl0BXBjYWxsBHdhcm4pW05vdGlmeU9wdEluXSBDYW5Qcm9tcHRPcHRJbkFzeW5jIGZhaWxlZDohW05vdGlmeU9wdEluXSBQcm9tcHRPcHRJbiBmYWlsZWQ6CElzQ2xpZW50BXNwYXduCVRyeVByb21wdAhXYXNTaG93bgRnYW1lClJ1blNlcnZpY2UKR2V0U2VydmljZR1FeHBlcmllbmNlTm90aWZpY2F0aW9uU2VydmljZQAGAgABAAAABfsAAAC8AADIAAAAAJ8AAgCCAAAAAQMBACMAARgAAAAAACQAAAAAAgABAAAABfsAAAC8AABEAAAAAJ8AAgGCAAEAAQMCADMAARgAAAAAATQAAAAACAAEAAAALfsBAACQAAEAjAEAAGABBQAAAAAApAEDAAAIEIBSAgAAnwECAaQBBQAAAEBAwAIGABICAQCfAQIDKwEIAKQDCAAAAHBAbwQJAFIFAgCfAwMBqQMAAN4DAgCCAAEAKwIDAKkDAADeAwIAggABAKkDAQDeAwMApAMFAAAAQEDABAoAEgIBAJ8DAgMrAwcApAUIAAAAcEBvBgsAUgcEAJ8FAwGpBQAA3gUDAKkFAADeBQIAggABAAwCAAAAAAAA8D8DAwMEBAAIEIADBQQAAEBABgADBgQAAHBAAwcGAQMIAgABHQABGAAAAQAAAQAAAAMAAAAAAwEAAAAAAQABAgMAAQMAAQAAAAADAQAAAAABAAIAAR4AAAAAAwEEAAAGAwAABQGCFvsBAAC8AQEEAAAAAJ8BAgIrAQEAggABAPsBAQArAQIA+wECAA4BAQCCAAEAqQEBAN4BAgCkAQMAAAgQgNkCAAASAAAAEgIDABICAgASAgEAnwECAYIAAQAEAwkDAwMKBAAIEIABAhQLARgAAAAAAAECAAAAAQIAAgAAAAAAAAAfFQAAAAABAAEAAAAC+wAAAIIAAgAAAD4MARgAAD8AAAAABgAAAQIAHqMAAACkAAEAAAAAQG8CAgC8AAAWAwAAAJ8AAwKkAQEAAAAAQG8DBAC8AQEWAwAAAJ8BAwL/AgIAAAAAAKkDAACpBAAA2QUAABIAAAASAQP/EgEE/xIAAQAwBQKZBQAAANkFAQASAQP/MAUCewYAAADBAwAAggICAAcDDQQAAABAAw4DDwMQAwsDDAIDBAEAARgACgAAAAAAAQAAAAAAAgACAQMAAAAAAAAqAAAABAABAAAAAAV2nqmRLPYV++5ZDh4e63kDBoa+5URaw5A=

-- https://lua.expert/
local RunService = game:GetService("RunService")
local ExperienceNotificationService = game:GetService("ExperienceNotificationService")
local t = {}
local v1 = false
local v2 = false

function t.TryPrompt(p1) --[[ TryPrompt | Line: 20 | Upvalues: RunService (copy), v1 (ref), v2 (ref), ExperienceNotificationService (copy) ]]
	if not RunService:IsClient() then
		return
	end

	if not (v1 or v2) then
		v2 = true
		task.spawn(function() --[[ Line: 29 | Upvalues: p1 (copy), ExperienceNotificationService (ref), v2 (ref), v1 (ref) ]]
			local v12 = p1 or 1

			if v12 > 0 then
				task.wait(v12)
			end

			local ok, result = pcall(function() --[[ Line: 35 | Upvalues: ExperienceNotificationService (ref) ]]
				return ExperienceNotificationService:CanPromptOptInAsync()
			end)

			if not ok then
				warn("[NotifyOptIn] CanPromptOptInAsync failed:", result)
			elseif result then
				v1 = true

				local ok2, result2 = pcall(function() --[[ Line: 51 | Upvalues: ExperienceNotificationService (ref) ]]
					ExperienceNotificationService:PromptOptIn()
				end)

				if not ok2 then
					warn("[NotifyOptIn] PromptOptIn failed:", result2)
					v1 = false
				end
			end

			v2 = false
		end)
	end
end
function t.WasShown() --[[ WasShown | Line: 62 | Upvalues: v1 (ref) ]]
	return v1
end

return t