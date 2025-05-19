local win32 = require "lrwin32"
require "utils"

function RegEnumKeyEx(k)
	local l = {}
	if k then
		local i = 0
		local n = win32.RegEnumKeyEx(k, i)
		while n do
			table.insert(l, n)
			i = i + 1
			n = win32.RegEnumKeyEx(k, i)
		end
	end
	return l
end

local k = win32.RegOpenKey(win32.HKEY.CURRENT_USER, "Software\\Microsoft")
local l = RegEnumKeyEx(k)
win32.RegCloseKey(k)

for i,v in ipairs(l) do
    print(v)
end
