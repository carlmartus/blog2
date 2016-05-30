local Mooncake = require 'mooncake'

local server = Mooncake:new()

server:get("/", function (req, res)
	res:send("Hello World!", 200)
end)

server:start(8080)

