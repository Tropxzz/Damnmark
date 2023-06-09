if game.Players.LocalPlayer.PlayerGui:FindFirstChild("ScreenGui") then
    game.Players.LocalPlayer.PlayerGui:FindFirstChild("ScreenGui"):Destroy()
end

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "ScreenGui"
ScreenGui.Parent = game.Players.LocalPlayer.PlayerGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local Frame = Instance.new("Frame")
Frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Frame.Position = UDim2.new(0.177642971, 0, 0.305450797, 0)
Frame.Size = UDim2.new(0, 556, 0, 439)
Frame.Parent = ScreenGui

local UICorner = Instance.new("UICorner")
UICorner.Parent = Frame

local UIListLayout = Instance.new("UIListLayout")
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 4)
UIListLayout.Parent = Frame

local function FrameLocalScript()
    local script = Instance.new('LocalScript', Frame)

    script.Parent.Active = true
    script.Parent.Draggable = true
end
coroutine.wrap(FrameLocalScript)()

local Library = {}

--Properties:
function Library:CreateMain()
    local GamerLibrary = {}

    function GamerLibrary:NewButton(name, callback)
        local textbutton = Instance.new("TextButton")
        textbutton.Parent = Frame
        textbutton.BackgroundColor3 = Color3.new(1, 1, 1)
        textbutton.Font = Enum.Font.GothamBold
        textbutton.Size = UDim2.new(0, 200, 0, 50)
        textbutton.Text = name
        textbutton.TextColor3 = Color3.new(0, 0, 0)
        textbutton.FontSize = 12

        textbutton.MouseButton1Click:Connect(function()
            if callback then
                callback()
            end
        end)

        return textbutton
    end

    return GamerLibrary
end

return Library
