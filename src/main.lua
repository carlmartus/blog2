local Mooncake = require 'mooncake'
local meta = require './package'

local server = Mooncake:new()

server:get("/", function (req, res)
	res:write("Hello Write!")
	res:finish()
end)

server:get("/test/:hejsan", function (req, res)
	res:finish("TEST: " .. req.params.hejsan)
end)

server:start(8080)

