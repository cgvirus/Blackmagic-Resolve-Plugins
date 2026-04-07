fusion = bmd.scriptapp("Fusion")
comp = fusion.CurrentComp

if not comp then return end

local step = comp:GetData("FrameStep") or 10
comp.CurrentTime = comp.CurrentTime - step
