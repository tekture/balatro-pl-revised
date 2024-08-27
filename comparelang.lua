oldtree = require("pl-1-0-1f-orig")
newtree = require("pl-new-orig")

function finddiffs(oldtree, newtree, path)
	for k,v in pairs(newtree) do
		if oldtree[k] == nil then
			print(path .. "." .. k, "not in oldtree")
		elseif(type(newtree[k]) == "table") then
			finddiffs(oldtree[k], newtree[k], path .. "." .. k)
		end
	end
end

finddiffs(oldtree, newtree, "/")