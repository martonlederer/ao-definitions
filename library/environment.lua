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
