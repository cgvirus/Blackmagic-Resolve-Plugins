fusion = bmd.scriptapp("Fusion")
comp = fusion.CurrentComp

if not comp then return end

local x = comp:AskUser("Set Frame Step", {
    {"step", "Text", Name = "Step size:", Default = tostring(comp:GetData("FrameStep") or 10)}
})

if not x then return end

local step = tonumber(x["step"])
if not step then return end

comp:SetData("FrameStep", step)
print("Step saved:", step)
