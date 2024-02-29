---@meta .bint
-- Create a new instance of bint
---@param bits number Number of bits for the integer representation, must be multiple of wordbits and at least 64
---@param wordbits number? Number of the bits for the internal word, defaults to half of Lua's integer size
---@return fun(x: string|number|Bint): Bint
local bint = function(bits, wordbits) end

---@class Bint
local Bint = {}

-- Convert from lua integers, but read as unsigned integer
---@param x any A value to initialize from convertible to a lua integer
---@return Bint
function Bint.fromuinteger(x) end

-- Convert from lua integers, preserving the sign
---@param x any A value to initialize from convertible to a lua integer
---@return Bint
function Bint.frominteger(x) end

-- Convert from arbitrary bases, like hexadecimal
---@param s string The string to be converted from, must have only alphanumeric and '+-' characters
---@param base number? Base that the number is represented, defaults to 10. Must be at least 2 and at most 36
---@return Bint
function Bint.frombase(s, base) end

-- Convert from arbitrary string, support binary/hexadecimal/decimal
---@parma s A string convertible to a bint
---@return Bint
function Bint.fromstring(s) end

-- Convert from lua numbers, truncating the fractional part
---@param x number A number to truncate
---@return Bint
function Bint.trunc(x) end

-- Convert from anything, asserts on invalid integers
---@param x string|number|Bint A value convertible to a bint
---@return Bint
function Bint.new(x) end

-- Convert from anything, returns nil on invalid integers
---@param x string|number|Bint A value to be converted
---@param clone boolean?  A boolean that tells if a new bint reference should be returned. Defaults to false
---@return Bint
function Bint.tobint(x, clone) end

-- Convert from anything, returns a lua number as fallback
---@param x string|number|Bint A value to be converted
---@param clone boolean?  A boolean that tells if a new bint reference should be returned. Defaults to false
---@return Bint
function Bint.parse(x, clone) end

-- Create a new bint with 0 value
---@return Bint
function Bint.zero() end

-- Create a new bint with 1 value
---@return Bint
function Bint.one() end

-- Convert to a lua integer, wraps around as an unsigned integer
---@param x Bint|number A value to be converted into an unsigned integer
---@return number|nil
function Bint.touinteger(x) end

-- Convert to a lua integer, wraps around, preserves the sign
---@param x Bint|number A value to be converted into a Lua number
---@return number|nil
function Bint.tointeger(x) end

-- Convert to lua float, losing precision
---@param x Bint|number A bint or value to be converted into a lua number
---@return number|nil
function Bint.tonumber(x) end

-- Convert to a string in any base
---@param x Bint The value to be converted from
---@param base number? Base to be represented, defaults to 10. Must be at least 2 and at most 36
---@param unsigned boolean? Whether to output as an unsigned integer. Defaults to false for base 10 and true for others. When unsigned is false the symbol '-' is prepended in negative values
function Bint.tobase(x, base, unsigned) end

return bint
