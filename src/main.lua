local Mooncake = require 'mooncake'

local server = Mooncake:new()

server:get("/", function (req, res)
	res:write("Hello Write!")
	res:finish()
end)

server:start(8080)

