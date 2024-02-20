---@meta _

-- Tag type
---@class Tag
---@field name string The name of the tag
---@field value string The value of the tag

-- Message type
---@class Message
---@field Id string The transaction ID of the message
---@field From string Message sender
---@field Target string Message recipient
---@field Owner string Message signer and submitter
---@field Timestamp number Message timestamp
---@field Anchor string
---@field Cron boolean Whether the action was a scheduled cron action or not
---@field Data string Message transaction data
---@field Signature string Message transaction signature
---@field Epoch number
---@field Nonce number
---@field TagArray Tag[] Message tags array
---@field Tags table<string, string> Message tags in "key = value" format
local Message = {
	-- Block height of the message transaction
	---@type number
	["Block-Height"] = 0,
	-- The message that initiated this message
	---@type string
	["Pushed-For"] = "",
	-- The process forwarding the message
	---@type string
	["Forwarded-By"] = "",
	---@type string
	["Hash-Chain"] = "",
	---@type boolean
	["Read-Only"] = false,
}

-- Message with optional fields
---@class MessageParam: { [string]: string }
---@field Target string Target to send the message to
---@field Data string? Message transaction data
---@field Tags Tag[]|table<string, string>? Message tags

---@alias HandlerFunction fun(message: Message, environment: Message): any

---@alias PatternFunction fun(message: Message): boolean | 1 | 0 | -1 | "continue" | "break" | string

---@alias Handler { pattern: string; handle: HandlerFunction, name: string }
