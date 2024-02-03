---@meta .base64
local base64 = {}

-- Allows creating a new encoder table to customize the encode() function's result
---@param s62 string Optional custom char for 62 (+ by default)
---@param s63 string Optional custom char for 63 (/ by default)
---@param spad string Optional custom padding char (= by default)
---@return table
function base64.makeencoder(s62, s63, spad) end

-- Allows creating a new decoder table to be able to decode custom-encoded base64 strings
---@param s62 string Optional custom char for 62 (+ by default)
---@param s63 string Optional custom char for 63 (/ by default)
---@param spad string Optional custom padding char (= by default)
---@return table
function base64.makedecoder(s62, s63, spad) end

-- This function encodes the provided string using the default encoder table. The encoder can be customized and a cache is available for larger chunks of data
---@param str string The string to encode
---@param encoder table Optional custom encoding table
---@param usecaching boolean Optional cache for large strings (turned off by default)
function base64.encode(str, encoder, usecaching) end

-- This function decodes the provided base64 encoded string using the default decoder table. The decoder can be customized and a cache is also available here
---@param str string The base64 string to decode
---@param decoder table Optional custom decoding table
---@param usecaching boolean Optional cache for large strings (turned off by default)
function base64.decode(str, decoder, usecaching) end

return base64
