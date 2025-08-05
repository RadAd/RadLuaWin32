local win32 = require "lrwin32"

print ("ConsoleCP: " .. win32.GetConsoleCP())
print ("ConsoleOutputCP: " .. win32.GetConsoleOutputCP())
print ("ACP: " .. win32.GetACP())
print ("OEMCP: " .. win32.GetOEMCP())
