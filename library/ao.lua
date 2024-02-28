---@meta ao

-- Type definitions for the "ao" library
---@type table
local ao = {}

-- ID of the current process
---@type string
ao.id = ao.env.Process.Id

-- A list of optionally trusted callers
---@type string[]
ao.authorities = {}

-- The WASM base module of the process that is executed on each call
---@type string
ao._module = ""

-- The counter of the messages sent out in one call instance
---@type number
ao._ref = 0

-- The ao global library version
---@type string
ao._version = "0.0.0"

-- The process environment including the initializing message
ao.env = {
	-- The initializing message object
	Process = {
		-- ID of the current process
		---@type string
		Id = "",
		-- The address of the process owner
		---@type string
		Owner = "",
		-- The array of tags present on the initializing message
		---@type Tag[]
		TagArray = {},
		-- The tags present on the initializing message in "key = value" format
		---@type table<string, string>
		Tags = {},
	},
}

-- Sends a message to another process by inserting the provided message
-- item into the process' outbox along with the ao specs compliant
-- message tags
---@param message MessageParam The message to be sent
---@return Message
function ao.send(message) end

-- Allows spawning a new process, from within another process.
---@param module string Arweave transaction ID of the module used by the new process
---@param message MessageParam The message that initializes the process
---@return Message
function ao.spawn(module, message) end

-- Internal function: clear module outbox
---@deprecated
function ao.clearOutbox() end

-- Internal function: init module
---@deprecated
---@param env Message
function ao.init(env) end

-- Internal function: is message sender trusted
---@deprecated
function ao.isTrusted() end

-- Internal function
---@deprecated
---@param msg Message
---@return Message
function ao.normalize(msg) end

-- Internal function
---@deprecated
function ao.result() end

-- Internal table for tracking the result of the message
---@deprecated
ao.outbox = {
	-- Messages sent from this evaluation
	---@type Message[]
	Messages = {},
	-- Output of this evaluation
	---@type any
	Output = {},
	-- Processes spawned from this evaluation
	---@type Message[]
	Spawns = {},
}

return ao
