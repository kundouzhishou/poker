local http = require("socket.http")

function http.get(u) 
	local t = {}
	local r,c,h = http.request {
		url = u,
		sink = ltn12.sink.table(t)
	}
	return r,c,h,table.concat(t)
end

url = "http://127.0.0.1/1.html"
r,c,h,body = http.get(url)
if c ~= 200 then
	return
end
print(body)