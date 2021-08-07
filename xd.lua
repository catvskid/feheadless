local Y = -50 --/* Places your head 50 studs below you [Feel free to change to wherever.]

local LP = game:GetService('Players').LocalPlayer
if not workspace:FindFirstChild(LP.Name) then LP.CharacterAdded:Wait() end
local Char = workspace[LP.Name]

local Hat = Char:FindFirstChildOfClass('Accessory')
local Handle = Hat['Handle']; local Attachment = Handle:FindFirstChildWhichIsA('Attachment')
local ACWeld = Handle:FindFirstChildWhichIsA('Weld')

local Var, BPart;
if tostring(ACWeld.Part1) == 'Torso' or tostring(ACWeld.Part1) == 'UpperTorso' then
  Var = -Y
  BPart = Char['Head']
else
  Var = Y
  BPart = Char['HumanoidRootPart']
end

local RGrip = Instance.new('Weld')
RGrip.Name = 'RightGrip'
RGrip.Part1 = Handle; RGrip.Part0 = BPart
RGrip.Parent = BPart
Attachment.CFrame = CFrame.new(0,0,0);
RGrip.C1 = Handle.CFrame:ToObjectSpace(Char['HumanoidRootPart'].CFrame) RGrip.C0 = CFrame.new(0, Var, 0)
RGrip:Remove(); RGrip.Parent = BPart
