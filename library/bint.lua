---@meta .bint
-- Create a new bint from a value. Alias for `bint.new`
---@param x Bint|number|string A value convertible to a bint (string, number, or another bint).
---@return Bint
local bint = function(x) end

---@class Bint
local Bint = {}

-- Create a new bint with 0 value.
---@return Bint
function Bint.zero() end

-- Create a new bint with 1 value.
---@return Bint
function Bint.one() end

-- Create a bint from an unsigned integer.
---@param x number A value to initialize from convertible to a lua integer.
---@return Bint|nil
function Bint.fromuinteger(x) end

-- Create a bint from a signed integer.
---@param x number A value to initialize from convertible to a lua integer.
---@return Bint|nil
function Bint.frominteger(x) end

-- Create a bint from a string of the desired base.
---@param s string The string to be converted from.
---@param base number? Base of the number represented in the string, defaults to 10.
---@return Bint|nil
function Bint.frombase(s, base) end

-- Create a new bint from a string.
---@param s string A string convertible to a bint.
---@return Bint|nil
function Bint.fromstring(s) end

-- Create a new bint from a buffer of little-endian bytes.
---@param buffer string Buffer of bytes.
---@return Bint
function Bint.fromle(buffer) end

-- Create a new bint from a buffer of big-endian bytes.
---@param buffer string Buffer of bytes.
---@return Bint
function Bint.frombe(buffer) end

-- Create a new bint from a value.
---@param x Bint|number|string A value convertible to a bint (string, number, or another bint).
---@return Bint
function Bint.new(x) end

-- Convert a value to a bint if possible.
---@param x any A value to be converted (string, number, or another bint).
---@param clone boolean? A boolean that tells if a new bint reference should be returned. Defaults to false.
---@return Bint|nil
function Bint.tobint(x, clone) end

-- Convert a value to a bint if possible otherwise to a lua number.
---@param x any A value to be converted (string, number, or another bint).
---@param clone boolean? A boolean that tells if a new bint reference should be returned. Defaults to false.
---@return Bint|number|nil
function Bint.parse(x, clone) end

-- Convert a bint to an unsigned integer.
---@param x Bint A bint to be converted into an unsigned integer.
---@return number|nil
function Bint.touinteger(x) end

-- Convert a bint to a signed integer.
---@param x Bint A bint to be converted into a signed integer.
---@return number|nil
function Bint.tointeger(x) end

-- Convert a bint to a lua float in case integer would wrap around or lua integer otherwise.
---@param x Bint A bint to be converted into a lua number.
---@return number|nil
function Bint.tonumber(x) end

-- Convert a bint to a string in the desired base.
---@param x Bint The bint to be converted.
---@param base number? Base to be represented, defaults to 10. Must be at least 2 and at most 36.
---@param unsigned boolean? Whether to output as an unsigned integer. Defaults to false for base 10 and true for others. When unsigned is false the symbol '-' is prepended in negative values
---@return string
function Bint.tobase(x, base, unsigned) end

-- Convert a bint to a buffer of little-endian bytes.
---@param x Bint The bint to convert.
---@param trim boolean? If true, zero bytes on the right are trimmed.
---@return string
function Bint.tole(x, trim) end

-- Convert a bint to a buffer of big-endian bytes.
---@param x Bint The bint to convert.
---@param trim boolean? If true, zero bytes on the left are trimmed.
---@return string
function Bint.tobe(x, trim) end

-- Check if a number is 0 considering bints.
---@param x Bint The number to check.
---@return boolean
function Bint.iszero(x) end

-- Check if a number is 1 considering bints.
---@param x Bint The number to check.
---@return boolean
function Bint.isone(x) end

-- Check if a number is -1 considering bints.
---@param x Bint The number to check.
---@return boolean
function Bint.isminusone(x) end

-- Check if the input is a bint.
---@param x any The value to check.
---@return boolean
function Bint.isbint(x) end

-- Check if the input is a lua integer or a bint.
---@param x any The value to check.
---@return boolean
function Bint.isintegral(x) end

-- Check if the input is a bint or a lua number.
---@param x any The value to check.
---@return boolean
function Bint.isnumeric(x) end

-- Get the number type of the input (bint, integer, or float).
---@param x any The value to check.
---@return string|nil
function Bint.type(x) end

-- Check if a number is negative considering bints.
---@param x Bint The number to check.
---@return boolean
function Bint.isneg(x) end

-- Check if a number is positive considering bints.
---@param x Bint The number to check.
---@return boolean
function Bint.ispos(x) end

-- Check if a number is even considering bints.
---@param x Bint The number to check.
---@return boolean
function Bint.iseven(x) end

-- Check if a number is odd considering bints.
---@param x Bint The number to check.
---@return boolean
function Bint.isodd(x) end

-- Create a new bint with the maximum possible integer value.
---@return Bint
function Bint.maxinteger() end

-- Create a new bint with the minimum possible integer value.
---@return Bint
function Bint.mininteger() end

-- Bitwise left shift a bint in one bit (in-place).
function Bint._shlone() end

-- Bitwise right shift a bint in one bit (in-place).
function Bint._shrone() end

-- Increment a bint by one (in-place).
function Bint._inc() end

-- Increment a number by one considering bints.
---@param x Bint The number to increment.
---@return Bint
function Bint.inc(x) end

-- Decrement a bint by one (in-place).
function Bint._dec() end

-- Decrement a number by one considering bints.
---@param x Bint The number to decrement.
---@return Bint
function Bint.dec(x) end

-- Assign a bint to a new value (in-place).
---@param y Bint The new value to assign.
function Bint._assign(y) end

-- Take absolute of a bint (in-place).
function Bint._abs() end

-- Take absolute of a number considering bints.
---@param x Bint The number to take the absolute of.
---@return Bint
function Bint.abs(x) end

-- Take the floor of a number considering bints.
---@param x Bint The number to take the floor of.
---@return Bint
function Bint.floor(x) end

-- Take ceil of a number considering bints.
---@param x Bint The number to take the ceil of.
---@return Bint
function Bint.ceil(x) end

-- Wrap around bits of an integer (discarding left bits) considering bints.
---@param x Bint The integer to wrap.
---@param y number The number of right bits to preserve.
---@return Bint
function Bint.bwrap(x, y) end

-- Rotate left integer x by y bits considering bints.
---@param x Bint The integer to rotate.
---@param y number The number of bits to rotate by.
---@return Bint
function Bint.brol(x, y) end

-- Rotate right integer x by y bits considering bints.
---@param x Bint The integer to rotate.
---@param y number The number of bits to rotate by.
---@return Bint
function Bint.bror(x, y) end

-- Truncate a number to a bint. Floats numbers are truncated, that is, the fractional port is discarded.
---@param x number The number to truncate.
---@return Bint|nil
function Bint.trunc(x) end

-- Take maximum between two numbers considering bints.
---@param x Bint|number The first number to compare.
---@param y Bint|number The second number to compare.
---@return Bint
function Bint.max(x, y) end

-- Take minimum between two numbers considering bints.
---@param x Bint|number The first number to compare.
---@param y Bint|number The second number to compare.
---@return Bint
function Bint.min(x, y) end

-- Add an integer to a bint (in-place).
---@param y Bint The integer to add.
function Bint._add(y) end

-- Add two numbers considering bints.
---@param x Bint|number The first number to add.
---@param y Bint|number The second number to add.
---@return Bint
function Bint.__add(x, y) end

-- Subtract an integer from a bint (in-place).
---@param y Bint The integer to subtract.
function Bint._sub(y) end

-- Subtract two numbers considering bints.
---@param x Bint|number The number to subtract from.
---@param y Bint|number The number to subtract.
---@return Bint
function Bint.__sub(x, y) end

-- Multiply two numbers considering bints.
---@param x Bint|number The first number to multiply.
---@param y Bint|number The second number to multiply.
---@return Bint
function Bint.__mul(x, y) end

-- Check if bints are equal.
---@param x Bint The first bint to compare.
---@param y Bint The second bint to compare.
---@return boolean
function Bint.__eq(x, y) end

-- Check if numbers are equal considering bints.
---@param x Bint|number The first number to compare.
---@param y Bint|number The second number to compare.
---@return boolean
function Bint.eq(x, y) end

-- Perform unsigned division and modulo operation between two integers considering bints.
---@param x Bint The numerator.
---@param y Bint The denominator.
---@return Bint, Bint The quotient and the remainder.
function Bint.udivmod(x, y) end

-- Perform unsigned division between two integers considering bints.
---@param x Bint The numerator.
---@param y Bint The denominator.
---@return Bint The quotient.
function Bint.udiv(x, y) end

-- Perform unsigned integer modulo operation between two integers considering bints.
---@param x Bint The numerator.
---@param y Bint The denominator.
---@return Bint The remainder.
function Bint.umod(x, y) end

-- Perform integer truncate division and modulo operation between two numbers considering bints.
---@param x Bint The numerator.
---@param y Bint The denominator.
---@return Bint, Bint The quotient and the remainder.
function Bint.tdivmod(x, y) end

-- Perform truncate division between two numbers considering bints.
---@param x Bint The numerator.
---@param y Bint The denominator.
---@return Bint The quotient.
function Bint.tdiv(x, y) end

-- Perform integer truncate modulo operation between two numbers considering bints.
---@param x Bint The numerator.
---@param y Bint The denominator.
---@return Bint The remainder.
function Bint.tmod(x, y) end

-- Perform integer floor division and modulo operation between two numbers considering bints.
---@param x Bint The numerator.
---@param y Bint The denominator.
---@return Bint, Bint The quotient and the remainder.
function Bint.idivmod(x, y) end

-- Perform floor division between two numbers considering bints.
---@param x Bint The numerator.
---@param y Bint The denominator.
---@return Bint The quotient.
function Bint.__idiv(x, y) end

-- Perform division between two numbers considering bints.
---@param x Bint|number The numerator.
---@param y Bint|number The denominator.
---@return Bint The quotient.
function Bint.__div(x, y) end

-- Perform integer floor modulo operation between two numbers considering bints.
---@param x Bint The numerator.
---@param y Bint The denominator.
---@return Bint The remainder.
function Bint.__mod(x, y) end

-- Perform integer power between two integers considering bints.
---@param x Bint The base.
---@param y Bint The exponent.
---@return Bint The result of the power operation.
function Bint.ipow(x, y) end

-- Perform integer power between two unsigned integers over a modulus considering bints.
---@param x Bint The base.
---@param y Bint The exponent.
---@param m Bint The modulus.
---@return Bint The result of the power operation.
function Bint.upowmod(x, y, m) end

-- Perform numeric power between two numbers considering bints.
---@param x Bint|number The base.
---@param y Bint|number The exponent.
---@return Bint The result of the power operation.
function Bint.__pow(x, y) end

-- Bitwise left shift integers considering bints.
---@param x Bint|number The integer to shift.
---@param y number The number of bits to shift by.
---@return Bint The result of the shift operation.
function Bint.__shl(x, y) end

-- Bitwise right shift integers considering bints.
---@param x Bint|number The integer to shift.
---@param y number The number of bits to shift by.
---@return Bint The result of the shift operation.
function Bint.__shr(x, y) end

-- Bitwise AND bints (in-place).
---@param y Bint The integer to AND with.
function Bint._band(y) end

-- Bitwise AND two integers considering bints.
---@param x Bint|number The first integer.
---@param y Bint|number The second integer.
---@return Bint The result of the AND operation.
function Bint.__band(x, y) end

-- Bitwise OR bints (in-place).
---@param y Bint The integer to OR with.
function Bint._bor(y) end

-- Bitwise OR two integers considering bints.
---@param x Bint|number The first integer.
---@param y Bint|number The second integer.
---@return Bint The result of the OR operation.
function Bint.__bor(x, y) end

-- Bitwise XOR bints (in-place).
---@param y Bint The integer to XOR with.
function Bint._bxor(y) end

-- Bitwise XOR two integers considering bints.
---@param x Bint|number The first integer.
---@param y Bint|number The second integer.
---@return Bint The result of the XOR operation.
function Bint.__bxor(x, y) end

-- Bitwise NOT a bint (in-place).
function Bint._bnot() end

-- Bitwise NOT a bint.
---@param x Bint The integer to NOT.
---@return Bint The result of the NOT operation.
function Bint.__bnot(x) end

-- Negate a bint (in-place).
function Bint._unm() end

-- Negate a bint.
---@param x Bint The integer to negate.
---@return Bint The result of the negation.
function Bint.__unm(x) end

-- Compare if integer x is less than y considering bints (unsigned version).
---@param x Bint|number The first integer.
---@param y Bint|number The second integer.
---@return boolean True if x is less than y.
function Bint.ult(x, y) end

-- Compare if bint x is less or equal than y considering bints (unsigned version).
---@param x Bint|number The first integer.
---@param y Bint|number The second integer.
---@return boolean True if x is less than or equal to y.
function Bint.ule(x, y) end

-- Compare if number x is less than y considering bints and signs.
---@param x Bint|number The first number.
---@param y Bint|number The second number.
---@return boolean True if x is less than y.
function Bint.__lt(x, y) end

-- Compare if number x is less or equal than y considering bints and signs.
---@param x Bint|number The first number.
---@param y Bint|number The second number.
---@return boolean True if x is less than or equal to y.
function Bint.__le(x, y) end

-- Convert a bint to a string on base 10.
---@return string The base 10 representation of the bint.
function Bint.__tostring() end

return bint
