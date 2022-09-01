local altscreen_screengui = Instance.new("ScreenGui")
local altscreen_frame = Instance.new("Frame")
local altscreen_text = Instance.new("TextLabel")


function initializeAltScreen()

    generatedChars = {}

    for i=1,12 do
        generatedChars[i] = string.char(math.random(32,126))
    end

    hiddenName = table.concat(generatedChars)

    altscreen_screengui.Name = hiddenName
    altscreen_screengui.Parent = game:GetService("CoreGui")

    altscreen_frame.Name = hiddenName
    altscreen_frame.Parent = game:GetService("CoreGui"):FindFirstChild(hiddenName)
    altscreen_frame.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
    altscreen_frame.BorderColor3 = Color3.fromRGB(12, 12, 12)
    altscreen_frame.BorderSizePixel = 100
    altscreen_frame.Position = UDim2.new(0, 1, 0, 1)
    altscreen_frame.Size = UDim2.new(1, 0, 1, 0)


    altscreen_text.Name = hiddenName
    altscreen_text.Parent = altscreen_frame
    altscreen_text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    altscreen_text.BackgroundTransparency = 1.000
    altscreen_text.Position = UDim2.new(0.43553561, 0, 0.460150361, 0)
    altscreen_text.Size = UDim2.new(0, 200, 0, 50)
    altscreen_text.Font = Enum.Font.GothamBold
    altscreen_text.TextColor3 = Color3.fromRGB(255, 255, 255)
    altscreen_text.TextSize = 18.000
    altscreen_text.Text = "[ cx - v1 ]\n" .. game.Players.LocalPlayer.Name .. "\n  \ninitializing.."
        
end

function updateAltScreenDescription(desc)
    altscreen_text.Text = "[ cx - v1 ]\n" .. game.Players.LocalPlayer.Name .. "\n  \n" .. desc
end

initializeAltScreen()
task.wait(4)
updateAltScreenDescription("Good morning people")