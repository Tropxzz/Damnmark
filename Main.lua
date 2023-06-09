if game.Players.LocalPlayer.PlayerGui:FindFirstChild("ScreenGui") then
    game.Players.LocalPlayer.PlayerGui:FindFirstChild("ScreenGui"):Destroy()
end

local Library = {}

function Library:CreateMain()
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "ScreenGui"
    ScreenGui.Parent = game.Players.LocalPlayer.PlayerGui
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    local Frame = Instance.new("Frame")
    Frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    Frame.Position = UDim2.new(0.0892547667, 0, 0.188524336, 0)
    Frame.Size = UDim2.new(0, 556, 0, 439)
    Frame.Parent = ScreenGui

    local UICorner = Instance.new("UICorner")
    UICorner.Parent = Frame

    local Tabs = Instance.new("Frame")
    Tabs.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    Tabs.Position = UDim2.new(0.820143878, 0, 0, 0)
    Tabs.Size = UDim2.new(0, 100, 0, 438)
    Tabs.Parent = Frame

    local UICorner_2 = Instance.new("UICorner")
    UICorner_2.Parent = Tabs

    local UIListLayout = Instance.new("UIListLayout")
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Padding = UDim.new(0, 4)
    UIListLayout.Parent = Tabs

    Frame.Active = true
    Frame.Draggable = true

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

    function GamerLibrary:AddTab(name)
        local button = Instance.new("TextButton")
        button.Name = name
        button.Parent = Tabs
        button.BackgroundColor3 = Color3.new(1, 1, 1)
        button.Font = Enum.Font.GothamBold
        button.Size = UDim2.new(1, 0, 0, 50)
        button.Text = name
        button.TextColor3 = Color3.new(0, 0, 0)
        button.FontSize = 12
        button.AutoButtonColor = false

        return button
    end

    return GamerLibrary
end

return Library
