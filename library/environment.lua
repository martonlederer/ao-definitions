---@meta _

-- Definitions for global variables in the environment

-- "ao" global library
ao = require("ao")

-- "Handlers" global library
Handlers = require(".handlers")

-- All the messages that are received and not handled by any handlers
---@type Message[]
Inbox = {}

-- Send a message to another process
Send = ao.send

-- Spawn a process
Spawn = ao.spawn

-- A string that is set on init that describes the name of your process
---@type string
Name = ""

-- The address of the owner of this process
---@type string
Owner = ""

-- A function that takes any lua Table and generates a print friendly output of the data
Dump = require(".dump")

-- A functional utility library with functions like map, reduce, filter
Utils = require(".utils")

-- Terminal colors
Colors = {
	red = "\27[31m",
	green = "\27[32m",
	blue = "\27[34m",
	reset = "\27[0m",
	gray = "\27[90m",
}

--- Returns a **seeded** random number based on the provided arguments.
--- The seed is generated using the block height, the owner address, the process' module id and the message id
---
---* `math.random()`: Returns a float in the range [0,1).
---* `math.random(n)`: Returns a integer in the range [1, n].
---* `math.random(m, n)`: Returns a integer in the range [m, n].
---
---@overload fun(): number
---@overload fun(m: integer): integer
---@param m integer
---@param n integer
---@return integer
---@nodiscard
function math.random(m, n) end
