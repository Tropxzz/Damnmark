-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local UIListLayout = Instance.new("UIListLayout")

local Library = {}

--Properties:
function Library:CreateMain()
	ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Frame.Parent = ScreenGui
	Frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	Frame.Position = UDim2.new(0.177642971, 0, 0.305450797, 0)
	Frame.Size = UDim2.new(0, 556, 0, 439)

	UICorner.Parent = Frame

	UIListLayout.Parent = Frame
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 4)
    UIListLayout.FillDirection = Enum.FillDirection.Vertical
    UIListLayout.FillDirection = Enum.FillDirection.Horizontal

	
	local function RQPF_fake_script() -- Frame.LocalScript 
		local script = Instance.new('LocalScript', Frame)

		script.Parent.Active = true
		script.Parent.Draggable = true
	end
	coroutine.wrap(RQPF_fake_script)()
	
	local GamerLibrary = {}
	
	 function GamerLibrary:NewButton(name)
		local textbutton = Instance.new("TextButton")
		textbutton.Parent = Frame
		textbutton.BackgroundColor3 = Color3.new(1,1,1)
		textbutton.Font = Enum.Font.GothamBold
        textbutton.Size = UDim2.new(0,200,0,38)
		textbutton.Text  = name
		textbutton.TextColor3 = Color3.new(0,0,0)
		textbutton.FontSize = 14
		
	end
	return GamerLibrary
end

return Library;
