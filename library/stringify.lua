---@meta .stringify
local stringify = { _version = "0.0.1" }

-- Check if a table is a simple array, with indexes in order
---@param tbl table Table to check
---@return boolean
function stringify.isSimpleArray(tbl) end

-- Format a table as a string
---@param tbl table Table to format
---@param indent number? Level indentation
---@return string
function stringify.format(tbl, indent) end

return stringify
