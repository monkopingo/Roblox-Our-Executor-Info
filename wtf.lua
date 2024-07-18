-- Create a ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "ExecutorInfoGui"
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Create a TextLabel for the executor name
local executorLabel = Instance.new("TextLabel")
executorLabel.Size = UDim2.new(0, 300, 0, 50)  -- Adjust the size as needed
executorLabel.Position = UDim2.new(0.5, -150, 0.5, -75)  -- Center the label
executorLabel.BackgroundTransparency = 1
executorLabel.TextColor3 = Color3.new(1, 0, 0)  -- Red color
executorLabel.TextScaled = true
executorLabel.Parent = screenGui

-- Create a TextLabel for the identity
local identityLabel = Instance.new("TextLabel")
identityLabel.Size = UDim2.new(0, 300, 0, 50)  -- Adjust the size as needed
identityLabel.Position = UDim2.new(0.5, -150, 0.5, 0)  -- Center the label below the executor name
identityLabel.BackgroundTransparency = 1
identityLabel.TextColor3 = Color3.new(1, 0, 0)  -- Red color
identityLabel.TextScaled = true
identityLabel.Parent = screenGui

-- Get the executor name and set it to the TextLabel
local executorName = getexecutorname()
executorLabel.Text = "Executor: " .. string.upper(executorName)  -- Convert to uppercase if needed

-- Output identity level to console
printidentity()

-- Display message to check console
identityLabel.Text = "Identity: CHECK IN CONSOLE"

-- Function to remove the GUI after 5 seconds
local function removeGui()
    wait(5)
    screenGui:Destroy()
end

-- Run the function to remove the GUI after 5 seconds
spawn(removeGui)
