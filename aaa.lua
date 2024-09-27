local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Signals = {"Activated", "MouseButton1Down", "MouseButton1Click"}
local robuxButton = LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("DialogApp"):WaitForChild("Dialog"):WaitForChild("RobuxProductDialog"):WaitForChild("Buttons"):WaitForChild("ButtonTemplate")
function pressRbx()
    if robuxButton then
        for _, signal in ipairs(Signals) do
            for _, v in ipairs(getconnections(robuxButton[signal])) do
                v:Fire()  
            end
        end
    end
    print("Robux Button ✅")
    task.wait(5)
  end