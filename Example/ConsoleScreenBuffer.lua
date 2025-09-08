local win32 = require "lrwin32"

h = win32.GetStdHandle(win32.STD.OUTPUT_HANDLE);
print("OUTPUT_HANDLE: ".. h)

csbi = {}
win32.GetConsoleScreenBufferInfo(h, csbi)
print("Size: " .. csbi.dwSize.X .. " x " .. csbi.dwSize.Y)
print("CursorPosition: " .. csbi.dwCursorPosition.X .. " x " .. csbi.dwCursorPosition.Y)
print("Attributes: " .. csbi.wAttributes)
print("Window: " .. csbi.srWindow.Left .. ", " .. csbi.srWindow.Top .. " - " .. csbi.srWindow.Right .. ", " .. csbi.srWindow.Bottom)
print("MaximumWindowSize: " .. csbi.dwMaximumWindowSize.X .. " x " .. csbi.dwMaximumWindowSize.Y)
