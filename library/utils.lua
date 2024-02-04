---@meta .utils
local utils = { _version = "0.0.2" }

-- Allows currying usage of a function
---@param fn function
---@param arity number
---@return function
function utils.curry(fn, arity) end

-- Concat two Array Tables
---@generic T : unknown
---@param a T[] First array
---@param b T[] Second array
---@return T[]
function utils.concat(a, b) end

-- Reduce executes the provided reducer function for all array elements, finally providing one (unified) result
---@generic T : unknown
---@param fn fun(accumulator: T, current: T): T Provided reducer function
---@param initial T? Initial value
---@param t T[] Array to reduce
---@return T
function utils.reduce(fn, initial, t) end

-- Create a new array filled with the results of calling the provided map function on each element in the array
---@generic T : unknown
---@generic H : unknown
---@param fn fun(val: T, key: unknown): H The map function. It receives the current array element and key
---@param data T[] The array to map
---@return H[]
function utils.map(fn, data) end

-- This function creates a new array from a portion of the original, only keeping the elements that passed a provided filter function's test
---@generic T : unknown
---@param fn fun(val: T): boolean Filter function
---@param data T[] Array to filter
---@return T[]
function utils.filter(fn, data) end

-- This function returns the first element that matches in a provided function
---@generic T : unknown
---@param fn fun(val: T): boolean The find function that receives the current element and returns true if it matches, false if it doesn't
---@param t T[] Array to find the element in
---@return T
function utils.find(fn, t) end

-- Checks if a specified property of a table equals with the provided value
---@param propName string Name of the property to check
---@param value unknown Expected value
---@param object table Table to check
---@return boolean
function utils.propEq(propName, value, object) end

-- Puts an array in reverse order
---@generic T : unknown
---@param data T[]
---@returns T[]
function utils.reverse(data) end

-- Chain multiple array mutations together and execute them in reverse order on the provided array
---@param ... function
---@return unknown
function utils.compose(...) end

-- Returns the property value that belongs to the property name provided from an object
---@generic T
---@param propName string Name of the property to return
---@param object table The table to return the property value from
---@return T
function utils.prop(propName, object) end

-- Checks if an array includes a specific value (of primitive type)
---@param val unknown Value to check for
---@param t unknown[] Array to find the value in
function utils.includes(val, t) end

-- Get the keys of a table as an array
---@generic T : unknown
---@param t table<T, unknown>
---@return T[]
function utils.keys(t) end

-- Get the values of a table as an array
---@generic T : unknown
---@param t table<unknown, T>
---@return T[]
function utils.values(t) end

return utils
