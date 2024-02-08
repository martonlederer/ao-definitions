---@meta .chance
local Random = {}

-- Set a new random seed
---@param seed number Custom seed to use when generating numbers
function Random.seed(seed) end

-- Generate a seeded random number
---@return number
function Random.random() end

-- Generate a seeded random integer between two limits (including the limits as well)
---@param min integer Minimum random value included
---@param max integer Maximum random value included
---@return integer
function Random.integer(min, max) end

return Random
