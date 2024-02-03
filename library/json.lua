---@meta json
local json = {}

-- This function returns a string representation of a Lua object in JSON
---@param val unknown Value to encode as JSON
---@return string
function json.encode(val) end

-- The function takes a JSON string and turns it into a Lua object
---@generic T : unknown
---@param val string The JSON string to decode
---@return T
function json.decode(val) end

return json
