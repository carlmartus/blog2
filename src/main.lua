local Mooncake = require 'mooncake'
local meta = require './package'
local inspect = require 'inspect'

local server = Mooncake:new()

server:get("/", function (req, res)
	res:finish("Main! " .. req.url)
end)

server:get("/*", function (req, res)
	res:status(404)
	res:finish("404: " .. req.url)
end)

server:get("/articles/", function (req, res)
	res:finish("ERROR articles!")
end)

server:get("/articles/:slug", function (req, res)
	res:finish("Get article! " .. req.params.slug)
end)

server:start(8080)

