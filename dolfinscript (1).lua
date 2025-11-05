return(function()
local _b = { "080108097121101114115", "085115101114073110112117116083101114118105099101", "076111099097108080108097121101114", "082117110083101114118105099101", "067111114101071117105", "083099114101101110071117105", "073109097103101076097098101108", "070114097109101", "084101120116066117116116111110", "085073067111114110101114", "078101119", "084101120116066111120", "066111120072097110100108101065100111114110109101110116", "066111100121086101108111099105116121", "066111100121071121114111", "080097114116" }
local function _c(str)
    local r = ""
    for i = 1, #str, 3 do
        local a = tonumber(str:sub(i, i+2))
        if a then r = r .. string.char(a) end
    end
    return r
end

local _d=game:GetService(_c(_b[1]))
local _e=game:GetService(_c(_b[2]))
local _f=game:GetService(_c(_b[4]))
local _g=_d.LocalPlayer
local _h,_i,_j=16,50,50
local _k,_l,_m,_n,_o,_p=false,false,false,false,false,false
local _q,_r=false,nil
local _s=5
local function _t()
    return _g.Character or _g.CharacterAdded:Wait()
end

local _u=Instance.new(_c(_b[6]),game.CoreGui)
_u.Name="DMN"
local _v=Instance.new(_c(_b[7]),_u)
_v.Image="rbxassetid://14508850515"
_v.Size=UDim2.new(0,85,0,85)
_v.BackgroundTransparency=1
_v.Position=UDim2.new(0,0,0,0)
_v.ZIndex=120

local _w=Instance.new(_c(_b[8]),_u)
_w.Size=UDim2.new(0,380,0,480)
_w.Position=UDim2.new(0,80,0,60)
_w.BackgroundColor3=Color3.fromRGB(46,154,214)
_w.BackgroundTransparency=0.09
_w.Active=true
_w.Draggable=true
_w.Visible=true
_w.BorderSizePixel=0
Instance.new(_c(_b[10]),_w).CornerRadius = UDim.new(0.09,22)
local _x=Instance.new(_c(_b[7]),_w)
_x.BackgroundTransparency=1
_x.Image="rbxassetid://1316045217"
_x.ScaleType=Enum.ScaleType.Slice
_x.SliceScale=0.3
_x.Size=_w.Size+UDim2.new(0,24,0,24)
_x.Position=UDim2.new(0,-12,0,-12)
_x.ZIndex=-10
_x.ImageTransparency=0.8
local _y=Instance.new(_c(_b[9]),_u)
_y.Size=UDim2.new(0,94,0,42)
_y.Position=UDim2.new(0,100,0,18)
_y.Text=_c("240145032204077032240145")
_y.TextColor3=Color3.fromRGB(21,84,129)
_y.Font=Enum.Font.FredokaOne
_y.BackgroundColor3=Color3.fromRGB(120,228,255)
_y.TextSize=21
_y.ZIndex=199
Instance.new(_c(_b[10]),_y).CornerRadius=UDim.new(0.35,15)
_w:GetPropertyChangedSignal("Visible"):Connect(function()
    _y.Text=_w.Visible and _c("226153032209032226153") or _c("240145032204077032240145")
end)
_y.MouseButton1Click:Connect(function()
    _w.Visible=not _w.Visible
end)
local _z=0
local function _A(_B) 
    local _C=Instance.new("TextLabel",_w)
    _C.Size=UDim2.new(1,0,0,38)
    _C.Position=UDim2.new(0,0,0,_z)
    _z=_z+0.084
    _C.BackgroundColor3=Color3.fromRGB(62,183,214)
    _C.TextColor3=Color3.new(1,1,1)
    _C.Text="   ".._B.."  |  DM 🐬"
    _C.Font=Enum.Font.FredokaOne
    _C.TextSize=22
    _C.BorderSizePixel=0
    Instance.new("UICorner",_C).CornerRadius=UDim.new(0.18,8)
    return _C
end

local function _D(_E)
    local _F=Instance.new("TextLabel",_w)
    _F.Size=UDim2.new(0,220,0,28)
    _F.Position=UDim2.new(0,18,0,_z*_w.Size.Y.Offset+10)
    _F.BackgroundTransparency=1
    _F.TextColor3=Color3.fromRGB(12,38,61)
    _F.TextXAlignment=Enum.TextXAlignment.Left
    _F.TextYAlignment=Enum.TextYAlignment.Top
    _F.Font=Enum.Font.FredokaOne
    _F.Text=_E
    _F.TextSize=18
    _F.BorderSizePixel=0
    return _F
end

local function _G(_H,_I,_J)
    _D(_H)
    local _K=Instance.new(_c(_b[12]),_w)
    _K.Size=UDim2.new(0,100,0,30)
    _K.Position=UDim2.new(0,237,0,_z*_w.Size.Y.Offset+8)
    _K.BackgroundColor3=Color3.fromRGB(182,242,255)
    _K.Text=tostring(_I)
    _K.TextColor3=Color3.fromRGB(24,70,101)
    _K.Font=Enum.Font.FredokaOne
    _K.PlaceholderText="..."
    _K.TextSize=18
    _K.BorderSizePixel=0
    Instance.new(_c(_b[10]),_K).CornerRadius=UDim.new(0.22,6)
    _K.ClearTextOnFocus=false
    _K.FocusLost:Connect(function(_L)
        local _M=tonumber(_K.Text)
        if _M then _J(_M) else _K.Text=tostring(_I) end
    end)
    _z=_z+0.11
    return _K
end

local function _N(_O,_P,_Q)
    local _R=Instance.new(_c(_b[9]),_w)
    _R.Size=UDim2.new(0,320,0,32)
    _R.Position=UDim2.new(0,28,0,_z*_w.Size.Y.Offset+14)
    _R.BackgroundColor3=_P and Color3.fromRGB(63,200,236) or Color3.fromRGB(20,108,173)
    _R.TextColor3=Color3.fromRGB(255,255,255)
    _R.Font=Enum.Font.FredokaOne
    _R.Text=_O..(_P and " [ВКЛ]" or " [ВЫКЛ]")
    _R.TextSize=19
    _R.BorderSizePixel=0
    Instance.new(_c(_b[10]),_R).CornerRadius=UDim.new(0.25,7)
    local _S=_P
    _R.MouseButton1Click:Connect(function()
        _S=not _S
        _R.BackgroundColor3=_S and Color3.fromRGB(63,200,236) or Color3.fromRGB(20,108,173)
        _R.Text=_O..(_S and " [ВКЛ]" or " [ВЫКЛ]")
        _Q(_S)
    end)
    _z=_z+0.09
    return _R
end

_A("DЧМ")
_G("Скорость:",_h,function(_T)
    _h=math.clamp(_T,0,200)
    local _U=_t():FindFirstChildOfClass("Humanoid")
    if _U then _U.WalkSpeed=_h end
end)
_G("Прыжок:",_i,function(_T)
    _i=math.clamp(_T,0,200)
    local _U=_t():FindFirstChildOfClass("Humanoid")
    if _U then
        pcall(function()_U.JumpPower=_i end)
        pcall(function()_U.UseJumpPower=true end)
    end
end)
_G("Скор. полета:",_j,function(_T)
    _j=math.clamp(_T,4,200)
end)

_N("Полет (F/кнопка)",false,function(_T) _k=_T end)
_N("Анти-отдача",false,function(_T) _l=_T end)
_N("Анти-улетание",false,function(_T) _m=_T end)
_N("Быстрое вставание",false,function(_T) _n=_T end)
_N("БХитбокс",false,function(_T)
    _o=_T
    for _U,_V in pairs(_d:GetPlayers()) do
        if _V~=_g and _V.Character and _V.Character:FindFirstChild("HumanoidRootPart") then
            local _W=_V.Character.HumanoidRootPart
            if _o then
                _W.Size=Vector3.new(7,7,7)
                _W.Transparency=0.5
                _W.Color=Color3.fromRGB(108,220,255)
            else
                _W.Size=Vector3.new(2,2,1)
                _W.Transparency=1
                _W.Color=Color3.fromRGB(163,162,165)
            end
        end
    end
end)
_N("ESP",false,function(_T)
    _p=_T
    for _U,_V in pairs(_d:GetPlayers()) do
        if _V~=_g and _V.Character and _V.Character:FindFirstChild("HumanoidRootPart") then
            if _p then
                local _X=Instance.new(_c(_b[13]))
                _X.Adornee=_V.Character.HumanoidRootPart
                _X.AlwaysOnTop=true
                _X.ZIndex=15
                _X.Size=Vector3.new(4,7,4)
                _X.Transparency=0.6
                _X.Color3=Color3.fromRGB(7,192,255)
                _X.Name="ESPBOX"
                _X.Parent=_V.Character
            else
                if _V.Character:FindFirstChild("ESPBOX") then _V.Character.ESPBOX:Destroy() end
            end
        end
    end
end)

local _Y=Instance.new(_c(_b[9]),_w)
_Y.Size=UDim2.new(0,320,0,34)
_Y.Position=UDim2.new(0,30,0,_z*_w.Size.Y.Offset+12)
_Y.BackgroundColor3=Color3.fromRGB(25,160,190)
_Y.TextColor3=Color3.new(1,1,1)
_Y.Font=Enum.Font.FredokaOne
_Y.Text="ПЛАТФОРМА"
_Y.TextSize=19
_Y.BorderSizePixel=0
Instance.new(_c(_b[10]),_Y).CornerRadius=UDim.new(0.22,10)

local function _Z()
    _q=not _q
    if _r and _r.Parent then _r:Destroy() _r=nil end
    if _q then
        local _U=_t()
        if _U and _U:FindFirstChild("HumanoidRootPart") then
            local _aa=_U.HumanoidRootPart
            local _ab=Instance.new(_c(_b[15]))
            _ab.Size=Vector3.new(7,1,7)
            _ab.Anchored=true
            _ab.CanCollide=true
            _ab.Position=_aa.Position-Vector3.new(0,3,0)
            _ab.Color=Color3.fromRGB(80,228,255)
            _ab.Material=Enum.Material.Neon
            _ab.Name="UpPlat"
            _ab.Parent=workspace
            _r=_ab
        end
        _Y.Text="ПЛАТФОРМА [ОПУСТИТЬ]"
        _Y.BackgroundColor3=Color3.fromRGB(28,238,255)
    else
        _Y.Text="ПЛАТФОРМА [ПОДНЯТЬ]"
        _Y.BackgroundColor3=Color3.fromRGB(25,160,190)
        if _r and _r.Parent then _r:Destroy() _r=nil end
    end
end
_Y.MouseButton1Click:Connect(_Z)
_z=_z+0.085

_f.RenderStepped:Connect(function(_T)
    local _U=_t()
    local _V=_U and _U:FindFirstChildOfClass("Humanoid")
    if _V then
        if not _k then _V.WalkSpeed=_h else _V.WalkSpeed=0 end
        pcall(function()_V.JumpPower=_i end)
        pcall(function()_V.UseJumpPower=true end)
    end
    if _q and _r and _U and _U:FindFirstChild("HumanoidRootPart") then
        local _aa=_U.HumanoidRootPart
        _r.Position=Vector3.new(_aa.Position.X,_r.Position.Y,_aa.Position.Z)
        _r.Position=_r.Position+Vector3.new(0,_s*_T,0)
        if _aa.Position.Y<_r.Position.Y+2 then
            _aa.CFrame=CFrame.new(_aa.Position.X,_r.Position.Y+3,_aa.Position.Z)
        end
    end
end)
_f.RenderStepped:Connect(function()
    local _U=_t()
    local _aa=_U and _U:FindFirstChild("HumanoidRootPart")
    if (_l or _m) and _aa then
        if (math.abs(_aa.Velocity.X)>45 or math.abs(_aa.Velocity.Z)>45) then
            _aa.Velocity=Vector3.new(0,_aa.Velocity.Y,0)
        end
        for _ab,_ac in pairs(_aa:GetChildren()) do
            if (_ac:IsA("BodyVelocity") or _ac:IsA("BodyForce") or _ac:IsA("BodyThrust") or _ac:IsA("BodyAngularVelocity"))
            and not tostring(_ac):lower():find("fly") then _ac:Destroy() end
        end
    end
end)
_f:BindToRenderStep("FixedFly",Enum.RenderPriority.Character.Value,function()
    local _U=_t()
    local _aa=_U and _U:FindFirstChild("HumanoidRootPart")
    local _V=_U and _U:FindFirstChildWhichIsA("Humanoid")
    if not _aa or not _V then return end
    if not _k and _aa:FindFirstChild("FlyVelocity") then
        _aa.FlyVelocity:Destroy() if _aa:FindFirstChild("FlyGyro") then _aa.FlyGyro:Destroy() end return
    end
    if _k then
        if not _aa:FindFirstChild("FlyVelocity") then
            local _ab=Instance.new(_c(_b[14]))
            _ab.Name="FlyVelocity"
            _ab.MaxForce=Vector3.new(1e5,1e5,1e5)
            _ab.P=1280
            _ab.Velocity=Vector3.new(0,0,0)
            _ab.Parent=_aa
            local _ac=Instance.new(_c(_b[15]))
            _ac.Name="FlyGyro"
            _ac.MaxTorque=Vector3.new(1e5,1e5,1e5)
            _ac.P=20000
            _ac.CFrame=_aa.CFrame
            _ac.Parent=_aa
        end
        local _ad=_aa:FindFirstChild("FlyVelocity")
        local _ae=_aa:FindFirstChild("FlyGyro")
        if _ad and _ae then
            local _af=_V.MoveDirection
            local _ag=0
            if _e:IsKeyDown(Enum.KeyCode.Space) then _ag=_ag+1 end
            if _e:IsKeyDown(Enum.KeyCode.LeftControl) then _ag=_ag-1 end
            if _V.Jump and _e.TouchEnabled then _ag=1 end
            local _ah=_af*_j+Vector3.new(0,_ag*_j,0)
            if _ah.Magnitude>_j then _ah=_ah.Unit*_j end
            _ad.Velocity=_ah
            _ae.CFrame=workspace.CurrentCamera.CFrame
            _V.PlatformStand=false
        end
    end
end)

_e.InputBegan:Connect(function(_T,_U)
    if not _U then
        if _T.KeyCode==Enum.KeyCode.F then _k=not _k end
        if _T.KeyCode==Enum.KeyCode.M then _w.Visible=not _w.Visible end
        if _T.KeyCode==Enum.KeyCode.P then _Z() end
    end
end)

local function _ai()
    local _V=_t():FindFirstChildOfClass("Humanoid")
    if _V then
        _V.Changed:Connect(function(_T)
            if _l and _T=="SeatPart" and _V.SeatPart then _V.Sit=false end
        end)
        _V:GetPropertyChangedSignal("PlatformStand"):Connect(function()
            if _n and _V.PlatformStand then wait(0.05) _V.PlatformStand=false end
        end)
    end
end
_t().ChildAdded:Connect(function(_T)
    if _T:IsA("Humanoid") then _ai() end
end)
_ai()
end)()