---@meta .handlers
local handlers = {}

handlers._version = "0.0.3"
handlers.utils = {}

---@type Handler[]
handlers.list = {}

-- Given a resolver specification, returns a resolver function
---@param resolveSpec Spec The resolver specification
---@return fun(msg: Message): boolean
function handlers.generateResolver(resolveSpec) end

-- Given a pattern, returns the next message that matches the pattern
-- This function uses Lua's coroutines under-the-hood to add a handler, pause,
-- and then resume the current coroutine. This allows us to effectively block
-- processing of one message until another is received that matches the pattern.
---@param pattern Pattern The pattern to check for in the message
---@return Message
function handlers.receive(pattern) end

-- Given a name, a pattern, and a handle, adds a handler to the list
-- If name is not provided, "_once_" prefix plus onceNonce will be used as the name.
-- Adds handler with maxRuns of 1 such that it will only be called once then removed from the list
---@param name string The name of the handler
---@param pattern Pattern The pattern to check for in the message
---@param handle HandlerFunction The function to call if the pattern matches
function handlers.once(name, pattern, handle) end

-- Add a new message handler
---@param name string Unique handler name
---@param pattern Pattern A function that determinates if the hanlder should be executed or not<br/> - Return 0 to not call handler<br/> - Return -1 to break after handler is called<br/> - Return 1 to continue
---@param handle HandlerFunction The function executed if the pattern matched
function handlers.add(name, pattern, handle) end

-- Append a new message handler at the end of the handler list
---@param name string Unique handler name
---@param pattern Pattern A function that determinates if the hanlder should be executed or not<br/> - Return 0 to not call handler<br/> - Return -1 to break after handler is called<br/> - Return 1 to continue
---@param handle HandlerFunction The function executed if the pattern matched
function handlers.append(name, pattern, handle) end

-- Prepend a new message handler at the beginning of the handler list
---@param name string Unique handler name
---@param pattern Pattern A function that determinates if the hanlder should be executed or not<br/> - Return 0 to not call handler<br/> - Return -1 to break after handler is called<br/> - Return 1 to continue
---@param handle HandlerFunction The function executed if the pattern matched
function handlers.prepend(name, pattern, handle) end

-- Insert a handler before a specified handler
---@param handleName string Name of the handler to insert before
---@return { add: fun(name: string, pattern: Pattern, handler: HandlerFunction) }
function handlers.before(handleName) end

-- Insert a handler after a specified handler
---@param handleName string Name of the handler to insert after
---@return { add: fun(name: string, pattern: Pattern, handler: HandlerFunction) }
function handlers.after(handleName) end

-- Remove a handler
---@param name string Name of the handler to remove
function handlers.remove(name) end

-- Internal function: evaluate handlers on message
---@deprecated
---@param message Message
---@param environment Message
function handlers.evaluate(message, environment) end

-- Helper pattern function that can be used to trigger a handler, if it has a matching tag
---@param name string Tag name
---@param value string Expected value for tag
---@return PatternFunction
function handlers.utils.hasMatchingTag(name, value) end

-- Helper pattern function that can be used to trigger a handler, if it has a tag with one of the values defined
---@param name string Tag name
---@param values string[] Expected values for the tag
---@return PatternFunction
function handlers.utils.hasMatchingTagOf(name, values) end

-- Helper pattern function that can be used to trigger a handler, if its data matches the expected value
---@param value string Expected value for message data
---@return PatternFunction
function handlers.utils.hasMatchingData(value) end

-- Helper handler function that can be used to quickly reply to a message in a hanlder, with the provided data
---@param input string The message data to reply with
---@return fun(msg: Message)
function handlers.utils.reply(input) end

-- If a pattern function is wrapped with this pattern helper, it'll continue handler execution
---@param fn PatternFunction
---@return PatternFunction
function handlers.utils.continue(fn) end

return handlers
