# Modules
Modules for Roblox scripting utilities

## ScreenGui
Makes a ScreenGui and allows to protect it.
How to use:
```lua
local scrgui = loadstring(game:HttpGet("https://github.com/GoHamza/UIModules/blob/main/ScreenGui.luau?raw=true"))()
local myscreengui = scrgui(true)
-- the rest of your code
```
If argument 1 is true, then the ScreenGui is protected from anti-cheat.
Returns the ScreenGui instance.
## NewInstance
Better implementation of `Instance.new()`
How to use:
```lua
local newinst = loadstring(game:HttpGet("https://github.com/GoHamza/UIModules/blob/main/NewInstance.luau?raw=true"))()
local part = newinst("Part", {
  Parent = workspace,
  Anchored = true
})

part.Touched:Connect(print)
-- the rest of your code
```
