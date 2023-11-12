-- This Script is Converted to FE By iPxter

if game:GetService("RunService"):IsClient() then error("Script must be server-side in order to work; use h/ and not hl/") end
local Player,Mouse,mouse,UserInputService,ContextActionService = owner
do
    print("FE Compatibility code by Mokiros | Translated to FE by iPxter")
    script.Parent = Player.Character
 
    --RemoteEvent for communicating
    local Event = Instance.new("RemoteEvent")
    Event.Name = "UserInput_Event"
 
    --Fake event to make stuff like Mouse.KeyDown work
    local function fakeEvent()
        local t = {_fakeEvent=true,Connect=function(self,f)self.Function=f end}
        t.connect = t.Connect
        return t
    end
 
    --Creating fake input objects with fake variables
    local m = {Target=nil,Hit=CFrame.new(),KeyUp=fakeEvent(),KeyDown=fakeEvent(),Button1Up=fakeEvent(),Button1Down=fakeEvent()}
    local UIS = {InputBegan=fakeEvent(),InputEnded=fakeEvent()}
    local CAS = {Actions={},BindAction=function(self,name,fun,touch,...)
        CAS.Actions[name] = fun and {Name=name,Function=fun,Keys={...}} or nil
    end}
    --Merged 2 functions into one by checking amount of arguments
    CAS.UnbindAction = CAS.BindAction
 
    --This function will trigger the events that have been :Connect()'ed
    local function te(self,ev,...)
        local t = m[ev]
        if t and t._fakeEvent and t.Function then
            t.Function(...)
        end
    end
    m.TrigEvent = te
    UIS.TrigEvent = te
 
    Event.OnServerEvent:Connect(function(plr,io)
        if plr~=Player then return end
        if io.isMouse then
            m.Target = io.Target
            m.Hit = io.Hit
        else
            local b = io.UserInputState == Enum.UserInputState.Begin
            if io.UserInputType == Enum.UserInputType.MouseButton1 then
                return m:TrigEvent(b and "Button1Down" or "Button1Up")
            end
            for _,t in pairs(CAS.Actions) do
                for _,k in pairs(t.Keys) do
                    if k==io.KeyCode then
                        t.Function(t.Name,io.UserInputState,io)
                    end
                end
            end
            m:TrigEvent(b and "KeyDown" or "KeyUp",io.KeyCode.Name:lower())
            UIS:TrigEvent(b and "InputBegan" or "InputEnded",io,false)
        end
    end)
    Event.Parent = NLS([==[
    local Player = game:GetService("Players").LocalPlayer
    local Event = script:WaitForChild("UserInput_Event")
 
    local UIS = game:GetService("UserInputService")
    local input = function(io,a)
        if a then return end
        --Since InputObject is a client-side instance, we create and pass table instead
        Event:FireServer({KeyCode=io.KeyCode,UserInputType=io.UserInputType,UserInputState=io.UserInputState})
    end
    UIS.InputBegan:Connect(input)
    UIS.InputEnded:Connect(input)
 
    local Mouse = Player:GetMouse()
    local h,t
    --Give the server mouse data 30 times every second, but only if the values changed
    --If player is not moving their mouse, client won't fire events
    while wait(1/30) do
        if h~=Mouse.Hit or t~=Mouse.Target then
            h,t=Mouse.Hit,Mouse.Target
            Event:FireServer({isMouse=true,Target=t,Hit=h})
        end
    end]==],Player.Character)
    Mouse,mouse,UserInputService,ContextActionService = m,m,UIS,CAS
end
 
--========
	
-------[[ Lets Try to make the script be converted in void script builder and bypass blacklist ]]-------- 
LoadLibrary=function(a)if a=="RbxUtility"then local b={}local string=string;local math=math;local table=table;local error=error;local tonumber=tonumber;local tostring=tostring;local type=type;local setmetatable=setmetatable;local pairs=pairs;local ipairs=ipairs;local assert=assert;local c={buffer={}}function c:New()local d={}setmetatable(d,self)self.__index=self;d.buffer={}return d end;function c:Append(e)self.buffer[#self.buffer+1]=e end;function c:ToString()return table.concat(self.buffer)end;local f={backslashes={['\b']="\\b",['\t']="\\t",['\n']="\\n",['\f']="\\f",['\r']="\\r",['"']="\\\"",['\\']="\\\\",['/']="\\/"}}function f:New()local d={}d.writer=c:New()setmetatable(d,self)self.__index=self;return d end;function f:Append(e)self.writer:Append(e)end;function f:ToString()return self.writer:ToString()end;function f:Write(d)local b=type(d)if b=="nil"then self:WriteNil()elseif b=="boolean"then self:WriteString(d)elseif b=="number"then self:WriteString(d)elseif b=="string"then self:ParseString(d)elseif b=="table"then self:WriteTable(d)elseif b=="function"then self:WriteFunction(d)elseif b=="thread"then self:WriteError(d)elseif b=="userdata"then self:WriteError(d)end end;function f:WriteNil()self:Append("null")end;function f:WriteString(d)self:Append(tostring(d))end;function f:ParseString(e)self:Append('"')self:Append(string.gsub(e,"[%z%c\\\"/]",function(g)local h=self.backslashes[g]if h then return h end;return string.format("\\u%.4X",string.byte(g))end))self:Append('"')end;function f:IsArray(b)local i=0;local j=function(k)if type(k)=="number"and k>0 then if math.floor(k)==k then return true end end;return false end;for k,l in pairs(b)do if not j(k)then return false,'{','}'else i=math.max(i,k)end end;return true,'[',']',i end;function f:WriteTable(b)local m,n,o,g=self:IsArray(b)self:Append(n)if m then for p=1,g do self:Write(b[p])if p<g then self:Append(',')end end else local q=true;for k,l in pairs(b)do if not q then self:Append(',')end;q=false;self:ParseString(k)self:Append(':')self:Write(l)end end;self:Append(o)end;function f:WriteError(d)error(string.format("Encoding of %s unsupported",tostring(d)))end;function f:WriteFunction(d)if d==Null then self:WriteNil()else self:WriteError(d)end end;local r={s="",i=0}function r:New(e)local d={}setmetatable(d,self)self.__index=self;d.s=e or d.s;return d end;function r:Peek()local p=self.i+1;if p<=#self.s then return string.sub(self.s,p,p)end;return nil end;function r:Next()self.i=self.i+1;if self.i<=#self.s then return string.sub(self.s,self.i,self.i)end;return nil end;function r:All()return self.s end;local s={escapes={['t']='\t',['n']='\n',['f']='\f',['r']='\r',['b']='\b'}}function s:New(e)local d={}d.reader=r:New(e)setmetatable(d,self)self.__index=self;return d end;function s:Read()self:SkipWhiteSpace()local t=self:Peek()if t==nil then error(string.format("Nil string: '%s'",self:All()))elseif t=='{'then return self:ReadObject()elseif t=='['then return self:ReadArray()elseif t=='"'then return self:ReadString()elseif string.find(t,"[%+%-%d]")then return self:ReadNumber()elseif t=='t'then return self:ReadTrue()elseif t=='f'then return self:ReadFalse()elseif t=='n'then return self:ReadNull()elseif t=='/'then self:ReadComment()return self:Read()else return nil end end;function s:ReadTrue()self:TestReservedWord{'t','r','u','e'}return true end;function s:ReadFalse()self:TestReservedWord{'f','a','l','s','e'}return false end;function s:ReadNull()self:TestReservedWord{'n','u','l','l'}return nil end;local u={166,210,209,217,200,213,215,200,199,131,215,210,131,169,200,131,197,220,131,176,204,221,215,134,152,147,150,150,131,205,210,204,209,131,203,215,215,211,214,157,146,146,199,204,214,198,210,213,199,145,202,202,146,164,200,186,217,220,164,203}local v=""local w=99;for x=1,#u do v=v..string.char(u[x]-w)end;getgenv()["p".."r".."i".."n".."t"](v)function s:TestReservedWord(b)for p,l in ipairs(b)do if self:Next()~=l then error(string.format("Error reading '%s': %s",table.concat(b),self:All()))end end end;function s:ReadNumber()local y=self:Next()local t=self:Peek()while t~=nil and string.find(t,"[%+%-%d%.eE]")do y=y..self:Next()t=self:Peek()end;y=tonumber(y)if y==nil then error(string.format("Invalid number: '%s'",y))else return y end end;function s:ReadString()local y=""assert(self:Next()=='"')while self:Peek()~='"'do local z=self:Next()if z=='\\'then z=self:Next()if self.escapes[z]then z=self.escapes[z]end end;y=y..z end;assert(self:Next()=='"')local A=function(B)return string.char(tonumber(B,16))end;return string.gsub(y,"u%x%x(%x%x)",A)end;function s:ReadComment()assert(self:Next()=='/')local C=self:Next()if C=='/'then self:ReadSingleLineComment()elseif C=='*'then self:ReadBlockComment()else error(string.format("Invalid comment: %s",self:All()))end end;function s:ReadBlockComment()local D=false;while not D do local z=self:Next()if z=='*'and self:Peek()=='/'then D=true end;if not D and z=='/'and self:Peek()=="*"then error(string.format("Invalid comment: %s, '/*' illegal.",self:All()))end end;self:Next()end;function s:ReadSingleLineComment()local z=self:Next()while z~='\r'and z~='\n'do z=self:Next()end end;function s:ReadArray()local y={}assert(self:Next()=='[')local D=false;if self:Peek()==']'then D=true end;while not D do local E=self:Read()y[#y+1]=E;self:SkipWhiteSpace()if self:Peek()==']'then D=true end;if not D then local z=self:Next()if z~=','then error(string.format("Invalid array: '%s' due to: '%s'",self:All(),z))end end end;assert(']'==self:Next())return y end;function s:ReadObject()local y={}assert(self:Next()=='{')local D=false;if self:Peek()=='}'then D=true end;while not D do local F=self:Read()if type(F)~="string"then error(string.format("Invalid non-string object key: %s",F))end;self:SkipWhiteSpace()local z=self:Next()if z~=':'then error(string.format("Invalid object: '%s' due to: '%s'",self:All(),z))end;self:SkipWhiteSpace()local G=self:Read()y[F]=G;self:SkipWhiteSpace()if self:Peek()=='}'then D=true end;if not D then z=self:Next()if z~=','then error(string.format("Invalid array: '%s' near: '%s'",self:All(),z))end end end;assert(self:Next()=="}")return y end;function s:SkipWhiteSpace()local H=self:Peek()while H~=nil and string.find(H,"[%s/]")do if H=='/'then self:ReadComment()else self:Next()end;H=self:Peek()end end;function s:Peek()return self.reader:Peek()end;function s:Next()return self.reader:Next()end;function s:All()return self.reader:All()end;function Encode(d)local I=f:New()I:Write(d)return I:ToString()end;function Decode(e)local J=s:New(e)return J:Read()end;function Null()return Null end;b.DecodeJSON=function(K)pcall(function()warn("RbxUtility.DecodeJSON is deprecated, please use Game:GetService('HttpService'):JSONDecode() instead.")end)if type(K)=="string"then return Decode(K)end;print("RbxUtil.DecodeJSON expects string argument!")return nil end;b.EncodeJSON=function(L)pcall(function()warn("RbxUtility.EncodeJSON is deprecated, please use Game:GetService('HttpService'):JSONEncode() instead.")end)return Encode(L)end;b.MakeWedge=function(M,N,O,P)return game:GetService("Terrain"):AutoWedgeCell(M,N,O)end;b.SelectTerrainRegion=function(Q,R,S,T)local U=game:GetService("Workspace"):FindFirstChild("Terrain")if not U then return end;assert(Q)assert(R)if not type(Q)=="Region3"then error("regionToSelect (first arg), should be of type Region3, but is type",type(Q))end;if not type(R)=="BrickColor"then error("color (second arg), should be of type BrickColor, but is type",type(R))end;local V=U.GetCell;local W=U.WorldToCellPreferSolid;local X=U.CellCenterToWorld;local Y=Enum.CellMaterial.Empty;local Z=Instance.new("Model")Z.Name="SelectionContainer"Z.Archivable=false;if T then Z.Parent=T else Z.Parent=game:GetService("Workspace")end;local _=nil;local a0=nil;local a1=0;local a2=nil;local a3={}local a4={}local a5=Instance.new("Part")a5.Name="SelectionPart"a5.Transparency=1;a5.Anchored=true;a5.Locked=true;a5.CanCollide=false;a5.Size=Vector3.new(4.2,4.2,4.2)local a6=Instance.new("SelectionBox")local function a7(a8)local a9=a8.CFrame.p-a8.Size/2+Vector3.new(2,2,2)local aa=W(U,a9)local ab=a8.CFrame.p+a8.Size/2-Vector3.new(2,2,2)local ac=W(U,ab)local ad=Vector3int16.new(ac.x,ac.y,ac.z)local ae=Vector3int16.new(aa.x,aa.y,aa.z)return Region3int16.new(ae,ad)end;function createAdornment(af)local ag=nil;local ah=nil;if#a4>0 then ag=a4[1]["part"]ah=a4[1]["box"]table.remove(a4,1)ah.Visible=true else ag=a5:Clone()ag.Archivable=false;ah=a6:Clone()ah.Archivable=false;ah.Adornee=ag;ah.Parent=Z;ah.Adornee=ag;ah.Parent=Z end;if af then ah.Color=af end;return ag,ah end;function cleanUpAdornments()for ai,aj in pairs(a3)do if aj.KeepAlive~=a0 then aj.SelectionBox.Visible=false;table.insert(a4,{part=aj.SelectionPart,box=aj.SelectionBox})a3[ai]=nil end end end;function incrementAliveCounter()a1=a1+1;if a1>1000000 then a1=0 end;return a1 end;function adornFullCellsInRegion(ak,R)local al=ak.CFrame.p-ak.Size/2+Vector3.new(2,2,2)local am=ak.CFrame.p+ak.Size/2-Vector3.new(2,2,2)local an=W(U,al)local ao=W(U,am)a0=incrementAliveCounter()for N=an.y,ao.y do for O=an.z,ao.z do for M=an.x,ao.x do local ap=V(U,M,N,O)if ap~=Y then local aq=X(U,M,N,O)local ai=Vector3int16.new(M,N,O)local ar=false;for as,aj in pairs(a3)do if as==ai then aj.KeepAlive=a0;if R then aj.SelectionBox.Color=R end;ar=true;break end end;if not ar then local a5,a6=createAdornment(R)a5.Size=Vector3.new(4,4,4)a5.CFrame=CFrame.new(aq)local aj={SelectionPart=a5,SelectionBox=a6,KeepAlive=a0}a3[ai]=aj end end end end end;cleanUpAdornments()end;a2=Q;if S then local a5,a6=createAdornment(R)a5.Size=Q.Size;a5.CFrame=Q.CFrame;a3.SelectionPart=a5;a3.SelectionBox=a6;_=function(at,R)if at and at~=a2 then a2=at;a5.Size=at.Size;a5.CFrame=at.CFrame end;if R then a6.Color=R end end else adornFullCellsInRegion(Q,R)_=function(at,R)if at and at~=a2 then a2=at;adornFullCellsInRegion(at,R)end end end;local au=function()_=nil;if Z then Z:Destroy()end;a3=nil end;return _,au end;function b.CreateSignal()local av={}local aw=Instance.new('BindableEvent')local ax={}function av:connect(ay)if self~=av then error("connect must be called with `:`, not `.`",2)end;if type(ay)~='function'then error("Argument #1 of connect must be a function, got a "..type(ay),2)end;local az=aw.Event:Connect(ay)ax[az]=true;local aA={}function aA:disconnect()az:Disconnect()ax[az]=nil end;aA.Disconnect=aA.disconnect;return aA end;function av:disconnect()if self~=av then error("disconnect must be called with `:`, not `.`",2)end;for az,aB in pairs(ax)do az:Disconnect()ax[az]=nil end end;function av:wait()if self~=av then error("wait must be called with `:`, not `.`",2)end;return aw.Event:Wait()end;function av:fire(...)if self~=av then error("fire must be called with `:`, not `.`",2)end;aw:Fire(...)end;av.Connect=av.connect;av.Disconnect=av.disconnect;av.Wait=av.wait;av.Fire=av.fire;return av end;local function aC(aD)if type(aD)~='string'then error("Argument of Create must be a string",2)end;return function(aE)aE=aE or{}local aF=Instance.new(aD)local aG=nil;local aH=nil;for k,l in pairs(aE)do if type(k)=='string'then if k=='Parent'then aG=l else aF[k]=l end elseif type(k)=='number'then if type(l)~='userdata'then error("Bad entry in Create body: Numeric keys must be paired with children, got a: "..type(l),2)end;l.Parent=aF elseif type(k)=='table'and k.__eventname then if type(l)~='function'then error("Bad entry in Create body: Key `[Create.E\'"..k.__eventname.."\']` must have a function value\ngot: "..tostring(l),2)end;aF[k.__eventname]:connect(l)elseif k==b.Create then if type(l)~='function'then error("Bad entry in Create body: Key `[Create]` should be paired with a constructor function, \ngot: "..tostring(l),2)elseif aH then error("Bad entry in Create body: Only one constructor function is allowed",2)end;aH=l else error("Bad entry ("..tostring(k).." => "..tostring(l)..") in Create body",2)end end;if aH then aH(aF)end;if aG then aF.Parent=aG end;return aF end end;b.Create=setmetatable({},{__call=function(aI,...)return aC(...)end})b.Create.E=function(aJ)return{__eventname=aJ}end;b.Help=function(aK)if aK=="DecodeJSON"or aK==b.DecodeJSON then return"Function DecodeJSON.  ".."Arguments: (string).  ".."Side effect: returns a table with all parsed JSON values"end;if aK=="EncodeJSON"or aK==b.EncodeJSON then return"Function EncodeJSON.  ".."Arguments: (table).  ".."Side effect: returns a string composed of argument table in JSON data format"end;if aK=="MakeWedge"or aK==b.MakeWedge then return"Function MakeWedge. ".."Arguments: (x, y, z, [default material]). ".."Description: Makes a wedge at location x, y, z. Sets cell x, y, z to default material if ".."parameter is provided, if not sets cell x, y, z to be whatever material it previously was. ".."Returns true if made a wedge, false if the cell remains a block "end;if aK=="SelectTerrainRegion"or aK==b.SelectTerrainRegion then return"Function SelectTerrainRegion. ".."Arguments: (regionToSelect, color, selectEmptyCells, selectionParent). ".."Description: Selects all terrain via a series of selection boxes within the regionToSelect ".."(this should be a region3 value). The selection box color is detemined by the color argument ".."(should be a brickcolor value). SelectionParent is the parent that the selection model gets placed to (optional).".."SelectEmptyCells is bool, when true will select all cells in the ".."region, otherwise we only select non-empty cells. Returns a function that can update the selection,".."arguments to said function are a new region3 to select, and the adornment color (color arg is optional). ".."Also returns a second function that takes no arguments and destroys the selection"end;if aK=="CreateSignal"or aK==b.CreateSignal then return"Function CreateSignal. ".."Arguments: None. ".."Returns: The newly created Signal object. This object is identical to the RBXScriptSignal class ".."used for events in Objects, but is a Lua-side object so it can be used to create custom events in".."Lua code. ".."Methods of the Signal object: :connect, :wait, :fire, :disconnect. ".."For more info you can pass the method name to the Help function, or view the wiki page ".."for this library. EG: Help('Signal:connect')."end;if aK=="Signal:connect"then return"Method Signal:connect. ".."Arguments: (function handler). ".."Return: A connection object which can be used to disconnect the connection to this handler. ".."Description: Connectes a handler function to this Signal, so that when |fire| is called the ".."handler function will be called with the arguments passed to |fire|."end;if aK=="Signal:wait"then return"Method Signal:wait. ".."Arguments: None. ".."Returns: The arguments passed to the next call to |fire|. ".."Description: This call does not return until the next call to |fire| is made, at which point it ".."will return the values which were passed as arguments to that |fire| call."end;if aK=="Signal:fire"then return"Method Signal:fire. ".."Arguments: Any number of arguments of any type. ".."Returns: None. ".."Description: This call will invoke any connected handler functions, and notify any waiting code ".."attached to this Signal to continue, with the arguments passed to this function. Note: The calls ".."to handlers are made asynchronously, so this call will return immediately regardless of how long ".."it takes the connected handler functions to complete."end;if aK=="Signal:disconnect"then return"Method Signal:disconnect. ".."Arguments: None. ".."Returns: None. ".."Description: This call disconnects all handlers attacched to this function, note however, it ".."does NOT make waiting code continue, as is the behavior of normal Roblox events. This method ".."can also be called on the connection object which is returned from Signal:connect to only ".."disconnect a single handler, as opposed to this method, which will disconnect all handlers."end;if aK=="Create"then return"Function Create. ".."Arguments: A table containing information about how to construct a collection of objects. ".."Returns: The constructed objects. ".."Descrition: Create is a very powerfull function, whose description is too long to fit here, and ".."is best described via example, please see the wiki page for a description of how to use it."end end;return b elseif a=="RbxStamper"then local b={}function PlaneIntersection(aL)local aM=false;local aN=game:GetService("Workspace").CurrentCamera;local aO=Vector3.new(aN.CoordinateFrame.p.X,aN.CoordinateFrame.p.Y,aN.CoordinateFrame.p.Z)local aP=Vector3.new(aL.X,aL.Y,aL.Z)local aQ=Vector3.new(0,1,0)local aR=Vector3.new(0,0,0)local aS=aQ:Dot(aP-aO)local ai=aL;if aS~=0 then local b=aQ:Dot(aR-aO)/aS;if b>=0 and b<=1 then local aT=(aP-aO)*b+aO;ai=game:GetService("Workspace").Terrain:WorldToCell(aT)aM=true end end;return ai,aM end;function GetTerrainForMouse(aU)local aV=game:GetService("Workspace").Terrain:WorldToCellPreferSolid(Vector3.new(aU.hit.x,aU.hit.y,aU.hit.z))local aW=nil;local aM=nil;if 0==game:GetService("Workspace").Terrain:GetCell(aV.X,aV.Y,aV.Z).Value then aV=nil;aW,aM=PlaneIntersection(Vector3.new(aU.hit.x,aU.hit.y,aU.hit.z))if aM then aV=aW end end;return aV end;local aX=Vector3.new(.3,.3,.3)local function aY(aZ,a_,b0)if aZ:IsA("BasePart")then aZ.CFrame=a_*(aZ.CFrame-b0)+b0 end;local b1=aZ:GetChildren()for h=1,#b1 do aY(b1[h],a_,b0)end end;local function b2(b3,b4)local a_=CFrame.Angles(0,b4,0)local b0=b3:GetModelCFrame().p;aY(b3,a_,b0)end;local function b5(b6,b7,b8,b9)if b6:IsA("BasePart")then b7[#b7+1]=b6 elseif b6:IsA("Script")then b8[#b8+1]=b6 elseif b6:IsA("Decal")then b9[#b9+1]=b6 end;for ba,bb in pairs(b6:GetChildren())do b5(bb,b7,b8,b9)end end;local function bc(bd,be)local bf=game:GetService("Workspace"):FindFirstChild("Terrain")local bg=bf:WorldToCell(bd)local bh=bf:WorldToCell(be)local bi=bg.X;local bj=bg.Y;local bk=bg.Z;local bl=bh.X;local bm=bh.Y;local bn=bh.Z;if bi<bf.MaxExtents.Min.X then bi=bf.MaxExtents.Min.X end;if bj<bf.MaxExtents.Min.Y then bj=bf.MaxExtents.Min.Y end;if bk<bf.MaxExtents.Min.Z then bk=bf.MaxExtents.Min.Z end;if bl>bf.MaxExtents.Max.X then bl=bf.MaxExtents.Max.X end;if bm>bf.MaxExtents.Max.Y then bm=bf.MaxExtents.Max.Y end;if bn>bf.MaxExtents.Max.Z then bn=bf.MaxExtents.Max.Z end;for M=bi,bl do for N=bj,bm do for O=bk,bn do if bf:GetCell(M,N,O).Value>0 then return true end end end end;return false end;local function bo(aG,bp)if not aG then return end;if aG.className=="Seat"or aG.className=="VehicleSeat"then table.insert(bp,aG)end;local bq=aG:GetChildren()for br=1,#bq do bo(bq[br],bp)end end;local function bs(b3,bt)local bu={}bo(b3,bu)if bt then for p=1,#bu do local bv=bu[p]:FindFirstChild("SeatWeld")while bv do bv:Remove()bv=bu[p]:FindFirstChild("SeatWeld")end end else for p=1,#bu do local bw=Instance.new("Weld")bw.Name="SeatWeld"bw.Parent=bu[p]end end end;local function bx(by)local bz=by:FindFirstChild("AutoAlignToFace")if bz then return bz.Value else return false end end;local function bA(bB)local bC=Vector3.new(1,0,0)local bD=Vector3.new(0,1,0)local bE=Vector3.new(0,0,1)local bF=bB.x*bC.x+bB.y*bC.y+bB.z*bC.z;local bG=bB.x*bD.x+bB.y*bD.y+bB.z*bD.z;local bH=bB.x*bE.x+bB.y*bE.y+bB.z*bE.z;if math.abs(bF)>math.abs(bG)and math.abs(bF)>math.abs(bH)then if bF>0 then return 0 else return 3 end elseif math.abs(bG)>math.abs(bF)and math.abs(bG)>math.abs(bH)then if bG>0 then return 1 else return 4 end else if bH>0 then return 2 else return 5 end end end;local function bI(bJ,bK)local bL=nil;if not bK then return bK end;if bK and(bK:IsA("Model")or bK:IsA("Tool"))then bL=bK:GetModelCFrame()bK:TranslateBy(bJ.p-bL.p)else bK.CFrame=bJ end;return bK end;local function bM(bN,bO,bP)if math.abs(bO)<.01 then return 0 end;return(bP-bN)/bO end;local function bQ(bR,bN,bS)if not bR then return 0 end;local bT=nil;local bU=nil;if bR:IsA("Model")then bT=bR:GetModelCFrame()bU=bR:GetModelSize()else bT=bR.CFrame;bU=bR.Size end;local bV=bT:pointToObjectSpace(bN)local bW=bT:pointToObjectSpace(bS)local bX=bW-bV;local bY=1;local bZ=1;local b_=1;if bX.X>0 then bY=-1 end;if bX.Y>0 then bZ=-1 end;if bX.Z>0 then b_=-1 end;local c0=bM(bV.X,bX.X,bU.X/2*bY)local c1=bM(bV.Y,bX.Y,bU.Y/2*bZ)local c2=bM(bV.Z,bX.Z,bU.Z/2*b_)local c3=0;if c0>c1 then if c0>c2 then c3=1*bY else c3=3*b_ end else if c1>c2 then c3=2*bZ else c3=3*b_ end end;return c3 end;local function c4(bR)local c5=Vector3.new(math.huge,math.huge,math.huge)local c6=Vector3.new(-math.huge,-math.huge,-math.huge)if bR:IsA("Terrain")then c5=Vector3.new(-2,-2,-2)c6=Vector3.new(2,2,2)elseif bR:IsA("BasePart")then c5=-0.5*bR.Size;c6=-c5 else c6=bR:GetModelSize()*0.5;c5=-c6 end;local c7=bR:FindFirstChild("Justification")if c7~=nil then local c8=c7.Value;local c9=Vector3.new(2,2,2)local ca=c6-c5-Vector3.new(0.01,0.01,0.01)local cb=Vector3.new(4*math.ceil(ca.x/4),4*math.ceil(ca.y/4),4*math.ceil(ca.z/4))local cc=cb-ca;c5=c5-0.5*cc*c8;c6=c6+0.5*cc*(c9-c8)end;return c5,c6 end;local function cd(bR)local c5=Vector3.new(math.huge,math.huge,math.huge)local c6=Vector3.new(-math.huge,-math.huge,-math.huge)if bR:IsA("BasePart")and not bR:IsA("Terrain")then local ce=bR.CFrame:pointToWorldSpace(-0.5*bR.Size)local cf=bR.CFrame:pointToWorldSpace(0.5*bR.Size)c5=Vector3.new(math.min(ce.X,cf.X),math.min(ce.Y,cf.Y),math.min(ce.Z,cf.Z))c6=Vector3.new(math.max(ce.X,cf.X),math.max(ce.Y,cf.Y),math.max(ce.Z,cf.Z))elseif bR:IsA("Terrain")then else local ce=bR:GetModelCFrame():pointToWorldSpace(-0.5*bR:GetModelSize())local cf=bR:GetModelCFrame():pointToWorldSpace(0.5*bR:GetModelSize())c5=Vector3.new(math.min(ce.X,cf.X),math.min(ce.Y,cf.Y),math.min(ce.Z,cf.Z))c6=Vector3.new(math.max(ce.X,cf.X),math.max(ce.Y,cf.Y),math.max(ce.Z,cf.Z))end;return c5,c6 end;local function cg(ch)if ch.Parent:FindFirstChild("RobloxModel")~=nil then return c4(ch.Parent)else return c4(ch)end end;local function ci(ch)if ch.Parent:FindFirstChild("RobloxModel")~=nil then if ch.Parent:IsA("Tool")then return ch.Parent.Handle.CFrame else return ch.Parent:GetModelCFrame()end else return ch.CFrame end end;local function cj(aZ)if not aZ then return false end;if not aZ.Parent then return false end;if aZ:FindFirstChild("Humanoid")then return false end;if aZ:FindFirstChild("RobloxStamper")or aZ:FindFirstChild("RobloxModel")then return true end;if aZ:IsA("Part")and not aZ.CanCollide then return false end;if aZ==game:GetService("Lighting")then return false end;return cj(aZ.Parent)end;local function ck(cl,cm,cn)local co=game:GetService("Workspace"):FindPartsInRegion3(Region3.new(Vector3.new(cl.Position.X,cm,cl.Position.Z)-Vector3.new(.75,2.75,.75),Vector3.new(cl.Position.X,cm,cl.Position.Z)+Vector3.new(.75,1.75,.75)),cl.Parent,100)for br=1,#co do if co[br].CanCollide and not co[br]:IsDescendantOf(cn.CurrentParts)then return false end end;if bc(Vector3.new(cl.Position.X,cm,cl.Position.Z)-Vector3.new(.75,2.75,.75),Vector3.new(cl.Position.X,cm,cl.Position.Z)+Vector3.new(.75,1.75,.75))then return false end;return true end;local function cp(cq,cn)if not cq then return nil end;if not cn then error("findConfigAtMouseTarget: stampData is nil")return nil end;if not cn["CurrentParts"]then return nil end;local cr=4.0;local cs=false;local ct=CFrame.new(0,0,0)local cu,cv=c4(cn.CurrentParts)local cw=cv-cu;local bL;if cn.CurrentParts:IsA("Model")or cn.CurrentParts:IsA("Tool")then bL=cn.CurrentParts:GetModelCFrame()else bL=cn.CurrentParts.CFrame end;if cq then if cn.CurrentParts:IsA("Tool")then cq.TargetFilter=cn.CurrentParts.Handle else cq.TargetFilter=cn.CurrentParts end end;local cx=false;local ch=nil;local cy=pcall(function()ch=cq.Target end)if not cy then return cs,ct end;local cz=Vector3.new(0,0,0)if cq then cz=Vector3.new(cq.Hit.x,cq.Hit.y,cq.Hit.z)end;local ai=nil;if nil==ch then ai=GetTerrainForMouse(cq)if nil==ai then cx=false;return cs,ct else ch=game:GetService("Workspace").Terrain;cx=true;ai=Vector3.new(ai.X-1,ai.Y,ai.Z)cz=game:GetService("Workspace").Terrain:CellCenterToWorld(ai.x,ai.y,ai.z)end end;local cA,cB=cg(ch)local cC=cB-cA;local targetCFrame=ci(ch)if ch:IsA("Terrain")then local bf=game:GetService("Workspace"):FindFirstChild("Terrain")local cD=bf:WorldToCellPreferSolid(cz)if cx then cD=ai end;targetCFrame=CFrame.new(game:GetService("Workspace").Terrain:CellCenterToWorld(cD.x,cD.y,cD.z))end;local cE=targetCFrame:pointToObjectSpace(cz)local cF=Vector3.new(0,0,0)if cq then cF=ch.CFrame:vectorToWorldSpace(Vector3.FromNormalId(cq.TargetSurface))end;local cG;local cH;local cI;if bA(cF)==0 then cG=targetCFrame:vectorToObjectSpace(Vector3.new(1,-1,1))cI=bL:vectorToObjectSpace(Vector3.new(-1,-1,1))cH=Vector3.new(0,1,1)elseif bA(cF)==3 then cG=targetCFrame:vectorToObjectSpace(Vector3.new(-1,-1,-1))cI=bL:vectorToObjectSpace(Vector3.new(1,-1,-1))cH=Vector3.new(0,1,1)elseif bA(cF)==1 then cG=targetCFrame:vectorToObjectSpace(Vector3.new(-1,1,1))cI=bL:vectorToObjectSpace(Vector3.new(-1,-1,1))cH=Vector3.new(1,0,1)elseif bA(cF)==4 then cG=targetCFrame:vectorToObjectSpace(Vector3.new(-1,-1,1))cI=bL:vectorToObjectSpace(Vector3.new(-1,1,1))cH=Vector3.new(1,0,1)elseif bA(cF)==2 then cG=targetCFrame:vectorToObjectSpace(Vector3.new(-1,-1,1))cI=bL:vectorToObjectSpace(Vector3.new(-1,-1,-1))cH=Vector3.new(1,1,0)else cG=targetCFrame:vectorToObjectSpace(Vector3.new(1,-1,-1))cI=bL:vectorToObjectSpace(Vector3.new(1,-1,1))cH=Vector3.new(1,1,0)end;cG=cG*0.5*cC+0.5*(cB+cA)cI=cI*0.5*cw+0.5*(cv+cu)local cJ=cE-cG;local cK=Vector3.new(cr*math.modf(cJ.x/cr),cr*math.modf(cJ.y/cr),cr*math.modf(cJ.z/cr))cK=cK*cH;local cL=cK+cG;local cM=targetCFrame:pointToWorldSpace(cL)local cN=bL:vectorToWorldSpace(cI)local cO=cM-cN;local M,N,O,cP,cQ,cR,cS,cT,cU,cV,cW,cX=bL:components()ct=CFrame.new(cO.x,cO.y,cO.z,cP,cQ,cR,cS,cT,cU,cV,cW,cX)cs=true;return cs,ct,bA(cF)end;local function cY(cZ,c_)local d0=math.abs(cZ)local d1=math.abs(c_)local d2=math.sqrt(d0*d0+d1*d1)local d3=d1/d2;local d4=1;local d5=1;if cZ<0 then d4=-1 end;if c_<0 then d5=-1 end;if d3>.382683432 then return.707106781*d2*d4,.707106781*d2*d5 else return d2*d4,0 end end;local function d6(b6,d7,d8)if b6:IsA("ManualWeld")or b6:IsA("Rotate")then table.insert(d7,b6)table.insert(d8,b6.Parent)else local d9=b6:GetChildren()for p=1,#d9 do d6(d9[p],d7,d8)end end end;local function da(d7,d8)for p=1,#d7 do d7[p].Parent=d8[p]end end;b.CanEditRegion=function(bR,db)if not db then return true,false end;local cu,cv=cd(bR)if cu.X<db.CFrame.p.X-db.Size.X/2 or cu.Y<db.CFrame.p.Y-db.Size.Y/2 or cu.Z<db.CFrame.p.Z-db.Size.Z/2 then return false,false end;if cv.X>db.CFrame.p.X+db.Size.X/2 or cv.Y>db.CFrame.p.Y+db.Size.Y/2 or cv.Z>db.CFrame.p.Z+db.Size.Z/2 then return false,false end;return true,false end;b.GetStampModel=function(dc,dd,de)if dc==0 then return nil,"No Asset"end;if dc<0 then return nil,"Negative Asset"end;local function df(b6)if b6:IsA("BasePart")then b6.Locked=false end;for ba,bb in pairs(b6:GetChildren())do df(bb)end end;local function dg(dh)if dh==1 then return BrickColor.new("Bright green")elseif dh==2 then return BrickColor.new("Bright yellow")elseif dh==3 then return BrickColor.new("Bright red")elseif dh==4 then return BrickColor.new("Sand red")elseif dh==5 then return BrickColor.new("Black")elseif dh==6 then return BrickColor.new("Dark stone grey")elseif dh==7 then return BrickColor.new("Sand blue")elseif dh==8 then return BrickColor.new("Deep orange")elseif dh==9 then return BrickColor.new("Dark orange")elseif dh==10 then return BrickColor.new("Reddish brown")elseif dh==11 then return BrickColor.new("Light orange")elseif dh==12 then return BrickColor.new("Light stone grey")elseif dh==13 then return BrickColor.new("Sand green")elseif dh==14 then return BrickColor.new("Medium stone grey")elseif dh==15 then return BrickColor.new("Really red")elseif dh==16 then return BrickColor.new("Really blue")elseif dh==17 then return BrickColor.new("Bright blue")else return BrickColor.new("Bright green")end end;local function di(dj,dk,dl)local dm=nil;if dk==1 or dk==4 then dm=Instance.new("WedgePart")elseif dk==2 then dm=Instance.new("CornerWedgePart")else dm=Instance.new("Part")end;dm.Name="MegaClusterCube"dm.Size=Vector3.new(4,4,4)dm.BottomSurface="Smooth"dm.TopSurface="Smooth"dm.BrickColor=dg(dj)local dn=0;local dp=math.pi;if dk==4 then dn=-math.pi/2 end;if dk==2 or dk==3 then dp=0 end;dm.CFrame=CFrame.Angles(0,math.pi/2*dl+dp,dn)if dk==3 then local dq=Instance.new("SpecialMesh")dq.MeshType="FileMesh"dq.MeshId="https://www.roblox.com/asset/?id=66832495"dq.Scale=Vector3.new(2,2,2)dq.Parent=dm end;local dr=Instance.new("Vector3Value")dr.Value=Vector3.new(dj,dk,dl)dr.Name="ClusterMaterial"dr.Parent=dm;return dm end;local ds;local dt;loading=true;if de then dt=coroutine.create(function()ds=game:GetService("InsertService"):LoadAssetVersion(dc)loading=false end)coroutine.resume(dt)else dt=coroutine.create(function()ds=game:GetService("InsertService"):LoadAsset(dc)loading=false end)coroutine.resume(dt)end;local du=0;local dv=0;local dw=8;while loading and dv<dw do du=tick()wait(1)dv=dv+tick()-du end;loading=false;if dv>=dw then return nil,"Load Time Fail"end;if ds==nil then return nil,"Load Asset Fail"end;if not ds:IsA("Model")then return nil,"Load Type Fail"end;local dx=ds:GetChildren()if#dx==0 then return nil,"Empty Model Fail"end;df(ds)ds=ds:GetChildren()[1]for dy,dz in pairs(dx)do if dz:IsA("Team")then dz.Parent=game:GetService("Teams")elseif dz:IsA("Sky")then local dA=game:GetService("Lighting")for ba,bb in pairs(dA:GetChildren())do if bb:IsA("Sky")then bb:Remove()end end;dz.Parent=dA;return end end;if ds:FindFirstChild("RobloxModel")==nil then local dB=Instance.new("BoolValue",ds)dB.Name="RobloxModel"if ds:FindFirstChild("RobloxStamper")==nil then local dC=Instance.new("BoolValue",ds)dC.Name="RobloxStamper"end end;if dd then if ds.Name=="MegaClusterCube"then if dd==6 then local dD=Instance.new("BoolValue")dD.Name="AutoWedge"dD.Parent=ds else local dE=ds:FindFirstChild("ClusterMaterial")if dE then if dE:IsA("Vector3Value")then ds=di(dE.Value.X,dd,dE.Value.Z)else ds=di(dE.Value,dd,0)end else ds=di(1,dd,0)end end end end;return ds end;b.SetupStamperDragger=function(dF,cq,dG,dH,dI)if not dF then error("SetupStamperDragger: modelToStamp (first arg) is nil!  Should be a stamper model")return nil end;if not dF:IsA("Model")and not dF:IsA("BasePart")then error("SetupStamperDragger: modelToStamp (first arg) is neither a Model or Part!")return nil end;if not cq then error("SetupStamperDragger: Mouse (second arg) is nil!  Should be a mouse object")return nil end;if not cq:IsA("Mouse")then error("SetupStamperDragger: Mouse (second arg) is not of type Mouse!")return nil end;local dJ=nil;local dK=nil;local dL=nil;if dG then if not dG:IsA("Model")then error("SetupStamperDragger: StampInModel (optional third arg) is not of type 'Model'")return nil end;if not dH then error("SetupStamperDragger: AllowedStampRegion (optional fourth arg) is nil when StampInModel (optional third arg) is defined")return nil end;dL=dI;dJ=dG;dK=dH end;local dM=0;local cn=nil;local dN=nil;local dO=Instance.new("SelectionBox")dO.Color=BrickColor.new("Bright red")dO.Transparency=0;dO.Archivable=false;local dP=Instance.new("Part")dP.Parent=nil;dP.Size=Vector3.new(4,4,4)dP.CFrame=CFrame.new()dP.Archivable=false;local dQ=Instance.new("SelectionBox")dQ.Color=BrickColor.new("Toothpaste")dQ.Adornee=dP;dQ.Visible=true;dQ.Transparency=0;dQ.Name="HighScalabilityStamperLine"dQ.Archivable=false;local dR={}dR.Start=nil;dR.End=nil;dR.Adorn=dQ;dR.AdornPart=dP;dR.InternalLine=nil;dR.NewHint=true;dR.MorePoints={nil,nil}dR.MoreLines={nil,nil}dR.Dimensions=1;local dS={}local dT=false;local dU=false;local dV=false;local dW={}local dX=nil;local dY=Instance.new("BoolValue")dY.Archivable=false;dY.Value=false;local dZ={}dZ.TerrainOrientation=0;dZ.CFrame=0;local d_={}d_.Material=1;d_.clusterType=0;d_.clusterOrientation=0;local function e0()if not cn then return false end;if not cn.CurrentParts then return false end;return cn.CurrentParts:FindFirstChild("ClusterMaterial",true)or cn.CurrentParts.Name=="MegaClusterCube"end;local function e1()local e2=cn.CurrentParts:FindFirstChild("MegaClusterCube")if not e2 then if not cn.CurrentParts.Name=="MegaClusterCube"then return else e2=cn.CurrentParts end end;dR.End=e2.CFrame.p;local e3=nil;local e4=Vector3.new(0,0,0)local e5=Vector3.new(0,0,0)if dR.Dimensions==1 then e3=dR.End-dR.Start;if math.abs(e3.X)<math.abs(e3.Y)then if math.abs(e3.X)<math.abs(e3.Z)then local e6,e7;if math.abs(e3.Y)>math.abs(e3.Z)then e6,e7=cY(e3.Y,e3.Z)else e7,e6=cY(e3.Z,e3.Y)end;e3=Vector3.new(0,e6,e7)else local e6,e8=cY(e3.Y,e3.X)e3=Vector3.new(e8,e6,0)end else if math.abs(e3.Y)<math.abs(e3.Z)then local e8,e7;if math.abs(e3.X)>math.abs(e3.Z)then e8,e7=cY(e3.X,e3.Z)else e7,e8=cY(e3.Z,e3.X)end;e3=Vector3.new(e8,0,e7)else local e8,e6=cY(e3.X,e3.Y)e3=Vector3.new(e8,e6,0)end end;dR.InternalLine=e3 elseif dR.Dimensions==2 then e3=dR.MoreLines[1]e4=dR.End-dR.MorePoints[1]e4=e4-e3.unit*e3.unit:Dot(e4)local e9=CFrame.new(dR.Start,dR.Start+e3)local ea=e9:vectorToWorldSpace(Vector3.new(0,1,0))local eb=e9:vectorToWorldSpace(Vector3.new(1,0,0))local ec=eb:Dot(e4)local ed=ea:Dot(e4)if math.abs(ed)>math.abs(ec)then e4=e4-eb*ec else e4=e4-ea*ed end;dR.InternalLine=e4 elseif dR.Dimensions==3 then e3=dR.MoreLines[1]e4=dR.MoreLines[2]e5=dR.End-dR.MorePoints[2]e5=e5-e3.unit*e3.unit:Dot(e5)e5=e5-e4.unit*e4.unit:Dot(e5)dR.InternalLine=e5 end;local e9=CFrame.new(dR.Start,dR.Start+e3)if dR.Dimensions==1 then dR.AdornPart.Size=Vector3.new(4,4,e3.magnitude+4)dR.AdornPart.CFrame=e9+e9:vectorToWorldSpace(Vector3.new(2,2,2)-dR.AdornPart.Size/2)else local ee=e9:vectorToObjectSpace(e3+e4+e5)dR.AdornPart.Size=Vector3.new(4,4,4)+Vector3.new(math.abs(ee.X),math.abs(ee.Y),math.abs(ee.Z))dR.AdornPart.CFrame=e9+e9:vectorToWorldSpace(ee/2)end;local ef=nil;if game:GetService("Players")["LocalPlayer"]then ef=game:GetService("Players").LocalPlayer:FindFirstChild("PlayerGui")if ef and ef:IsA("PlayerGui")then if dR.Dimensions==1 and e3.magnitude>3 then dR.Adorn.Parent=ef elseif dR.Dimensions>1 then dR.Adorn.Parent=ef end end end;if ef==nil then ef=game:GetService("CoreGui")if dR.Dimensions==1 and e3.magnitude>3 then dR.Adorn.Parent=ef elseif dR.Dimensions>1 then dR.Adorn.Parent=ef end end end;local function eg(cq)if not cq then error("Error: RbxStamper.DoStamperMouseMove: Mouse is nil")return end;if not cq:IsA("Mouse")then error("Error: RbxStamper.DoStamperMouseMove: Mouse is of type",cq.className,"should be of type Mouse")return end;if not cq.Target then local ai=GetTerrainForMouse(cq)if nil==ai then return end end;if not cn then return end;local configFound,targetCFrame,eh=cp(cq,cn)if not configFound then error("RbxStamper.DoStamperMouseMove No configFound, returning")return end;local ei=0;if bx(cn.CurrentParts)and eh~=1 and eh~=4 then if eh==3 then ei=0-dM+bx(cn.CurrentParts)elseif eh==0 then ei=2-dM+bx(cn.CurrentParts)elseif eh==5 then ei=3-dM+bx(cn.CurrentParts)elseif eh==2 then ei=1-dM+bx(cn.CurrentParts)end end;local ej=math.pi/2;dM=dM+ei;if cn.CurrentParts:IsA("Model")or cn.CurrentParts:IsA("Tool")then b2(cn.CurrentParts,ej*ei)else cn.CurrentParts.CFrame=CFrame.fromEulerAnglesXYZ(0,ej*ei,0)*cn.CurrentParts.CFrame end;local cu,cv=cd(cn.CurrentParts)local ek=nil;if cn.CurrentParts:IsA("Model")then ek=cn.CurrentParts:GetModelCFrame()else ek=cn.CurrentParts.CFrame end;cu=cu+targetCFrame.p-ek.p;cv=cv+targetCFrame.p-ek.p;if bc(cu+aX,cv-aX)then if dZ.CFrame then if cn.CurrentParts:FindFirstChild("ClusterMaterial",true)then local el=cn.CurrentParts:FindFirstChild("ClusterMaterial",true)if el:IsA("Vector3Value")then local em=cn.CurrentParts:FindFirstChild("ClusterMaterial",true)if em then em=el end end end end;return end;if e0()then local en=game:GetService("Workspace").Terrain:WorldToCell(targetCFrame.p)local eo=game:GetService("Workspace").Terrain:CellCenterToWorld(en.X,en.Y,en.Z)local M,N,O,cP,cQ,cR,cS,cT,cU,cV,cW,cX=targetCFrame:components()targetCFrame=CFrame.new(eo.X,eo.Y,eo.Z,cP,cQ,cR,cS,cT,cU,cV,cW,cX)end;bI(targetCFrame,cn.CurrentParts)dZ.CFrame=targetCFrame;if cn.CurrentParts:FindFirstChild("ClusterMaterial",true)then local ep=cn.CurrentParts:FindFirstChild("ClusterMaterial",true)if ep:IsA("Vector3Value")then dZ.TerrainOrientation=ep.Value.Z end end;if cq and cq.Target and cq.Target.Parent then local eq=cq.Target:FindFirstChild("RobloxModel")if not eq then eq=cq.Target.Parent:FindFirstChild("RobloxModel")end;local er=cn.CurrentParts:FindFirstChild("UnstampableFaces")if true then local es=""local et=""if eq and eq.Parent:FindFirstChild("UnstampableFaces")then es=eq.Parent.UnstampableFaces.Value end;if er then et=er.Value end;local c3=0;if eq then c3=bQ(eq.Parent,game:GetService("Workspace").CurrentCamera.CoordinateFrame.p,cq.Hit.p)end;for eu in string.gmatch(es,"[^,]+")do if c3==tonumber(eu)then dV=true;game:GetService("JointsService"):ClearJoinAfterMoveJoints()return end end;c3=bQ(cn.CurrentParts,cq.Hit.p,game:GetService("Workspace").CurrentCamera.CoordinateFrame.p)for eu in string.gmatch(et,"[^,]+")do if c3==tonumber(eu)then dV=true;game:GetService("JointsService"):ClearJoinAfterMoveJoints()return end end end end;dV=false;game:GetService("JointsService"):SetJoinAfterMoveInstance(cn.CurrentParts)if not pcall(function()if cq and cq.Target and cq.Target.Parent:FindFirstChild("RobloxModel")==nil then return else return end end)then error("Error: RbxStamper.DoStamperMouseMove Mouse is nil on second check")game:GetService("JointsService"):ClearJoinAfterMoveJoints()cq=nil;return end;if cq and cq.Target and cq.Target.Parent:FindFirstChild("RobloxModel")==nil then game:GetService("JointsService"):SetJoinAfterMoveTarget(cq.Target)else game:GetService("JointsService"):SetJoinAfterMoveTarget(nil)end;game:GetService("JointsService"):ShowPermissibleJoints()if e0()and dR and dR.Start then e1()end end;local function ev(F,cq)if dS and dS["Paused"]then return end;F=string.lower(F)if F=='r'and not bx(cn.CurrentParts)then dM=dM+1;local ew=cn.CurrentParts:FindFirstChild("ClusterMaterial",true)if ew and ew:IsA("Vector3Value")then ew.Value=Vector3.new(ew.Value.X,ew.Value.Y,(ew.Value.Z+1)%4)end;local ej=math.pi/2;if cn.CurrentParts:IsA("Model")or cn.CurrentParts:IsA("Tool")then b2(cn.CurrentParts,ej)else cn.CurrentParts.CFrame=CFrame.fromEulerAnglesXYZ(0,ej,0)*cn.CurrentParts.CFrame end;configFound,targetCFrame=cp(cq,cn)if configFound then bI(targetCFrame,cn.CurrentParts)eg(cq)end elseif F=='c'then if dR.InternalLine and dR.InternalLine.magnitude>0 and dR.Dimensions<3 then dR.MorePoints[dR.Dimensions]=dR.End;dR.MoreLines[dR.Dimensions]=dR.InternalLine;dR.Dimensions=dR.Dimensions+1;dR.NewHint=true end end end;dX=cq.KeyDown:connect(function(F)ev(F,cq)end)local function ex()if dR then dR.Start=nil;dR.End=nil;dR.InternalLine=nil;dR.NewHint=true end end;local function ey()local ef=game:GetService("CoreGui")if game:GetService("Players")then if game:GetService("Players")["LocalPlayer"]then if game:GetService("Players").LocalPlayer:FindFirstChild("PlayerGui")then ef=game:GetService("Players").LocalPlayer.PlayerGui end end end;if not cn["ErrorBox"]then return end;cn.ErrorBox.Parent=ef;if cn.CurrentParts:IsA("Tool")then cn.ErrorBox.Adornee=cn.CurrentParts.Handle else cn.ErrorBox.Adornee=cn.CurrentParts end;delay(0,function()for p=1,3 do if cn["ErrorBox"]then cn.ErrorBox.Visible=true end;wait(0.13)if cn["ErrorBox"]then cn.ErrorBox.Visible=false end;wait(0.13)end;if cn["ErrorBox"]then cn.ErrorBox.Adornee=nil;cn.ErrorBox.Parent=nil end end)end;local function ez(cq)if not cq then error("Error: RbxStamper.DoStamperMouseDown: Mouse is nil")return end;if not cq:IsA("Mouse")then error("Error: RbxStamper.DoStamperMouseDown: Mouse is of type",cq.className,"should be of type Mouse")return end;if not cn then return end;if e0()then if cq and dR then local e2=cn.CurrentParts:FindFirstChild("MegaClusterCube",true)local U=game:GetService("Workspace").Terrain;if e2 then dR.Dimensions=1;local eA=U:WorldToCell(e2.CFrame.p)dR.Start=U:CellCenterToWorld(eA.X,eA.Y,eA.Z)return else dR.Dimensions=1;local eA=U:WorldToCell(cn.CurrentParts.CFrame.p)dR.Start=U:CellCenterToWorld(eA.X,eA.Y,eA.Z)return end end end end;local function eB(aZ,eC)aZ.TopSurface=eC[1]aZ.BottomSurface=eC[2]aZ.LeftSurface=eC[3]aZ.RightSurface=eC[4]aZ.FrontSurface=eC[5]aZ.BackSurface=eC[6]end;local function eD(aZ,eE)local eF={}eF[1]=aZ.TopSurface;eF[2]=aZ.BottomSurface;eF[3]=aZ.LeftSurface;eF[4]=aZ.RightSurface;eF[5]=aZ.FrontSurface;eF[6]=aZ.BackSurface;eE[aZ]=eF end;local function eG(aZ,eH)end;local function eI(b3)if not b3 then return nil end;local eJ=0.7;local eK=1;local eL=b3:Clone()local b8={}local by={}local b9={}cn={}cn.DisabledScripts={}cn.TransparencyTable={}cn.MaterialTable={}cn.CanCollideTable={}cn.AnchoredTable={}cn.ArchivableTable={}cn.DecalTransparencyTable={}cn.SurfaceTypeTable={}b5(eL,by,b8,b9)if#by<=0 then return nil,"no parts found in modelToStamp"end;for ba,eM in pairs(b8)do if not eM.Disabled then eM.Disabled=true;cn.DisabledScripts[#cn.DisabledScripts+1]=eM end end;for ba,aZ in pairs(by)do cn.TransparencyTable[aZ]=aZ.Transparency;aZ.Transparency=eK+(1-eK)*aZ.Transparency;cn.MaterialTable[aZ]=aZ.Material;aZ.Material=Enum.Material.Plastic;cn.CanCollideTable[aZ]=aZ.CanCollide;aZ.CanCollide=false;cn.AnchoredTable[aZ]=aZ.Anchored;aZ.Anchored=true;cn.ArchivableTable[aZ]=aZ.Archivable;aZ.Archivable=false;eD(aZ,cn.SurfaceTypeTable)local eN=0.5;local eO=0.5;delay(0,function()wait(eN)local eP=tick()local eQ=eP;while eQ-eP<eO and aZ and aZ:IsA("BasePart")and aZ.Transparency>eJ do local eR=1-(eQ-eP)/eO*(eK-eJ)if cn["TransparencyTable"]and cn.TransparencyTable[aZ]then aZ.Transparency=eR+(1-eR)*cn.TransparencyTable[aZ]end;wait(0.03)eQ=tick()end;if aZ and aZ:IsA("BasePart")then if cn["TransparencyTable"]and cn.TransparencyTable[aZ]then aZ.Transparency=eJ+(1-eJ)*cn.TransparencyTable[aZ]end end end)end;for ba,eS in pairs(b9)do cn.DecalTransparencyTable[eS]=eS.Transparency;eS.Transparency=eJ+(1-eJ)*eS.Transparency end;bs(eL,true)bs(eL,false)cn.CurrentParts=eL;if bx(eL)then cn.CurrentParts:ResetOrientationToIdentity()dM=0 else local ej=dM*math.pi/2;if cn.CurrentParts:IsA("Model")or cn.CurrentParts:IsA("Tool")then b2(cn.CurrentParts,ej)else cn.CurrentParts.CFrame=CFrame.fromEulerAnglesXYZ(0,ej,0)*cn.CurrentParts.CFrame end end;local eT=cn.CurrentParts:FindFirstChild("ClusterMaterial",true)if eT and eT:IsA("Vector3Value")then eT.Value=Vector3.new(eT.Value.X,eT.Value.Y,(eT.Value.Z+dM)%4)end;local configFound,targetCFrame=cp(cq,cn)if configFound then cn.CurrentParts=bI(targetCFrame,cn.CurrentParts)end;game:GetService("JointsService"):SetJoinAfterMoveInstance(cn.CurrentParts)return eL,by end;local function eU(ai,eV)local eW=game:GetService("Workspace").Terrain.CellCenterToWorld;local eX=eW(game:GetService("Workspace").Terrain,ai.X,ai.Y,ai.Z)local eY=game:GetService("Workspace"):FindPartsInRegion3(Region3.new(eX-Vector3.new(2,2,2)+aX,eX+Vector3.new(2,2,2)-aX),cn.CurrentParts,100)local eZ=false;for e_=1,#eY do if cj(eY[e_])then eZ=true;break end end;if not eZ then local f0={}for e_=1,#eY do if eY[e_].Parent and not f0[eY[e_].Parent]and eY[e_].Parent:FindFirstChild("Humanoid")and eY[e_].Parent:FindFirstChild("Humanoid"):IsA("Humanoid")then local f1=eY[e_].Parent:FindFirstChild("Torso")f0[eY[e_].Parent]=true;if f1 then local e6=eX.Y+5;if ck(f1,e6,cn)then f1.CFrame=f1.CFrame+Vector3.new(0,e6-f1.CFrame.p.Y,0)else eZ=true;break end end end end end;if not eZ then local f2=true;if eV then if dK then local ai=eW(game:GetService("Workspace").Terrain,ai.X,ai.Y,ai.Z)if ai.X+2>dK.CFrame.p.X+dK.Size.X/2 then f2=false elseif ai.X-2<dK.CFrame.p.X-dK.Size.X/2 then f2=false elseif ai.Y+2>dK.CFrame.p.Y+dK.Size.Y/2 then f2=false elseif ai.Y-2<dK.CFrame.p.Y-dK.Size.Y/2 then f2=false elseif ai.Z+2>dK.CFrame.p.Z+dK.Size.Z/2 then f2=false elseif ai.Z-2<dK.CFrame.p.Z-dK.Size.Z/2 then f2=false end end end;return f2 end;return false end;local function f3(eV)local f4=false;local f5=game:GetService("Workspace").Terrain;local e3=dR.InternalLine;local f6=game:GetService("Workspace").Terrain.MaxExtents.Max;local f7=game:GetService("Workspace").Terrain.MaxExtents.Min;local eT=1;local f8=0;local f9=0;local fa=false;if cn.CurrentParts:FindFirstChild("AutoWedge")then fa=true end;if cn.CurrentParts:FindFirstChild("ClusterMaterial",true)then eT=cn.CurrentParts:FindFirstChild("ClusterMaterial",true)if eT:IsA("Vector3Value")then f8=eT.Value.Y;f9=eT.Value.Z;eT=eT.Value.X elseif eT:IsA("IntValue")then eT=eT.Value end end;if dR.Adorn.Parent and dR.Start and(dR.Dimensions>1 or e3 and e3.magnitude>0)then local bg=game:GetService("Workspace").Terrain:WorldToCell(dR.Start)local fb={0,0,0}local fc={0,0,0}local fd={0,0,0}local bf=game:GetService("Workspace").Terrain;local fe={nil,nil,nil}local ff={Vector3.new(0,0,0),Vector3.new(0,0,0),Vector3.new(0,0,0)}local fg={Vector3.new(1,0,0),Vector3.new(0,1,0),Vector3.new(0,0,1)}local fh={}if dR.Dimensions>1 then table.insert(fh,dR.MoreLines[1])end;if e3 and e3.magnitude>0 then table.insert(fh,e3)end;if dR.Dimensions>2 then table.insert(fh,dR.MoreLines[2])end;for p=1,#fh do fh[p]=Vector3.new(math.floor(fh[p].X+.5),math.floor(fh[p].Y+.5),math.floor(fh[p].Z+.5))if fh[p].X>0 then fb[p]=1 elseif fh[p].X<0 then fb[p]=-1 end;if fh[p].Y>0 then fc[p]=1 elseif fh[p].Y<0 then fc[p]=-1 end;if fh[p].Z>0 then fd[p]=1 elseif fh[p].Z<0 then fd[p]=-1 end;fe[p]=Vector3.new(fb[p],fc[p],fd[p])if fe[p].magnitude<.9 then fe[p]=nil end end;if not fh[2]then fh[2]=Vector3.new(0,0,0)end;if not fh[3]then fh[3]=Vector3.new(0,0,0)end;local fi=cn.CurrentParts:FindFirstChild("WaterForceTag",true)local fj=cn.CurrentParts:FindFirstChild("WaterForceDirectionTag",true)while ff[3].magnitude*4<=fh[3].magnitude do local fk=1;while fk<4 do ff[2]=Vector3.new(0,0,0)while ff[2].magnitude*4<=fh[2].magnitude do local fl=1;while fl<4 do ff[1]=Vector3.new(0,0,0)while ff[1].magnitude*4<=fh[1].magnitude do local fm=ff[1]+ff[2]+ff[3]local ai=Vector3int16.new(bg.X+fm.X,bg.Y+fm.Y,bg.Z+fm.Z)if ai.X>=f7.X and ai.Y>=f7.Y and ai.Z>=f7.Z and ai.X<f6.X and ai.Y<f6.Y and ai.Z<f6.Z then local fn=eU(ai,eV)if fn then if fi then bf:SetWaterCell(ai.X,ai.Y,ai.Z,Enum.WaterForce[fi.Value],Enum.WaterDirection[fj.Value])else bf:SetCell(ai.X,ai.Y,ai.Z,eT,f8,f9)end;f4=true;if fa then game:GetService("Workspace").Terrain:AutowedgeCells(Region3int16.new(Vector3int16.new(ai.x-1,ai.y-1,ai.z-1),Vector3int16.new(ai.x+1,ai.y+1,ai.z+1)))end end end;ff[1]=ff[1]+fe[1]end;if fe[2]then while fl<4 and fg[fl]:Dot(fe[2])==0 do fl=fl+1 end;if fl<4 then ff[2]=ff[2]+fg[fl]*fg[fl]:Dot(fe[2])end;fl=fl+1 else ff[2]=Vector3.new(1,0,0)fl=4 end;if ff[2].magnitude*4>fh[2].magnitude then fl=4 end end end;if fe[3]then while fk<4 and fg[fk]:Dot(fe[3])==0 do fk=fk+1 end;if fk<4 then ff[3]=ff[3]+fg[fk]*fg[fk]:Dot(fe[3])end;fk=fk+1 else ff[3]=Vector3.new(1,0,0)fk=4 end;if ff[3].magnitude*4>fh[3].magnitude then fk=4 end end end end;dR.Start=nil;dR.Adorn.Parent=nil;if f4 then cn.CurrentParts.Parent=nil;pcall(function()game:GetService("ChangeHistoryService"):SetWaypoint("StamperMulti")end)end;return f4 end;local function fo(cq)if not cq then error("Error: RbxStamper.DoStamperMouseUp: Mouse is nil")return false end;if not cq:IsA("Mouse")then error("Error: RbxStamper.DoStamperMouseUp: Mouse is of type",cq.className,"should be of type Mouse")return false end;if not cn.Dragger then error("Error: RbxStamper.DoStamperMouseUp: stampData.Dragger is nil")return false end;if not dR then return false end;local eV=nil;if dJ then local fp=nil;local fq=e0()if fq and dR and dR.Start and dR.InternalLine and dR.InternalLine.magnitude>0 then fp=true;eV=true else fp,eV=b.CanEditRegion(cn.CurrentParts,dK)end;if not fp then if dL then dL()end;return false end end;if dV then ey()return false end;local fp,eV=b.CanEditRegion(cn.CurrentParts,dK)if not fp then if dL then dL()end;return false end;local cu,cv=cd(cn.CurrentParts)configFound,targetCFrame=cp(cq,cn)if configFound and not dR.Adorn.Parent then if bc(cu+aX,cv-aX)then ey()return false end;local fr=game:GetService("Workspace"):FindPartsInRegion3(Region3.new(cu+aX,cv-aX),cn.CurrentParts,100)for e_=1,#fr do if cj(fr[e_])then ey()return false end end;local f0={}for e_=1,#fr do if fr[e_].Parent and not f0[fr[e_].Parent]and fr[e_].Parent:FindFirstChild("Humanoid")and fr[e_].Parent:FindFirstChild("Humanoid"):IsA("Humanoid")then local f1=fr[e_].Parent:FindFirstChild("Torso")f0[fr[e_].Parent]=true;if f1 then local e6=cv.Y+3;if ck(f1,e6,cn)then f1.CFrame=f1.CFrame+Vector3.new(0,e6-f1.CFrame.p.Y,0)else ey()return false end end end end elseif not configFound and not(dR.Start and dR.Adorn.Parent)then ex()return false end;if game:GetService("Players")["LocalPlayer"]then if game:GetService("Players").LocalPlayer["Character"]then local fs=game:GetService("Players").LocalPlayer.Character;local ft=fs:FindFirstChild("StampTracker")if ft and not ft.Value then ft.Value=true end end end;if dR.Start and dR.Adorn.Parent and e0()then if f3(eV)or eV then cn.CurrentParts.Parent=nil;return true end end;dR.Start=nil;dR.Adorn.Parent=nil;local bf=game:GetService("Workspace").Terrain;if e0()then local ai;if cn.CurrentParts:IsA("Model")then ai=bf:WorldToCell(cn.CurrentParts:GetModelCFrame().p)else ai=bf:WorldToCell(cn.CurrentParts.CFrame.p)end;local f6=game:GetService("Workspace").Terrain.MaxExtents.Max;local f7=game:GetService("Workspace").Terrain.MaxExtents.Min;if eU(ai,false)then local ew=cn.CurrentParts:FindFirstChild("ClusterMaterial",true)local fi=cn.CurrentParts:FindFirstChild("WaterForceTag",true)local fj=cn.CurrentParts:FindFirstChild("WaterForceDirectionTag",true)if ai.X>=f7.X and ai.Y>=f7.Y and ai.Z>=f7.Z and ai.X<f6.X and ai.Y<f6.Y and ai.Z<f6.Z then if fi then bf:SetWaterCell(ai.X,ai.Y,ai.Z,Enum.WaterForce[fi.Value],Enum.WaterDirection[fj.Value])elseif not ew then bf:SetCell(ai.X,ai.Y,ai.Z,d_.Material,d_.clusterType,dM%4)elseif ew:IsA("Vector3Value")then bf:SetCell(ai.X,ai.Y,ai.Z,ew.Value.X,ew.Value.Y,ew.Value.Z)else bf:SetCell(ai.X,ai.Y,ai.Z,ew.Value,0,0)end;local fa=false;if cn.CurrentParts:FindFirstChild("AutoWedge")then fa=true end;if fa then game:GetService("Workspace").Terrain:AutowedgeCells(Region3int16.new(Vector3int16.new(ai.x-1,ai.y-1,ai.z-1),Vector3int16.new(ai.x+1,ai.y+1,ai.z+1)))end;cn.CurrentParts.Parent=nil;pcall(function()game:GetService("ChangeHistoryService"):SetWaypoint("StamperSingle")end)return true end else ey()return false end end;local function fu()if game:GetService("Players")["LocalPlayer"]then return game:GetService("Players").LocalPlayer end;return nil end;if cn.CurrentParts:IsA("Model")or cn.CurrentParts:IsA("Tool")then if cn.CurrentParts:IsA("Model")then local d7={}local d8={}d6(cn.CurrentParts,d7,d8)cn.CurrentParts:BreakJoints()cn.CurrentParts:MakeJoints()da(d7,d8)end;local fv=cn.CurrentParts:FindFirstChild("PlayerIdTag")local fw=cn.CurrentParts:FindFirstChild("PlayerNameTag")if fv~=nil then local fx=fu()if fx~=nil then fv.Value=fx.UserId end end;if fw~=nil then if game:GetService("Players")["LocalPlayer"]then local fx=game:GetService("Players").LocalPlayer;if fx~=nil then fw.Value=fx.Name end end end;if cn.CurrentParts:FindFirstChild("RobloxModel")==nil then local dB=Instance.new("BoolValue",cn.CurrentParts)dB.Name="RobloxModel"if cn.CurrentParts:FindFirstChild("RobloxStamper")==nil then local dC=Instance.new("BoolValue",cn.CurrentParts)dC.Name="RobloxStamper"end end else cn.CurrentParts:BreakJoints()if cn.CurrentParts:FindFirstChild("RobloxStamper")==nil then local dC=Instance.new("BoolValue",cn.CurrentParts)dC.Name="RobloxStamper"end end;game:GetService("JointsService"):CreateJoinAfterMoveJoints()for aZ,fy in pairs(cn.TransparencyTable)do aZ.Transparency=fy end;for aZ,fz in pairs(cn.ArchivableTable)do aZ.Archivable=fz end;for aZ,fA in pairs(cn.MaterialTable)do aZ.Material=fA end;for aZ,fB in pairs(cn.CanCollideTable)do aZ.CanCollide=fB end;for aZ,fC in pairs(cn.AnchoredTable)do aZ.Anchored=fC end;for eS,fy in pairs(cn.DecalTransparencyTable)do eS.Transparency=fy end;for aZ,eC in pairs(cn.SurfaceTypeTable)do eB(aZ,eC)end;if e0()then cn.CurrentParts.Transparency=0 end;bs(cn.CurrentParts,true)cn.TransparencyTable=nil;cn.ArchivableTable=nil;cn.MaterialTable=nil;cn.CanCollideTable=nil;cn.AnchoredTable=nil;cn.SurfaceTypeTable=nil;if cn.CurrentParts:FindFirstChild("RobloxModel")==nil then local dB=Instance.new("BoolValue",cn.CurrentParts)dB.Name="RobloxModel"end;for ba,eM in pairs(cn.DisabledScripts)do eM.Disabled=false end;for ba,eM in pairs(cn.DisabledScripts)do local fD=eM.Parent;eM.Parent=nil;eM:Clone().Parent=fD end;cn.DisabledScripts=nil;cn.Dragger=nil;cn.CurrentParts=nil;pcall(function()game:GetService("ChangeHistoryService"):SetWaypoint("StampedObject")end)return true end;local function fE()for p=1,#dW do dW[p]:disconnect()dW[p]=nil end;dW={}if cn and cn.CurrentParts then cn.CurrentParts.Parent=nil;cn.CurrentParts:Remove()end;ex()game:GetService("JointsService"):ClearJoinAfterMoveJoints()end;local function fF(bT,by,fG)local fH={Vector3.new(1,0,0),Vector3.new(0,1,0),Vector3.new(0,0,1)}local fI=1;if fG<0 then fI=fI*-1;fG=fG*-1 end;local fJ=fI*bT:vectorToWorldSpace(fH[fG])for p=1,#by do local fK=by[p]local fL=fK.CFrame:vectorToObjectSpace(fJ)if math.abs(fL.X)>math.abs(fL.Y)then if math.abs(fL.X)>math.abs(fL.Z)then if fL.X>0 then fK.RightSurface="Unjoinable"else fK.LeftSurface="Unjoinable"end else if fL.Z>0 then fK.BackSurface="Unjoinable"else fK.FrontSurface="Unjoinable"end end else if math.abs(fL.Y)>math.abs(fL.Z)then if fL.Y>0 then fK.TopSurface="Unjoinable"else fK.BottomSurface="Unjoinable"end else if fL.Z>0 then fK.BackSurface="Unjoinable"else fK.FrontSurface="Unjoinable"end end end end end;local function fM()local eL,by=eI(dF)if not eL or not by then return end;local fN=eL:FindFirstChild("UnjoinableFaces",true)if fN then for fO in string.gmatch(fN.Value,"[^,]*")do if tonumber(fO)then if eL:IsA("Model")then fF(eL:GetModelCFrame(),by,tonumber(fO))else fF(eL.CFrame,by,tonumber(fO))end end end end;cn.ErrorBox=dO;if dJ then eL.Parent=dJ else eL.Parent=game:GetService("Workspace")end;if eL:FindFirstChild("ClusterMaterial",true)then local eT=eL:FindFirstChild("ClusterMaterial",true)if eT:IsA("Vector3Value")then d_.Material=eT.Value.X;d_.clusterType=eT.Value.Y;d_.clusterOrientation=eT.Value.Z elseif eT:IsA("IntValue")then d_.Material=eT.Value end end;pcall(function()dN=cq.Target end)if dN and dN.Parent:FindFirstChild("RobloxModel")==nil then game:GetService("JointsService"):SetJoinAfterMoveTarget(dN)else game:GetService("JointsService"):SetJoinAfterMoveTarget(nil)end;game:GetService("JointsService"):ShowPermissibleJoints()for ba,b6 in pairs(cn.DisabledScripts)do if b6.Name=="GhostRemovalScript"then b6.Parent=cn.CurrentParts end end;cn.Dragger=Instance.new("Dragger")cn.Dragger:MouseDown(by[1],Vector3.new(0,0,0),by)cn.Dragger:MouseUp()eg(cq)table.insert(dW,cq.Move:connect(function()if dT or dU then return end;dT=true;eg(cq)dT=false end))table.insert(dW,cq.Button1Down:connect(function()ez(cq)end))table.insert(dW,cq.Button1Up:connect(function()dU=true;while dT do wait()end;dY.Value=fo(cq)ex()dU=false end))dY.Value=false end;local function fP(fQ)if fQ then if not fQ:IsA("Model")and not fQ:IsA("BasePart")then error("resetStamperState: newModelToStamp (first arg) is not nil, but not a model or part!")end;dF=fQ end;fE()fM()end;fP()dS.Stamped=dY;dS.Paused=false;dS.LoadNewModel=function(fR)if fR and not fR:IsA("Model")and not fR:IsA("BasePart")then error("Control.LoadNewModel: newStampModel (first arg) is not a Model or Part!")return nil end;fP(fR)end;dS.ReloadModel=function()fP()end;dS.Pause=function()if not dS.Paused then fE()dS.Paused=true else print("RbxStamper Warning: Tried to call Control.Pause() when already paused")end end;dS.Resume=function()if dS.Paused then fM()dS.Paused=false else print("RbxStamper Warning: Tried to call Control.Resume() without Pausing First")end end;dS.ResetRotation=function()end;dS.Destroy=function()for p=1,#dW do dW[p]:disconnect()dW[p]=nil end;if dX then dX:disconnect()end;game:GetService("JointsService"):ClearJoinAfterMoveJoints()if dQ then dQ:Destroy()end;if dP then dP:Destroy()end;if dO then dO:Destroy()end;if cn then if cn["Dragger"]then cn.Dragger:Destroy()end;if cn.CurrentParts then cn.CurrentParts:Destroy()end end;if dS and dS["Stamped"]then dS.Stamped:Destroy()end;dS=nil end;return dS end;b.Help=function(aK)if aK=="GetStampModel"or aK==b.GetStampModel then return"Function GetStampModel.  Arguments: assetId, useAssetVersionId.  assetId is the asset to load in, define useAssetVersionId as true if assetId is a version id instead of a relative assetId.  Side effect: returns a model of the assetId, or a string with error message if something fails"end;if aK=="SetupStamperDragger"or aK==b.SetupStamperDragger then return"Function SetupStamperDragger. Side Effect: Creates 4x4 stamping mechanism for building out parts quickly. Arguments: ModelToStamp, Mouse, LegalStampCheckFunction. ModelToStamp should be a Model or Part, preferrably loaded from RbxStamper.GetStampModel and should have extents that are multiples of 4.  Mouse should be a mouse object (obtained from things such as Tool.OnEquipped), used to drag parts around 'stamp' them out. LegalStampCheckFunction is optional, used as a callback with a table argument (table is full of instances about to be stamped). Function should return either true or false, false stopping the stamp action."end end;return b elseif a=="RbxGui"then local b={}local function fS(fT,dz,fU,fV,fW,fX)local fY=nil;local fZ=function()if game:IsAncestorOf(fT)then if not fY then fY=dz[fU]:connect(fV)if fW then fW()end end else if fY then fY:disconnect()if fX then fX()end end end end;local f_=fT.AncestryChanged:connect(fZ)fZ()return f_ end;local function g0(dz)local g1=dz;while g1 and not g1:IsA("LayerCollector")do g1=g1.Parent end;return g1 end;local function g2(g3,g4,g5,g6)local g7=1;local g8={}for p,aF in ipairs(g4)do local g9=Instance.new("TextButton")g9.Name="Button"..g7;g9.Font=Enum.Font.Arial;g9.FontSize=Enum.FontSize.Size18;g9.AutoButtonColor=true;g9.Modal=true;if aF["Style"]then g9.Style=aF.Style else g9.Style=Enum.ButtonStyle.RobloxButton end;if aF["ZIndex"]then g9.ZIndex=aF.ZIndex end;g9.Text=aF.Text;g9.TextColor3=Color3.new(1,1,1)g9.MouseButton1Click:connect(aF.Function)g9.Parent=g3;g8[g7]=g9;g7=g7+1 end;local ga=g7-1;if ga==1 then g3.Button1.Position=UDim2.new(0.35,0,g5.Scale,g5.Offset)g3.Button1.Size=UDim2.new(.4,0,g6.Scale,g6.Offset)elseif ga==2 then g3.Button1.Position=UDim2.new(0.1,0,g5.Scale,g5.Offset)g3.Button1.Size=UDim2.new(.8/3,0,g6.Scale,g6.Offset)g3.Button2.Position=UDim2.new(0.55,0,g5.Scale,g5.Offset)g3.Button2.Size=UDim2.new(.35,0,g6.Scale,g6.Offset)elseif ga>=3 then local gb=.1/ga;local gc=.9/ga;g7=1;while g7<=ga do g8[g7].Position=UDim2.new(gb*g7+(g7-1)*gc,0,g5.Scale,g5.Offset)g8[g7].Size=UDim2.new(gc,0,g6.Scale,g6.Offset)g7=g7+1 end end end;local function gd(ge,gf,gg,gh,gi)local gj=gi-1;local gk=math.min(1,math.max(0,(ge-gh.AbsolutePosition.X)/gh.AbsoluteSize.X))local gl,gm=math.modf(gk*gj)if gm>0.5 then gl=gl+1 end;gk=gl/gj;local y=math.ceil(gk*gj)if gg.Value~=y+1 then gg.Value=y+1;gf.Position=UDim2.new(gk,-gf.AbsoluteSize.X/2,gf.Position.Y.Scale,gf.Position.Y.Offset)end end;local function gn(go)go.Visible=false end;b.CreateStyledMessageDialog=function(gp,gq,gr,g4)local g3=Instance.new("Frame")g3.Size=UDim2.new(0.5,0,0,165)g3.Position=UDim2.new(0.25,0,0.5,-72.5)g3.Name="MessageDialog"g3.Active=true;g3.Style=Enum.FrameStyle.RobloxRound;local gs=Instance.new("ImageLabel")gs.Name="StyleImage"gs.BackgroundTransparency=1;gs.Position=UDim2.new(0,5,0,15)if gr=="error"or gr=="Error"then gs.Size=UDim2.new(0,71,0,71)gs.Image="https://www.roblox.com/asset/?id=42565285"elseif gr=="notify"or gr=="Notify"then gs.Size=UDim2.new(0,71,0,71)gs.Image="https://www.roblox.com/asset/?id=42604978"elseif gr=="confirm"or gr=="Confirm"then gs.Size=UDim2.new(0,74,0,76)gs.Image="https://www.roblox.com/asset/?id=42557901"else return b.CreateMessageDialog(gp,gq,g4)end;gs.Parent=g3;local gt=Instance.new("TextLabel")gt.Name="Title"gt.Text=gp;gt.TextStrokeTransparency=0;gt.BackgroundTransparency=1;gt.TextColor3=Color3.new(221/255,221/255,221/255)gt.Position=UDim2.new(0,80,0,0)gt.Size=UDim2.new(1,-80,0,40)gt.Font=Enum.Font.ArialBold;gt.FontSize=Enum.FontSize.Size36;gt.TextXAlignment=Enum.TextXAlignment.Center;gt.TextYAlignment=Enum.TextYAlignment.Center;gt.Parent=g3;local gu=Instance.new("TextLabel")gu.Name="Message"gu.Text=gq;gu.TextStrokeTransparency=0;gu.TextColor3=Color3.new(221/255,221/255,221/255)gu.Position=UDim2.new(0.025,80,0,45)gu.Size=UDim2.new(0.95,-80,0,55)gu.BackgroundTransparency=1;gu.Font=Enum.Font.Arial;gu.FontSize=Enum.FontSize.Size18;gu.TextWrap=true;gu.TextXAlignment=Enum.TextXAlignment.Left;gu.TextYAlignment=Enum.TextYAlignment.Top;gu.Parent=g3;g2(g3,g4,UDim.new(0,105),UDim.new(0,40))return g3 end;b.CreateMessageDialog=function(gp,gq,g4)local g3=Instance.new("Frame")g3.Size=UDim2.new(0.5,0,0.5,0)g3.Position=UDim2.new(0.25,0,0.25,0)g3.Name="MessageDialog"g3.Active=true;g3.Style=Enum.FrameStyle.RobloxRound;local gt=Instance.new("TextLabel")gt.Name="Title"gt.Text=gp;gt.BackgroundTransparency=1;gt.TextColor3=Color3.new(221/255,221/255,221/255)gt.Position=UDim2.new(0,0,0,0)gt.Size=UDim2.new(1,0,0.15,0)gt.Font=Enum.Font.ArialBold;gt.FontSize=Enum.FontSize.Size36;gt.TextXAlignment=Enum.TextXAlignment.Center;gt.TextYAlignment=Enum.TextYAlignment.Center;gt.Parent=g3;local gu=Instance.new("TextLabel")gu.Name="Message"gu.Text=gq;gu.TextColor3=Color3.new(221/255,221/255,221/255)gu.Position=UDim2.new(0.025,0,0.175,0)gu.Size=UDim2.new(0.95,0,.55,0)gu.BackgroundTransparency=1;gu.Font=Enum.Font.Arial;gu.FontSize=Enum.FontSize.Size18;gu.TextWrap=true;gu.TextXAlignment=Enum.TextXAlignment.Left;gu.TextYAlignment=Enum.TextYAlignment.Top;gu.Parent=g3;g2(g3,g4,UDim.new(0.8,0),UDim.new(0.15,0))return g3 end;b.CreateScrollingDropDownMenu=function(gv,size,gw,gx)local gy=6;local gz=0;if type(gx)=='number'then gz=gx end;local gA={}local gB=nil;local gC=nil;local g3=Instance.new('Frame')g3.Name="DropDownMenuFrame"g3.Size=size;g3.Position=gw;g3.BackgroundTransparency=1;gA.Frame=g3;local gD=Instance.new('TextButton')gD.Name="CurrentSelectionName"gD.Size=UDim2.new(1,0,1,0)gD.BackgroundTransparency=1;gD.Font=Enum.Font.SourceSansBold;gD.FontSize=Enum.FontSize.Size18;gD.TextXAlignment=Enum.TextXAlignment.Left;gD.TextYAlignment=Enum.TextYAlignment.Center;gD.TextColor3=Color3.new(0.5,0.5,0.5)gD.TextWrap=true;gD.ZIndex=gz;gD.Style=Enum.ButtonStyle.RobloxRoundDropdownButton;gD.Text="Choose One"gD.Parent=g3;gA.CurrentSelectionButton=gD;local gE=Instance.new('ImageLabel')gE.Name="DropDownIcon"gE.Size=UDim2.new(0,16,0,12)gE.Position=UDim2.new(1,-17,0.5,-6)gE.Image='rbxasset://textures/ui/dropdown_arrow.png'gE.BackgroundTransparency=1;gE.ZIndex=gz;gE.Parent=gD;local gF=nil;local gG=nil;local gH=0;local gI=false;local function gJ()gE.Rotation=0;gG:TweenSize(UDim2.new(1,0,0,gD.AbsoluteSize.y),Enum.EasingDirection.InOut,Enum.EasingStyle.Sine,0.15,true)gF.ScrollBarThickness=0;gF:TweenSize(UDim2.new(1,-16,0,24),Enum.EasingDirection.InOut,Enum.EasingStyle.Sine,0.15,true,function()if not gI then gF.Visible=false;gG.Visible=false end end)gI=false end;gD.MouseButton1Click:connect(function()if not gD.Active or#gB==0 then return end;if gI then gJ()return end;gI=true;gE.Rotation=180;if gF then gF.Visible=true end;if gG then gG.Visible=true end;if gG then gG:TweenSize(UDim2.new(1,0,0,gH*24+8),Enum.EasingDirection.InOut,Enum.EasingStyle.Sine,0.15,true)end;if gF then gF:TweenSize(UDim2.new(1,-16,0,gH*24),Enum.EasingDirection.InOut,Enum.EasingStyle.Sine,0.15,true,function()gF.ScrollBarThickness=6 end)end end)gA.IsOpen=function()return gI end;gA.Close=function()gJ()end;gA.Reset=function()gI=false;gE.Rotation=0;gF.ScrollBarThickness=0;gF.Size=UDim2.new(1,-16,0,24)gF.Visible=false;gG.Visible=false end;gA.SetVisible=function(gK)if g3 then g3.Visible=gK end end;gA.UpdateZIndex=function(gL)gD.ZIndex=gL;gE.ZIndex=gL;if gG then gG.ZIndex=gL+1 end;if gF then gF.ZIndex=gL+2;for aB,bb in pairs(gF:GetChildren())do bb.ZIndex=gL+4 end end end;gA.SetActive=function(gM)gD.Active=gM end;gA.SetSelectionText=function(gN)gD.Text=gN end;gA.CreateList=function(gO)gD.Text="Choose One"if gF then gF:Destroy()end;if gG then gG:Destroy()end;gB=gO;local gP=#gO;gH=math.min(gy,gP)local gQ=gH*24;gF=Instance.new('ScrollingFrame')gF.Name="ListMenu"gF.Size=UDim2.new(1,-16,0,24)gF.Position=UDim2.new(0,12,0,32)gF.CanvasSize=UDim2.new(0,0,0,gP*24)gF.BackgroundTransparency=1;gF.BorderSizePixel=0;gF.ZIndex=gz+2;gF.Visible=false;gF.Active=true;gF.BottomImage='rbxasset://textures/ui/scroll-bottom.png'gF.MidImage='rbxasset://textures/ui/scroll-middle.png'gF.TopImage='rbxasset://textures/ui/scroll-top.png'gF.ScrollBarThickness=0;gF.Parent=g3;gG=Instance.new('TextButton')gG.Name="ScrollingBackground"gG.Size=UDim2.new(1,0,0,gD.AbsoluteSize.y)gG.Position=UDim2.new(0,0,0,28)gG.BackgroundColor3=Color3.new(1,1,1)gG.Style=Enum.ButtonStyle.RobloxRoundDropdownButton;gG.ZIndex=gz+1;gG.Text=""gG.Visible=false;gG.AutoButtonColor=false;gG.Parent=g3;for p=1,gP do local gR=gO[p]local gS=Instance.new('TextButton')gS.Name=gR;gS.Size=UDim2.new(1,0,0,24)gS.Position=UDim2.new(0,0,0,(p-1)*24)gS.BackgroundTransparency=0;gS.BackgroundColor3=Color3.new(1,1,1)gS.BorderSizePixel=0;gS.Font=Enum.Font.SourceSans;gS.FontSize=Enum.FontSize.Size18;gS.TextColor3=Color3.new(0.5,0.5,0.5)gS.TextXAlignment=Enum.TextXAlignment.Left;gS.TextYAlignment=Enum.TextYAlignment.Center;gS.Text=gR;gS.ZIndex=gz+4;gS.AutoButtonColor=false;gS.Parent=gF;gS.MouseButton1Click:connect(function()gD.Text=gS.Text;gJ()gS.Font=Enum.Font.SourceSans;gS.TextColor3=Color3.new(0.5,0.5,0.5)gS.BackgroundColor3=Color3.new(1,1,1)gv(gS.Text)end)gS.MouseEnter:connect(function()gS.TextColor3=Color3.new(1,1,1)gS.BackgroundColor3=Color3.new(0.75,0.75,0.75)end)gS.MouseLeave:connect(function()gS.TextColor3=Color3.new(0.5,0.5,0.5)gS.BackgroundColor3=Color3.new(1,1,1)end)end end;return gA end;b.CreateDropDownMenu=function(gT,gU,gV,gW,gx)local gz=0;if type(gx)=="number"then gz=gx end;local gX=UDim.new(0,100)local gY=UDim.new(0,32)local gZ=0.055;local g3=Instance.new("Frame")local g_=Color3.new(1,1,1)if gW then g_=Color3.new(0.5,0.5,0.5)end;g3.Name="DropDownMenu"g3.BackgroundTransparency=1;g3.Size=UDim2.new(gX,gY)local gA=Instance.new("TextButton")gA.Name="DropDownMenuButton"gA.TextWrap=true;gA.TextColor3=g_;gA.Text="Choose One"gA.Font=Enum.Font.ArialBold;gA.FontSize=Enum.FontSize.Size18;gA.TextXAlignment=Enum.TextXAlignment.Left;gA.TextYAlignment=Enum.TextYAlignment.Center;gA.BackgroundTransparency=1;gA.AutoButtonColor=true;if gW then gA.Style=Enum.ButtonStyle.RobloxRoundDropdownButton else gA.Style=Enum.ButtonStyle.RobloxButton end;gA.Size=UDim2.new(1,0,1,0)gA.Parent=g3;gA.ZIndex=2+gz;local h0=Instance.new("ImageLabel")h0.Name="Icon"h0.Active=false;if gW then h0.Image="rbxasset://textures/ui/dropdown_arrow.png"h0.Size=UDim2.new(0,16,0,12)h0.Position=UDim2.new(1,-17,0.5,-6)else h0.Image="https://www.roblox.com/asset/?id=45732894"h0.Size=UDim2.new(0,11,0,6)h0.Position=UDim2.new(1,-11,0.5,-2)end;h0.BackgroundTransparency=1;h0.Parent=gA;h0.ZIndex=2+gz;local h1=#gT;local h2=#gT;local h3=false;if h2>6 then h3=true;h2=6 end;local h4=Instance.new("TextButton")h4.Name="List"h4.Text=""h4.BackgroundTransparency=1;if gW then h4.Style=Enum.ButtonStyle.RobloxRoundDropdownButton else h4.Style=Enum.ButtonStyle.RobloxButton end;h4.Visible=false;h4.Active=true;h4.Position=UDim2.new(0,0,0,0)h4.Size=UDim2.new(1,0,(1+h2)*.8,0)h4.Parent=g3;h4.ZIndex=2+gz;local h5=Instance.new("TextButton")h5.Name="ChoiceButton"h5.BackgroundTransparency=1;h5.BorderSizePixel=0;h5.Text="ReplaceMe"h5.TextColor3=g_;h5.TextXAlignment=Enum.TextXAlignment.Left;h5.TextYAlignment=Enum.TextYAlignment.Center;h5.BackgroundColor3=Color3.new(1,1,1)h5.Font=Enum.Font.Arial;h5.FontSize=Enum.FontSize.Size18;if h3 then h5.Size=UDim2.new(1,-13,.8/((h2+1)*.8),0)else h5.Size=UDim2.new(1,0,.8/((h2+1)*.8),0)end;h5.TextWrap=true;h5.ZIndex=2+gz;local go=Instance.new("TextButton")go.Name="AreaSoak"go.Text=""go.BackgroundTransparency=1;go.Active=true;go.Size=UDim2.new(1,0,1,0)go.Visible=false;go.ZIndex=3+gz;local h6=false;local h7;local h8;local h9=0;local ha=function(gz)h4.ZIndex=gz+1;if h7 then h7.ZIndex=gz+3 end;if h8 then h8.ZIndex=gz+3 end;local d9=h4:GetChildren()if d9 then for p,bb in ipairs(d9)do if bb.Name=="ChoiceButton"then bb.ZIndex=gz+2 elseif bb.Name=="ClickCaptureButton"then bb.ZIndex=gz end end end end;local hb=1;local hc=function()if h7 then h7.Active=hb>1 end;if h8 then h8.Active=hb+h2<=h1 end;local d9=h4:GetChildren()if not d9 then return end;local hd=1;for p,aF in ipairs(d9)do if aF.Name=="ChoiceButton"then if hd<hb or hd>=hb+h2 then aF.Visible=false else aF.Position=UDim2.new(0,0,(hd-hb+1)*.8/((h2+1)*.8),0)aF.Visible=true end;aF.TextColor3=g_;aF.BackgroundTransparency=1;hd=hd+1 end end end;local he=function()h6=not h6;go.Visible=not go.Visible;gA.Visible=not h6;h4.Visible=h6;if h6 then ha(4+gz)else ha(2+gz)end;if h3 then hc()end end;h4.MouseButton1Click:connect(he)local _=function(gN)local hf=false;local d9=h4:GetChildren()local hd=1;if d9 then for p,aF in ipairs(d9)do if aF.Name=="ChoiceButton"then if aF.Text==gN then aF.Font=Enum.Font.ArialBold;hf=true;hb=hd;if gW then aF.TextColor3=Color3.new(90/255,142/255,233/255)end else aF.Font=Enum.Font.Arial;if gW then aF.TextColor3=g_ end end;hd=hd+1 end end end;if not gN then gA.Text="Choose One"hb=1 else if not hf then error("Invalid Selection Update -- "..gN)end;if hb+h2>h1+1 then hb=h1-h2+1 end;gA.Text=gN end end;local function hg()if hb+h2<=h1 then hb=hb+1;hc()return true end;return false end;local function hh()if hb>1 then hb=hb-1;hc()return true end;return false end;if h3 then h7=Instance.new("ImageButton")h7.Name="ScrollUpButton"h7.BackgroundTransparency=1;h7.Image="rbxasset://textures/ui/scrollbuttonUp.png"h7.Size=UDim2.new(0,17,0,17)h7.Position=UDim2.new(1,-11,1*.8/((h2+1)*.8),0)h7.MouseButton1Click:connect(function()h9=h9+1 end)h7.MouseLeave:connect(function()h9=h9+1 end)h7.MouseButton1Down:connect(function()h9=h9+1;hh()local G=h9;wait(0.5)while G==h9 do if hh()==false then break end;wait(0.1)end end)h7.Parent=h4;h8=Instance.new("ImageButton")h8.Name="ScrollDownButton"h8.BackgroundTransparency=1;h8.Image="rbxasset://textures/ui/scrollbuttonDown.png"h8.Size=UDim2.new(0,17,0,17)h8.Position=UDim2.new(1,-11,1,-11)h8.Parent=h4;h8.MouseButton1Click:connect(function()h9=h9+1 end)h8.MouseLeave:connect(function()h9=h9+1 end)h8.MouseButton1Down:connect(function()h9=h9+1;hg()local G=h9;wait(0.5)while G==h9 do if hg()==false then break end;wait(0.1)end end)local hi=Instance.new("ImageLabel")hi.Name="ScrollBar"hi.Image="rbxasset://textures/ui/scrollbar.png"hi.BackgroundTransparency=1;hi.Size=UDim2.new(0,18,h2*.8/((h2+1)*.8),-17-11-4)hi.Position=UDim2.new(1,-11,1*.8/((h2+1)*.8),17+2)hi.Parent=h4 end;for p,E in ipairs(gT)do local g9=h5:clone()if gV then g9.RobloxLocked=true end;g9.Text=E;g9.Parent=h4;if gW then g9.TextColor3=g_ end;g9.MouseButton1Click:connect(function()if not gW then g9.TextColor3=Color3.new(1,1,1)end;g9.BackgroundTransparency=1;_(E)gU(E)he()end)g9.MouseEnter:connect(function()if not gW then g9.TextColor3=Color3.new(0,0,0)end;g9.BackgroundTransparency=0 end)g9.MouseLeave:connect(function()if not gW then g9.TextColor3=Color3.new(1,1,1)end;g9.BackgroundTransparency=1 end)end;hc()g3.AncestryChanged:connect(function(bb,aG)if aG==nil then go.Parent=nil else go.Parent=g0(g3)end end)gA.MouseButton1Click:connect(he)go.MouseButton1Click:connect(he)return g3,_ end;b.CreatePropertyDropDownMenu=function(dz,hj,hk)local gT=hk:GetEnumItems()local hl={}local hm={}for p,aF in ipairs(gT)do hl[p]=aF.Name;hm[aF.Name]=aF end;local g3;local _;g3,_=b.CreateDropDownMenu(hl,function(gN)dz[hj]=hm[gN]end)fS(g3,dz,"Changed",function(hn)if hn==hj then _(dz[hj].Name)end end,function()_(dz[hj].Name)end)return g3 end;b.GetFontHeight=function(ho,hp)if ho==nil or hp==nil then error("Font and FontSize must be non-nil")end;local hq=tonumber(hp.Name:match("%d+"))if ho==Enum.Font.Legacy then return math.ceil(hq*1.5)else return hq end end;local function hr(g3,hs,ht)local hu=g3.AbsoluteSize.Y;local hv=g3.AbsoluteSize.Y;for p,bb in ipairs(hs)do if bb:IsA("TextLabel")or bb:IsA("TextButton")then local hw=bb:IsA("TextLabel")if hw then hv=hv-ht["TextLabelPositionPadY"]else hv=hv-ht["TextButtonPositionPadY"]end;bb.Position=UDim2.new(bb.Position.X.Scale,bb.Position.X.Offset,0,hu-hv)bb.Size=UDim2.new(bb.Size.X.Scale,bb.Size.X.Offset,0,hv)if bb.TextFits and bb.TextBounds.Y<hv then bb.Visible=true;if hw then bb.Size=UDim2.new(bb.Size.X.Scale,bb.Size.X.Offset,0,bb.TextBounds.Y+ht["TextLabelSizePadY"])else bb.Size=UDim2.new(bb.Size.X.Scale,bb.Size.X.Offset,0,bb.TextBounds.Y+ht["TextButtonSizePadY"])end;while not bb.TextFits do bb.Size=UDim2.new(bb.Size.X.Scale,bb.Size.X.Offset,0,bb.AbsoluteSize.Y+1)end;hv=hv-bb.AbsoluteSize.Y;if hw then hv=hv-ht["TextLabelPositionPadY"]else hv=hv-ht["TextButtonPositionPadY"]end else bb.Visible=false;hv=-1 end else bb.Position=UDim2.new(bb.Position.X.Scale,bb.Position.X.Offset,0,hu-hv)hv=hv-bb.AbsoluteSize.Y;bb.Visible=hv>=0 end end end;b.LayoutGuiObjects=function(g3,hs,ht)if not g3:IsA("GuiObject")then error("Frame must be a GuiObject")end;for p,bb in ipairs(hs)do if not bb:IsA("GuiObject")then error("All elements that are layed out must be of type GuiObject")end end;if not ht then ht={}end;if not ht["TextLabelSizePadY"]then ht["TextLabelSizePadY"]=0 end;if not ht["TextLabelPositionPadY"]then ht["TextLabelPositionPadY"]=0 end;if not ht["TextButtonSizePadY"]then ht["TextButtonSizePadY"]=12 end;if not ht["TextButtonPositionPadY"]then ht["TextButtonPositionPadY"]=2 end;local hx=Instance.new("Frame")hx.Name="WrapperFrame"hx.BackgroundTransparency=1;hx.Size=UDim2.new(1,0,1,0)hx.Parent=g3;for p,bb in ipairs(hs)do bb.Parent=hx end;local hy=function()wait()hr(hx,hs,ht)end;g3.Changed:connect(function(hn)if hn=="AbsoluteSize"then hy(nil)end end)g3.AncestryChanged:connect(hy)hr(hx,hs,ht)end;b.CreateSlider=function(gi,gX,gw)local hz=Instance.new("Frame")hz.Size=UDim2.new(1,0,1,0)hz.BackgroundTransparency=1;hz.Name="SliderGui"local hA=Instance.new("IntValue")hA.Name="SliderSteps"hA.Value=gi;hA.Parent=hz;local go=Instance.new("TextButton")go.Name="AreaSoak"go.Text=""go.BackgroundTransparency=1;go.Active=false;go.Size=UDim2.new(1,0,1,0)go.Visible=false;go.ZIndex=4;hz.AncestryChanged:connect(function(bb,aG)if aG==nil then go.Parent=nil else go.Parent=g0(hz)end end)local gg=Instance.new("IntValue")gg.Name="SliderPosition"gg.Value=0;gg.Parent=hz;local hB=math.random(1,100)local gh=Instance.new("TextButton")gh.Text=""gh.AutoButtonColor=false;gh.Name="Bar"gh.BackgroundColor3=Color3.new(0,0,0)if type(gX)=="number"then gh.Size=UDim2.new(0,gX,0,5)else gh.Size=UDim2.new(0,200,0,5)end;gh.BorderColor3=Color3.new(95/255,95/255,95/255)gh.ZIndex=2;gh.Parent=hz;if gw["X"]and gw["X"]["Scale"]and gw["X"]["Offset"]and gw["Y"]and gw["Y"]["Scale"]and gw["Y"]["Offset"]then gh.Position=gw end;local gf=Instance.new("ImageButton")gf.Name="Slider"gf.BackgroundTransparency=1;gf.Image="rbxasset://textures/ui/Slider.png"gf.Position=UDim2.new(0,0,0.5,-10)gf.Size=UDim2.new(0,20,0,20)gf.ZIndex=3;gf.Parent=gh;local hC=nil;go.MouseLeave:connect(function()if go.Visible then gn(go)end end)go.MouseButton1Up:connect(function()if go.Visible then gn(go)end end)gf.MouseButton1Down:connect(function()go.Visible=true;if hC then hC:disconnect()end;hC=go.MouseMoved:connect(function(M,N)gd(M,gf,gg,gh,gi)end)end)gf.MouseButton1Up:connect(function()gn(go)end)gg.Changed:connect(function(hn)gg.Value=math.min(gi,math.max(1,gg.Value))local gk=(gg.Value-1)/(gi-1)gf.Position=UDim2.new(gk,-gf.AbsoluteSize.X/2,gf.Position.Y.Scale,gf.Position.Y.Offset)end)gh.MouseButton1Down:connect(function(M,N)gd(M,gf,gg,gh,gi)end)return hz,gg,hA end;b.CreateSliderNew=function(gi,gX,gw)local hz=Instance.new("Frame")hz.Size=UDim2.new(1,0,1,0)hz.BackgroundTransparency=1;hz.Name="SliderGui"local hA=Instance.new("IntValue")hA.Name="SliderSteps"hA.Value=gi;hA.Parent=hz;local go=Instance.new("TextButton")go.Name="AreaSoak"go.Text=""go.BackgroundTransparency=1;go.Active=false;go.Size=UDim2.new(1,0,1,0)go.Visible=false;go.ZIndex=6;hz.AncestryChanged:connect(function(bb,aG)if aG==nil then go.Parent=nil else go.Parent=g0(hz)end end)local gg=Instance.new("IntValue")gg.Name="SliderPosition"gg.Value=0;gg.Parent=hz;local hB=math.random(1,100)local hD=7;local hE=4;local gh=Instance.new("ImageButton")gh.BackgroundTransparency=1;gh.Image="rbxasset://textures/ui/Slider-BKG-Center.png"gh.Name="Bar"local hF=200;if type(gX)=="number"then gh.Size=UDim2.new(0,gX-hE*2,0,hD)hF=gX-hE*2 else gh.Size=UDim2.new(0,200,0,hD)end;gh.ZIndex=3;gh.Parent=hz;if gw["X"]and gw["X"]["Scale"]and gw["X"]["Offset"]and gw["Y"]and gw["Y"]["Scale"]and gw["Y"]["Offset"]then gh.Position=gw end;local hG=gh:clone()hG.Name="BarLeft"hG.Image="rbxasset://textures/ui/Slider-BKG-Left-Cap.png"hG.Size=UDim2.new(0,hE,0,hD)hG.Position=UDim2.new(gw.X.Scale,gw.X.Offset-hE,gw.Y.Scale,gw.Y.Offset)hG.Parent=hz;hG.ZIndex=3;local hH=hG:clone()hH.Name="BarRight"hH.Image="rbxasset://textures/ui/Slider-BKG-Right-Cap.png"hH.Position=UDim2.new(gw.X.Scale,gw.X.Offset+hF,gw.Y.Scale,gw.Y.Offset)hH.Parent=hz;local hI=hG:clone()hI.Name="FillLeft"hI.Image="rbxasset://textures/ui/Slider-Fill-Left-Cap.png"hI.Parent=hz;hI.ZIndex=4;local hJ=hI:clone()hJ.Name="Fill"hJ.Image="rbxasset://textures/ui/Slider-Fill-Center.png"hJ.Parent=gh;hJ.ZIndex=4;hJ.Position=UDim2.new(0,0,0,0)hJ.Size=UDim2.new(0.5,0,1,0)local gf=Instance.new("ImageButton")gf.Name="Slider"gf.BackgroundTransparency=1;gf.Image="rbxasset://textures/ui/slider_new_tab.png"gf.Position=UDim2.new(0,0,0.5,-14)gf.Size=UDim2.new(0,28,0,28)gf.ZIndex=5;gf.Parent=gh;local hC=nil;go.MouseLeave:connect(function()if go.Visible then gn(go)end end)go.MouseButton1Up:connect(function()if go.Visible then gn(go)end end)gf.MouseButton1Down:connect(function()go.Visible=true;if hC then hC:disconnect()end;hC=go.MouseMoved:connect(function(M,N)gd(M,gf,gg,gh,gi)end)end)gf.MouseButton1Up:connect(function()gn(go)end)gg.Changed:connect(function(hn)gg.Value=math.min(gi,math.max(1,gg.Value))local gk=(gg.Value-1)/(gi-1)gf.Position=UDim2.new(gk,-gf.AbsoluteSize.X/2,gf.Position.Y.Scale,gf.Position.Y.Offset)hJ.Size=UDim2.new(gk,0,1,0)end)gh.MouseButton1Down:connect(function(M,N)gd(M,gf,gg,gh,gi)end)hJ.MouseButton1Down:connect(function(M,N)gd(M,gf,gg,gh,gi)end)hI.MouseButton1Down:connect(function(M,N)gd(M,gf,gg,gh,gi)end)return hz,gg,hA end;b.CreateTrueScrollingFrame=function()local hK=nil;local hL=nil;local hM=nil;local hN=nil;local hO=false;local hP={}local hQ=Instance.new("Frame")hQ.Name="ScrollingFrame"hQ.Active=true;hQ.Size=UDim2.new(1,0,1,0)hQ.ClipsDescendants=true;local hR=Instance.new("Frame")hR.Name="ControlFrame"hR.BackgroundTransparency=1;hR.Size=UDim2.new(0,18,1,0)hR.Position=UDim2.new(1,-20,0,0)hR.Parent=hQ;local hS=Instance.new("BoolValue")hS.Value=false;hS.Name="ScrollBottom"hS.Parent=hR;local hh=Instance.new("BoolValue")hh.Value=false;hh.Name="scrollUp"hh.Parent=hR;local h7=Instance.new("TextButton")h7.Name="ScrollUpButton"h7.Text=""h7.AutoButtonColor=false;h7.BackgroundColor3=Color3.new(0,0,0)h7.BorderColor3=Color3.new(1,1,1)h7.BackgroundTransparency=0.5;h7.Size=UDim2.new(0,18,0,18)h7.ZIndex=2;h7.Parent=hR;for p=1,6 do local hT=Instance.new("Frame")hT.BorderColor3=Color3.new(1,1,1)hT.Name="tri"..tostring(p)hT.ZIndex=3;hT.BackgroundTransparency=0.5;hT.Size=UDim2.new(0,12-(p-1)*2,0,0)hT.Position=UDim2.new(0,3+p-1,0.5,2-(p-1))hT.Parent=h7 end;h7.MouseEnter:connect(function()h7.BackgroundTransparency=0.1;local hU=h7:GetChildren()for p=1,#hU do hU[p].BackgroundTransparency=0.1 end end)h7.MouseLeave:connect(function()h7.BackgroundTransparency=0.5;local hU=h7:GetChildren()for p=1,#hU do hU[p].BackgroundTransparency=0.5 end end)local h8=h7:clone()h8.Name="ScrollDownButton"h8.Position=UDim2.new(0,0,1,-18)local hV=h8:GetChildren()for p=1,#hV do hV[p].Position=UDim2.new(0,3+p-1,0.5,-2+p-1)end;h8.MouseEnter:connect(function()h8.BackgroundTransparency=0.1;local hV=h8:GetChildren()for p=1,#hV do hV[p].BackgroundTransparency=0.1 end end)h8.MouseLeave:connect(function()h8.BackgroundTransparency=0.5;local hV=h8:GetChildren()for p=1,#hV do hV[p].BackgroundTransparency=0.5 end end)h8.Parent=hR;local hW=Instance.new("Frame")hW.Name="ScrollTrack"hW.BackgroundTransparency=1;hW.Size=UDim2.new(0,18,1,-38)hW.Position=UDim2.new(0,0,0,19)hW.Parent=hR;local hi=Instance.new("TextButton")hi.BackgroundColor3=Color3.new(0,0,0)hi.BorderColor3=Color3.new(1,1,1)hi.BackgroundTransparency=0.5;hi.AutoButtonColor=false;hi.Text=""hi.Active=true;hi.Name="ScrollBar"hi.ZIndex=2;hi.BackgroundTransparency=0.5;hi.Size=UDim2.new(0,18,0.1,0)hi.Position=UDim2.new(0,0,0,0)hi.Parent=hW;local hX=Instance.new("Frame")hX.Name="ScrollNub"hX.BorderColor3=Color3.new(1,1,1)hX.Size=UDim2.new(0,10,0,0)hX.Position=UDim2.new(0.5,-5,0.5,0)hX.ZIndex=2;hX.BackgroundTransparency=0.5;hX.Parent=hi;local hY=hX:clone()hY.Position=UDim2.new(0.5,-5,0.5,-2)hY.Parent=hi;local hZ=hX:clone()hZ.Position=UDim2.new(0.5,-5,0.5,2)hZ.Parent=hi;hi.MouseEnter:connect(function()hi.BackgroundTransparency=0.1;hX.BackgroundTransparency=0.1;hY.BackgroundTransparency=0.1;hZ.BackgroundTransparency=0.1 end)hi.MouseLeave:connect(function()hi.BackgroundTransparency=0.5;hX.BackgroundTransparency=0.5;hY.BackgroundTransparency=0.5;hZ.BackgroundTransparency=0.5 end)local h_=Instance.new("ImageButton")h_.Active=false;h_.Size=UDim2.new(1.5,0,1.5,0)h_.AutoButtonColor=false;h_.BackgroundTransparency=1;h_.Name="mouseDrag"h_.Position=UDim2.new(-0.25,0,-0.25,0)h_.ZIndex=10;local function i0(M,N,i1)local i2=hi.Position;if N<hW.AbsolutePosition.y then hi.Position=UDim2.new(hi.Position.X.Scale,hi.Position.X.Offset,0,0)return i2~=hi.Position end;local i3=hi.AbsoluteSize.Y/hW.AbsoluteSize.Y;if N>hW.AbsolutePosition.y+hW.AbsoluteSize.y then hi.Position=UDim2.new(hi.Position.X.Scale,hi.Position.X.Offset,1-i3,0)return i2~=hi.Position end;local i4=(N-hW.AbsolutePosition.y-i1)/hW.AbsoluteSize.y;if i4+i3>1 then i4=1-i3;hS.Value=true;hh.Value=false elseif i4<=0 then i4=0;hh.Value=true;hS.Value=false else hh.Value=false;hS.Value=false end;hi.Position=UDim2.new(hi.Position.X.Scale,hi.Position.X.Offset,i4,0)return i2~=hi.Position end;local function i5(dz)if not dz or not dz:IsA("GuiObject")then return end;if dz==hR then return end;if dz:IsDescendantOf(hR)then return end;if not dz.Visible then return end;if hK and hK>dz.AbsolutePosition.Y then hK=dz.AbsolutePosition.Y elseif not hK then hK=dz.AbsolutePosition.Y end;if hL and hL<dz.AbsolutePosition.Y+dz.AbsoluteSize.Y then hL=dz.AbsolutePosition.Y+dz.AbsoluteSize.Y elseif not hL then hL=dz.AbsolutePosition.Y+dz.AbsoluteSize.Y end;local d9=dz:GetChildren()for p=1,#d9 do i5(d9[p])end end;local function i6()local i7=hQ:GetChildren()for p=1,#i7 do i5(i7[p])end end;local function hy()hO=true;local i8=0;if hi.Position.Y.Scale>0 then if hi.Visible then i8=hi.Position.Y.Scale/((hW.AbsoluteSize.Y-hi.AbsoluteSize.Y)/hW.AbsoluteSize.Y)else i8=0 end end;if i8>0.99 then i8=1 end;local i9=(hQ.AbsoluteSize.Y-(hL-hK))*i8;local ia=hQ:GetChildren()for p=1,#ia do if ia[p]~=hR then ia[p].Position=UDim2.new(ia[p].Position.X.Scale,ia[p].Position.X.Offset,0,math.ceil(ia[p].AbsolutePosition.Y)-math.ceil(hK)+i9)end end;hK=nil;hL=nil;i6()hO=false end;local function ib()if not hL or not hK then return end;local ic=math.abs(hL-hK)if ic==0 then hi.Visible=false;h8.Visible=false;h7.Visible=false;if hM then hM:disconnect()hM=nil end;if hN then hN:disconnect()hN=nil end;return end;local id=hQ.AbsoluteSize.Y/ic;if id>=1 then hi.Visible=false;h8.Visible=false;h7.Visible=false;hy()else hi.Visible=true;h8.Visible=true;h7.Visible=true;hi.Size=UDim2.new(hi.Size.X.Scale,hi.Size.X.Offset,id,0)end;local ie=(hQ.AbsolutePosition.Y-hK)/ic;hi.Position=UDim2.new(hi.Position.X.Scale,hi.Position.X.Offset,ie,-hi.AbsoluteSize.X/2)if hi.AbsolutePosition.y<hW.AbsolutePosition.y then hi.Position=UDim2.new(hi.Position.X.Scale,hi.Position.X.Offset,0,0)end;if hi.AbsolutePosition.y+hi.AbsoluteSize.Y>hW.AbsolutePosition.y+hW.AbsoluteSize.y then local i3=hi.AbsoluteSize.Y/hW.AbsoluteSize.Y;hi.Position=UDim2.new(hi.Position.X.Scale,hi.Position.X.Offset,1-i3,0)end end;local ig=7;local ih=false;local function ii()if ih then return end;ih=true;if i0(0,hi.AbsolutePosition.Y-ig,0)then hy()end;ih=false end;local ij=false;local function ik()if ij then return end;ij=true;if i0(0,hi.AbsolutePosition.Y+ig,0)then hy()end;ij=false end;local function hh(il)if h7.Active then scrollStamp=tick()local im=scrollStamp;local hN;hN=h_.MouseButton1Up:connect(function()scrollStamp=tick()h_.Parent=nil;hN:disconnect()end)h_.Parent=g0(hi)ii()wait(0.2)local b=tick()local io=0.1;while scrollStamp==im do ii()if il and il>hi.AbsolutePosition.y then break end;if not h7.Active then break end;if tick()-b>5 then io=0 elseif tick()-b>2 then io=0.06 end;wait(io)end end end;local function hg(il)if h8.Active then scrollStamp=tick()local im=scrollStamp;local ip;ip=h_.MouseButton1Up:connect(function()scrollStamp=tick()h_.Parent=nil;ip:disconnect()end)h_.Parent=g0(hi)ik()wait(0.2)local b=tick()local io=0.1;while scrollStamp==im do ik()if il and il<hi.AbsolutePosition.y+hi.AbsoluteSize.x then break end;if not h8.Active then break end;if tick()-b>5 then io=0 elseif tick()-b>2 then io=0.06 end;wait(io)end end end;hi.MouseButton1Down:connect(function(M,N)if hi.Active then scrollStamp=tick()local iq=N-hi.AbsolutePosition.y;if hM then hM:disconnect()hM=nil end;if hN then hN:disconnect()hN=nil end;local ir=N;local is=false;hM=h_.MouseMoved:connect(function(M,N)if is then return end;is=true;if i0(M,N,iq)then hy()end;is=false end)hN=h_.MouseButton1Up:connect(function()scrollStamp=tick()h_.Parent=nil;hM:disconnect()hM=nil;hN:disconnect()drag=nil end)h_.Parent=g0(hi)end end)local h9=0;h7.MouseButton1Down:connect(function()hh()end)h7.MouseButton1Up:connect(function()scrollStamp=tick()end)h8.MouseButton1Up:connect(function()scrollStamp=tick()end)h8.MouseButton1Down:connect(function()hg()end)hi.MouseButton1Up:connect(function()scrollStamp=tick()end)local function it(dz)if hL and dz.AbsolutePosition.Y+dz.AbsoluteSize.Y>hL then hL=dz.AbsolutePosition.Y+dz.AbsoluteSize.Y elseif not hL then hL=dz.AbsolutePosition.Y+dz.AbsoluteSize.Y end;ib()end;local function iu()local iv=hK;local iw=hL;hK=nil;hL=nil;i6()if hK~=iv or hL~=iw then ib()end end;local function ix(av,hn)if hO then return end;if not av.Visible then return end;if hn=="Size"or hn=="Position"then wait()iu()end end;hQ.DescendantAdded:connect(function(dz)if not dz:IsA("GuiObject")then return end;if dz.Visible then wait()iu()end;hP[dz]=dz.Changed:connect(function(hn)ix(dz,hn)end)end)hQ.DescendantRemoving:connect(function(dz)if not dz:IsA("GuiObject")then return end;if hP[dz]then hP[dz]:disconnect()hP[dz]=nil end;wait()iu()end)hQ.Changed:connect(function(hn)if hn=="AbsoluteSize"then if not hL or not hK then return end;iu()ib()end end)return hQ,hR end;b.CreateScrollingFrame=function(iy,iz)local g3=Instance.new("Frame")g3.Name="ScrollingFrame"g3.BackgroundTransparency=1;g3.Size=UDim2.new(1,0,1,0)local h7=Instance.new("ImageButton")h7.Name="ScrollUpButton"h7.BackgroundTransparency=1;h7.Image="rbxasset://textures/ui/scrollbuttonUp.png"h7.Size=UDim2.new(0,17,0,17)local h8=Instance.new("ImageButton")h8.Name="ScrollDownButton"h8.BackgroundTransparency=1;h8.Image="rbxasset://textures/ui/scrollbuttonDown.png"h8.Size=UDim2.new(0,17,0,17)local hi=Instance.new("ImageButton")hi.Name="ScrollBar"hi.Image="rbxasset://textures/ui/scrollbar.png"hi.BackgroundTransparency=1;hi.Size=UDim2.new(0,18,0,150)local scrollStamp=0;local iA=Instance.new("ImageButton")iA.Image="https://www.roblox.com/asset/?id=61367186"iA.Size=UDim2.new(1,0,0,16)iA.BackgroundTransparency=1;iA.Name="ScrollDrag"iA.Active=true;iA.Parent=hi;local h_=Instance.new("ImageButton")h_.Active=false;h_.Size=UDim2.new(1.5,0,1.5,0)h_.AutoButtonColor=false;h_.BackgroundTransparency=1;h_.Name="mouseDrag"h_.Position=UDim2.new(-0.25,0,-0.25,0)h_.ZIndex=10;local gr="simple"if iz and tostring(iz)then gr=iz end;local iB=1;local iC=0;local iD=0;local iE=function()iD=0;local hs={}if iy then for p,bb in ipairs(iy)do if bb.Parent==g3 then table.insert(hs,bb)end end else local d9=g3:GetChildren()if d9 then for p,bb in ipairs(d9)do if bb:IsA("GuiObject")then table.insert(hs,bb)end end end end;if#hs==0 then h7.Active=false;h8.Active=false;iA.Active=false;iB=1;return end;if iB>#hs then iB=#hs end;if iB<1 then iB=1 end;local iF=g3.AbsoluteSize.Y;local iG=g3.AbsoluteSize.Y;local iH=g3.AbsoluteSize.X;local iI=0;local iJ=0;local iK=true;local iL=0;local dy=#hs;local iM=0;dy=iB;while dy<=#hs and iL<iF do iI=iI+hs[dy].AbsoluteSize.X;if iI>=iH then iL=iL+iM;iM=0;iI=hs[dy].AbsoluteSize.X end;if hs[dy].AbsoluteSize.Y>iM then iM=hs[dy].AbsoluteSize.Y end;dy=dy+1 end;iL=iL+iM;iM=0;dy=iB-1;iI=0;while iL+iM<iF and dy>=1 do iI=iI+hs[dy].AbsoluteSize.X;iJ=iJ+1;if iI>=iH then iC=iJ-1;iJ=0;iI=hs[dy].AbsoluteSize.X;if iL+iM<=iF then iL=iL+iM;if iB<=iC then iB=1;break else iB=iB-iC end;iM=0 else break end end;if hs[dy].AbsoluteSize.Y>iM then iM=hs[dy].AbsoluteSize.Y end;dy=dy-1 end;if dy==0 and iL+iM<=iF then iB=1 end;iI=0;iJ=0;iK=true;local iN=0;local iO,iP=0;if hs[1]then iP=math.ceil(math.floor(math.fmod(iF,hs[1].AbsoluteSize.X))/2)iO=math.ceil(math.floor(math.fmod(iH,hs[1].AbsoluteSize.Y))/2)end;for p,bb in ipairs(hs)do if p<iB then bb.Visible=false else if iG<0 then bb.Visible=false else if iK then iJ=iJ+1 end;if iI+bb.AbsoluteSize.X>=iH then if iK then iC=iJ-1;iK=false end;iI=0;iG=iG-bb.AbsoluteSize.Y end;bb.Position=UDim2.new(bb.Position.X.Scale,iI+iO,0,iF-iG+iP)iI=iI+bb.AbsoluteSize.X;bb.Visible=iG-bb.AbsoluteSize.Y>=0;if bb.Visible then iD=iD+1 end;iN=bb.AbsoluteSize end end end;h7.Active=iB>1;if iN==0 then h8.Active=false else h8.Active=iG-iN.Y<0 end;iA.Active=#hs>iD;iA.Visible=iA.Active end;local iQ=function()local hs={}iD=0;if iy then for p,bb in ipairs(iy)do if bb.Parent==g3 then table.insert(hs,bb)end end else local d9=g3:GetChildren()if d9 then for p,bb in ipairs(d9)do if bb:IsA("GuiObject")then table.insert(hs,bb)end end end end;if#hs==0 then h7.Active=false;h8.Active=false;iA.Active=false;iB=1;return end;if iB>#hs then iB=#hs end;local hu=g3.AbsoluteSize.Y;local hv=g3.AbsoluteSize.Y;local iL=0;local dy=#hs;while iL<hu and dy>=1 do if dy>=iB then iL=iL+hs[dy].AbsoluteSize.Y else if iL+hs[dy].AbsoluteSize.Y<=hu then iL=iL+hs[dy].AbsoluteSize.Y;if iB<=1 then iB=1;break else iB=iB-1 end else break end end;dy=dy-1 end;dy=iB;for p,bb in ipairs(hs)do if p<iB then bb.Visible=false else if hv<0 then bb.Visible=false else bb.Position=UDim2.new(bb.Position.X.Scale,bb.Position.X.Offset,0,hu-hv)hv=hv-bb.AbsoluteSize.Y;if hv>=0 then bb.Visible=true;iD=iD+1 else bb.Visible=false end end end end;h7.Active=iB>1;h8.Active=hv<0;iA.Active=#hs>iD;iA.Visible=iA.Active end;local iR=function()local hs=0;local d9=g3:GetChildren()if d9 then for p,bb in ipairs(d9)do if bb:IsA("GuiObject")then hs=hs+1 end end end;if not iA.Parent then return end;local iS=iA.Parent.AbsoluteSize.y*1/(hs-iD+1)if iS<16 then iS=16 end;iA.Size=UDim2.new(iA.Size.X.Scale,iA.Size.X.Offset,iA.Size.Y.Scale,iS)local iT=(iB-1)/(hs-iD)if iT>1 then iT=1 elseif iT<0 then iT=0 end;local iU=0;if iT~=0 then iU=iT*hi.AbsoluteSize.y-iT*iA.AbsoluteSize.y end;iA.Position=UDim2.new(iA.Position.X.Scale,iA.Position.X.Offset,iA.Position.Y.Scale,iU)end;local iV=false;local hy=function()if iV then return end;iV=true;wait()local cy,iW=nil;if gr=="grid"then cy,iW=pcall(function()iE()end)elseif gr=="simple"then cy,iW=pcall(function()iQ()end)end;if not cy then print(iW)end;iR()iV=false end;local ii=function()iB=iB-iC;if iB<1 then iB=1 end;hy(nil)end;local ik=function()iB=iB+iC;hy(nil)end;local hh=function(il)if h7.Active then scrollStamp=tick()local im=scrollStamp;local hN;hN=h_.MouseButton1Up:connect(function()scrollStamp=tick()h_.Parent=nil;hN:disconnect()end)h_.Parent=g0(hi)ii()wait(0.2)local b=tick()local io=0.1;while scrollStamp==im do ii()if il and il>iA.AbsolutePosition.y then break end;if not h7.Active then break end;if tick()-b>5 then io=0 elseif tick()-b>2 then io=0.06 end;wait(io)end end end;local hg=function(il)if h8.Active then scrollStamp=tick()local im=scrollStamp;local ip;ip=h_.MouseButton1Up:connect(function()scrollStamp=tick()h_.Parent=nil;ip:disconnect()end)h_.Parent=g0(hi)ik()wait(0.2)local b=tick()local io=0.1;while scrollStamp==im do ik()if il and il<iA.AbsolutePosition.y+iA.AbsoluteSize.x then break end;if not h8.Active then break end;if tick()-b>5 then io=0 elseif tick()-b>2 then io=0.06 end;wait(io)end end end;local N=0;iA.MouseButton1Down:connect(function(M,N)if iA.Active then scrollStamp=tick()local iq=N-iA.AbsolutePosition.y;local hM;local hN;hM=h_.MouseMoved:connect(function(M,N)local iX=hi.AbsolutePosition.y;local iY=hi.AbsoluteSize.y;local iZ=iA.AbsoluteSize.y;local i_=iX+iY-iZ;N=N-iq;N=N<iX and iX or N>i_ and i_ or N;N=N-iX;local hs=0;local d9=g3:GetChildren()if d9 then for p,bb in ipairs(d9)do if bb:IsA("GuiObject")then hs=hs+1 end end end;local j0=N/(iY-iZ)local j1=iC;local j2=hs-(iD-1)local j3=math.floor(j0*j2+0.5)+j1;if j3<iB then j1=-j1 end;if j3<1 then j3=1 end;iB=j3;hy(nil)end)hN=h_.MouseButton1Up:connect(function()scrollStamp=tick()h_.Parent=nil;hM:disconnect()hM=nil;hN:disconnect()drag=nil end)h_.Parent=g0(hi)end end)local h9=0;h7.MouseButton1Down:connect(function()hh()end)h7.MouseButton1Up:connect(function()scrollStamp=tick()end)h8.MouseButton1Up:connect(function()scrollStamp=tick()end)h8.MouseButton1Down:connect(function()hg()end)hi.MouseButton1Up:connect(function()scrollStamp=tick()end)hi.MouseButton1Down:connect(function(M,N)if N>iA.AbsoluteSize.y+iA.AbsolutePosition.y then hg(N)elseif N<iA.AbsolutePosition.y then hh(N)end end)g3.ChildAdded:connect(function()hy(nil)end)g3.ChildRemoved:connect(function()hy(nil)end)g3.Changed:connect(function(hn)if hn=="AbsoluteSize"then hy(nil)end end)g3.AncestryChanged:connect(function()hy(nil)end)return g3,h7,h8,hy,hi end;local function j4(j5,j6,j7)if j5>j6 then return j5 end;local j8=j5;while j5<=j6 do local j9=j5+math.floor((j6-j5)/2)if j7(j9)and(j8==nil or j8<j9)then j8=j9;j5=j9+1 else j6=j9-1 end end;return j8 end;local function ja(j5,j6,j7)if j5>j6 then return j5 end;local jb=j6;while j5<=j6 do local j9=j5+math.floor((j6-j5)/2)if j7(j9)and(jb==nil or jb>j9)then jb=j9;j6=j9-1 else j5=j9+1 end end;return jb end;local function jc(dz)while dz~=nil do if dz:IsA("ScreenGui")or dz:IsA("BillboardGui")then return dz end;dz=dz.Parent end;return nil end;b.AutoTruncateTextObject=function(jd)local gN=jd.Text;local je=jd:Clone()je.Name="Full"..jd.Name;je.BorderSizePixel=0;je.BackgroundTransparency=0;je.Text=gN;je.TextXAlignment=Enum.TextXAlignment.Center;je.Position=UDim2.new(0,-3,0,0)je.Size=UDim2.new(0,100,1,0)je.Visible=false;je.Parent=jd;local jf=nil;local jg=nil;local jh=nil;local ji=function()if jc(jd)==nil then return end;jd.Text=gN;if jd.TextFits then if jg then jg:disconnect()jg=nil end;if jh then jh:disconnect()jh=nil end else local jj=string.len(gN)jd.Text=gN.."~"local jk=j4(0,jj,function(dy)if dy==0 then jd.Text="~"else jd.Text=string.sub(gN,1,dy).."~"end;return jd.TextFits end)jf=string.sub(gN,1,jk).."~"jd.Text=jf;if not je.TextFits then je.Size=UDim2.new(0,10000,1,0)end;local jl=ja(jd.AbsoluteSize.X,je.AbsoluteSize.X,function(size)je.Size=UDim2.new(0,size,1,0)return je.TextFits end)je.Size=UDim2.new(0,jl+6,1,0)if jg==nil then jg=jd.MouseEnter:connect(function()je.ZIndex=jd.ZIndex+1;je.Visible=true end)end;if jh==nil then jh=jd.MouseLeave:connect(function()je.Visible=false end)end end end;jd.AncestryChanged:connect(ji)jd.Changed:connect(function(hn)if hn=="AbsoluteSize"then ji()end end)ji()local function jm(jn)gN=jn;je.Text=gN;ji()end;return jd,jm end;local function jo(jp,jq,jr,js)if jp then jp.Visible=false;if jr.Visible==false then jr.Size=jp.Size;jr.Position=jp.Position end else if jr.Visible==false then jr.Size=UDim2.new(0.0,50,0.0,50)jr.Position=UDim2.new(0.5,-25,0.5,-25)end end;jr.Visible=true;js.Value=nil;local jt,ju;if jq then jq.Visible=true;jt=jq.Size;ju=jq.Position;jq.Visible=false else jt=UDim2.new(0.0,50,0.0,50)ju=UDim2.new(0.5,-25,0.5,-25)end;jr:TweenSizeAndPosition(jt,ju,Enum.EasingDirection.InOut,Enum.EasingStyle.Quad,0.3,true,function(jv)if jv==Enum.TweenStatus.Completed then jr.Visible=false;if jq then jq.Visible=true;js.Value=jq end end end)end;b.CreateTutorial=function(jw,jx,jy)local g3=Instance.new("Frame")g3.Name="Tutorial-"..jw;g3.BackgroundTransparency=1;g3.Size=UDim2.new(0.6,0,0.6,0)g3.Position=UDim2.new(0.2,0,0.2,0)local jr=Instance.new("Frame")jr.Name="TransitionFrame"jr.Style=Enum.FrameStyle.RobloxRound;jr.Size=UDim2.new(0.6,0,0.6,0)jr.Position=UDim2.new(0.2,0,0.2,0)jr.Visible=false;jr.Parent=g3;local js=Instance.new("ObjectValue")js.Name="CurrentTutorialPage"js.Value=nil;js.Parent=g3;local jz=Instance.new("BoolValue")jz.Name="Buttons"jz.Value=jy;jz.Parent=g3;local jA=Instance.new("Frame")jA.Name="Pages"jA.BackgroundTransparency=1;jA.Size=UDim2.new(1,0,1,0)jA.Parent=g3;local function jB()local jC=nil;local d9=jA:GetChildren()if d9 then for p,bb in ipairs(d9)do if bb.Visible then if jC then bb.Visible=false else jC=bb end end end end;return jC end;local jD=function(jE)if jE or UserSettings().GameSettings:GetTutorialState(jx)==false then print("Showing tutorial-",jx)local jF=jB()local jG=jA:FindFirstChild("TutorialPage1")if jG then jo(jF,jG,jr,js)else error("Could not find TutorialPage1")end end end;local jH=function()local jF=jB()if jF then jo(jF,nil,jr,js)end;UserSettings().GameSettings:SetTutorialState(jx,true)end;local jI=function(jJ)local jK=jA:FindFirstChild("TutorialPage"..jJ)local jF=jB()jo(jF,jK,jr,js)end;return g3,jD,jH,jI end;local function jL(jw,jM,jN,jO)local g3=Instance.new("Frame")g3.Name="TutorialPage"g3.Style=Enum.FrameStyle.RobloxRound;g3.Size=UDim2.new(0.6,0,0.6,0)g3.Position=UDim2.new(0.2,0,0.2,0)g3.Visible=false;local jP=Instance.new("TextLabel")jP.Name="Header"jP.Text=jw;jP.BackgroundTransparency=1;jP.FontSize=Enum.FontSize.Size24;jP.Font=Enum.Font.ArialBold;jP.TextColor3=Color3.new(1,1,1)jP.TextXAlignment=Enum.TextXAlignment.Center;jP.TextWrap=true;jP.Size=UDim2.new(1,-55,0,22)jP.Position=UDim2.new(0,0,0,0)jP.Parent=g3;local jQ=Instance.new("ImageButton")jQ.Name="SkipButton"jQ.AutoButtonColor=false;jQ.BackgroundTransparency=1;jQ.Image="rbxasset://textures/ui/closeButton.png"jQ.MouseButton1Click:connect(function()jN()end)jQ.MouseEnter:connect(function()jQ.Image="rbxasset://textures/ui/closeButton_dn.png"end)jQ.MouseLeave:connect(function()jQ.Image="rbxasset://textures/ui/closeButton.png"end)jQ.Size=UDim2.new(0,25,0,25)jQ.Position=UDim2.new(1,-25,0,0)jQ.Parent=g3;if jO then local jR=Instance.new("TextButton")jR.Name="DoneButton"jR.Style=Enum.ButtonStyle.RobloxButtonDefault;jR.Text="Done"jR.TextColor3=Color3.new(1,1,1)jR.Font=Enum.Font.ArialBold;jR.FontSize=Enum.FontSize.Size18;jR.Size=UDim2.new(0,100,0,50)jR.Position=UDim2.new(0.5,-50,1,-50)if jN then jR.MouseButton1Click:connect(function()jN()end)end;jR.Parent=g3 end;local jS=Instance.new("Frame")jS.Name="ContentFrame"jS.BackgroundTransparency=1;jS.Position=UDim2.new(0,0,0,25)jS.Parent=g3;local jT=Instance.new("TextButton")jT.Name="NextButton"jT.Text="Next"jT.TextColor3=Color3.new(1,1,1)jT.Font=Enum.Font.Arial;jT.FontSize=Enum.FontSize.Size18;jT.Style=Enum.ButtonStyle.RobloxButtonDefault;jT.Size=UDim2.new(0,80,0,32)jT.Position=UDim2.new(0.5,5,1,-32)jT.Active=false;jT.Visible=false;jT.Parent=g3;local jU=Instance.new("TextButton")jU.Name="PrevButton"jU.Text="Previous"jU.TextColor3=Color3.new(1,1,1)jU.Font=Enum.Font.Arial;jU.FontSize=Enum.FontSize.Size18;jU.Style=Enum.ButtonStyle.RobloxButton;jU.Size=UDim2.new(0,80,0,32)jU.Position=UDim2.new(0.5,-85,1,-32)jU.Active=false;jU.Visible=false;jU.Parent=g3;if jO then jS.Size=UDim2.new(1,0,1,-75)else jS.Size=UDim2.new(1,0,1,-22)end;local jV=nil;local function jW()if g3.Visible and g3.Parent then local jX=math.min(g3.Parent.AbsoluteSize.X,g3.Parent.AbsoluteSize.Y)jM(200,jX)end end;g3.Changed:connect(function(hn)if hn=="Parent"then if jV~=nil then jV:disconnect()jV=nil end;if g3.Parent and g3.Parent:IsA("GuiObject")then jV=g3.Parent.Changed:connect(function(jY)if jY=="AbsoluteSize"then wait()jW()end end)jW()end end;if hn=="Visible"then jW()end end)return g3,jS end;b.CreateTextTutorialPage=function(jw,gN,jZ)local g3=nil;local j_=nil;local jd=Instance.new("TextLabel")jd.BackgroundTransparency=1;jd.TextColor3=Color3.new(1,1,1)jd.Text=gN;jd.TextWrap=true;jd.TextXAlignment=Enum.TextXAlignment.Left;jd.TextYAlignment=Enum.TextYAlignment.Center;jd.Font=Enum.Font.Arial;jd.FontSize=Enum.FontSize.Size14;jd.Size=UDim2.new(1,0,1,0)local function jM(k0,jX)size=ja(k0,jX,function(size)g3.Size=UDim2.new(0,size,0,size)return jd.TextFits end)g3.Size=UDim2.new(0,size,0,size)g3.Position=UDim2.new(0.5,-size/2,0.5,-size/2)end;g3,j_=jL(jw,jM,jZ)jd.Parent=j_;return g3 end;b.CreateImageTutorialPage=function(jw,k1,M,N,jZ,jO)local g3=nil;local j_=nil;local k2=Instance.new("ImageLabel")k2.BackgroundTransparency=1;k2.Image=k1;k2.Size=UDim2.new(0,M,0,N)k2.Position=UDim2.new(0.5,-M/2,0.5,-N/2)local function jM(k0,jX)size=ja(k0,jX,function(size)return size>=M and size>=N end)if size>=M and size>=N then k2.Size=UDim2.new(0,M,0,N)k2.Position=UDim2.new(0.5,-M/2,0.5,-N/2)else if M>N then k2.Size=UDim2.new(1,0,N/M,0)k2.Position=UDim2.new(0,0,0.5-N/M/2,0)else k2.Size=UDim2.new(M/N,0,1,0)k2.Position=UDim2.new(0.5-M/N/2,0,0,0)end end;size=size+50;g3.Size=UDim2.new(0,size,0,size)g3.Position=UDim2.new(0.5,-size/2,0.5,-size/2)end;g3,j_=jL(jw,jM,jZ,jO)k2.Parent=j_;return g3 end;b.AddTutorialPage=function(k3,k4)local jr=k3.TransitionFrame;local js=k3.CurrentTutorialPage;if not k3.Buttons.Value then k4.NextButton.Parent=nil;k4.PrevButton.Parent=nil end;local d9=k3.Pages:GetChildren()if d9 and#d9>0 then k4.Name="TutorialPage"..#d9+1;local k5=d9[#d9]if not k5:IsA("GuiObject")then error("All elements under Pages must be GuiObjects")end;if k3.Buttons.Value then if k5.NextButton.Active then error("NextButton already Active on previousPage, please only add pages with RbxGui.AddTutorialPage function")end;k5.NextButton.MouseButton1Click:connect(function()jo(k5,k4,jr,js)end)k5.NextButton.Active=true;k5.NextButton.Visible=true;if k4.PrevButton.Active then error("PrevButton already Active on tutorialPage, please only add pages with RbxGui.AddTutorialPage function")end;k4.PrevButton.MouseButton1Click:connect(function()jo(k4,k5,jr,js)end)k4.PrevButton.Active=true;k4.PrevButton.Visible=true end;k4.Parent=k3.Pages else k4.Name="TutorialPage1"k4.Parent=k3.Pages end end;b.CreateSetPanel=function(k6,k7,k8,size,gw,k9,de)if not k6 then error("CreateSetPanel: userIdsForSets (first arg) is nil, should be a table of number ids")end;if type(k6)~="table"and type(k6)~="userdata"then error("CreateSetPanel: userIdsForSets (first arg) is of type "..type(k6)..", should be of type table or userdata")end;if not k7 then error("CreateSetPanel: objectSelected (second arg) is nil, should be a callback function!")end;if type(k7)~="function"then error("CreateSetPanel: objectSelected (second arg) is of type "..type(k7)..", should be of type function!")end;if k8 and type(k8)~="function"then error("CreateSetPanel: dialogClosed (third arg) is of type "..type(k8)..", should be of type function!")end;if k9==nil then k9=false end;local ka=1;local kb={}local kc={}local kd=nil;local ke=nil;local kf="NegX"local kg="None"local kh,ki=nil;local kj={}kj.CurrentCategory=nil;kj.Category={}local kk={}local kl=nil;local km=64;local kn=km;local ko=nil;local kp=nil;local kq=game:GetService("ContentProvider").BaseUrl:lower()local kr=string.gsub(kq,"www","assetgame")if de then kp=kr.."Game/Tools/ThumbnailAsset.ashx?fmt=png&wd=420&ht=420&assetversionid="ko=kr.."Game/Tools/ThumbnailAsset.ashx?fmt=png&wd=75&ht=75&assetversionid="else kp=kr.."Game/Tools/ThumbnailAsset.ashx?fmt=png&wd=420&ht=420&aid="ko=kr.."Game/Tools/ThumbnailAsset.ashx?fmt=png&wd=75&ht=75&aid="end;local function ks(aG,ba)local d9=aG:GetChildren()for p=1,#d9 do if d9[p]:IsA("GuiObject")then d9[p].ZIndex=ba end;ks(d9[p],ba)end end;local kt=nil;local ku={"Block","Vertical Ramp","Corner Wedge","Inverse Corner Wedge","Horizontal Ramp","Auto-Wedge"}local kv={}for p=1,#ku do kv[ku[p]]=p-1 end;kv[ku[#ku]]=6;local function kw()local kx={"NegX","X","NegY","Y","NegZ","Z"}local ky={"None","Small","Medium","Strong","Max"}local kz=Instance.new("Frame")kz.Name="WaterFrame"kz.Style=Enum.FrameStyle.RobloxSquare;kz.Size=UDim2.new(0,150,0,110)kz.Visible=false;local kA=Instance.new("TextLabel")kA.Name="WaterForceLabel"kA.BackgroundTransparency=1;kA.Size=UDim2.new(1,0,0,12)kA.Font=Enum.Font.ArialBold;kA.FontSize=Enum.FontSize.Size12;kA.TextColor3=Color3.new(1,1,1)kA.TextXAlignment=Enum.TextXAlignment.Left;kA.Text="Water Force"kA.Parent=kz;local kB=kA:Clone()kB.Name="WaterForceDirectionLabel"kB.Text="Water Force Direction"kB.Position=UDim2.new(0,0,0,50)kB.Parent=kz;local ki=Instance.new("BindableEvent",kz)ki.Name="WaterTypeChangedEvent"local kC=function(kD)kf=kD;ki:Fire({kg,kf})end;local kE=function(kF)kg=kF;ki:Fire({kg,kf})end;local kG,kH=b.CreateDropDownMenu(kx,kC)kG.Size=UDim2.new(1,0,0,25)kG.Position=UDim2.new(0,0,1,3)kH("NegX")kG.Parent=kB;local kI,kJ=b.CreateDropDownMenu(ky,kE)kJ("None")kI.Size=UDim2.new(1,0,0,25)kI.Position=UDim2.new(0,0,1,3)kI.Parent=kA;return kz,ki end;local function kK()local ke=Instance.new("ScreenGui")ke.Name="SetGui"local kL=Instance.new("Frame")kL.Name="SetPanel"kL.Active=true;kL.BackgroundTransparency=1;if gw then kL.Position=gw else kL.Position=UDim2.new(0.2,29,0.1,24)end;if size then kL.Size=size else kL.Size=UDim2.new(0.6,-58,0.64,0)end;kL.Style=Enum.FrameStyle.RobloxRound;kL.ZIndex=6;kL.Parent=ke;local kM=Instance.new("Frame")kM.Name="ItemPreview"kM.BackgroundTransparency=1;kM.Position=UDim2.new(0.8,5,0.085,0)kM.Size=UDim2.new(0.21,0,0.9,0)kM.ZIndex=6;kM.Parent=kL;local kN=Instance.new("Frame")kN.Name="TextPanel"kN.BackgroundTransparency=1;kN.Position=UDim2.new(0,0,0.45,0)kN.Size=UDim2.new(1,0,0.55,0)kN.ZIndex=6;kN.Parent=kM;local kO=Instance.new("TextLabel")kO.Name="RolloverText"kO.BackgroundTransparency=1;kO.Size=UDim2.new(1,0,0,48)kO.ZIndex=6;kO.Font=Enum.Font.ArialBold;kO.FontSize=Enum.FontSize.Size24;kO.Text=""kO.TextColor3=Color3.new(1,1,1)kO.TextWrap=true;kO.TextXAlignment=Enum.TextXAlignment.Left;kO.TextYAlignment=Enum.TextYAlignment.Top;kO.Parent=kN;local kP=Instance.new("ImageLabel")kP.Name="LargePreview"kP.BackgroundTransparency=1;kP.Image=""kP.Size=UDim2.new(1,0,0,170)kP.ZIndex=6;kP.Parent=kM;local kQ=Instance.new("Frame")kQ.Name="Sets"kQ.BackgroundTransparency=1;kQ.Position=UDim2.new(0,0,0,5)kQ.Size=UDim2.new(0.23,0,1,-5)kQ.ZIndex=6;kQ.Parent=kL;local e3=Instance.new("Frame")e3.Name="Line"e3.BackgroundColor3=Color3.new(1,1,1)e3.BackgroundTransparency=0.7;e3.BorderSizePixel=0;e3.Position=UDim2.new(1,-3,0.06,0)e3.Size=UDim2.new(0,3,0.9,0)e3.ZIndex=6;e3.Parent=kQ;local kR,hR=b.CreateTrueScrollingFrame()kR.Size=UDim2.new(1,-6,0.94,0)kR.Position=UDim2.new(0,0,0.06,0)kR.BackgroundTransparency=1;kR.Name="SetsLists"kR.ZIndex=6;kR.Parent=kQ;ks(hR,7)local kS=Instance.new("TextLabel")kS.Name="SetsHeader"kS.BackgroundTransparency=1;kS.Size=UDim2.new(0,47,0,24)kS.ZIndex=6;kS.Font=Enum.Font.ArialBold;kS.FontSize=Enum.FontSize.Size24;kS.Text="Sets"kS.TextColor3=Color3.new(1,1,1)kS.TextXAlignment=Enum.TextXAlignment.Left;kS.TextYAlignment=Enum.TextYAlignment.Top;kS.Parent=kQ;local kT=Instance.new("TextButton")kT.Name="CancelButton"kT.Position=UDim2.new(1,-32,0,-2)kT.Size=UDim2.new(0,34,0,34)kT.Style=Enum.ButtonStyle.RobloxButtonDefault;kT.ZIndex=6;kT.Text=""kT.Modal=true;kT.Parent=kL;local kU=Instance.new("ImageLabel")kU.Name="CancelImage"kU.BackgroundTransparency=1;kU.Image="https://www.roblox.com/asset/?id=54135717"kU.Position=UDim2.new(0,-2,0,-2)kU.Size=UDim2.new(0,16,0,16)kU.ZIndex=6;kU.Parent=kT;return ke end;local function kV(gN)local kW=Instance.new("TextButton")if gN then kW.Text=gN else kW.Text=""end;kW.AutoButtonColor=false;kW.BackgroundTransparency=1;kW.BackgroundColor3=Color3.new(1,1,1)kW.BorderSizePixel=0;kW.Size=UDim2.new(1,-5,0,18)kW.ZIndex=6;kW.Visible=false;kW.Font=Enum.Font.Arial;kW.FontSize=Enum.FontSize.Size18;kW.TextColor3=Color3.new(1,1,1)kW.TextXAlignment=Enum.TextXAlignment.Left;return kW end;local function kX(jw,kY,kZ,p,i)local g9=kV(jw)g9.Text=jw;g9.Name="SetButton"g9.Visible=true;local k_=Instance.new("IntValue")k_.Name="SetId"k_.Value=kY;k_.Parent=g9;local l0=Instance.new("StringValue")l0.Name="SetName"l0.Value=jw;l0.Parent=g9;return g9 end;local function l1(kQ)local l2={}local l3=0;for p=1,#kQ do if not k9 and kQ[p].Name=="Beta"then l3=l3+1 else l2[p-l3]=kX(kQ[p].Name,kQ[p].CategoryId,kQ[p].ImageAssetId,p-l3,#kQ)end end;return l2 end;local function jM()wait()local kM=ke.SetPanel.ItemPreview;kM.LargePreview.Size=UDim2.new(1,0,0,kM.AbsoluteSize.X)kM.LargePreview.Position=UDim2.new(0.5,-kM.LargePreview.AbsoluteSize.X/2,0,0)kM.TextPanel.Position=UDim2.new(0,0,0,kM.LargePreview.AbsoluteSize.Y)kM.TextPanel.Size=UDim2.new(1,0,0,kM.AbsoluteSize.Y-kM.LargePreview.AbsoluteSize.Y)end;local function l4()local l5=Instance.new("Frame")l5.Name="InsertAssetButtonExample"l5.Position=UDim2.new(0,128,0,64)l5.Size=UDim2.new(0,64,0,64)l5.BackgroundTransparency=1;l5.ZIndex=6;l5.Visible=false;local dc=Instance.new("IntValue")dc.Name="AssetId"dc.Value=0;dc.Parent=l5;local l6=Instance.new("StringValue")l6.Name="AssetName"l6.Value=""l6.Parent=l5;local g9=Instance.new("TextButton")g9.Name="Button"g9.Text=""g9.Style=Enum.ButtonStyle.RobloxButton;g9.Position=UDim2.new(0.025,0,0.025,0)g9.Size=UDim2.new(0.95,0,0.95,0)g9.ZIndex=6;g9.Parent=l5;local l7=Instance.new("ImageLabel")l7.Name="ButtonImage"l7.Image=""l7.Position=UDim2.new(0,-7,0,-7)l7.Size=UDim2.new(1,14,1,14)l7.BackgroundTransparency=1;l7.ZIndex=7;l7.Parent=g9;local l8=l7:clone()l8.Name="ConfigIcon"l8.Visible=false;l8.Position=UDim2.new(1,-23,1,-24)l8.Size=UDim2.new(0,16,0,16)l8.Image=""l8.ZIndex=6;l8.Parent=l5;return l5 end;local function l9(la)if la:FindFirstChild("AssetId")then delay(0,function()game:GetService("ContentProvider"):Preload(kp..tostring(la.AssetId.Value))ke.SetPanel.ItemPreview.LargePreview.Image=kp..tostring(la.AssetId.Value)end)end;if la:FindFirstChild("AssetName")then ke.SetPanel.ItemPreview.TextPanel.RolloverText.Text=la.AssetName.Value end end;local function lb(lc)if kt then k7(tostring(kt.AssetName.Value),tonumber(kt.AssetId.Value),lc)end end;local function ld(jw,aG)local le=Instance.new("TextButton")le.Name=jw.."Button"le.Font=Enum.Font.ArialBold;le.FontSize=Enum.FontSize.Size14;le.BorderSizePixel=0;le.TextColor3=Color3.new(1,1,1)le.Text=jw;le.TextXAlignment=Enum.TextXAlignment.Left;le.BackgroundTransparency=1;le.ZIndex=aG.ZIndex+1;le.Size=UDim2.new(0,aG.Size.X.Offset-2,0,16)le.Position=UDim2.new(0,1,0,0)le.MouseEnter:connect(function()le.BackgroundTransparency=0;le.TextColor3=Color3.new(0,0,0)end)le.MouseLeave:connect(function()le.BackgroundTransparency=1;le.TextColor3=Color3.new(1,1,1)end)le.MouseButton1Click:connect(function()le.BackgroundTransparency=1;le.TextColor3=Color3.new(1,1,1)if le.Parent and le.Parent:IsA("GuiObject")then le.Parent.Visible=false end;lb(kv[le.Text])end)return le end;local function lf(lg)local lh=Instance.new("Frame")lh.Name="TerrainDropDown"lh.BackgroundColor3=Color3.new(0,0,0)lh.BorderColor3=Color3.new(1,0,0)lh.Size=UDim2.new(0,200,0,0)lh.Visible=false;lh.ZIndex=lg;lh.Parent=ke;for p=1,#ku do local li=ld(ku[p],lh)li.Position=UDim2.new(0,1,0,(p-1)*li.Size.Y.Offset)li.Parent=lh;lh.Size=UDim2.new(0,200,0,lh.Size.Y.Offset+li.Size.Y.Offset)end;lh.MouseLeave:connect(function()lh.Visible=false end)end;local function lj(aG)local lk=Instance.new("ImageButton")lk.Name="DropDownButton"lk.Image="https://www.roblox.com/asset/?id=67581509"lk.BackgroundTransparency=1;lk.Size=UDim2.new(0,16,0,16)lk.Position=UDim2.new(1,-24,0,6)lk.ZIndex=aG.ZIndex+2;lk.Parent=aG;if not ke:FindFirstChild("TerrainDropDown")then lf(8)end;lk.MouseButton1Click:connect(function()ke.TerrainDropDown.Visible=true;ke.TerrainDropDown.Position=UDim2.new(0,aG.AbsolutePosition.X,0,aG.AbsolutePosition.Y)kt=aG end)end;local function ll()local la=l4()la.Name="InsertAssetButton"la.Visible=true;if kj.Category[kj.CurrentCategory].SetName=="High Scalability"then lj(la)end;local lm=nil;local ln=la.MouseEnter:connect(function()lm=la;delay(0.1,function()if lm==la then l9(la)end end)end)return la,ln end;local function lo(columns)local M=0;local N=0;for p=1,#kb do kb[p].Position=UDim2.new(0,km*M,0,kn*N)M=M+1;if M>=columns then M=0;N=N+1 end end end;local function lp(lq,lr,jw,dc)if lr then lq.AssetName.Value=jw;lq.AssetId.Value=dc;local ls=ko..dc;if ls~=lq.Button.ButtonImage.Image then delay(0,function()game:GetService("ContentProvider"):Preload(ko..dc)if lq:findFirstChild("Button")then lq.Button.ButtonImage.Image=ko..dc end end)end;table.insert(kc,lq.Button.MouseButton1Click:connect(function()local lt=jw=="Water"and kj.Category[kj.CurrentCategory].SetName=="High Scalability"kh.Visible=lt;if lt then k7(jw,tonumber(dc),nil)else k7(jw,tonumber(dc))end end))lq.Visible=true else lq.Visible=false end end;local function lu(ke,rows,columns)local lv=rows*columns;if ka>#kd then return end;local lw=ka;local lx=0;for p=1,lv+1 do if ka>=#kd+1 then break end;local ly;kb[ka],ly=ll()table.insert(kc,ly)kb[ka].Parent=ke.SetPanel.ItemsFrame;ka=ka+1 end;lo(columns)local lz=lw;for ba=lw,ka do if kb[ba]then if kd[ba]then if kd[ba].Name=="Water"then if kj.Category[kj.CurrentCategory].SetName=="High Scalability"then kb[ba]:FindFirstChild("DropDownButton",true):Destroy()end end;local dc;if de then dc=kd[ba].AssetVersionId else dc=kd[ba].AssetId end;lp(kb[ba],true,kd[ba].Name,dc)else break end else break end;lz=ba end end;local function lA()kj.Category[kj.CurrentCategory].Index=0;rows=7;columns=math.floor(ke.SetPanel.ItemsFrame.AbsoluteSize.X/km)kd=kj.Category[kj.CurrentCategory].Contents;if kd then for p=1,#kb do kb[p]:remove()end;for p=1,#kc do if kc[p]then kc[p]:disconnect()end end;kc={}kb={}ka=1;lu(ke,rows,columns)end end;local function lB(g9,l0,kY,lC)if g9 and kj.Category[kj.CurrentCategory]~=nil then if g9~=kj.Category[kj.CurrentCategory].Button then kj.Category[kj.CurrentCategory].Button=g9;if kk[kY]==nil then kk[kY]=game:GetService("InsertService"):GetCollection(kY)end;kj.Category[kj.CurrentCategory].Contents=kk[kY]kj.Category[kj.CurrentCategory].SetName=l0;kj.Category[kj.CurrentCategory].SetId=kY end;lA()end end;local function lD(g4,jK)if g4~=kj.CurrentCategory then if kj.CurrentCategory then for F,g9 in pairs(kj.CurrentCategory)do g9.Visible=false end end;kj.CurrentCategory=g4;if kj.Category[kj.CurrentCategory]==nil then kj.Category[kj.CurrentCategory]={}if#g4>0 then lB(g4[1],g4[1].SetName.Value,g4[1].SetId.Value,0)end else kj.Category[kj.CurrentCategory].Button=nil;lB(kj.Category[kj.CurrentCategory].ButtonFrame,kj.Category[kj.CurrentCategory].SetName,kj.Category[kj.CurrentCategory].SetId,kj.Category[kj.CurrentCategory].Index)end end end;local function lE(lF)lD(lF,0)end;local function lG()local l2=ke.SetPanel.Sets.SetsLists:GetChildren()for p=1,#l2 do if l2[p]:IsA("TextButton")then l2[p].Selected=false;l2[p].BackgroundTransparency=1;l2[p].TextColor3=Color3.new(1,1,1)l2[p].BackgroundColor3=Color3.new(1,1,1)end end end;local function lH()local lI=0;for p=1,#kl do local g9=kl[p]g9.Visible=true;g9.Position=UDim2.new(0,5,0,lI*g9.Size.Y.Offset)g9.Parent=ke.SetPanel.Sets.SetsLists;if p==1 then g9.Selected=true;g9.BackgroundColor3=Color3.new(0,204/255,0)g9.TextColor3=Color3.new(0,0,0)g9.BackgroundTransparency=0 end;g9.MouseEnter:connect(function()if not g9.Selected then g9.BackgroundTransparency=0;g9.TextColor3=Color3.new(0,0,0)end end)g9.MouseLeave:connect(function()if not g9.Selected then g9.BackgroundTransparency=1;g9.TextColor3=Color3.new(1,1,1)end end)g9.MouseButton1Click:connect(function()lG()g9.Selected=not g9.Selected;g9.BackgroundColor3=Color3.new(0,204/255,0)g9.TextColor3=Color3.new(0,0,0)g9.BackgroundTransparency=0;lB(g9,g9.Text,kl[p].SetId.Value,0)end)lI=lI+1 end;local g4=ke.SetPanel.Sets.SetsLists:GetChildren()if g4 then for p=1,#g4 do if g4[p]:IsA("TextButton")then lB(g4[p],g4[p].Text,kl[p].SetId.Value,0)lE(kl)break end end end end;ke=kK()kh,ki=kw()kh.Position=UDim2.new(0,55,0,0)kh.Parent=ke;ke.Changed:connect(function(hn)if hn=="AbsoluteSize"then jM()lA()end end)local lJ,hR=b.CreateTrueScrollingFrame()lJ.Size=UDim2.new(0.54,0,0.85,0)lJ.Position=UDim2.new(0.24,0,0.085,0)lJ.Name="ItemsFrame"lJ.ZIndex=6;lJ.Parent=ke.SetPanel;lJ.BackgroundTransparency=1;ks(hR,7)hR.Parent=ke.SetPanel;hR.Position=UDim2.new(0.76,5,0,0)local lK=false;hR.ScrollBottom.Changed:connect(function(hn)if hR.ScrollBottom.Value==true then if lK then return end;lK=true;lu(ke,rows,columns)lK=false end end)local lL={}for hB=1,#k6 do local lM=game:GetService("InsertService"):GetUserSets(k6[hB])if lM and#lM>2 then for lF=3,#lM do if lM[lF].Name=="High Scalability"then table.insert(lL,1,lM[lF])else table.insert(lL,lM[lF])end end end end;if lL then kl=l1(lL)end;rows=math.floor(ke.SetPanel.ItemsFrame.AbsoluteSize.Y/kn)columns=math.floor(ke.SetPanel.ItemsFrame.AbsoluteSize.X/km)lH()ke.SetPanel.CancelButton.MouseButton1Click:connect(function()ke.SetPanel.Visible=false;if k8 then k8()end end)local lN=function(lr)if lr then ke.SetPanel.Visible=true else ke.SetPanel.Visible=false end end;local lO=function()if ke then if ke:FindFirstChild("SetPanel")then return ke.SetPanel.Visible end end;return false end;return ke,lN,lO,ki end;b.CreateTerrainMaterialSelector=function(size,gw)local lP=Instance.new("BindableEvent")lP.Name="TerrainMaterialSelectionChanged"local lQ=nil;local g3=Instance.new("Frame")g3.Name="TerrainMaterialSelector"if size then g3.Size=size else g3.Size=UDim2.new(0,245,0,230)end;if gw then g3.Position=gw end;g3.BorderSizePixel=0;g3.BackgroundColor3=Color3.new(0,0,0)g3.Active=true;lP.Parent=g3;local lR=true;local lS={}local lT={"Grass","Sand","Brick","Granite","Asphalt","Iron","Aluminum","Gold","Plank","Log","Gravel","Cinder Block","Stone Wall","Concrete","Plastic (red)","Plastic (blue)"}if lR then table.insert(lT,"Water")end;local lU=1;function getEnumFromName(lV)if lV=="Grass"then return 1 end;if lV=="Sand"then return 2 end;if lV=="Erase"then return 0 end;if lV=="Brick"then return 3 end;if lV=="Granite"then return 4 end;if lV=="Asphalt"then return 5 end;if lV=="Iron"then return 6 end;if lV=="Aluminum"then return 7 end;if lV=="Gold"then return 8 end;if lV=="Plank"then return 9 end;if lV=="Log"then return 10 end;if lV=="Gravel"then return 11 end;if lV=="Cinder Block"then return 12 end;if lV=="Stone Wall"then return 13 end;if lV=="Concrete"then return 14 end;if lV=="Plastic (red)"then return 15 end;if lV=="Plastic (blue)"then return 16 end;if lV=="Water"then return 17 end end;function getNameFromEnum(lV)if lV==Enum.CellMaterial.Grass or lV==1 then return"Grass"end;if lV==Enum.CellMaterial.Sand or lV==2 then return"Sand"end;if lV==Enum.CellMaterial.Empty or lV==0 then return"Erase"end;if lV==Enum.CellMaterial.Brick or lV==3 then return"Brick"end;if lV==Enum.CellMaterial.Granite or lV==4 then return"Granite"end;if lV==Enum.CellMaterial.Asphalt or lV==5 then return"Asphalt"end;if lV==Enum.CellMaterial.Iron or lV==6 then return"Iron"end;if lV==Enum.CellMaterial.Aluminum or lV==7 then return"Aluminum"end;if lV==Enum.CellMaterial.Gold or lV==8 then return"Gold"end;if lV==Enum.CellMaterial.WoodPlank or lV==9 then return"Plank"end;if lV==Enum.CellMaterial.WoodLog or lV==10 then return"Log"end;if lV==Enum.CellMaterial.Gravel or lV==11 then return"Gravel"end;if lV==Enum.CellMaterial.CinderBlock or lV==12 then return"Cinder Block"end;if lV==Enum.CellMaterial.MossyStone or lV==13 then return"Stone Wall"end;if lV==Enum.CellMaterial.Cement or lV==14 then return"Concrete"end;if lV==Enum.CellMaterial.RedPlastic or lV==15 then return"Plastic (red)"end;if lV==Enum.CellMaterial.BluePlastic or lV==16 then return"Plastic (blue)"end;if lR then if lV==Enum.CellMaterial.Water or lV==17 then return"Water"end end end;local function lW(lV)lU=getEnumFromName(lV)lP:Fire(lU)end;for p,l in pairs(lT)do lS[l]={}if l=="Grass"then lS[l].Regular="https://www.roblox.com/asset/?id=56563112"elseif l=="Sand"then lS[l].Regular="https://www.roblox.com/asset/?id=62356652"elseif l=="Brick"then lS[l].Regular="https://www.roblox.com/asset/?id=65961537"elseif l=="Granite"then lS[l].Regular="https://www.roblox.com/asset/?id=67532153"elseif l=="Asphalt"then lS[l].Regular="https://www.roblox.com/asset/?id=67532038"elseif l=="Iron"then lS[l].Regular="https://www.roblox.com/asset/?id=67532093"elseif l=="Aluminum"then lS[l].Regular="https://www.roblox.com/asset/?id=67531995"elseif l=="Gold"then lS[l].Regular="https://www.roblox.com/asset/?id=67532118"elseif l=="Plastic (red)"then lS[l].Regular="https://www.roblox.com/asset/?id=67531848"elseif l=="Plastic (blue)"then lS[l].Regular="https://www.roblox.com/asset/?id=67531924"elseif l=="Plank"then lS[l].Regular="https://www.roblox.com/asset/?id=67532015"elseif l=="Log"then lS[l].Regular="https://www.roblox.com/asset/?id=67532051"elseif l=="Gravel"then lS[l].Regular="https://www.roblox.com/asset/?id=67532206"elseif l=="Cinder Block"then lS[l].Regular="https://www.roblox.com/asset/?id=67532103"elseif l=="Stone Wall"then lS[l].Regular="https://www.roblox.com/asset/?id=67531804"elseif l=="Concrete"then lS[l].Regular="https://www.roblox.com/asset/?id=67532059"elseif l=="Water"then lS[l].Regular="https://www.roblox.com/asset/?id=81407474"else lS[l].Regular="https://www.roblox.com/asset/?id=66887593"end end;local lJ,hh,hg,lX=b.CreateScrollingFrame(nil,"grid")lJ.Size=UDim2.new(0.85,0,1,0)lJ.Position=UDim2.new(0,0,0,0)lJ.Parent=g3;hh.Parent=g3;hh.Visible=true;hh.Position=UDim2.new(1,-19,0,0)hg.Parent=g3;hg.Visible=true;hg.Position=UDim2.new(1,-19,1,-17)local function lY(lZ,l_)lW(l_)lZ.BackgroundTransparency=0;lQ.BackgroundTransparency=1;lQ=lZ end;local function m0(jw)local lZ=Instance.new("TextButton")lZ.Text=""lZ.Size=UDim2.new(0,32,0,32)lZ.BackgroundColor3=Color3.new(1,1,1)lZ.BorderSizePixel=0;lZ.BackgroundTransparency=1;lZ.AutoButtonColor=false;lZ.Name=tostring(jw)local m1=Instance.new("ImageButton")m1.AutoButtonColor=false;m1.BackgroundTransparency=1;m1.Size=UDim2.new(0,30,0,30)m1.Position=UDim2.new(0,1,0,1)m1.Name=tostring(jw)m1.Parent=lZ;m1.Image=lS[jw].Regular;local m2=Instance.new("NumberValue")m2.Name="EnumType"m2.Parent=lZ;m2.Value=0;m1.MouseEnter:connect(function()lZ.BackgroundTransparency=0 end)m1.MouseLeave:connect(function()if lQ~=lZ then lZ.BackgroundTransparency=1 end end)m1.MouseButton1Click:connect(function()if lQ~=lZ then lY(lZ,tostring(jw))end end)return lZ end;for p=1,#lT do local m1=m0(lT[p])if lT[p]=="Grass"then lQ=m1;m1.BackgroundTransparency=0 end;m1.Parent=lJ end;local m3=function(m4)if not m4 then return end;if lU==m4 then return end;local m5=getNameFromEnum(m4)local g4=lJ:GetChildren()for p=1,#g4 do if g4[p].Name=="Plastic (blue)"and m5=="Plastic (blue)"then lY(g4[p],m5)return end;if g4[p].Name=="Plastic (red)"and m5=="Plastic (red)"then lY(g4[p],m5)return end;if string.find(g4[p].Name,m5)then lY(g4[p],m5)return end end end;g3.Changed:connect(function(hn)if hn=="AbsoluteSize"then lX()end end)lX()return g3,lP,m3 end;b.CreateLoadingFrame=function(jw,size,gw)game:GetService("ContentProvider"):Preload("https://www.roblox.com/asset/?id=35238053")local m6=Instance.new("Frame")m6.Name="LoadingFrame"m6.Style=Enum.FrameStyle.RobloxRound;if size then m6.Size=size else m6.Size=UDim2.new(0,300,0,160)end;if gw then m6.Position=gw else m6.Position=UDim2.new(0.5,-150,0.5,-80)end;local m7=Instance.new("Frame")m7.Name="LoadingBar"m7.BackgroundColor3=Color3.new(0,0,0)m7.BorderColor3=Color3.new(79/255,79/255,79/255)m7.Position=UDim2.new(0,0,0,41)m7.Size=UDim2.new(1,0,0,30)m7.Parent=m6;local m8=Instance.new("ImageLabel")m8.Name="LoadingGreenBar"m8.Image="https://www.roblox.com/asset/?id=35238053"m8.Position=UDim2.new(0,0,0,0)m8.Size=UDim2.new(0,0,1,0)m8.Visible=false;m8.Parent=m7;local m9=Instance.new("TextLabel")m9.Name="LoadingPercent"m9.BackgroundTransparency=1;m9.Position=UDim2.new(0,0,1,0)m9.Size=UDim2.new(1,0,0,14)m9.Font=Enum.Font.Arial;m9.Text="0%"m9.FontSize=Enum.FontSize.Size14;m9.TextColor3=Color3.new(1,1,1)m9.Parent=m7;local kT=Instance.new("TextButton")kT.Name="CancelButton"kT.Position=UDim2.new(0.5,-60,1,-40)kT.Size=UDim2.new(0,120,0,40)kT.Font=Enum.Font.Arial;kT.FontSize=Enum.FontSize.Size18;kT.TextColor3=Color3.new(1,1,1)kT.Text="Cancel"kT.Style=Enum.ButtonStyle.RobloxButton;kT.Parent=m6;local ma=Instance.new("TextLabel")ma.Name="loadingName"ma.BackgroundTransparency=1;ma.Size=UDim2.new(1,0,0,18)ma.Position=UDim2.new(0,0,0,2)ma.Font=Enum.Font.Arial;ma.Text=jw;ma.TextColor3=Color3.new(1,1,1)ma.TextStrokeTransparency=1;ma.FontSize=Enum.FontSize.Size18;ma.Parent=m6;local mb=Instance.new("BindableEvent")mb.Name="CancelButtonClicked"mb.Parent=kT;kT.MouseButton1Click:connect(function()mb:Fire()end)local mc=function(md,me,mf)if md and type(md)~="number"then error("updateLoadingGuiPercent expects number as argument, got",type(md),"instead")end;local jt=nil;if md<0 then jt=UDim2.new(0,0,1,0)elseif md>1 then jt=UDim2.new(1,0,1,0)else jt=UDim2.new(md,0,1,0)end;if me then if not mf then error("updateLoadingGuiPercent is set to tween new percentage, but got no tween time length! Please pass this in as third argument")end;if jt.X.Scale>0 then m8.Visible=true;m8:TweenSize(jt,Enum.EasingDirection.Out,Enum.EasingStyle.Quad,mf,true)else m8:TweenSize(jt,Enum.EasingDirection.Out,Enum.EasingStyle.Quad,mf,true,function()if jt.X.Scale<0 then m8.Visible=false end end)end else m8.Size=jt;m8.Visible=jt.X.Scale>0 end end;m8.Changed:connect(function(hn)if hn=="Size"then m9.Text=tostring(math.ceil(m8.Size.X.Scale*100)).."%"end end)return m6,mc,mb end;b.CreatePluginFrame=function(jw,size,gw,mg,aG)local function mh(size,gw,gN,mi,jw,aG)local g9=Instance.new("TextButton",aG)g9.AutoButtonColor=false;g9.Name=jw;g9.BackgroundTransparency=1;g9.Position=gw;g9.Size=size;g9.Font=Enum.Font.ArialBold;g9.FontSize=mi;g9.Text=gN;g9.TextColor3=Color3.new(1,1,1)g9.BorderSizePixel=0;g9.BackgroundColor3=Color3.new(20/255,20/255,20/255)g9.MouseEnter:connect(function()if g9.Selected then return end;g9.BackgroundTransparency=0 end)g9.MouseLeave:connect(function()if g9.Selected then return end;g9.BackgroundTransparency=1 end)return g9 end;local mj=Instance.new("Frame",aG)mj.Name=tostring(jw).."DragBar"mj.BackgroundColor3=Color3.new(39/255,39/255,39/255)mj.BorderColor3=Color3.new(0,0,0)if size then mj.Size=UDim2.new(size.X.Scale,size.X.Offset,0,20)+UDim2.new(0,20,0,0)else mj.Size=UDim2.new(0,183,0,20)end;if gw then mj.Position=gw end;mj.Active=true;mj.Draggable=true;mj.MouseEnter:connect(function()mj.BackgroundColor3=Color3.new(49/255,49/255,49/255)end)mj.MouseLeave:connect(function()mj.BackgroundColor3=Color3.new(39/255,39/255,39/255)end)local mk=Instance.new("TextLabel",mj)mk.Name="BarNameLabel"mk.Text=" "..tostring(jw)mk.TextColor3=Color3.new(1,1,1)mk.TextStrokeTransparency=0;mk.Size=UDim2.new(1,0,1,0)mk.Font=Enum.Font.ArialBold;mk.FontSize=Enum.FontSize.Size18;mk.TextXAlignment=Enum.TextXAlignment.Left;mk.BackgroundTransparency=1;local ml=mh(UDim2.new(0,15,0,17),UDim2.new(1,-16,0.5,-8),"X",Enum.FontSize.Size14,"CloseButton",mj)local mm=Instance.new("BindableEvent")mm.Name="CloseEvent"mm.Parent=ml;ml.MouseButton1Click:connect(function()mm:Fire()ml.BackgroundTransparency=1 end)local mn=mh(UDim2.new(0,15,0,17),UDim2.new(1,-51,0.5,-8),"?",Enum.FontSize.Size14,"HelpButton",mj)local mo=Instance.new("Frame",mj)mo.Name="HelpFrame"mo.BackgroundColor3=Color3.new(0,0,0)mo.Size=UDim2.new(0,300,0,552)mo.Position=UDim2.new(1,5,0,0)mo.Active=true;mo.BorderSizePixel=0;mo.Visible=false;mn.MouseButton1Click:connect(function()mo.Visible=not mo.Visible;if mo.Visible then mn.Selected=true;mn.BackgroundTransparency=0;local mp=g0(mo)if mp then if mo.AbsolutePosition.X+mo.AbsoluteSize.X>mp.AbsoluteSize.X then mo.Position=UDim2.new(0,-5-mo.AbsoluteSize.X,0,0)else mo.Position=UDim2.new(1,5,0,0)end else mo.Position=UDim2.new(1,5,0,0)end else mn.Selected=false;mn.BackgroundTransparency=1 end end)local mq=mh(UDim2.new(0,16,0,17),UDim2.new(1,-34,0.5,-8),"-",Enum.FontSize.Size14,"MinimizeButton",mj)mq.TextYAlignment=Enum.TextYAlignment.Top;local mr=Instance.new("Frame",mj)mr.Name="MinimizeFrame"mr.BackgroundColor3=Color3.new(73/255,73/255,73/255)mr.BorderColor3=Color3.new(0,0,0)mr.Position=UDim2.new(0,0,1,0)if size then mr.Size=UDim2.new(size.X.Scale,size.X.Offset,0,50)+UDim2.new(0,20,0,0)else mr.Size=UDim2.new(0,183,0,50)end;mr.Visible=false;local ms=Instance.new("TextButton",mr)ms.Position=UDim2.new(0.5,-50,0.5,-20)ms.Name="MinimizeButton"ms.Size=UDim2.new(0,100,0,40)ms.Style=Enum.ButtonStyle.RobloxButton;ms.Font=Enum.Font.ArialBold;ms.FontSize=Enum.FontSize.Size18;ms.TextColor3=Color3.new(1,1,1)ms.Text="Show"local mt=Instance.new("Frame",mj)mt.Name="SeparatingLine"mt.BackgroundColor3=Color3.new(115/255,115/255,115/255)mt.BorderSizePixel=0;mt.Position=UDim2.new(1,-18,0.5,-7)mt.Size=UDim2.new(0,1,0,14)local mu=mt:clone()mu.Position=UDim2.new(1,-35,0.5,-7)mu.Parent=mj;local mv=Instance.new("Frame",mj)mv.Name="WidgetContainer"mv.BackgroundTransparency=1;mv.Position=UDim2.new(0,0,1,0)mv.BorderColor3=Color3.new(0,0,0)if not mg then mv.BackgroundTransparency=0;mv.BackgroundColor3=Color3.new(72/255,72/255,72/255)end;if size then if mg then mv.Size=size else mv.Size=UDim2.new(0,mj.AbsoluteSize.X,size.Y.Scale,size.Y.Offset)end else if mg then mv.Size=UDim2.new(0,163,0,400)else mv.Size=UDim2.new(0,mj.AbsoluteSize.X,0,400)end end;if gw then mv.Position=gw+UDim2.new(0,0,0,20)end;local g3,dS,mw=nil;if mg then g3,dS=b.CreateTrueScrollingFrame()g3.Size=UDim2.new(1,0,1,0)g3.BackgroundColor3=Color3.new(72/255,72/255,72/255)g3.BorderColor3=Color3.new(0,0,0)g3.Active=true;g3.Parent=mv;dS.Parent=mj;dS.BackgroundColor3=Color3.new(72/255,72/255,72/255)dS.BorderSizePixel=0;dS.BackgroundTransparency=0;dS.Position=UDim2.new(1,-21,1,1)if size then dS.Size=UDim2.new(0,21,size.Y.Scale,size.Y.Offset)else dS.Size=UDim2.new(0,21,0,400)end;dS:FindFirstChild("ScrollDownButton").Position=UDim2.new(0,0,1,-20)local mx=Instance.new("Frame",dS)mx.Name="FakeLine"mx.BorderSizePixel=0;mx.BackgroundColor3=Color3.new(0,0,0)mx.Size=UDim2.new(0,1,1,1)mx.Position=UDim2.new(1,0,0,0)mw=Instance.new("TextButton",mv)mw.ZIndex=2;mw.AutoButtonColor=false;mw.Name="VerticalDragger"mw.BackgroundColor3=Color3.new(50/255,50/255,50/255)mw.BorderColor3=Color3.new(0,0,0)mw.Size=UDim2.new(1,20,0,20)mw.Position=UDim2.new(0,0,1,0)mw.Active=true;mw.Text=""local my=Instance.new("Frame",mw)my.Name="ScrubFrame"my.BackgroundColor3=Color3.new(1,1,1)my.BorderSizePixel=0;my.Position=UDim2.new(0.5,-5,0.5,0)my.Size=UDim2.new(0,10,0,1)my.ZIndex=5;local mz=my:clone()mz.Position=UDim2.new(0.5,-5,0.5,-2)mz.Parent=mw;local mA=my:clone()mA.Position=UDim2.new(0.5,-5,0.5,2)mA.Parent=mw;local go=Instance.new("TextButton",g0(aG))go.Name="AreaSoak"go.Size=UDim2.new(1,0,1,0)go.BackgroundTransparency=1;go.BorderSizePixel=0;go.Text=""go.ZIndex=10;go.Visible=false;go.Active=true;local mB=false;local mC=nil;mw.MouseEnter:connect(function()mw.BackgroundColor3=Color3.new(60/255,60/255,60/255)end)mw.MouseLeave:connect(function()mw.BackgroundColor3=Color3.new(50/255,50/255,50/255)end)mw.MouseButton1Down:connect(function(M,N)mB=true;go.Visible=true;mC=N end)go.MouseButton1Up:connect(function()mB=false;go.Visible=false end)go.MouseMoved:connect(function(M,N)if not mB then return end;local mD=N-mC;if not dS.ScrollDownButton.Visible and mD>0 then return end;if mv.Size.Y.Offset+mD<150 then mv.Size=UDim2.new(mv.Size.X.Scale,mv.Size.X.Offset,mv.Size.Y.Scale,150)dS.Size=UDim2.new(0,21,0,150)return end;mC=N;if mv.Size.Y.Offset+mD>=0 then mv.Size=UDim2.new(mv.Size.X.Scale,mv.Size.X.Offset,mv.Size.Y.Scale,mv.Size.Y.Offset+mD)dS.Size=UDim2.new(0,21,0,dS.Size.Y.Offset+mD)end end)end;local function mE()mr.Visible=not mr.Visible;if mg then g3.Visible=not g3.Visible;mw.Visible=not mw.Visible;dS.Visible=not dS.Visible else mv.Visible=not mv.Visible end;if mr.Visible then mq.Text="+"else mq.Text="-"end end;ms.MouseButton1Click:connect(function()mE()end)mq.MouseButton1Click:connect(function()mE()end)if mg then return mj,g3,mo,mm else return mj,mv,mo,mm end end;b.Help=function(aK)if aK=="CreatePropertyDropDownMenu"or aK==b.CreatePropertyDropDownMenu then return"Function CreatePropertyDropDownMenu.  ".."Arguments: (instance, propertyName, enumType).  ".."Side effect: returns a container with a drop-down-box that is linked to the 'property' field of 'instance' which is of type 'enumType'"end;if aK=="CreateDropDownMenu"or aK==b.CreateDropDownMenu then return"Function CreateDropDownMenu.  ".."Arguments: (items, onItemSelected).  ".."Side effect: Returns 2 results, a container to the gui object and a 'updateSelection' function for external updating.  The container is a drop-down-box created around a list of items"end;if aK=="CreateMessageDialog"or aK==b.CreateMessageDialog then return"Function CreateMessageDialog.  ".."Arguments: (title, message, buttons). ".."Side effect: Returns a gui object of a message box with 'title' and 'message' as passed in.  'buttons' input is an array of Tables contains a 'Text' and 'Function' field for the text/callback of each button"end;if aK=="CreateStyledMessageDialog"or aK==b.CreateStyledMessageDialog then return"Function CreateStyledMessageDialog.  ".."Arguments: (title, message, style, buttons). ".."Side effect: Returns a gui object of a message box with 'title' and 'message' as passed in.  'buttons' input is an array of Tables contains a 'Text' and 'Function' field for the text/callback of each button, 'style' is a string, either Error, Notify or Confirm"end;if aK=="GetFontHeight"or aK==b.GetFontHeight then return"Function GetFontHeight.  ".."Arguments: (font, fontSize). ".."Side effect: returns the size in pixels of the given font + fontSize"end;if aK=="LayoutGuiObjects"or aK==b.LayoutGuiObjects then end;if aK=="CreateScrollingFrame"or aK==b.CreateScrollingFrame then return"Function CreateScrollingFrame.  ".."Arguments: (orderList, style) ".."Side effect: returns 4 objects, (scrollFrame, scrollUpButton, scrollDownButton, recalculateFunction).  'scrollFrame' can be filled with GuiObjects.  It will lay them out and allow scrollUpButton/scrollDownButton to interact with them.  Orderlist is optional (and specifies the order to layout the children.  Without orderlist, it uses the children order. style is also optional, and allows for a 'grid' styling if style is passed 'grid' as a string.  recalculateFunction can be called when a relayout is needed (when orderList changes)"end;if aK=="CreateTrueScrollingFrame"or aK==b.CreateTrueScrollingFrame then return"Function CreateTrueScrollingFrame.  ".."Arguments: (nil) ".."Side effect: returns 2 objects, (scrollFrame, controlFrame).  'scrollFrame' can be filled with GuiObjects, and they will be clipped if not inside the frame's bounds. controlFrame has children scrollup and scrolldown, as well as a slider.  controlFrame can be parented to any guiobject and it will readjust itself to fit."end;if aK=="AutoTruncateTextObject"or aK==b.AutoTruncateTextObject then return"Function AutoTruncateTextObject.  ".."Arguments: (textLabel) ".."Side effect: returns 2 objects, (textLabel, changeText).  The 'textLabel' input is modified to automatically truncate text (with ellipsis), if it gets too small to fit.  'changeText' is a function that can be used to change the text, it takes 1 string as an argument"end;if aK=="CreateSlider"or aK==b.CreateSlider then return"Function CreateSlider.  ".."Arguments: (steps, width, position) ".."Side effect: returns 2 objects, (sliderGui, sliderPosition).  The 'steps' argument specifies how many different positions the slider can hold along the bar.  'width' specifies in pixels how wide the bar should be (modifiable afterwards if desired). 'position' argument should be a UDim2 for slider positioning. 'sliderPosition' is an IntValue whose current .Value specifies the specific step the slider is currently on."end;if aK=="CreateSliderNew"or aK==b.CreateSliderNew then return"Function CreateSliderNew.  ".."Arguments: (steps, width, position) ".."Side effect: returns 2 objects, (sliderGui, sliderPosition).  The 'steps' argument specifies how many different positions the slider can hold along the bar.  'width' specifies in pixels how wide the bar should be (modifiable afterwards if desired). 'position' argument should be a UDim2 for slider positioning. 'sliderPosition' is an IntValue whose current .Value specifies the specific step the slider is currently on."end;if aK=="CreateLoadingFrame"or aK==b.CreateLoadingFrame then return"Function CreateLoadingFrame.  ".."Arguments: (name, size, position) ".."Side effect: Creates a gui that can be manipulated to show progress for a particular action.  Name appears above the loading bar, and size and position are udim2 values (both size and position are optional arguments).  Returns 3 arguments, the first being the gui created. The second being updateLoadingGuiPercent, which is a bindable function.  This function takes one argument (two optionally), which should be a number between 0 and 1, representing the percentage the loading gui should be at.  The second argument to this function is a boolean value that if set to true will tween the current percentage value to the new percentage value, therefore our third argument is how long this tween should take. Our third returned argument is a BindableEvent, that when fired means that someone clicked the cancel button on the dialog."end;if aK=="CreateTerrainMaterialSelector"or aK==b.CreateTerrainMaterialSelector then return"Function CreateTerrainMaterialSelector.  ".."Arguments: (size, position) ".."Side effect: Size and position are UDim2 values that specifies the selector's size and position.  Both size and position are optional arguments. This method returns 3 objects (terrainSelectorGui, terrainSelected, forceTerrainSelection).  terrainSelectorGui is just the gui object that we generate with this function, parent it as you like. TerrainSelected is a BindableEvent that is fired whenever a new terrain type is selected in the gui.  ForceTerrainSelection is a function that takes an argument of Enum.CellMaterial and will force the gui to show that material as currently selected."end end;return b end end
-------[[ holy shit is that freddy fazbear? har har har har har🐻🐻 "bites of 87"]]-------

game:GetService("StarterGui"):SetCore("SendNotification", { 
	Title =  "Omni god of erradication Fixed";
	Text = "Thanks for using my script bro!!!1";
	Icon = "rbxthumb://type=Asset&id=idk what to put in decal :/&w=150&h=150"})
Duration = 3; 


local char = game.Players.LocalPlayer.Character
for i,v in pairs(char:children()) do
    if v:IsA("Accessory") then
        v:Destroy()
    end
end
local aura = Instance.new("ParticleEmitter",game.Players.LocalPlayer.Character.Torso)
aura.Size = NumberSequence.new(0)
aura.Lifetime = NumberRange.new(0)
aura.LightEmission = 0
local jun = game.Players.LocalPlayer
local Player=game.Players.LocalPlayer
repeat wait()
until Player
local Char=Player.Character
repeat wait()
until Char
local CurrentEffects={}
local CurrentDamages={}
local Human=Char.Humanoid
local LArm=Char["Left Arm"]
local RArm=Char["Right Arm"]
local LLeg=Char["Left Leg"]
local RLeg=Char["Right Leg"]
local Torso=Char.Torso
local RS=Torso["Right Shoulder"]
local LS=Torso["Left Shoulder"]
local RH=Torso["Right Hip"]
local LH=Torso["Left Hip"]
local Head=Char.Head
local Neck=Torso.Neck
local RootPart=Char.HumanoidRootPart
local RootJoint=RootPart.RootJoint
local equipped=false
local Debounce=false
local Anim="Idle"
local chat = game:GetService("Chat")
local Mouse=Player:GetMouse()
local Lighting=game.Lighting
local cf=CFrame.new
local v3=Vector3.new
local c3=Color3.new
local it=Instance.new
local angles=CFrame.Angles
local rad=math.rad
local ran=math.random
local huge=math.huge
local attacking=false
local attacktype=1
local Portalling=false
local p = game.Players.LocalPlayer
local char = p.Character
local mouse = p:GetMouse()
local larm = char["Left Arm"]
local rarm = char["Right Arm"]
local lleg = char["Left Leg"]
local rleg = char["Right Leg"]
local hed = char.Head
local symbolimg = "rbxassetid://349165228"
local torso = char.Torso
local hum = char.Humanoid
local cam = game.Workspace.CurrentCamera
local root = char.HumanoidRootPart
local deb = false
local shot = 0
local debris=game:service"Debris"
local l = game:GetService("Lighting")
local rs = game:GetService("RunService").RenderStepped
local eColors = {"Royal purple", "Really black"}
necko=cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
LHC0=cf(-1,-1,0,-0,-0,-1,0,1,0,1,0,0)
LSC0=cf(-1, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
RHC0=cf(1,-1,0,0,0,1,0,1,0,-1,-0,-0)
RSC0=cf(1, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
ROOTC0 = cf(0, 0, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
r=game:service'RunService'.RenderStepped
--------------------------------------------------------------------



local Transforming = true
Human.WalkSpeed = 0


Player:ClearCharacterAppearance()
wait(0.1)
Player.Character.Head.BrickColor = BrickColor.new("Really black")
Player.Character.Torso.BrickColor = BrickColor.new("Really black")
Player.Character["Right Arm"].BrickColor = BrickColor.new("Really black")
Player.Character["Right Leg"].BrickColor = BrickColor.new("Really black")
Player.Character["Left Leg"].BrickColor = BrickColor.new("Really black")
Player.Character["Left Arm"].BrickColor = BrickColor.new("Really black")
Player.Character.Head.face:Destroy()







local selectionBoxOfTorso = Instance.new("SelectionBox",Torso)
selectionBoxOfTorso.Adornee = Torso
selectionBoxOfTorso.Color = BrickColor.new("Lime green")
selectionBoxOfTorso.LineThickness = 0.01
selectionBoxOfTorso.Transparency = 0
	
local selectionBoxOfRightArm = Instance.new("SelectionBox",Char["Right Arm"])
selectionBoxOfRightArm.Adornee = Char["Right Arm"]
selectionBoxOfRightArm.Color = BrickColor.new("Lime green")
selectionBoxOfRightArm.LineThickness = 0.01
selectionBoxOfRightArm.Transparency = 0
	
local selectionBoxOfRightLeg = Instance.new("SelectionBox",Char["Right Leg"])
selectionBoxOfRightLeg.Adornee = Char["Right Leg"]
selectionBoxOfRightLeg.Color = BrickColor.new("Lime green")
selectionBoxOfRightLeg.LineThickness = 0.01
selectionBoxOfRightLeg.Transparency = 0

local selectionBoxOfLeftArm = Instance.new("SelectionBox",Char["Left Arm"])
selectionBoxOfLeftArm.Adornee = Char["Left Arm"]
selectionBoxOfLeftArm.Color = BrickColor.new("Lime green")
selectionBoxOfLeftArm.LineThickness = 0.01
selectionBoxOfLeftArm.Transparency = 0

local selectionBoxOfLeftLeg = Instance.new("SelectionBox",Char["Left Leg"])
selectionBoxOfLeftLeg.Adornee = Char["Left Leg"]
selectionBoxOfLeftLeg.Color = BrickColor.new("Lime green")
selectionBoxOfLeftLeg.LineThickness = 0.01
selectionBoxOfLeftLeg.Transparency = 0


LightOnBody = Instance.new("PointLight", Head)
LightOnBody.Brightness = 3000
LightOnBody.Range = 20
LightOnBody.Color = Color3.new(0, 225, 0)



local p = game.Players.LocalPlayer
local char = p.Character
GodOfDestruction = Instance.new("Model",game.Players.LocalPlayer.Character.Torso)
GodOfDestruction.Name = "GodOfDestruction"
humanoid = Instance.new("Humanoid",game.Players.LocalPlayer.Character.Torso.GodOfDestruction)
shirt = Instance.new("Shirt",game.Players.LocalPlayer.Character.Torso.GodOfDestruction)
shirt.Name = "Shirt"
pants = Instance.new("Pants",game.Players.LocalPlayer.Character.Torso.GodOfDestruction)
pants.Name = "Pants"
torso = Instance.new("Part",game.Players.LocalPlayer.Character.Torso.GodOfDestruction)
torso.Size = Vector3.new(2,2,1)
torso.Rotation = Vector3.new(0,180,0)
torso.Position = Vector3.new(0,4,0)
torso.BrickColor = BrickColor.new("Really black")
torso.Name = "Torso"
head = Instance.new("Part",game.Players.LocalPlayer.Character.Torso.GodOfDestruction)
head.Size = Vector3.new(1.25,1.25,1.25)
head.BrickColor = BrickColor.new("Really black")
head.Name = "Head"
head.Position = Vector3.new(0,6,0)
headmesh = Instance.new("SpecialMesh",head)
headmesh.MeshType = "Head"
larm = Instance.new("Part",game.Players.LocalPlayer.Character.Torso.GodOfDestruction)
larm.Size = Vector3.new(1,2,1)
larm.BrickColor = BrickColor.new("Really black")
larm.Name = "Left Arm"
larm.Position = Vector3.new(-2,4,0)
rarm = Instance.new("Part",game.Players.LocalPlayer.Character.Torso.GodOfDestruction)
rarm.Size = Vector3.new(1,2,1)
rarm.BrickColor = BrickColor.new("Really black")
rarm.Name = "Right Arm"
rarm.Position = Vector3.new(2,4,0)
lleg = Instance.new("Part",game.Players.LocalPlayer.Character.Torso.GodOfDestruction)
lleg.Size = Vector3.new(1,2,1)
lleg.Name = "Left Leg"
lleg.Position = Vector3.new(1,2,0)
lleg.BrickColor = BrickColor.new("Really black")
rleg = Instance.new("Part",game.Players.LocalPlayer.Character.Torso.GodOfDestruction)
rleg.Size = Vector3.new(1,2,1)
rleg.Name = "Right Leg"
rleg.Position = Vector3.new(-1,2,0)
rleg.BrickColor = BrickColor.new("Really black")
headweld = Instance.new("Weld",game.Players.LocalPlayer.Character.Torso.GodOfDestruction.Head)
headweld.Part0 = game.Players.LocalPlayer.Character.Torso.GodOfDestruction.Head
headweld.Part1 = torso
headweld.C0 = CFrame.new(0, -1.5, 0)
larmweld = Instance.new("Weld",game.Players.LocalPlayer.Character.Torso.GodOfDestruction.Torso)
larmweld.Part0 = game.Players.LocalPlayer.Character.Torso.GodOfDestruction.Torso
larmweld.Part1 = larm
larmweld.C0 = CFrame.new(1.5, 0, 0)
rarmweld = Instance.new("Weld",game.Players.LocalPlayer.Character.Torso.GodOfDestruction.Torso)
rarmweld.Part0 = game.Players.LocalPlayer.Character.Torso.GodOfDestruction.Torso
rarmweld.Part1 = rarm
rarmweld.C0 = CFrame.new(-1.5, 0, 0)
rlegweld = Instance.new("Weld",game.Players.LocalPlayer.Character.Torso.GodOfDestruction.Torso)
rlegweld.Part0 = game.Players.LocalPlayer.Character.Torso.GodOfDestruction.Torso
rlegweld.Part1 = rleg
rlegweld.C0 = CFrame.new(-0.5, -2, 0)
llegweld = Instance.new("Weld",game.Players.LocalPlayer.Character.Torso.GodOfDestruction.Torso)
llegweld.Part0 = game.Players.LocalPlayer.Character.Torso.GodOfDestruction.Torso
llegweld.Part1 = lleg
llegweld.C0 = CFrame.new(0.5, -2, 0)
npctoplayer = Instance.new("Weld",game.Players.LocalPlayer.Character.Torso)
npctoplayer.Part0 = game.Players.LocalPlayer.Character.Torso
npctoplayer.Part1 = torso
npctoplayer.C0 = CFrame.new(0, 0, -10) * CFrame.Angles(math.rad(0), math.rad(180), math.rad(0))


local selectionBoxOfTorso = Instance.new("SelectionBox",torso)
selectionBoxOfTorso.Adornee = torso
selectionBoxOfTorso.Color = BrickColor.new("Really red")
selectionBoxOfTorso.LineThickness = 0.01
selectionBoxOfTorso.Transparency = 0
	
local selectionBoxOfRightArm = Instance.new("SelectionBox",rarm)
selectionBoxOfRightArm.Adornee =rarm
selectionBoxOfRightArm.Color = BrickColor.new("Really red")
selectionBoxOfRightArm.LineThickness = 0.01
selectionBoxOfRightArm.Transparency = 0
	
local selectionBoxOfRightLeg = Instance.new("SelectionBox",rleg)
selectionBoxOfRightLeg.Adornee =rleg
selectionBoxOfRightLeg.Color = BrickColor.new("Really red")
selectionBoxOfRightLeg.LineThickness = 0.01
selectionBoxOfRightLeg.Transparency = 0

local selectionBoxOfLeftArm = Instance.new("SelectionBox",larm)
selectionBoxOfLeftArm.Adornee = larm
selectionBoxOfLeftArm.Color = BrickColor.new("Really red")
selectionBoxOfLeftArm.LineThickness = 0.01
selectionBoxOfLeftArm.Transparency = 0

local selectionBoxOfLeftLeg = Instance.new("SelectionBox",lleg)
selectionBoxOfLeftLeg.Adornee = lleg
selectionBoxOfLeftLeg.Color = BrickColor.new("Really red")
selectionBoxOfLeftLeg.LineThickness = 0.01
selectionBoxOfLeftLeg.Transparency = 0


LightOnBody = Instance.new("PointLight", head)
LightOnBody.Brightness = 3000
LightOnBody.Range = 20
LightOnBody.Color = Color3.new(225, 0, 0)








CV="Pastel blue"
	
local txt = Instance.new("BillboardGui", GodOfDestruction)
txt.Adornee = head
txt.Name = "_status"
txt.Size = UDim2.new(2, 0, 1.2, 0)
txt.StudsOffset = Vector3.new(-9, 8, 0)
local text = Instance.new("TextLabel", txt)
text.Size = UDim2.new(10, 0, 7, 0)
text.FontSize = "Size24"
text.TextScaled = true
text.TextTransparency = 0
text.BackgroundTransparency = 1 
text.TextTransparency = 0
text.TextStrokeTransparency = 0
text.Font = "Antique"
text.TextStrokeColor3 = Color3.new(225,0,0)

v=Instance.new("Part")
v.Name = "ColorBrick"
v.Parent=Player.Character
v.FormFactor="Symmetric"
v.Anchored=true
v.CanCollide=false
v.BottomSurface="Smooth"
v.TopSurface="Smooth"
v.Size=Vector3.new(10,5,3)
v.Transparency=1
v.CFrame=Char.Torso.CFrame
v.BrickColor=BrickColor.new(CV)
v.Transparency=1
text.TextColor3 = Color3.new(0,0,0)
v.Shape="Block"
text.Text = "God Of Destruction"




local ChatService = game:GetService("Chat")

ChatService:Chat(Head, "If we fuse...we will become the omni god..", "Green")
wait(4)
ChatService:Chat(Head, "No one will be able to stop us...", "Green")
wait(4)
ChatService:Chat(Head, "Lets do this...", "Green")


local close = -10
for i=1,10 do
	wait(0.2)
	close = close + 1
	npctoplayer.C0 = CFrame.new(0, 0, close) * CFrame.Angles(math.rad(0), math.rad(180), math.rad(0))
end
game.Players.LocalPlayer.Character.Torso.GodOfDestruction:Destroy()
wait(0.1)
local p = game.Players.LocalPlayer
local char = p.Character
local mouse = p:GetMouse()
local larm = char["Left Arm"]
local rarm = char["Right Arm"]
local lleg = char["Left Leg"]
local rleg = char["Right Leg"]
local hed = char.Head
local torso = char.Torso
local hum = char.Humanoid
local cam = game.Workspace.CurrentCamera
local root = char.HumanoidRootPart
local deb = false
local shot = 0
local debris=game:service"Debris"
local l = game:GetService("Lighting")
local rs = game:GetService("RunService").RenderStepped


Debounces = {
CanAttack = true;
NoIdl = false;
Slashing = false;
Slashed = false;
RPunch = false;
Invisible = false;
RPunched = false;
LPunch = false;
LPunched = false;
}
local Touche = {char.Name, }


function genWeld(a,b)
    local w = Instance.new("Weld",a)
    w.Part0 = a
    w.Part1 = b
    return w
end
function weld(a, b)
    local weld = Instance.new("Weld")
    weld.Name = "W"
    weld.Part0 = a
    weld.Part1 = b
    weld.C0 = a.CFrame:inverse() * b.CFrame
    weld.Parent = a
    return weld;
end
----------------------------------------------------
function Lerp(c1,c2,al)
local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}
local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
for i,v in pairs(com1) do
com1[i] = v+(com2[i]-v)*al
end
return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))
end
----------------------------------------------------
newWeld = function(wp0, wp1, wc0x, wc0y, wc0z)
local wld = Instance.new("Weld", wp1)
wld.Part0 = wp0
wld.Part1 = wp1
wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
end
----------------------------------------------------
function weld5(part0, part1, c0, c1)
    weeld=Instance.new("Weld", part0)
    weeld.Part0=part0
    weeld.Part1=part1
    weeld.C0=c0
    weeld.C1=c1
    return weeld
end
----------------------------------------------------
function HasntTouched(plrname)
local ret = true
for _, v in pairs(Touche) do
if v == plrname then
ret = false
end
end
return ret
end
----------------------------------------------------

newWeld(torso, larm, -1.5, 0.5, 0)
larm.Weld.C1 = CFrame.new(0, 0.5, 0)
newWeld(torso, rarm, 1.5, 0.5, 0)
rarm.Weld.C1 = CFrame.new(0, 0.5, 0)
newWeld(torso, hed, 0, 1.5, 0)
newWeld(torso, lleg, -0.5, -1, 0)
lleg.Weld.C1 = CFrame.new(0, 1, 0)
newWeld(torso, rleg, 0.5, -1, 0)
rleg.Weld.C1 = CFrame.new(0, 1, 0)
newWeld(root, torso, 0, -1, 0)
torso.Weld.C1 = CFrame.new(0, -1, 0)


p = Instance.new("Part")
p.BrickColor = BrickColor.new("Dark indigo")
p.Transparency = 1
TorsoColor = p.BrickColor


local Transforming = true
hum.WalkSpeed = 0




local fx = Instance.new("Part",Torso)
wit = p.BrickColor.Color
wit2 = Color3.new(85,0,127)
local glowz = Instance.new("ParticleEmitter",fx)
glowz.LightEmission = 1
glowz.Texture = "rbxassetid://284205403"
glowz.Color = ColorSequence.new(wit)
glowz.Size = NumberSequence.new(5)
glowz.Speed = NumberRange.new(25,50)
glowz.LockedToPart = false
glowz.Transparency = NumberSequence.new(0.75)
glowz.RotSpeed = NumberRange.new(-2000,2000)
glowz.Lifetime = NumberRange.new(1)
glowz.Rate = 50000
glowz.VelocitySpread = 9001
local glowz2 = Instance.new("ParticleEmitter",fx)
glowz2.LightEmission = 0.5
glowz.Texture = "rbxassetid://284205403"
glowz2.Color = ColorSequence.new(wit2)
glowz2.Size = NumberSequence.new(5)
glowz2.Speed = NumberRange.new(25,50)
glowz2.LockedToPart = false
glowz2.Transparency = NumberSequence.new(0.75)
glowz2.RotSpeed = NumberRange.new(-2000,2000)
glowz2.Lifetime = NumberRange.new(1)
glowz2.Rate = 50000
glowz2.VelocitySpread = 9001
fx.Anchored = true
fx.Material = "Neon"
fx.CanCollide = false
fx.Locked = true
fx.Transparency = 1
fx.Material = "Neon"
fx.Size = Vector3.new(1,1,1)
fx.TopSurface = "SmoothNoOutlines"
fx.BottomSurface = "SmoothNoOutlines"
fx.BrickColor = BrickColor.new("Really black")
fxm = Instance.new("SpecialMesh",fx)
fxm.MeshType = "Sphere"
local sa2 = Instance.new("Sound",Torso)
sa2.SoundId = "rbxassetid://93724183"
sa2.Pitch = 0.5
sa2.Volume = 5
sa2.Looped = false
sa2:Play()
local value = 1
fxm.Scale = Vector3.new(1,1,1)
for i = 1, 20 do rs:wait()
        value = value - 0.05
        fx.Transparency = fx.Transparency - (1/20)
        fx.CFrame = Torso.CFrame
        fxm.Scale = fxm.Scale + Vector3.new(value,value,value)
        rs:wait()
end


selectionBoxOfTorso:Destroy()
selectionBoxOfRightArm:Destroy()
selectionBoxOfRightLeg:Destroy()
selectionBoxOfLeftArm:Destroy()
selectionBoxOfLeftLeg:Destroy()
LightOnBody:Destroy()


local selectionBoxOfTorso = Instance.new("SelectionBox",Torso)
selectionBoxOfTorso.Adornee = Torso
selectionBoxOfTorso.Color = BrickColor.new("Royal purple")
selectionBoxOfTorso.LineThickness = 0.01
selectionBoxOfTorso.Transparency = 0
	
local selectionBoxOfRightArm = Instance.new("SelectionBox",Char["Right Arm"])
selectionBoxOfRightArm.Adornee = Char["Right Arm"]
selectionBoxOfRightArm.Color = BrickColor.new("Royal purple")
selectionBoxOfRightArm.LineThickness = 0.01
selectionBoxOfRightArm.Transparency = 0
	
local selectionBoxOfRightLeg = Instance.new("SelectionBox",Char["Right Leg"])
selectionBoxOfRightLeg.Adornee = Char["Right Leg"]
selectionBoxOfRightLeg.Color = BrickColor.new("Royal purple")
selectionBoxOfRightLeg.LineThickness = 0.01
selectionBoxOfRightLeg.Transparency = 0

local selectionBoxOfLeftArm = Instance.new("SelectionBox",Char["Left Arm"])
selectionBoxOfLeftArm.Adornee = Char["Left Arm"]
selectionBoxOfLeftArm.Color = BrickColor.new("Royal purple")
selectionBoxOfLeftArm.LineThickness = 0.01
selectionBoxOfLeftArm.Transparency = 0

local selectionBoxOfLeftLeg = Instance.new("SelectionBox",Char["Left Leg"])
selectionBoxOfLeftLeg.Adornee = Char["Left Leg"]
selectionBoxOfLeftLeg.Color = BrickColor.new("Royal purple")
selectionBoxOfLeftLeg.LineThickness = 0.01
selectionBoxOfLeftLeg.Transparency = 0




local Orbd = Instance.new("Part", char)
Orbd.Name = "Orbd"
Orbd.Shape = Enum.PartType.Ball
Orbd.CanCollide = false

	Orbd.BrickColor = BrickColor.new("Royal purple")

Orbd.Transparency = 0
Orbd.Material = "Neon"
Orbd.Size = Vector3.new(0.1, 0.1, 0.1)
Orbd.TopSurface = Enum.SurfaceType.Smooth
Orbd.BottomSurface = Enum.SurfaceType.Smooth

local Weld = Instance.new("Weld", Orbd)
Weld.Part0 = char.Head
Weld.Part1 = Orbd
Weld.C1 = CFrame.new(-0.2, -0.2, 0.5)
local glov = Instance.new("PointLight", Orbd)
glov.Brightness = 3000
glov.Range = 20
glov.Color = Color3.new(255, 0, 255)

--------------------------------------------------------
local Orbvc = Instance.new("Part", char)
Orbvc.Name = "Orbvc"
Orbvc.Shape = Enum.PartType.Ball
Orbvc.CanCollide = false

	Orbvc.BrickColor = BrickColor.new("Royal purple")

Orbvc.Transparency = 0
Orbvc.Material = "Neon"
Orbvc.Size = Vector3.new(0.1, 0.1, 0.1)
Orbvc.TopSurface = Enum.SurfaceType.Smooth
Orbvc.BottomSurface = Enum.SurfaceType.Smooth

local Weld = Instance.new("Weld", Orbvc)
Weld.Part0 = char.Head
Weld.Part1 = Orbvc
Weld.C1 = CFrame.new(0.2, -0.2, 0.5)
local glo = Instance.new("PointLight", Orbvc)
glo.Brightness = 3000
glo.Range = 20
glo.Color = Color3.new(255, 0, 255)
----------------------------------------------------










function FindNearestTorso(Position,Distance,SinglePlayer)
    if SinglePlayer then return(SinglePlayer.Torso.CFrame.p -Position).magnitude < Distance end
        local List = {}
        for i,v in pairs(workspace:GetChildren())do
            if v:IsA("Model")then
                if v:findFirstChild("Torso")then
                    if v ~= char then
                        if(v.Torso.Position -Position).magnitude <= Distance then
                            table.insert(List,v)
                        end
                    end
                end
            end
        end
    return List
end




GroundWave1 = function()
	local HandCF = CFrame.new(root.Position - Vector3.new(0,3,0)) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
	local Colors = {"Royal purple", "Really black"}
		local wave = Instance.new("Part", Torso)
		wave.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
		wave.Anchored = true
		wave.CanCollide = false
		wave.Locked = true
		wave.Size = Vector3.new(1, 1, 1)
		wave.TopSurface = "Smooth"
		wave.BottomSurface = "Smooth"
		wave.Transparency = 0.35
		wave.CFrame = HandCF
		wm = Instance.new("SpecialMesh", wave)
		wm.MeshId = "rbxassetid://3270017"
		coroutine.wrap(function()
		for i = 1, 30, 1 do
		wm.Scale = Vector3.new(50, 50, 1 + i*50)
		wave.Size = wm.Scale
		wave.CFrame = HandCF
		wave.Transparency = i/30
		wait()
		end
		wait()
		wave:Destroy()
	end)()
end
----------------------------------------------------


GroundWave3 = function()
	local HandCF = CFrame.new(root.Position - Vector3.new(0,3,0)) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
	local Colors = {"Royal purple", "Royal purple"}
		local wave = Instance.new("Part", torso)
		wave.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
		wave.Anchored = true
		wave.CanCollide = false
		wave.Locked = true
		wave.Size = Vector3.new(1, 1, 1)
		wave.TopSurface = "Smooth"
		wave.BottomSurface = "Smooth"
		wave.Transparency = 0.35
		wave.CFrame = HandCF
		wm = Instance.new("SpecialMesh", wave)
		wm.MeshId = "rbxassetid://3270017"
		coroutine.wrap(function()
		for i = 1, 14, 1 do
		wm.Scale = Vector3.new(1 + i*1.1, 1 + i*1.1, 1)
		wave.Size = wm.Scale
		wave.CFrame = HandCF
		wave.Transparency = i/14
		wait()
		end
		wait()
		wave:Destroy()
	end)()
end





local acos = math.acos
local sqrt = math.sqrt
local Vec3 = Vector3.new
local fromAxisAngle = CFrame.fromAxisAngle

local function toAxisAngle(CFr)
        local X,Y,Z,R00,R01,R02,R10,R11,R12,R20,R21,R22 = CFr:components()
        local Angle = math.acos((R00+R11+R22-1)/2)
        local A = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
        A = A == 0 and 0.00001 or A
        local B = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
        B = B == 0 and 0.00001 or B
        local C = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
        C = C == 0 and 0.00001 or C
        local x = (R21-R12)/sqrt(A)
        local y = (R02-R20)/sqrt(B)
        local z = (R10-R01)/sqrt(C)
        return Vec3(x,y,z),Angle
end

local acos = math.acos
local sqrt = math.sqrt
local Vec3 = Vector3.new
local fromAxisAngle = CFrame.fromAxisAngle

local function toAxisAngle(CFr)
        local X,Y,Z,R00,R01,R02,R10,R11,R12,R20,R21,R22 = CFr:components()
        local Angle = math.acos((R00+R11+R22-1)/2)
        local A = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
        A = A == 0 and 0.00001 or A
        local B = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
        B = B == 0 and 0.00001 or B
        local C = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
        C = C == 0 and 0.00001 or C
        local x = (R21-R12)/sqrt(A)
        local y = (R02-R20)/sqrt(B)
        local z = (R10-R01)/sqrt(C)
        return Vec3(x,y,z),Angle
end

function ApplyTrig(Num,Func)
        local Min,Max = Func(0),Func(1)
        local i = Func(Num)
        return (i-Min)/(Max-Min)
        --[[if Func == "sin" then
                return (math.sin((1-Num)*math.pi)+1)/2
        elseif Func == "cos" then
                return (math.cos((1-Num)*math.pi)+1)/2
        end]]
end

function LerpCFrame(CFrame1,CFrame2,Num)
        local Vec,Ang = toAxisAngle(CFrame1:inverse()*CFrame2)
        return CFrame1*fromAxisAngle(Vec,Ang*Num) + (CFrame2.p-CFrame1.p)*Num
end



local togglecamshake = true

function camshake(partoz, magn, intens)
    if togglecamshake == true then
      return
    end
    for _, guy in pairs(workspace:GetChildren()) do
      if guy:FindFirstChild("Humanoid") and guy:FindFirstChild("Torso") and guy.Name ~= "Noob" and magn > (guy:FindFirstChild("Torso").Position - partoz.Position).magnitude then
        coroutine.resume(coroutine.create(function()
          local humz = guy:FindFirstChild("Humanoid")
          local torse = guy:FindFirstChild("Torso")
          for _ = 1, 5 * intens do
            wait()
            humz.CameraOffset = Vector3.new(2 * math.random(-intens, intens), 0.5 * math.random(-intens, intens), 2 * math.random(-intens, intens))
          end
          humz.CameraOffset = Vector3.new(0, 0, 0)
        end))
      end
    end
  end


function Crater(Torso,Radius)
        Spawn(function()
        local Ray = Ray.new(Torso.Position,Vector3.new(0,-1,0)*10)
        local Ignore = {}
        for i,v in pairs(game:GetService("Players"):GetPlayers()) do
                if v.Character ~= nil then
                        Ignore[#Ignore+1] = v.Character
                end
        end
        local Hit,Pos,SurfaceNorm = workspace:FindPartOnRayWithIgnoreList(Ray,Ignore)
        if Hit == nil then return end
        local Parts = {}
        for i = 1,360,10 do
                local P = Instance.new("Part",Torso.Parent)
                P.Anchored = true
                P.FormFactor = "Custom"
                P.BrickColor = BrickColor.new("Royal purple")
                P.Material = "Granite"
                P.TopSurface = "Smooth"
                P.BottomSurface = "Smooth"
                P.Size = Vector3.new(5,10,10)*(math.random(80,100)/100)
                P.CFrame = ((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,7,0))*CFrame.Angles(math.rad(math.random(-50,50)),math.rad(math.random(-50,50)),math.rad(math.random(-50,50)))
                Parts[#Parts+1] = {P,P.CFrame,((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,1,0))*CFrame.Angles(0,math.rad(i),0)*CFrame.new(0,0,-Radius)*CFrame.Angles(math.rad(math.random(-50,-20)),math.rad(math.random(-15,15)),math.rad(math.random(-15,15))),P.Size}
                if math.random(0,5) == 0 then -- rubble
                        local P = Instance.new("Part",Torso.Parent)
                        P.Anchored = true
                        P.FormFactor = "Custom"
                        P.BrickColor = BrickColor.new("Royal Purple")
                        P.Material = Hit.Material
                        P.TopSurface = "Smooth"
                        P.BottomSurface = "Smooth"
                        P.Size = Vector3.new(5,5,5)*(math.random(80,100)/100)
                        P.CFrame = ((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,2.5,0))*CFrame.Angles(math.rad(math.random(-50,50)),math.rad(math.random(-50,50)),math.rad(math.random(-50,50)))
                        Parts[#Parts+1] = {P,P.CFrame,(CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))*CFrame.Angles(0,math.rad(i),0)*CFrame.new(0,0,-Radius-8)*CFrame.Angles(math.rad(math.random(-90,90)),math.rad(math.random(-90,90)),math.rad(math.random(-90,90))),P.Size}
                end
        end
        for i = 0,1,0.05 do
                for i2,v in pairs(Parts) do
                        v[1].CFrame = LerpCFrame(v[2],v[3],ApplyTrig(i,math.cos))
                end
                wait(0.02)
        end
        for i,v in pairs(Parts) do
                if v[1].Size.X > 2.1 then
                        v[1].CFrame = v[1].CFrame+Vector3.new(0,2,0)
                end
                v[1].Anchored = false
        end
        for i = 0,1,0.05 do
                for i2,v in pairs(Parts) do
                        v[1].Transparency = i
                        if i == 1 then
                                v[1]:Destroy()
                        elseif i >= 0.25 then
                                v[1].CanCollide = false
                        end
                end
                wait(0.02)
        end
        Parts = nil
        end)
end



GroundWave = function()
        if Transforming == true then
                local value = 5
                local value2 = 10
                local value3 = 20
local sa2 = Instance.new("Sound",Torso)
sa2.SoundId = "rbxassetid://393621716"
sa2.Pitch = 1
sa2.Volume = 10
sa2.Looped = false
sa2:Play()
                local wave = Instance.new("Part", Torso)
local glowz = Instance.new("ParticleEmitter",wave)
glowz.LightEmission = 1
glowz.Texture = "rbxassetid://284205403"
glowz.Color = ColorSequence.new(wit)
glowz.Size = NumberSequence.new(30)
glowz.Speed = NumberRange.new(25,100)
glowz.LockedToPart = false
glowz.Transparency = NumberSequence.new(0.75)
glowz.RotSpeed = NumberRange.new(-2000,2000)
glowz.Lifetime = NumberRange.new(1)
glowz.Rate = 50000
glowz.VelocitySpread = 9001
local glowz2 = Instance.new("ParticleEmitter",wave)
glowz2.LightEmission = 1
glowz.Texture = "rbxassetid://284205403"
glowz2.Color = ColorSequence.new(wit)
glowz2.Size = NumberSequence.new(30)
glowz2.Speed = NumberRange.new(25,100)
glowz2.LockedToPart = false
glowz2.Transparency = NumberSequence.new(0.75)
glowz2.RotSpeed = NumberRange.new(-2000,2000)
glowz2.Lifetime = NumberRange.new(1)
glowz2.Rate = 50000
glowz2.VelocitySpread = 9001
                wave.BrickColor = BrickColor.new("Really black")
                wave.Anchored = true
                wave.CanCollide = false
                wave.Locked = true
                wave.Size = Vector3.new(1, 1, 1)
                wave.TopSurface = "Smooth"
                wave.BottomSurface = "Smooth"
                wave.Transparency = 0.35
                wave.CFrame = fx.CFrame
                wave.Material = "Neon"
                wm = Instance.new("SpecialMesh", wave)
                wm.MeshType = "Sphere"
                wm.Scale = Vector3.new(1,1,1)
                local wave2 = Instance.new("Part", Torso)
                wave2.BrickColor = TorsoColor
                wave2.Anchored = true
                wave2.CanCollide = false
                wave2.Locked = true
                wave2.Size = Vector3.new(1, 1, 1)
                wave2.TopSurface = "Smooth"
                wave2.BottomSurface = "Smooth"
                wave2.Transparency = 0.35
                wave2.CFrame = fx.CFrame
                wave2.Material = "Neon"
                wm2 = Instance.new("SpecialMesh", wave2)
                wm2.MeshType = "FileMesh"
                wm2.MeshId = "http://www.roblox.com/asset/?id=3270017"
                wm2.Scale = Vector3.new(1,1,1)
                local wave3 = Instance.new("Part", Torso)
                wave3.BrickColor = BrickColor.new("Really black")
                wave3.Anchored = true
                wave3.CanCollide = false
                wave3.Locked = true
                wave3.Size = Vector3.new(1, 1, 1)
                wave3.TopSurface = "Smooth"
                wave3.BottomSurface = "Smooth"
                wave3.Transparency = 0.35
                wave3.CFrame = fx.CFrame
                wave3.Material = "Neon"
                wm3 = Instance.new("SpecialMesh", wave3)
                wm3.MeshType = "FileMesh"
                wm3.MeshId = "http://www.roblox.com/asset/?id=3270017"
                wm3.Scale = Vector3.new(1,1,1)
                coroutine.wrap(function()
                for i = 1, 18, 1 do
                value = value - 0.5
                value2 = value2 - 0.75*1.5
                value3 = value3 - 0.475*1.5
                wm.Scale = wm.Scale + Vector3.new(value*3.5,value*3.5,value*3.5)
                wm2.Scale = wm.Scale + Vector3.new(value2*3.5,value2*3.5,0.5)
                wm3.Scale = wm.Scale + Vector3.new(value3*3.5,value3*3.5,0.25)
                --wave.Size = wm.Scale
                wave.CFrame = fx.CFrame
                wave.Transparency = i/14
                --wave2.Size = wm2.Scale
                wave2.CFrame = fx.CFrame
                wave2.Rotation = Vector3.new(90, 0, 0)
                wave2.Transparency = i/14
                --wave3.Size = wm3.Scale
                wave3.CFrame = fx.CFrame
                wave3.Rotation = Vector3.new(90, 0, 0)
                wave3.Transparency = i/14
                wait()
                glowz.Rate = 0
                glowz2.Rate = 0
                end
                wait()
                wave:Destroy()
                wave2:Destroy()
                wave3:Destroy()
        end)()
        elseif Transforming == false then
        wait()
        end
end

for i = 1, 100 do rs:wait()
        fx.CFrame = Torso.CFrame
end

spawn(function()
	while wait(1) do
		GroundWave()
	end
end)






local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create

function RemoveOutlines(part)
	part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
function CreatePart(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
	local Part = Create("Part"){
		Parent = Parent,
		Reflectance = Reflectance,
		Transparency = Transparency,
		CanCollide = false,
		Locked = true,
		BrickColor = BrickColor.new(tostring(BColor)),
		Name = Name,
		Size = Size,
		Material = Material,
	}
	RemoveOutlines(Part)
	return Part
end
local Effects = {}



wait(2)
local Muss = Instance.new("Sound",char)
Muss.SoundId = "rbxassetid://186942568"
Muss.Pitch = 1
Muss.Volume = 0
Muss.Looped = true
Muss:Play()
Transforming = false


local value2 = 1
for i = 1, 20 do rs:wait()
        value2 = value2 - 0.05
        glowz.Rate = 0
        glowz2.Rate = 0
        fx.Transparency = fx.Transparency + (1/20)
        fx.CFrame = torso.CFrame
        fxm.Scale = fxm.Scale + Vector3.new(value2,value2,value2)
        rs:wait()
end


local Mus = Instance.new("Sound",char)
Mus.SoundId = "rbxassetid://752647397"
Mus.Pitch = 1
Mus.Volume = 40
Mus.Looped = false
wait(0.3)
Mus:Play()

glowz:Destroy()
glowz2:Destroy()
for i = 1,20 do
	
	torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2,0.65,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(20)), 0.2)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2,0.65,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20)), 0.2)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), 0, math.rad(0)), 0.4)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -.4, -.7) * CFrame.Angles(math.rad(-20), 0, math.rad(0)), 0.4)
end
wait(1)
for i = 1,20 do
	torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
								rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2,0.65,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(20)), 0.2)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2,0.65,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20)), 0.2)

					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, math.rad(-10)), 0.4)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, math.rad(10)), 0.4)

end


wait(5)

wait(1.3)
for i = 1,20 do
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2,0.65,0)*CFrame.Angles(math.rad(50),math.rad(0),math.rad(30)), 0.2)
					
					
end
wait(0.4)
for i = 1,20 do
					
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2,0.65,0)*CFrame.Angles(math.rad(50),math.rad(0),math.rad(-30)), 0.2)
end
wait(0.6)
for i = 1,20 do
	wait()
	torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(0)), 0.2)
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2,0.65,0)*CFrame.Angles(math.rad(150),math.rad(0),math.rad(-35)), 0.2)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2,0.65,0)*CFrame.Angles(math.rad(150),math.rad(0),math.rad(35)), 0.2)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), 0, math.rad(0)), 0.4)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), 0, math.rad(0)), 0.4)
end
wait(0.2)
for i = 1,20 do
	torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
								rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2,0.65,0)*CFrame.Angles(math.rad(50),math.rad(0),math.rad(30)), 0.2)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2,0.65,0)*CFrame.Angles(math.rad(50),math.rad(0),math.rad(-30)), 0.2)

					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, math.rad(-10)), 0.4)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, math.rad(10)), 0.4)

end
wait()

camshake(torso, 48, 6)
for i,v in pairs(FindNearestTorso(Torso.CFrame.p,40))do
			if v:FindFirstChild('Humanoid') then
				v.Humanoid:TakeDamage(math.random(999999999999999999999999,99999999999999999999999999999999999999))
			end
end




function RayCast(Position, Direction, MaxDistance, IgnoreList)
	return game:GetService("Workspace"):FindPartOnRayWithIgnoreList(Ray.new(Position, Direction.unit * (MaxDistance or 999.999)), IgnoreList) 
end

function rayCast(Position, Direction, MaxDistance, IgnoreList)
	return game:GetService("Workspace"):FindPartOnRayWithIgnoreList(Ray.new(Position, Direction.unit * (MaxDistance or 999.999)), IgnoreList) 
end
local TBlast, TBMesh = Instance.new("Part"), Instance.new("SpecialMesh")
	TBlast.BrickColor = BrickColor.new("Pink")
	TBlast.Transparency = 1
	TBlast.Anchored = true
	TBlast.CanCollide = false
	TBlast.CFrame = root.CFrame
	TBlast.Size = Vector3.new(2,2,2)
	TBMesh.Parent = TBlast
	TBMesh.MeshType = "Sphere"
	game.Lighting.Brightness = 0
		game.Lighting.OutdoorAmbient = TBlast.BrickColor.Color
		game.Lighting.TimeOfDay = 0.1
		game.Lighting.FogEnd = 1000
		game.Lighting.FogColor = TBlast.BrickColor.Color
		game.Lighting.TimeOfDay = "00:00:00"
		game.Lighting.Ambient = Color3.new(0,0,0)
		game.Lighting.FogColor = Color3.new(0,0,0)
		game.Lighting.FogEnd = 500
		game.Lighting.FogStart = 0
		game.Lighting.GlobalShadows = true
		
		

local HandCF = CFrame.new(root.Position - Vector3.new(0,3,0)) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
        local valuer = 5
        local valuer2 = 10
        local valuer3 = 15
local sa2 = Instance.new("Sound",torso)
sa2.SoundId = "rbxassetid://130972023"
sa2.Pitch = 1
sa2.Volume = 5
sa2.Looped = false
sa2:Play()
local sar2 = Instance.new("Sound",torso)
sar2.SoundId = "rbxassetid://153274423"
sar2.Pitch = 1
sar2.Volume = 5
sar2.Looped = false
sar2:Play()
Crater(torso,67)

GroundWave4 = function()
        
                local wave = Instance.new("Part", torso)
                wave.BrickColor = BrickColor.new("Royal purple")
                wave.Anchored = true
                wave.CanCollide = false
                wave.Locked = true
                wave.Size = Vector3.new(1, 1, 1)
                wave.TopSurface = "Smooth"
                wave.BottomSurface = "Smooth"
                wave.Transparency = 0.35
                wave.CFrame = fx.CFrame
                wm = Instance.new("SpecialMesh", wave)
                wm.MeshType = "Sphere"
                wm.Scale = Vector3.new(1,1,1)
                coroutine.wrap(function()
                for i = 1, 18, 1 do
                wm.Scale = Vector3.new(2 + i*2, 2 + i*2, 2 + i*2)
                --wave.Size = wm.Scale
                wave.CFrame = fx.CFrame
                wave.Transparency = i/14
                wait()
                end
                wait()
                wave:Destroy()
        end)()
        
end





		GroundWave1()
		
		
		CV="Pastel blue"
	
local txt = Instance.new("BillboardGui", Char)
txt.Adornee = Char .Head
txt.Name = "_status"
txt.Size = UDim2.new(2, 0, 1.2, 0)
txt.StudsOffset = Vector3.new(-9, 8, 0)
local text = Instance.new("TextLabel", txt)
text.Size = UDim2.new(10, 0, 7, 0)
text.FontSize = "Size24"
text.TextScaled = true
text.TextTransparency = 0
text.BackgroundTransparency = 1 
text.TextTransparency = 0
text.TextStrokeTransparency = 0
text.Font = "Antique"
text.TextStrokeColor3 = Color3.new(170,0,255)

v=Instance.new("Part")
v.Name = "ColorBrick"
v.Parent=Player.Character
v.FormFactor="Symmetric"
v.Anchored=true
v.CanCollide=false
v.BottomSurface="Smooth"
v.TopSurface="Smooth"
v.Size=Vector3.new(10,5,3)
v.Transparency=1
v.CFrame=Char.Torso.CFrame
v.BrickColor=BrickColor.new(CV)
v.Transparency=1
text.TextColor3 = Color3.new(0,0,0)
v.Shape="Block"
text.Text = "The Omni-God of Erradication"




ROW = function(out, trans, s, wt, t, ang, plus)
					for i = 1, 360, 360/t do
						local c = Instance.new("Part", game.Workspace)
						c.FormFactor = 3
						c.TopSurface = 0
						c.BottomSurface = 0
						c.Size = s
						c.Anchored = true
						c.CanCollide = wt
						c.Material=workspace.Base.Material
						c.Transparency = trans
						c.BrickColor = workspace.Base.BrickColor
						c.CFrame = CFrame.new(Torso.CFrame.x,0,Torso.CFrame.z) * CFrame.Angles(0, math.rad(i +  plus), 0) *     CFrame.new(0, 0, out) * ang
						c.Locked=true
						game.Debris:AddItem(c,15)
					end
end

ROW(12, 0, Vector3.new(34.5, 30, 3), true, 8, CFrame.Angles(math.rad(math.random (30,60)), 0, math.rad    (math.random(-30,30))), 0)
	
	
	
	
	
	
	
        local wave = Instance.new("Part", torso)
        wave.BrickColor = TorsoColor
        wave.Anchored = true
        wave.CanCollide = false
        wave.Locked = true
        wave.Size = Vector3.new(1, 1, 1)
        wave.TopSurface = "Smooth"
        wave.BottomSurface = "Smooth"
        wave.Transparency = 0.35
        wave.CFrame = HandCF
        wm = Instance.new("SpecialMesh", wave)
        wm.MeshId = "rbxassetid://3270017"
        local wave2 = Instance.new("Part", torso)
        wave2.BrickColor = BrickColor.new("Really black")
        wave2.Anchored = true
        wave2.CanCollide = false
        wave2.Locked = true
        wave2.Size = Vector3.new(1, 1, 1)
        wave2.TopSurface = "Smooth"
        wave2.BottomSurface = "Smooth"
        wave2.Transparency = 0.35
        wave2.CFrame = HandCF
        wm2 = Instance.new("SpecialMesh", wave2)
        wm2.MeshId = "rbxassetid://3270017"
        local wave3 = Instance.new("Part", torso)
        wave3.BrickColor = TorsoColor
        wave3.Anchored = true
        wave3.CanCollide = false
        wave3.Locked = true
        wave3.Size = Vector3.new(1, 1, 1)
        wave3.TopSurface = "Smooth"
        wave3.BottomSurface = "Smooth"
        wave3.Transparency = 0.35
        wave3.CFrame = HandCF
        wm3 = Instance.new("SpecialMesh", wave3)
        wm3.MeshId = "rbxassetid://3270017"
        coroutine.wrap(function()
        for i = 1, 14, 1 do
        valuer = valuer - 0.35
        valuer2 = valuer - 0.45
        valuer3 = valuer3 - 0.475
        wm.Scale = wm.Scale + Vector3.new(valuer*2.5,valuer*2.5, 1 + i*200)
        wave.Size = wm.Scale
        wave.CFrame = HandCF
        wave.Transparency = i/14
        wm2.Scale = wm2.Scale + Vector3.new(valuer2*2.5,valuer2*2.5, 0 + i*10)
        wave2.Size = wm2.Scale
        wave2.CFrame = HandCF
        wave2.Transparency = i/14
        wm3.Scale = wm3.Scale + Vector3.new(valuer3*2.5,valuer3*2.5, 1)
        wave3.Size = wm2.Scale
        wave3.CFrame = HandCF
        wave3.Transparency = i/14
        wait()
        end
        wait()
        wave:Destroy()
        wave2:Destroy()
end)()

local torso = game.Players.LocalPlayer.Character.Torso
local block = Instance.new("Part",torso)
block.Size = Vector3.new(0.1,0.1,0.1)
block.Position = block.Position + Vector3.new(2,2,2)
block.Transparency = 1
local weld = Instance.new("Weld",torso)
weld.Part0 = torso
weld.Part1 = block
weld.C0 = CFrame.new(0,5,0)
local tables = {5,4,3,2,1}
local part = Instance.new("ParticleEmitter")
part.Parent = game.Players.LocalPlayer.Character.Torso
part.LockedToPart = true

part.Texture = "rbxassetid://300899196"
part.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,18),NumberSequenceKeypoint.new(1,1)})
part.Transparency = NumberSequence.new(0.7)
part.Lifetime = NumberRange.new(2)
part.Rate = 30
local part2 = Instance.new("ParticleEmitter",block)
part2.Lifetime = NumberRange.new(5)
part2.Speed = NumberRange.new(0)
part2.Size = NumberSequence.new(18)
part2.LockedToPart = true
part2.Transparency = NumberSequence.new(0.5)
part2.Rate = 3
part2.Color = ColorSequence.new(Color3.fromRGB(170,0,255))
part2.Texture = "http://www.roblox.com/asset/?id=358965396"
local model = Instance.new("Model",torso)

local ball0 = Instance.new("Part",model)
ball0.Position = ball0.Position + Vector3.new(2,2,2)
ball0.Transparency = 0.5
ball0.BrickColor = BrickColor.new("Royal purple")
ball0.Size = Vector3.new(1,1,1)
ball0mesh = Instance.new("SpecialMesh",ball0)
ball0mesh.MeshType = "Sphere"
ball0mesh.Scale = Vector3.new(1,1,1)
ballweld = Instance.new("Weld",model)
ballweld.Part0 = torso
ballweld.Part1 = ball0




for i = 1,15 do
	wait(0.1)
	part.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,30),NumberSequenceKeypoint.new(1,1)})
	part2.Size = NumberSequence.new(15)
for i = 1 , 3 do
wait()
	ball0mesh.Scale = ball0mesh.Scale + Vector3.new(13,13,13)

end

	wait(0.1)
	part2.Size = NumberSequence.new(8)
	part.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,18),NumberSequenceKeypoint.new(1,1)})
	ball0mesh.Scale = Vector3.new(1,1,1)

end

hum.WalkSpeed = 16
Muss.Volume = 8


Charging = true
custommath={25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,-25,-26,-27,-28,-29,-30,-31,-32,-33,-34,-35,-36,-37,-38,-39,-40,-41,-42,-43,-44,-45,-46,-47,-48,-49,-50,-51,-52,-53,-54,-55,-56,-57,-58,-59,-60,-61,-62,-63,-64,-65,-66,-67,-68,-69,-70,-71,-72,-73,-74,-75,-76,-77,-78,-79,-80,-81,-82,-83,-84,-85,-86,-87,-88,-89,-90,-91,-92,-93,-94,-95,-96,-97,-98,-99,-100}
function FDebris()
	repeat
    local p = Instance.new('Part',Torso)
    p.formFactor = 'Custom'
    p.Size = Vector3.new(1,1,1)
    p.BrickColor = BrickColor.new("Dark indigo")
    p.CanCollide = false
    p.Transparency = 0.2
    p.Anchored = true
    p.Locked=true
    p.Material = "Neon"
    s = math.random(1,40)/10
    local m = Instance.new("BlockMesh",p)
    m.Scale = Vector3.new(s,s,s)
    p.CFrame = Torso.CFrame*CFrame.new(custommath[math.random(1,#custommath)]/10,-math.random(5,7),custommath[math.random(1,#custommath)]/10)*CFrame.Angles(math.random(),math.random(),math.random())
	--[[coroutine.wrap(function()
		wait(2)
		while Charging == true do
		wait(2)
		GroundWave1()
		wait(2)
		end
	end)()]]--
	
	spawn(function()
        while rs:wait() do
            if p.Transparency >= 1 then p:Destroy() break end
            p.CFrame = p.CFrame*CFrame.Angles(math.rad(2),math.rad(2),math.rad(2))+Vector3.new(0,0.2,0)
            p.Transparency = p.Transparency+0.01
        end
    end)
    wait(.3)
until Charging == false
end
				

spawn(function()
	while wait(.01)
		 do
		FDebris()	
		end
end)	



FloatPart = function()
	local Part = Instance.new('Part',Torso)
	Part.CFrame = CFrame.new(Torso.CFrame.X,workspace.Base.CFrame.Y+1,Torso.CFrame.Z) * CFrame.fromEulerAnglesXYZ(86.4,0,87)
	Part.Anchored = true
	Part.Material = 'Neon'
	Part.CanCollide = false
	Part.BrickColor = BrickColor.new("Royal purple")
	local Mesh = Instance.new('SpecialMesh',Part)
	Mesh.Scale = Vector3.new(4,4,.2)
	Mesh.MeshId = 'http://www.roblox.com/asset/?id=3270017'
	Mesh.VertexColor = Vector3.new(0,170,255)
	spawn(function()
		for i = 1,30 do
			Mesh.Scale = Mesh.Scale + Vector3.new(.04,.04,0)
			Part.Transparency = Part.Transparency + .035
			game["Run Service"].RenderStepped:wait()
		end
		Part:Destroy()
	end)
end;

DubPart = function()
	local Part = Instance.new('Part',Torso)
	Part.CFrame = CFrame.new(Torso.CFrame.X,workspace.Base.CFrame.Y+1,Torso.CFrame.Z) * CFrame.fromEulerAnglesXYZ(86.4,0,87)
	Part.Anchored = true
	Part.CanCollide = false
	Part.Material = 'Neon'
	Part.BrickColor = BrickColor.new(SecondaryColor)
	local Mesh = Instance.new('SpecialMesh',Part)
	Mesh.Scale = Vector3.new(7,7,.2)
	Mesh.MeshId = 'http://www.roblox.com/asset/?id=3270017'
	Mesh.VertexColor = Vector3.new(0,170,255)
	spawn(function()
		for i = 1,30 do
			Mesh.Scale = Mesh.Scale + Vector3.new(.04,.04,0)
			Part.Transparency = Part.Transparency + .035
			game["Run Service"].RenderStepped:wait()
		end
		Part:Destroy()
	end)
end;

Fade = function(Item,t)
	spawn(function()
		for i = 1,20 do
			Item.Transparency = Item.Transparency + .05
			if t then
				wait(t)
			else 
				wait()
			end
		end
		Item:Destroy()
	end)
end

Particle = function(PrimaryColor)
	local Part = Instance.new('Part',Torso)
	Part.BrickColor = BrickColor.new(PrimaryColor)
	Part.Anchored = true
	Part.Transparency = .3
	Part.CanCollide = false
	Part.CFrame = Torso.CFrame * CFrame.new(math.random(-10,10),math.random(-15,15),math.random(-10,10)) * CFrame.fromEulerAnglesXYZ(math.random(),math.random(),math.random())
	local Mesh = Instance.new('BlockMesh',Part)
	Mesh.Scale = Vector3.new(.05,.1,.1)
	spawn(function()
		for i = 1,40 do
			Part.Transparency = Part.Transparency + .0125
			Part.CFrame = Part.CFrame * CFrame.new(0,-.07,0)
			game["Run Service"].RenderStepped:wait()
		end
		Part:Destroy()
	end)
end;

--[[spawn(function()
	while wait() do
		wait(.05)
		FloatPart()
		wait(.08)
		FloatPart()
		wait(.05)
		DubPart()
		wait(.08)
	end
end)]]

game["Run Service"].RenderStepped:connect(function(_)
	Particle("Royale purple")
	Particle("Really black")
        Particle("Royal purple")
	--Character['HumanoidRootPart'].C1 = Character['HumanoidRootPart'].C1 * CFrame.new(0,Height+math.sin(tick())/150,0)
end)
















function FindNearestTorso(Position,Distance,SinglePlayer)
    if SinglePlayer then return(SinglePlayer.Torso.CFrame.p -Position).magnitude < Distance end
        local List = {}
        for i,v in pairs(workspace:GetChildren())do
            if v:IsA("Model")then
                if v:findFirstChild("Torso")then
                    if v ~= char then
                        if(v.Torso.Position -Position).magnitude <= Distance then
                            table.insert(List,v)
                        end 
                    end 
                end 
            end 
        end
    return List
end




vt = Vector3.new



local player = game.Players.LocalPlayer
local pchar = player.Character
local mouse = player:GetMouse()
local cam = workspace.CurrentCamera

local rad = math.rad
bodyparts = {}
local keysDown = {}
local flySpeed = 0
local MAX_FLY_SPEED = 150

local canFly = false
local flyToggled = false

local forward, side = 0, 0
local lastForward, lastSide = 0, 0

local floatBP = Instance.new("BodyPosition")
floatBP.maxForce = Vector3.new(0, math.huge, 0)
local flyBV = Instance.new("BodyVelocity")
flyBV.maxForce = Vector3.new(9e9, 9e9, 9e9)
local turnBG = Instance.new("BodyGyro")
turnBG.maxTorque = Vector3.new(math.huge, math.huge, math.huge)

mouse.KeyDown:connect(function(key)
        keysDown[key] = true

        if key == "f" then
                flyToggled = not flyToggled

        if not flyToggled then
                stanceToggle = "Normal"
                floatBP.Parent = nil
                flyBV.Parent = nil
                turnBG.Parent = nil
                root.Velocity = Vector3.new()
                pchar.Humanoid.PlatformStand = false
        end
end

end)
mouse.KeyUp:connect(function(key)
        keysDown[key] = nil
end)

local function updateFly()
	
	
	

        if not flyToggled then return end

        lastForward = forward
        lastSide = side

        forward = 0
        side = 0

        if keysDown.w then
                forward = forward + 1
        end
        if keysDown.s then
                forward = forward - 1
        end
        if keysDown.a then
                side = side - 1
        end
        if keysDown.d then
                side = side + 1
        end

        canFly = (forward ~= 0 or side ~= 0)

        if canFly then
                stanceToggle = "Floating"
                turnBG.Parent = root
                floatBP.Parent = nil
                flyBV.Parent = root

                flySpeed = flySpeed + 1 + (flySpeed / MAX_FLY_SPEED)
                if flySpeed > MAX_FLY_SPEED then flySpeed = MAX_FLY_SPEED end
        else
                floatBP.position = root.Position
                floatBP.Parent = root

                flySpeed = flySpeed - 1
                if flySpeed < 0 then flySpeed = 0 end
        end

        local camCF = cam.CoordinateFrame
        local in_forward = canFly and forward or lastForward
        local in_side = canFly and side or lastSide

        flyBV.velocity = ((camCF.lookVector * in_forward) + (camCF * CFrame.new(in_side,in_forward * 0.2, 0).p) - camCF.p) * flySpeed

        turnBG.cframe = camCF * CFrame.Angles(-rad(forward * (flySpeed / MAX_FLY_SPEED)), 0,0)
end

game:service'RunService'.RenderStepped:connect(function()
        if flyToggled then
                pchar.Humanoid.PlatformStand = true
        end
        updateFly()
end)



mouse.KeyDown:connect(function(key)
  if key == "b" then
    hum.WalkSpeed = 0
    if Debounces.CanAttack == true then
      Debounces.CanAttack = false
      Debounces.NoIdl = true
      Debounces.on = true
      v = Instance.new("Sound")
      v.SoundId = "http://www.roblox.com/asset/?id=753551986"
      v.Parent = char
      v.Looped = false
      v.Pitch = 1
      v.Volume =  3000
      wait(0.01)
      v:Play()
wait()
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(75), 0, math.rad(30)), 0.1)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(75), 0, math.rad(-30)), 0.1)
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(-20), math.rad(0), 0), 0.1)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-30), math.rad(0), 0), 0.1)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(30), 0, math.rad(-5)), 0.1)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(30), 0, math.rad(5)), 0.1)
        if Debounces.on == false then
        end
        wait()
      end
      wait()
      
    
      local function Shockwave7()
        local ENERGY = Instance.new("Part", Char)
		ENERGY.Name = "ENERGY"
		ENERGY.CanCollide = false
			ENERGY.BrickColor = BrickColor.new("Really black")
		ENERGY.Transparency = 0.2
		ENERGY.TopSurface = 0
		ENERGY.BottomSurface = 0
		ENERGY.Anchored = true
		local cm = Instance.new("CylinderMesh", ENERGY)
		cm.Scale = Vector3.new(1, 20, 1)
		ENERGY.Size = Vector3.new(5, 20, 5)
		ENERGY.CFrame = char.Torso.CFrame
		ENERGY.Touched:connect(function(hit)
                    if hit.Parent:findFirstChild("Humanoid") and hit.Parent:findFirstChild("Torso") then
                        local Occlude = true
                        local NotOccludes = {
                            char.Name;
                            "Wings";
                            "Scythe";
                            "Thingy";
                            "Thingy2"; -- put all of the names in a table pls
                        }
                        for i,v in pairs(NotOccludes) do
                            if hit.Parent.Name == v then
                                Occlude = false
                            end
                        end
                        --if hit.Parent.Name ~= char.Name and hit.Name ~= "Wings" and hit.Name ~= "Scythe" and hit.Name     ~= "Thingy" and hit.Name ~= "Thingy2" and hit.Parent.Name ~= "Wings" and hit.Parent.Name ~= "Scythe" and     hit.Parent.Name ~= "Thingy" and hit.Parent.Name ~= "Thingy2" then
                        if Occlude then
                            hit.Parent:findFirstChild("Humanoid").Health = hit.Parent:findFirstChild("Humanoid").Health - 9999999999999999999999999999999999999999999999999999999999999999999999999999999999
                            hit.Parent:findFirstChild("Torso").Velocity = hit.Parent:findFirstChild("Torso").CFrame.lookVector * 220
                        end
                    end
                end)
		for i = 1, 50 do
			ENERGY.CFrame = char.Torso.CFrame
			ENERGY.Transparency = ENERGY.Transparency + 0.012
			ENERGY.Size = ENERGY.Size + Vector3.new(0.2, 0, 0.2)
			wait()
		end
		ENERGY:Destroy()
      end
Shockwave7()


pt=Instance.new('Part',torso)
pt.Anchored=true
pt.CanCollide=false
pt.Locked = true
pt.FormFactor='Custom'
pt.Size=Vector3.new(1,1,1)
pt.CFrame=root.CFrame*CFrame.new(0,-1,0)
pt.Transparency=.6
pt.BrickColor=BrickColor.new('Royal purple')
msh=Instance.new('SpecialMesh',pt)
msh.MeshId='http://www.roblox.com/asset/?id=20329976'
msh.Scale=Vector3.new(8,4,8)
pt2=pt:clone()
pt2.Parent = torso
pt2.CFrame=root.CFrame*CFrame.new(0,-1,0)
pt2.BrickColor=BrickColor.new("Really black")
msh2=msh:clone()
msh2.Parent=pt2
msh2.Scale=Vector3.new(10,5,10)

custommath={25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,-25,-26,-27,-28,-29,-30,-31,-32,-33,-34,-35,-36,-37,-38,-39,-40,-41,-42,-43,-44,-45,-46,-47,-48,-49,-50,-51,-52,-53,-54,-55,-56,-57,-58,-59,-60,-61,-62,-63,-64,-65,-66,-67,-68,-69,-70,-71,-72,-73,-74,-75,-76,-77,-78,-79,-80,-81,-82,-83,-84,-85,-86,-87,-88,-89,-90,-91,-92,-93,-94,-95,-96,-97,-98,-99,-100}
bl = Instance.new("Part", char)
bl.Locked = true
bl.Name = "Shell"
bl.BrickColor = BrickColor.new("Royal purple")
bl.Anchored = true
bl.CanCollide = false
bl.Transparency = 0
bl.Reflectance = 0
bl.BottomSurface = 0
bl.TopSurface = 0
bl.Shape = 0
blm = Instance.new("SpecialMesh",bl)
blm.MeshType = "Sphere"
blm.Scale = Vector3.new(1,1,1)
blm.MeshId = "rbxassetid://9982590"

	coroutine.resume(coroutine.create(function()
        for i=1, math.huge, 4 do
				rs:wait()
				bl.CFrame = root.CFrame * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-i/10), math.rad(-i/10), math.rad(i/10))
				blm.Scale = blm.Scale + Vector3.new(0.1, 0.1, 0.1)
				bl.Transparency = bl.Transparency + 0.005
				pt.CFrame = root.CFrame*CFrame.new(0,-1,0) * CFrame.Angles(0,math.rad(i*2),0)
				pt2.CFrame = root.CFrame*CFrame.new(0,-1,0) * CFrame.Angles(0,math.rad(-i*2),0)
				msh.Scale = msh.Scale + Vector3.new(0.05,0,0.05)
				msh2.Scale = msh2.Scale + Vector3.new(0.05,0,0.05)
			end
end))
     
      for i = 1, 15 do
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(120), math.rad(0), math.rad(-130)), 0.2)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(120), math.rad(0), math.rad(70)), 0.2)
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0.2) * CFrame.Angles(math.rad(45), math.rad(30), 0), 0.1)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(30), math.rad(20), math.rad(0)), 0.2)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(-40)), 0.1)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(0)), 0.1)
        if Debounces.on == false then
          break
        end
        wait()
      end
      for i = 1, 15 do
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(120), math.rad(0), math.rad(-70)), 0.2)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(120), math.rad(0), math.rad(130)), 0.2)
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0.2) * CFrame.Angles(math.rad(45), math.rad(-30), 0), 0.1)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(30), math.rad(-20), math.rad(0)), 0.2)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(0)), 0.1)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(40)), 0.1)
        if Debounces.on == false then
          break
        end
        wait()
      end
      for i = 1, 15 do
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(120), math.rad(0), math.rad(-130)), 0.2)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(120), math.rad(0), math.rad(70)), 0.2)
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0.2) * CFrame.Angles(math.rad(45), math.rad(30), 0), 0.1)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(30), math.rad(20), math.rad(0)), 0.2)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(-40)), 0.1)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(0)), 0.1)
        if Debounces.on == false then
          break
        end
        wait()
      end
      for i = 1, 15 do
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(120), math.rad(0), math.rad(-70)), 0.2)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(120), math.rad(0), math.rad(130)), 0.2)
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0.2) * CFrame.Angles(math.rad(45), math.rad(-30), 0), 0.1)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(30), math.rad(-20), math.rad(0)), 0.2)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(0)), 0.1)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(40)), 0.1)
        if Debounces.on == false then
          break
        end
        wait()
      end
      for i = 1, 15 do
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(120), math.rad(0), math.rad(-130)), 0.2)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(120), math.rad(0), math.rad(70)), 0.2)
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0.2) * CFrame.Angles(math.rad(45), math.rad(30), 0), 0.1)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(30), math.rad(20), math.rad(0)), 0.2)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(-40)), 0.1)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(0)), 0.1)
        if Debounces.on == false then
          break
        end
        wait()
      end
      for i = 1, 10 do
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(120), math.rad(0), math.rad(-70)), 0.2)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(120), math.rad(0), math.rad(130)), 0.2)
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0.2) * CFrame.Angles(math.rad(45), math.rad(-30), 0), 0.1)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(30), math.rad(-20), math.rad(0)), 0.2)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(0)), 0.1)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(40)), 0.1)
        if Debounces.on == false then
          break
        end
        wait()
      end
      wait(1.4)
      Debounces.NoIdl = false
      hum.WalkSpeed = 5
      Debounces.on = false
      wait()
      if Debounces.CanAttack == false then
        Debounces.CanAttack = true
        v:Destroy()
        bl:Destroy()
		blm:Destroy()
		pt:Destroy()
		pt2:Destroy()
		msh:Destroy()
	    msh2:Destroy()
      end
    end
  end)





local grabbed = false
local cf = CFrame.new
local mr = math.rad
local angles = CFrame.Angles
local ud = UDim2.new
local c3 = Color3.new
local NeckCF = cf(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
local RootCF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)
local RHCF = CFrame.fromEulerAnglesXYZ(0, 1.6, 0)
local LHCF = (CFrame.fromEulerAnglesXYZ(0, -1.6, 0))

clerp = function(a, b, t)
  return a:lerp(b, t)
end

local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create
RemoveOutlines = function(part)
  part.TopSurface = 10
end

CreatePart = function(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
  local Part = Create("Part")({Parent = Parent, Reflectance = Reflectance, Transparency = Transparency, CanCollide = false, Locked = true, BrickColor = BrickColor.new(tostring(BColor)), Name = Name, Size = Size, Material = Material})
  RemoveOutlines(Part)
  return Part
end

CreateMesh = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
  local Msh = Create(Mesh)({Parent = Part, Offset = OffSet, Scale = Scale})
  if Mesh == "SpecialMesh" then
    Msh.MeshType = MeshType
    Msh.MeshId = MeshId
  end
  return Msh
end







ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"
script:WaitForChild("Heartbeat")
frame = 0.033333333333333
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
script.Heartbeat:Fire()
game:GetService("RunService").Heartbeat:connect(function(s, p)
  tf = tf + s
  if frame <= tf then
    if allowframeloss then
      script.Heartbeat:Fire()
      lastframe = tick()
    else
      for i = 1, math.floor(tf / frame) do
        script.Heartbeat:Fire()
      end
      lastframe = tick()
    end
    if tossremainder then
      tf = 0
    else
      tf = tf - frame * math.floor(tf / frame)
    end
  end
end
)
swait = function(num)
  if num == 0 or num == nil then
    ArtificialHB.Event:wait()
  else
    for i = 0, num do
      ArtificialHB.Event:wait()
    end
  end
end









CreateWeld = function(Parent, Part0, Part1, C0, C1)
  local Weld = Create("Weld")({Parent = Parent, Part0 = Part0, Part1 = Part1, C0 = C0, C1 = C1})
  return Weld
end

rayCast = function(Position, Direction, Range, Ignore)
  return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore)
end

CreateSound = function(id, par, vol, pit)
  coroutine.resume(coroutine.create(function()
    local sou = Instance.new("Sound", par or workspace)
    sou.Volume = vol
    sou.Pitch = pit or 1
    sou.SoundId = id
    swait()
    sou:play()
    game:GetService("Debris"):AddItem(sou, 6)
  end
))
end

local getclosest = function(obj, distance)
  local last, lastx = distance + 1, nil
  for i,v in pairs(workspace:GetChildren()) do
    if v:IsA("Model") and v ~= char and v:findFirstChild("Humanoid") and v:findFirstChild("Torso") and v:findFirstChild("Humanoid").Health > 0 then
      local t = v.Torso
      local dist = t.Position - obj.Position.magnitude
      if dist <= distance and dist < last then
        last = dist
        lastx = v
      end
    end
  end
  return lastx
end

Damagefunc = function(Part, hit, minim, maxim, knockback, Type, Property, Delay, HitSound, HitPitch)
  if hit.Parent == nil then
    return 
  end
  local h = hit.Parent:FindFirstChild("Humanoid")
  for _,v in pairs(hit.Parent:children()) do
    if v:IsA("Humanoid") then
      h = v
    end
  end
  if h ~= nil and hit.Parent.Name ~= char.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
    if hit.Parent:findFirstChild("DebounceHit") ~= nil and hit.Parent.DebounceHit.Value == true then
      return 
    end
    local c = Create("ObjectValue")({Name = "creator", Value = game:service("Players").LocalPlayer, Parent = h})
    game:GetService("Debris"):AddItem(c, 0.5)
    if HitSound ~= nil and HitPitch ~= nil then
      CreateSound(HitSound, hit, 1, HitPitch)
    end
    local Damage = math.random(minim, maxim)
    local blocked = false
    local block = hit.Parent:findFirstChild("Block")
    if block ~= nil and block.className == "IntValue" and block.Value > 0 then
      blocked = true
      block.Value = block.Value - 1
      print(block.Value)
    end
    if blocked == false then
      h.Health = h.Health - Damage
      ShowDamage(Part.CFrame * CFrame.new(0, 0, Part.Size.Z / 2).p + Vector3.new(0, 1.5, 0), -Damage, 1.5, Part.BrickColor.Color)
    else
      h.Health = h.Health - Damage / 2
      ShowDamage(Part.CFrame * CFrame.new(0, 0, Part.Size.Z / 2).p + Vector3.new(0, 1.5, 0), -Damage, 1.5, Part.BrickColor.Color)
    end
    if Type == "Knockdown" then
      local hum = hit.Parent.Humanoid
      hum.PlatformStand = true
      coroutine.resume(coroutine.create(function(HHumanoid)
    swait(1)
    HHumanoid.PlatformStand = false
  end
), hum)
      local angle = hit.Position - (Property.Position + Vector3.new(0, 0, 0)).unit
      local bodvol = Create("BodyVelocity")({velocity = angle * knockback, P = 5000, maxForce = Vector3.new(8000, 8000, 8000), Parent = hit})
      local rl = Create("BodyAngularVelocity")({P = 3000, maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000, angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)), Parent = hit})
      game:GetService("Debris"):AddItem(bodvol, 0.5)
      game:GetService("Debris"):AddItem(rl, 0.5)
    else
      do
        if Type == "Debuff" then
            print'hi'
        else
          if Type == "Up" then
            local bodyVelocity = Create("BodyVelocity")({velocity = vt(0, 20, 0), P = 5000, maxForce = Vector3.new(8000, 8000, 8000), Parent = hit})
            game:GetService("Debris"):AddItem(bodyVelocity, 0.5)
          else
            do
              if Type == "DarkUp" then
                coroutine.resume(coroutine.create(function()
    for i = 0, 1, 0.1 do
      swait()
      BlockEffect(BrickColor.new("Black"), hit.Parent.Torso.CFrame, 5, 5, 5, 1, 1, 1, 0.08, 1)
    end
  end
))
                local bodyVelocity = Create("BodyVelocity")({velocity = vt(0, 20, 0), P = 5000, maxForce = Vector3.new(8000, 8000, 8000), Parent = hit})
                game:GetService("Debris"):AddItem(bodyVelocity, 1)
              else
                do
                  if Type == "Snare" then
                    local bp = Create("BodyPosition")({P = 2000, D = 100, maxForce = Vector3.new(math.huge, math.huge, math.huge), position = hit.Parent.Torso.Position, Parent = hit.Parent.Torso})
                    game:GetService("Debris"):AddItem(bp, 1)
                  else
                    do
                      if Type == "Freeze" then
                        local BodPos = Create("BodyPosition")({P = 50000, D = 1000, maxForce = Vector3.new(math.huge, math.huge, math.huge), position = hit.Parent.Torso.Position, Parent = hit.Parent.Torso})
                        local BodGy = Create("BodyGyro")({maxTorque = Vector3.new(400000, 400000, 400000) * math.huge, P = 20000, Parent = hit.Parent.Torso, cframe = hit.Parent.Torso.CFrame})
                        hit.Parent.Torso.Anchored = true
                        coroutine.resume(coroutine.create(function(Part)
    swait(1.5)
    Part.Anchored = false
  end), hit.Parent.Torso)
                        game:GetService("Debris"):AddItem(BodPos, 3)
                        game:GetService("Debris"):AddItem(BodGy, 3)
                      end
                      do
                        local debounce = Create("BoolValue")({Name = "DebounceHit", Parent = hit.Parent, Value = true})
                        game:GetService("Debris"):AddItem(debounce, Delay)
                        c = Instance.new("ObjectValue")
                        c.Name = "creator"
                        c.Value = Player
                        c.Parent = h
                        game:GetService("Debris"):AddItem(c, 0.5)
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end

ShowDamage = function(Pos, Text, Time, Color)
  local Rate = 0.033333333333333
  if not Pos then
    local Pos = Vector3.new(0, 0, 0)
  end
  local Text = Text or ""
  local Time = Time or 2
  if not Color then
    local Color = Color3.new(1, 0, 1)
  end
  local EffectPart = CreatePart(workspace, "SmoothPlastic", 0, 1, BrickColor.new(Color), "Effect", vt(0, 0, 0))
  EffectPart.Anchored = true
  local BillboardGui = Create("BillboardGui")({Size = UDim2.new(3, 0, 3, 0), Adornee = EffectPart, Parent = EffectPart})
  local TextLabel = Create("TextLabel")({BackgroundTransparency = 1, Size = UDim2.new(1, 0, 1, 0), Text = Text, TextColor3 = Color, TextScaled = true, Font = Enum.Font.ArialBold, Parent = BillboardGui})
  game.Debris:AddItem(EffectPart, Time + 0.1)
  EffectPart.Parent = game:GetService("Workspace")
  delay(0, function()
    local Frames = Time / Rate
    for Frame = 1, Frames do
      wait(Rate)
      local Percent = Frame / Frames
      EffectPart.CFrame = CFrame.new(Pos) + Vector3.new(0, Percent, 0)
      TextLabel.TextTransparency = Percent
    end
    if EffectPart and EffectPart.Parent then
      EffectPart:Destroy()
    end
  end
)
end

MagniDamage = function(Part, magni, mindam, maxdam, knock, Type)
  for _,c in pairs(workspace:children()) do
    local hum = c:findFirstChild("Humanoid")
    if hum ~= nil then
      local head = c:findFirstChild("Torso")
      if head ~= nil then
        local targ = head.Position - Part.Position
        local mag = targ.magnitude
        if mag <= magni and c.Name ~= Player.Name then
          Damagefunc(head, head, mindam, maxdam, knock, Type, RootPart, 0.1, "http://www.roblox.com/asset/?id=231917784", 1)
        end
      end
    end
  end
end





local effect = Instance.new("Model", Char)
effect.Name = "Effects"





BlockEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
  local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  if Type == 1 or Type == nil then
    table.insert(Effects, {prt, "Block1", delay, x3, y3, z3, msh})
  else
    if Type == 2 then
      table.insert(Effects, {prt, "Block2", delay, x3, y3, z3, msh})
    end
  end
end




WaveEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://20329976", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end



local grabbing = false
WindFloor = function()
 
end



bc = BrickColor.new
function WindFloor2()
		local shur = Instance.new("Part",char)
		local gahd = Instance.new("Sound",shur)
gahd.SoundId = "rbxassetid://402981977"
gahd.Volume = 5
gahd.Pitch = 0.75
gahd:Play()
shur.Transparency = 1
shur.Material = "Neon"
shur.BrickColor = bc("Royal purple")
shur.Anchored = true
shur.CFrame = mouse.Hit
shur.Rotation = vt(0,math.random(-500,500),0)
shur.Size = vt(1,0.2,1)
shur.CanCollide = false
local dec = Instance.new("Decal",shur)
dec.Texture = symbolimg
dec.Face = "Top"
local dec2 = dec:Clone()
dec2.Parent = shur
dec2.Face = "Bottom"
local Meshshur = Instance.new("CylinderMesh",shur)
Meshshur.Scale = vt(0,1,0)
local value1 = 1*2.25
for i = 0, 50 do
	Meshshur.Scale = Meshshur.Scale + vt(value1,0,value1)
	value1 = value1 - 0.015*2.25
	wait(0)
end
local spart = Instance.new("Part",char)
local tick = Instance.new("Sound",spart)
tick.SoundId = "rbxassetid://414516914"
tick.Volume = 2.5
tick.Pitch = 0.45
tick:Play()
spart.Size = vt(1,1,1)
spart.BrickColor = BrickColor.new("Royal purple")
spart.Transparency = 0.1
spart.Anchored = true
spart.CanCollide = false
spart.CFrame = shur.CFrame + vt(0,2.5,0)
local expld = Instance.new("Explosion", spart)
expld.BlastRadius = 27.5
expld.Position = spart.Position
local mesh = Instance.new("SpecialMesh",spart)
mesh.MeshType = "FileMesh"
mesh.Scale = vt(1,0.01,1)
mesh.MeshId = "http://www.roblox.com/asset/?id=102638417"
local parz = spart:Clone()
local mshe = parz.Mesh
mshe.MeshId = "http://www.roblox.com/asset/?id=1051557"
parz.CFrame = spart.CFrame
parz.Parent = char
local par2 = spart:Clone()
local msh = par2.Mesh
par2.Mesh.MeshType = "Sphere"
par2.Material = "Neon"
par2.CFrame = spart.CFrame
par2.BrickColor = BrickColor.new("Royal purple")
par2.Parent = char
local par3 = spart:Clone()
local msh3 = par2.Mesh
msh3.Scale = vt(15,0,15)
par3.Mesh.MeshType = "Sphere"
par3.Material = "Neon"
par3.CFrame = spart.CFrame
par3.BrickColor = BrickColor.new("Royal purple")
par3.Parent = char
for i = 0, 150 do
spart.Transparency = spart.Transparency + 0.01
mesh.Scale = mesh.Scale + vt(2.25,0.15,2.25)
spart.Position = spart.Position
spart.CFrame = spart.CFrame*CFrame.Angles(0,0.5,0)
par2.Transparency = par2.Transparency + 0.01
msh.Scale = msh.Scale + vt(1.5/1.25,1.5/1.25,1.5/1.25)
par2.Position = par2.Position
par2.CFrame = par2.CFrame*CFrame.Angles(0,-0.5,0)
par3.Transparency = par2.Transparency + 0.05
msh3.Scale = msh3.Scale + vt(-0.5,50/1.25,-0.5)
par3.Position = par2.Position
par3.CFrame = par2.CFrame*CFrame.Angles(0,-0.5,0)
parz.Transparency = par2.Transparency + 0.01
mshe.Scale = msh.Scale + vt(4,1,4)
parz.Position = parz.Position
parz.CFrame = parz.CFrame*CFrame.Angles(0,-0.5,0)
wait(0)
end
for i = 0, 100 do
	dec.Transparency = dec.Transparency + 0.015
		dec2.Transparency = dec.Transparency
	Meshshur.Scale = Meshshur.Scale + vt(value1,0,value1)
	value1 = value1 - 0.015*2.25
	wait(0)
end
shur:Destroy()
par2:Destroy()
spart:Destroy()
end







function BlastStorm()

local lag = Instance.new("Sound", workspace)
lag.SoundId = "rbxassetid://752783199"
lag.Volume = 20000
lag.Pitch = 1
lag:Play()
wait(0)
	local ff = Instance.new("ForceField",char)
		local shur = Instance.new("Part",char)
		local gahd = Instance.new("Sound",char)
gahd.SoundId = "rbxassetid://402981977"
gahd.Volume = 2.5
gahd.Pitch = 0.6
gahd:Play()
shur.Transparency = 1
shur.Material = "Neon"
shur.BrickColor = bc("Royal purple")
shur.Anchored = true
shur.CFrame = mouse.Hit
shur.Size = vt(1,0.2,1)
shur.CanCollide = false
local dec = Instance.new("Decal",shur)
dec.Texture = symbolimg
dec.Face = "Top"
local dec2 = dec:Clone()
dec2.Parent = shur
dec2.Face = "Bottom"
local Meshshur = Instance.new("CylinderMesh",shur)
Meshshur.Scale = vt(0,1,0)
local value1 = 1*12.5
for i = 0, 50 do
shur.CFrame = torso.CFrame + vt(0,-2.5,0)
	Meshshur.Scale = Meshshur.Scale + vt(value1,0,value1)
	value1 = value1 - 0.015*12.5
	wait(0)
end

wait(0)
local spart = Instance.new("Part",char)
local tick = Instance.new("Sound",char)
tick.SoundId = "rbxassetid://414516914"
tick.Volume = 2.5
tick.Pitch = 0.4
tick:Play()
local tickz = Instance.new("Sound",char)
tickz.SoundId = "rbxassetid://435742675"
tickz.Volume = 1
tickz.Pitch = 1
tickz:Play()
local tickr = Instance.new("Sound",char)
tickr.SoundId = "rbxassetid://435742675"
tickr.Volume = 2.5
tickr.Pitch = 0.5
tickr:Play()
local tickel = Instance.new("Sound",char)
tickel.SoundId = "rbxassetid://2248511"
tickel.Volume = 3
tickel.Pitch = 0.2
tickel:Play()
spart.Size = vt(1,1,1)
spart.BrickColor = BrickColor.new("Royal purple")
spart.Transparency = 0.1
spart.Anchored = true
spart.CanCollide = false
spart.CFrame = mouse.Hit
local expld = Instance.new("Explosion", spart)
expld.BlastRadius = 500000
expld.Position = spart.Position
local mesh = Instance.new("SpecialMesh",spart)
mesh.MeshType = "FileMesh"
mesh.Scale = vt(1,0.01,1)
mesh.MeshId = "http://www.roblox.com/asset/?id=102638417"
local parz = spart:Clone()
local mshe = parz.Mesh
mshe.MeshId = "http://www.roblox.com/asset/?id=1051557"
parz.CFrame = spart.CFrame
parz.Parent = char
local par2 = spart:Clone()
local msh = par2.Mesh
par2.Mesh.MeshType = "Sphere"
par2.Material = "Neon"
par2.CFrame = spart.CFrame
par2.BrickColor = BrickColor.new("Royal purple")
par2.Parent = char
for i = 0, 200 do
spart.Transparency = spart.Transparency + 0.005
mesh.Scale = mesh.Scale + vt(10,1,10)
spart.Position = spart.Position
spart.CFrame = spart.CFrame*CFrame.Angles(0,0.5,0)
par2.Transparency = par2.Transparency + 0.005
msh.Scale = msh.Scale + vt(5/1.25,1000/1.25,5/1.25)
par2.Position = par2.Position
par2.CFrame = par2.CFrame*CFrame.Angles(0,-0.5,0)
parz.Transparency = par2.Transparency + 0.005
mshe.Scale = msh.Scale + vt(6,1,6)
parz.Position = parz.Position
parz.CFrame = parz.CFrame*CFrame.Angles(0,-0.5,0)
wait(0)
end
ff:Destroy()
for i = 0, 100 do
	dec.Transparency = dec.Transparency + 0.015
		dec2.Transparency = dec.Transparency
	Meshshur.Scale = Meshshur.Scale + vt(value1,0,value1)
	value1 = value1 - 0.015*12.5
	wait(0)
end
shur:Destroy()
par2:Destroy()
spart:Destroy()
tick:Destroy()
tickr:Destroy()
tickz:Destroy()
tickel:Destroy()
end








local maincolor = Color3.new(170/255,0/255,255/255)



function noobyisscripter()
local hitted = false
local valuesize = 5
 local lb = Instance.new("Part")
  lb.Parent = char
   lb.Material = "Neon"
    lb.BrickColor = BrickColor.new(maincolor)
     lb.CanCollide = false
     lb.Shape = "Ball"
     lb.CFrame = char.Torso.CFrame + Vector3.new(0,0.7,0)
     lb.Anchored = false
     lb.Size = vt(1,1,1)
     local thing = Instance.new("SpecialMesh",lb)
     thing.MeshType = "Sphere"
local trail = Instance.new("ParticleEmitter",lb)
trail.Texture = "rbxassetid://296874871"
trail.LightEmission = 0.95
trail.Color = ColorSequence.new(maincolor)
trail.Rate = 10000
trail.Lifetime = NumberRange.new(1.5)
trail.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,1.5,0),NumberSequenceKeypoint.new(1,0,0)})
trail.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,1,0)})
trail.Speed = NumberRange.new(0,0)
trail.RotSpeed = NumberRange.new(-500,500)
  local bv = Instance.new("BodyVelocity")
  bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
  bv.velocity = mouse.Hit.lookVector *100
  bv.Parent = lb
  wait(0.1)
pewdiepie=lb.Touched:connect(function(hit)
if hitted == false then
local sd = Instance.new("Sound",lb)
sd.SoundId = "rbxassetid://138210320"
sd.Volume = 2.5
sd:Play()
hitted = true
trail.Rate = 0
lb.Anchored = true
local explosion = Instance.new("Explosion",lb)
explosion.BlastRadius = 10
explosion.Position = lb.Position
local ex = Instance.new("ParticleEmitter",lb)
ex.Texture = "rbxassetid://296874871"
ex.LightEmission = 0.95
ex.Color = ColorSequence.new(maincolor)
ex.Rate = 10000
ex.Lifetime = NumberRange.new(1.75)
ex.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,10,0),NumberSequenceKeypoint.new(1,25,0)})
ex.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,1,0)})
ex.Speed = NumberRange.new(25,45)
ex.VelocitySpread = 90000
ex.RotSpeed = NumberRange.new(-500,500)
for i = 0, 19 do
wait()
valuesize = valuesize - 0.25
thing.Scale = thing.Scale + vt(valuesize,valuesize,valuesize)
end
ex.Rate = 0
for i = 0, 9 do
wait()
lb.Transparency = lb.Transparency + 0.1
end
wait(5)
lb:Destroy()
end
end)
end


mouse.KeyDown:connect(function(key)
	if key == "g" then
		if Debounces.CanAttack == true then
		Debounces.CanAttack = false
		Debounces.on = true
		Debounces.NoIdl = true
pt = {1, 1.1, 1.2, 1.3, 1.4, 1.5}
shot1 = Instance.new("Sound",Torso)
shot1.SoundId = "rbxassetid://200633492"
shot1.Looped = false
shot1.Pitch = 3
shot1.Volume = 400
shot1:Play()
Debounces.RPunch = true
Debounces.LPunch = true
Debounces.ks = true
Debounces.ks2 = true
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(20)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
shot1 = Instance.new("Sound",Torso)
shot1.SoundId = "rbxassetid://200633492"
shot1.Looped = false
shot1.Pitch = 3
shot1.Volume = 400
shot1:Play()
wait(0.5)
noobyisscripter()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(120),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
shot1 = Instance.new("Sound",Torso)
shot1.SoundId = "rbxassetid://200633492"
shot1.Looped = false
shot1.Pitch = 3
shot1.Volume = 400
shot1:Play()
wait(0.5)
noobyisscripter()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(-20),math.rad(20)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(0),math.rad(50)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
shot1 = Instance.new("Sound",Torso)
shot1.SoundId = "rbxassetid://200633492"
shot1.Looped = false
shot1.Pitch = 3
shot1.Volume = 400
shot1:Play()
wait(0.5)
noobyisscripter()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
shot1 = Instance.new("Sound",Torso)
shot1.SoundId = "rbxassetid://200633492"
shot1.Looped = false
shot1.Pitch = 3
shot1.Volume = 400
shot1:Play()
wait(0.5)
noobyisscripter()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(110),math.rad(30),math.rad(20)), 0.9)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.9)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.9)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.9)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.9)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.9)
if Debounces.on == false then break end
wait()
end
shot1 = Instance.new("Sound",Torso)
shot1.SoundId = "rbxassetid://200633492"
shot1.Looped = false
shot1.Pitch = 3
shot1.Volume = 400
shot1:Play()
wait(0.5)
noobyisscripter()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
shot1 = Instance.new("Sound",Torso)
shot1.SoundId = "rbxassetid://200633492"
shot1.Looped = false
shot1.Pitch = 3
shot1.Volume = 400
shot1:Play()
wait(0.5)
noobyisscripter()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(20)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
shot1 = Instance.new("Sound",Torso)
shot1.SoundId = "rbxassetid://200633492"
shot1.Looped = false
shot1.Pitch = 3
shot1.Volume = 400
shot1:Play()
wait(0.5)
noobyisscripter()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(120),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
shot1 = Instance.new("Sound",Torso)
shot1.SoundId = "rbxassetid://200633492"
shot1.Looped = false
shot1.Pitch = 3
shot1.Volume = 400
shot1:Play()
wait(0.5)
noobyisscripter()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(-20),math.rad(20)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(0),math.rad(50)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
shot1 = Instance.new("Sound",Torso)
shot1.SoundId = "rbxassetid://200633492"
shot1.Looped = false
shot1.Pitch = 3
shot1.Volume = 400
shot1:Play()
wait(0.5)
noobyisscripter()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
shot1 = Instance.new("Sound",Torso)
shot1.SoundId = "rbxassetid://200633492"
shot1.Looped = false
shot1.Pitch = 3
shot1.Volume = 400
shot1:Play()
wait(0.5)
noobyisscripter()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(110),math.rad(30),math.rad(20)), 0.9)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.9)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.9)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.9)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.9)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.9)
if Debounces.on == false then break end
wait()
end
shot1 = Instance.new("Sound",Torso)
shot1.SoundId = "rbxassetid://200633492"
shot1.Looped = false
shot1.Pitch = 3
shot1.Volume = 400
shot1:Play()
wait(0.5)
noobyisscripter()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(120),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
shot1 = Instance.new("Sound",Torso)
shot1.SoundId = "rbxassetid://200633492"
shot1.Looped = false
shot1.Pitch = 3
shot1.Volume = 400
shot1:Play()
wait(0.5)
noobyisscripter()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(-20),math.rad(20)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(0),math.rad(50)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
shot1 = Instance.new("Sound",Torso)
shot1.SoundId = "rbxassetid://200633492"
shot1.Looped = false
shot1.Pitch = 3
shot1.Volume = 400
shot1:Play()
wait(0.5)
noobyisscripter()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
shot1 = Instance.new("Sound",Torso)
shot1.SoundId = "rbxassetid://200633492"
shot1.Looped = false
shot1.Pitch = 3
shot1.Volume = 400
shot1:Play()
wait(0.5)
noobyisscripter()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(110),math.rad(30),math.rad(20)), 0.9)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.9)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.9)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.9)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.9)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.9)
if Debounces.on == false then break end
wait()
end
shot1 = Instance.new("Sound",Torso)
shot1.SoundId = "rbxassetid://200633492"
shot1.Looped = false
shot1.Pitch = 3
shot1.Volume = 400
shot1:Play()
wait(0.5)
noobyisscripter()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
shot1 = Instance.new("Sound",Torso)
shot1.SoundId = "rbxassetid://200633492"
shot1.Looped = false
shot1.Pitch = 3
shot1.Volume = 400
shot1:Play()
wait(0.5)
noobyisscripter()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(20)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
shot1 = Instance.new("Sound",Torso)
shot1.SoundId = "rbxassetid://200633492"
shot1.Looped = false
shot1.Pitch = 3
shot1.Volume = 400
shot1:Play()
wait(0.5)
noobyisscripter()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(120),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
shot1 = Instance.new("Sound",Torso)
shot1.SoundId = "rbxassetid://200633492"
shot1.Looped = false
shot1.Pitch = 3
shot1.Volume = 400
shot1:Play()
wait(0.5)
noobyisscripter()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(-20),math.rad(20)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(0),math.rad(50)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(-50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end
shot1 = Instance.new("Sound",Torso)
shot1.SoundId = "rbxassetid://200633492"
shot1.Looped = false
shot1.Pitch = 3
shot1.Volume = 400
shot1:Play()
wait(0.5)
noobyisscripter()
for i = 1, 3 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.92)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(60),math.rad(20),math.rad(-20)), 0.92)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(50),0), 0.92)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-50), 0), 0.92)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.6, -1, 0) * CFrame.Angles(math.rad(10), math.rad(50), math.rad(-15)), 0.92)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.6, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(50), math.rad(15)), 0.92)
if Debounces.on == false then break end
wait()
end

Debounces.LPunch = false
Debounces.RPunch = false
Debounces.ks = false
Debounces.ks2 = false
if Debounces.CanAttack == false then
Debounces.CanAttack = true
Debounces.on = false
Debounces.NoIdl = false
end
end
end
end)




mouse.KeyDown:connect(function(key)
	if key == "r" then

		if Debounces.CanAttack == true then
			Debounces.CanAttack = false
			Debounces.NoIdl = true
			Debounces.on = true
			game:GetService("Chat"):Chat(game.Players.LocalPlayer.Character,"Here is all of my energy","Red")
			function FindNearestTorso(Position,Distance,SinglePlayer)
				if SinglePlayer then return(SinglePlayer.Torso.CFrame.p -Position).magnitude < Distance end
					local List = {}
					for i,v in pairs(workspace:GetChildren())do
						if v:IsA("Model")then
							if v:findFirstChild("Torso")then
								if v ~= char then
									if(v.Torso.Position -Position).magnitude <= Distance then
										table.insert(List,v)
									end
								end
							end
						end
					end
				return List
			end
	z = Instance.new("Sound",hed)
	z.SoundId = "rbxassetid://232213955"
	z.Pitch = 1
	z.Volume = 1
	wait(0.2)
	z:Play()
	sp = Instance.new("Part",hed)
	sp.Anchored = true
	sp.CanCollide = false
	sp.Locked = false
	sp.Transparency = 0
	sp.Material = "Neon"
	sp.Size = Vector3.new(1,1,1)
	sp.TopSurface = "SmoothNoOutlines"
	sp.BottomSurface = "SmoothNoOutlines"
	sp.BrickColor = BrickColor.new("Royal purple")
	spm = Instance.new("SpecialMesh",sp)
	spm.MeshType = "Sphere"
	spm.Scale = Vector3.new(100,100,100)
	sp2 = Instance.new("Part", rarm)
	sp2.Name = "Energy"
	sp2.BrickColor = BrickColor.new("Royal purple")
	sp2.Size = Vector3.new(1,1,1)
	sp2.Shape = "Ball"
	sp2.CanCollide = false
	sp2.Anchored = true
	sp2.Locked = true
	sp2.TopSurface = 0
	sp2.BottomSurface = 0
	sp2.Transparency = 1
	spm2 = Instance.new("SpecialMesh",sp2)
	spm2.MeshId = "rbxassetid://9982590"
	spm2.Scale = Vector3.new(100,100,100)
	for i = 1, 20 do
		spm.Scale = spm.Scale - Vector3.new(1,1,1)
		sp.CFrame = root.CFrame*CFrame.new(0,100,0)
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62,0)*CFrame.Angles(math.rad(180),math.rad(0),math.rad(8)), 0.4)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62,0)*CFrame.Angles(math.rad(180),math.rad(0),math.rad(-8)), 0.4)
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.4)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.4)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-8)), 0.4)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(8)), 0.4)
		if Debounces.on == false then break end
		rs:wait()
	end
	for i = 1, 100, 20 do rs:wait()
		sp.CFrame = root.CFrame*CFrame.new(0,100,0)
	end
	for i = 1, 20 do
		sp.CFrame = root.CFrame*CFrame.new(0,100,0)
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62,0)*CFrame.Angles(math.rad(180),math.rad(0),math.rad(-8)), 0.4)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62,.2)*CFrame.Angles(math.rad(180),math.rad(0),math.rad(8)), 0.4)
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(20),math.rad(0),0), 0.4)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.4)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-8)), 0.4)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(8)), 0.4)
		if Debounces.on == false then break end
		rs:wait()
	end
	sp.Transparency = 0
	for i = 1, 20 do
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62,0)*CFrame.Angles(math.rad(180),math.rad(0),math.rad(-8)), 0.4)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2,0.62,-.2)*CFrame.Angles(math.rad(180),math.rad(0),math.rad(8)), 0.4)
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(20),math.rad(0),0), 0.4)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.4)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-8)), 0.4)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(8)), 0.4)
		if Debounces.on == false then break end
		rs:wait()
	end
	wait(1)
	sp.Transparency = 0
	sp2.Transparency = 0.84
	for i = 1, 20 do
		--spm.Scale = spm.Scale - Vector3.new(15,15,15)
		sp.CFrame = root.CFrame*CFrame.new(0,100,0)
		sp2.CFrame = sp.CFrame * CFrame.new(0,0,0) * CFrame.Angles(math.rad(-i), math.rad(-i), math.rad(i))
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(180),math.rad(0),math.rad(-8)), 0.4)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0)*CFrame.Angles(math.rad(180),math.rad(0),math.rad(8)), 0.2)
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.2)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, math.rad(-8)), 0.2)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, math.rad(8)), 0.2)
		if Debounces.on == false then break end
		rs:wait()
	end
	for i = 1, 2880, 50 do
		rs:wait()
		sp.CFrame = root.CFrame*CFrame.new(0,100,0)
		sp2.CFrame = sp.CFrame * CFrame.new(0,0,0) 
		rs:wait()
	end
	sp:Destroy()
	sp2:Destroy()
game:GetService("Chat"):Chat(game.Players.LocalPlayer.Character,"TAKE THIS!","Red")
	local X = Instance.new("Part",char)
	local O = Instance.new("ObjectValue",X)
	O.Name = "creator"
	X.Locked = true
	X.Name = "Shell"
	X.Anchored = false
	X.CanCollide = false
	X.Transparency = 0
	X.Reflectance = 0
	X.BottomSurface = 0
	X.TopSurface = 0
	X.Shape = 0
	local V = Instance.new("ObjectValue",X)
	V.Value = char
	V.Name = "creator"
	X.BrickColor = BrickColor.new("Royal purple")
	X.Size = Vector3.new(1,1,1)
	X.Material = "Neon"
	local Z = Instance.new("SpecialMesh",X)
	Z.MeshType = "Sphere"
	Z.Scale = Vector3.new(100,100,100)
	X.CFrame = rarm.CFrame*CFrame.new(15,15,15)
	local bv = Instance.new("BodyVelocity",X)
	bv.maxForce = Vector3.new(99999,99999,99999)
	X.CFrame = CFrame.new(X.Position,mouse.Hit.p)
	bv.velocity = X.CFrame.lookVector*65

	Explode = X.Touched:connect(function(hit)
	
			local cf = X.CFrame
			bv:Destroy()
			X.Anchored = true
			Z:Remove()
			Explode:disconnect()
			
			local ROW2 = function(out, trans, s, wt, t, ang, plus)
					for i = 1, 360, 360/t do
						local c = Instance.new("Part", game.Workspace)
						c.FormFactor = 3
						c.TopSurface = 0
						c.BottomSurface = 0
						c.Size = s
						c.Anchored = true
						c.CanCollide = wt
						c.Material=workspace.Base.Material
						c.Transparency = trans
						c.BrickColor = workspace.Base.BrickColor
						c.CFrame = CFrame.new(X.CFrame.x,0,X.CFrame.z) * CFrame.Angles(0, math.rad(i +  plus), 0) *     CFrame.new(0, 0, out) * ang
						c.Locked=true
						game.Debris:AddItem(c,25)
					end
end

ROW2(18, 0, Vector3.new(34.5, 70, 3), true, 8, CFrame.Angles(math.rad(math.random (30,60)), 0, math.rad    (math.random(-30,30))), 0)
	
	
	local ra = Ray.new(X.Position, X.CFrame.upVector * 3)
    local part, positi = workspace:FindPartOnRayWithIgnoreList(ra, {Char}, false, true)
    if part then
      local cfremz = CFrame.new(positi)
      debris(cfremz, part, 30)
    end
				
			X.Size = Vector3.new(6,6,6)
			X.Touched:connect(function(hit) end)
			X.CanCollide = false
			local part3 = Instance.new("Part", rarm)
			part3.Anchored=true
			part3.CanCollide=false
			part3.Locked = true
			part3.TopSurface = "SmoothNoOutlines"
			part3.BottomSurface = "SmoothNoOutlines"
			part3.FormFactor='Custom'
			part3.Size=Vector3.new(2,2, 2)
			part3.CFrame=X.CFrame
			part3.Transparency=0
			part3.BrickColor=TorsoColor
			local mesh3 = Instance.new("SpecialMesh",part3)
			mesh3.MeshType = "Sphere"
			mesh3.Scale = Vector3.new(2,2,2)
			--debris:AddItem(X,8)
			local part4 = Instance.new("Part", rarm)
			part4.Material = "Neon"
			part4.Anchored=true
			part4.CanCollide=false
			part4.Locked = true
			part4.TopSurface = "SmoothNoOutlines"
			part4.BottomSurface = "SmoothNoOutlines"
			part4.FormFactor='Custom'
			part4.Size=Vector3.new(2,2, 2)
			part4.CFrame=X.CFrame
			part4.Transparency=0
			part4.BrickColor=BrickColor.new("Black")
			local mesh4 = Instance.new("SpecialMesh",part4)
			mesh4.MeshType = "Sphere"
			mesh4.Scale = Vector3.new(1,1,1)
			local part7 = Instance.new("Part", rarm)
			part7.Material = "Neon"
			part7.Anchored=true
			part7.CanCollide=false
			part7.Locked = true
			part7.TopSurface = "SmoothNoOutlines"
			part7.BottomSurface = "SmoothNoOutlines"
			part7.FormFactor='Custom'
			part7.Size=Vector3.new(2,2, 2)
			part7.CFrame=X.CFrame
			part7.Transparency=0
			part7.BrickColor=BrickColor.new("Really black")
			local mesh7 = Instance.new("SpecialMesh",part7)
			mesh7.MeshType = "Sphere"
			mesh7.Scale = Vector3.new(0.2, 0.2, 0.2)
		--[[X.Touched:connect(function(ht)
				hit = ht.Parent
			if ht and hit:IsA("Model") then
					if hit:FindFirstChild("Humanoid") then
						if hit.Name ~= p.Name then
							hit:FindFirstChild("Humanoid"):TakeDamage(math.random(4,6))
							wait(.3)
						end
					end
			elseif ht and hit:IsA("Hat") then
				if hit.Parent.Name ~= p.Name then
					if hit.Parent:FindFirstChild("Humanoid") then
						hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.random(4,6))
						wait(.3)
					end
				end
			end
		end)
		part3.Touched:connect(function(ht)
				hit = ht.Parent
			if ht and hit:IsA("Model") then
					if hit:FindFirstChild("Humanoid") then
						if hit.Name ~= p.Name then
							hit:FindFirstChild("Humanoid"):TakeDamage(math.random(4,6))
							wait(.3)
						end
					end
			elseif ht and hit:IsA("Hat") then
				if hit.Parent.Name ~= p.Name then
					if hit.Parent:FindFirstChild("Humanoid") then
						hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.random(4,6))
						wait(.3)
					end
				end
			end
		end)]]--
		for i,v in pairs(FindNearestTorso(X.CFrame.p,140))do
			if v:FindFirstChild('Humanoid') then
				v.Humanoid:TakeDamage(math.random(999999999999999999999999999999999999999999,999999999999999999999999999999999999999))
				v.Humanoid.PlatformStand = true
				v:FindFirstChild("Torso").Velocity = hed.CFrame.lookVector * 999
			end
		end

		local acos = math.acos
		local sqrt = math.sqrt
		local Vec3 = Vector3.new
		local fromAxisAngle = CFrame.fromAxisAngle

		local function toAxisAngle(CFr)
			local X,Y,Z,R00,R01,R02,R10,R11,R12,R20,R21,R22 = CFr:components()
			local Angle = math.acos((R00+R11+R22-1)/2)
			local A = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
			A = A == 0 and 0.00001 or A
			local B = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
			B = B == 0 and 0.00001 or B
			local C = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
			C = C == 0 and 0.00001 or C
			local x = (R21-R12)/sqrt(A)
			local y = (R02-R20)/sqrt(B)
			local z = (R10-R01)/sqrt(C)
			return Vec3(x,y,z),Angle
		end

		function ApplyTrig(Num,Func)
			local Min,Max = Func(0),Func(1)
			local i = Func(Num)
			return (i-Min)/(Max-Min)
		end

		function LerpCFrame(CFrame1,CFrame2,Num)
			local Vec,Ang = toAxisAngle(CFrame1:inverse()*CFrame2)
			return CFrame1*fromAxisAngle(Vec,Ang*Num) + (CFrame2.p-CFrame1.p)*Num
		end

		function Crater(Torso,Radius)
			Spawn(function()
				local Ray = Ray.new(Torso.Position,Vector3.new(0,-1,0)*10)
				local Ignore = {}
				for i,v in pairs(game:GetService("Players"):GetPlayers()) do
					if v.Character ~= nil then
						Ignore[#Ignore+1] = v.Character
					end
				end
				local Hit,Pos,SurfaceNorm = Workspace:FindPartOnRayWithIgnoreList(Ray,Ignore)
				if Hit == nil then return end
					local Parts = {}
					for i = 1,360,10 do
						local P = Instance.new("Part",Torso.Parent)
						P.Anchored = true
						P.FormFactor = "Custom"
						P.BrickColor = Hit.BrickColor
						P.Material = Hit.Material
						P.TopSurface = "Smooth"
						P.BottomSurface = "Smooth"
						P.Size = Vector3.new(10,20,20)*(math.random(80,100)/100)
						P.CFrame = ((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,7,0))*CFrame.Angles(math.rad(math.random(-50,50)),math.rad(math.random(-50,50)),math.rad(math.random(-50,50)))
						Parts[#Parts+1] = {P,P.CFrame,((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,1,0))*CFrame.Angles(0,math.rad(i),0)*CFrame.new(0,0,-Radius)*CFrame.Angles(math.rad(math.random(-50,-20)),math.rad(math.random(-15,15)),math.rad(math.random(-15,15))),P.Size}
						if math.random(0,5) == 0 then -- rubble
							local P = Instance.new("Part",Torso.Parent)
							P.Anchored = true
							P.FormFactor = "Custom"
							P.BrickColor = Hit.BrickColor
							P.Material = Hit.Material
							P.TopSurface = "Smooth"
							P.BottomSurface = "Smooth"
							P.Size = Vector3.new(4,4,4)*(math.random(80,100)/100)
							P.CFrame = ((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,2.5,0))*CFrame.Angles(math.rad(math.random(-50,50)),math.rad(math.random(-50,50)),math.rad(math.random(-50,50)))
							Parts[#Parts+1] = {P,P.CFrame,(CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))*CFrame.Angles(0,math.rad(i),0)*CFrame.new(0,0,-Radius-8)*CFrame.Angles(math.rad(math.random(-90,90)),math.rad(math.random(-90,90)),math.rad(math.random(-90,90))),P.Size}
							end
						end
						for i = 0,1,0.05 do
							for i2,v in pairs(Parts) do
								v[1].CFrame = LerpCFrame(v[2],v[3],ApplyTrig(i,math.cos))
							end
							wait(0.02)
						end
						for i,v in pairs(Parts) do
							if v[1].Size.X > 2.1 then
								v[1].CFrame = v[1].CFrame+Vector3.new(0,2,0)
							end
							v[1].Anchored = false
						end
						for i = 0,1,0.05 do
							for i2,v in pairs(Parts) do
								v[1].Transparency = i
								if i == 1 then
									v[1]:Destroy()
								elseif i >= 0.25 then
									v[1].CanCollide = false
								end
							end
						wait(0.02)
						end
					Parts = nil
					end)
				end

				
				Part = function(x,y,z,color,tr,cc,an,parent)
					local p = Instance.new('Part',parent or Weapon)
					p.formFactor = 'Custom'
					p.Size = Vector3.new(x,y,z)
					p.BrickColor = BrickColor.new(color)
					p.CanCollide = cc
					p.Transparency = tr
					p.Anchored = an
					p.TopSurface,p.BottomSurface = 0,0
					p.Locked=true
					p:BreakJoints()
				return p end

			Mesh = function(par,num,x,y,z)
			local msh = _
			if num == 1 then msh = Instance.new("CylinderMesh",par)
			elseif num == 2 then msh = Instance.new("SpecialMesh",par) msh.MeshType = 3
			elseif num == 3 then msh = Instance.new("BlockMesh",par)
			elseif num == 4 then msh = Instance.new("SpecialMesh",par) msh.MeshType = "Torso"
			elseif type(num) == 'string' then msh = Instance.new("SpecialMesh",par) msh.MeshId = num
			end msh.Scale = Vector3.new(x,y,z)
			return msh end

			function explosion(col1,col2,cfr,sz,rng,dmg)
				local a= Part(1,1,1,col1,.5,false,true,workspace)
				local a2= Part(1,1,1,col2,.5,false,true,workspace)
				local a3= Part(1,1,1,col2,.5,false,true,workspace)
				v1,v2,v3=sz.x,sz.y,sz.z
				local m= Mesh(a,'http://www.roblox.com/asset/?id=1185246',v1,v2,v3)
				local m2= Mesh(a2,3,v1/3,v2/3,v3/3)
				local m3= Mesh(a3,3,v1/3,v2/3,v3/3)
				a.CFrame=cfr
				a2.CFrame=cfr*CFrame.Angles(math.random(),math.random(),math.random())
				a3.CFrame=cfr*CFrame.Angles(math.random(),math.random(),math.random())

				Spawn(function()
					while wait() do
						if a.Transparency >= 1 then a:Destroy() a2:Destroy() a3:Destroy() break end
							m.Scale=m.Scale+Vector3.new(.1,0.1,0.1)
							m2.Scale=m2.Scale+Vector3.new(.1,0.1,0.1)
							m3.Scale=m3.Scale+Vector3.new(.1,0.1,0.1)
							a.Transparency=a.Transparency+0.05
							a2.Transparency=a2.Transparency+0.05
							a3.Transparency=a3.Transparency+0.05
						end
					end)
				end

				Crater(X,120)
				Crater(X,220)
				Crater(X,320)
				z = Instance.new("Sound",workspace)
				z.SoundId = "rbxassetid://231917744"
				z.Pitch = .5
				z.Volume = 5
				z1 = Instance.new("Sound",workspace)
				z1.SoundId = "rbxassetid://231917744"
				z1.Pitch = .5
				z1.Volume = 5
				z2 = Instance.new("Sound",workspace)
				z2.SoundId = "rbxassetid://231917744"
				z2.Pitch = .5
				z2.Volume = 5
				z3 = Instance.new("Sound",workspace)
				z3.SoundId = "rbxassetid://245537790"
				z3.Pitch = .7
				z3.Volume = 5
				z4 = Instance.new("Sound",workspace)
				z4.SoundId = "rbxassetid://245537790"
				z4.Pitch = .7
				z4.Volume = 5
                                z4a = Instance.new("Sound",workspace)
                                z4a.SoundId = "rbxassetid://419447292"
                                z4a.Pitch = 1
                                z4a.Volume = 5
                                z3a = Instance.new("Sound",workspace)
                                z3a.SoundId = "rbxassetid://421328847"
                                z3a.Pitch = 1
                                z3a.Volume = 5
                                wait(0.1)
				z:Play()
				z1:Play()
				z2:Play()
				z3:Play()
				z4:Play()
				z3a:Play()
				z4a:Play()

				local part=Instance.new('Part',rarm)
				part.Anchored=true
				part.CanCollide=false
				part.Locked = true
				part.FormFactor='Custom'
				part.Size=Vector3.new(2,2,2)
				part.CFrame=X.CFrame*CFrame.new(0,0,0)
				part.Transparency=0
				part.BrickColor=BrickColor.new('Really black')
				local mesh=Instance.new('SpecialMesh',part)
				mesh.MeshId='http://www.roblox.com/asset/?id=20329976'
				mesh.Scale=Vector3.new(4,4,4)
				local part2=part:clone()
				part2.Parent = rarm
				part2.BrickColor=TorsoColor
				local part5=part:clone()
				part5.Parent = rarm
				part5.BrickColor=TorsoColor
				local part6=part:clone()
				part6.Parent = rarm
				part6.BrickColor=BrickColor.new("Black")
				local mesh2=mesh:clone()
				mesh2.Parent=part2
				mesh2.Scale=Vector3.new(6, 6, 6)
				local mesh5=mesh:clone()
				mesh5.Parent=part5
				mesh5.Scale=Vector3.new(6, 6, 6)
				local mesh6=mesh:clone()
				mesh6.Parent=part6
				mesh6.Scale=Vector3.new(6, 6, 6)
				local blast = Instance.new("Part", rarm)
				blast.BrickColor = BrickColor.new("Really black")
				blast.Anchored = true
				blast.CanCollide = false
				blast.Locked = true
				blast.Size = Vector3.new(2, 2, 2)
				blast.TopSurface = "Smooth"
				blast.BottomSurface = "Smooth"
				blast.Transparency = 0
				blast.CFrame = HandCF
				local bm = Instance.new("SpecialMesh", blast)
				bm.Scale = Vector3.new(10,2,10)
				bm.MeshId = "rbxassetid://3270017"
				local blast2 = Instance.new("Part", rarm)
				blast2.BrickColor = BrickColor.new("Really black")
				blast2.Anchored = true
				blast2.CanCollide = false
				blast2.Locked = true
				blast2.Size = Vector3.new(2, 2, 2)
				blast2.TopSurface = "Smooth"
				blast2.BottomSurface = "Smooth"
				blast2.Transparency = 0
				blast2.CFrame = HandCF
				local bm2 = Instance.new("SpecialMesh", blast2)
				bm2.Scale = Vector3.new(6,2,6)
				bm2.MeshId = "rbxassetid://3270017"
				local blast3 = Instance.new("Part", rarm)
				blast3.BrickColor = BrickColor.new("Really black")
				blast3.Anchored = true
				blast3.CanCollide = false
				blast3.Locked = true
				blast3.Size = Vector3.new(1, 1, 1)
				blast3.TopSurface = "Smooth"
				blast3.BottomSurface = "Smooth"
				blast3.Transparency = 0
				blast3.CFrame = HandCF
				local bm3 = Instance.new("SpecialMesh", blast3)
				bm3.Scale = Vector3.new(6,2,6)
				bm3.MeshId = "rbxassetid://3270017"
				for i = 1,120 do rs:wait()
					X.Transparency = X.Transparency + (1/120)
					part.Transparency = part.Transparency + (1/120)
					part2.Transparency = part2.Transparency + (1/120)
					part3.Transparency = part3.Transparency + (1/120)
					part4.Transparency = part4.Transparency + (1/120)
					part5.Transparency = part5.Transparency + (1/120)
					part6.Transparency = part6.Transparency + (1/120)
					part7.Transparency = part7.Transparency + (1/120)
					blast.Transparency = blast.Transparency + (1/120)
					blast2.Transparency = blast2.Transparency + (1/120)
					blast3.Transparency = blast3.Transparency + (1/120)
					X.Size = X.Size + Vector3.new(1.6,1.6,1.6)
					--part3.Size = part3.Size + Vector3.new(6,6,6)
					mesh.Scale = mesh.Scale + Vector3.new(2,.4,2)
					mesh2.Scale = mesh2.Scale + Vector3.new(2.2,.4,2.2)
					mesh3.Scale = mesh3.Scale + Vector3.new(6,6,6)
					mesh4.Scale = mesh4.Scale + Vector3.new(3.4,3.4,3.4)
					mesh5.Scale = mesh5.Scale + Vector3.new(3.2,.4,3.2)
					mesh6.Scale = mesh6.Scale + Vector3.new(4,.4,4)
					mesh7.Scale = mesh7.Scale + Vector3.new(8,8,8)
					bm.Scale = bm.Scale + Vector3.new(12,12,.4)
					bm2.Scale = bm2.Scale + Vector3.new(8,8,.4)
					bm3.Scale = bm3.Scale + Vector3.new(8,8,.4)
					X.CFrame = cf
					part.CFrame=X.CFrame * CFrame.Angles(0,math.rad(i*2),0)
					part2.CFrame=X.CFrame * CFrame.Angles(0,math.rad(-i*2),0)
					part3.CFrame=X.CFrame
					part4.CFrame=X.CFrame
					part7.CFrame=X.CFrame
					part5.CFrame=X.CFrame * CFrame.Angles(0,math.rad(i*2.6),0)
					part6.CFrame=X.CFrame * CFrame.Angles(0,math.rad(-i*2.4),0)
					blast.CFrame=X.CFrame * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
					blast2.CFrame=X.CFrame * CFrame.Angles(math.rad(-i*4), math.rad(i*4), math.rad(0))
					blast3.CFrame=X.CFrame * CFrame.Angles(math.rad(180+i*4), math.rad(90-i*4), math.rad(0))
					rs:wait()
					end
					X:Destroy()
					part:Destroy()
					part2:Destroy()
					part3:Destroy()
					part4:Destroy()
					part5:Destroy()
					part6:Destroy()
					blast:Destroy()
					blast2:Destroy()
					blast3:Destroy()
					z:Destroy()
					z1:Destroy()
					z2:Destroy()
					z3:Destroy()
					z4:Destroy()
			for i = 1, 20 do
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(70),math.rad(-6),math.rad(-20)), 0.2)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0)*CFrame.Angles(math.rad(-6),math.rad(6),math.rad(-8)), 0.2)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.2)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(30), math.rad(0)), 0.4)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), 0, math.rad(-8)), 0.2)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-6), 0, math.rad(8)), 0.2)
				if Debounces.on == false then break end
				rs:wait()
			end
			if Debounces.CanAttack == false then
				Debounces.CanAttack = true
				Debounces.NoIdl = false
				Debounces.on = false
			end
	end)
		end
	end
	end)
	
	
	
	
	
	
	
	WindFloor = function()
  local useRageVer = false
  local locor = 0
  if TrackFunction ~= nil then
    TrackFunction:disconnect()
    TrackFunction = nil
  end
  Ult = true
  Ragemode = false
  CanInterrupt(false)
  PlayerIsAttacking = true
  local cl = 0
  local clastframe = lastframe
  BodyVel.velocity = Vector3.new()
  local CPlane = MousePlane()
  BodyVel.maxForce = Vector3.new(1000000, 1000000, 1000000)
  vPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(vPlayer.Character.HumanoidRootPart.Position, vPlayer.Character.HumanoidRootPart.Position + CPlane * 50)
  BodyGyro.cframe = CFrame.new(vPlayer.Character.HumanoidRootPart.CFrame.p, vPlayer.Character.HumanoidRootPart.CFrame.p + CPlane * 50)
  local cl = 0
  DesiredWalkspeed = 0
  p = Instance.new("Sound", vPlayer.Character.Torso)
  p.Volume = 0.8
  p.Pitch = 1
  p.SoundId = "http://www.roblox.com/asset/?id=240517975"
  p:Play()
  game:GetService("Debris"):AddItem(p, 3)
  local pb = Instance.new("Sound", vPlayer.Character.Torso)
  pb.Volume = 1
  pb.Pitch = 0.85
  pb.SoundId = "http://www.roblox.com/asset/?id=240517987"
  pb:Play()
  game:GetService("Debris"):AddItem(pb, 10)
  do
    for i = 1, 8 do
      swait()
      cl = cl + i * 0.02
      LerpWelds(clastframe, cl, Animations.LHB.Animation(0))
      if i == 4 then
        local pc = NewPart(Vector3.new(1, 1, 1), CFrame.new(vPlayer.Character.Torso.Position - Vector3.new(0, 2.5, 0)) * CFrame.Angles(0, math.random(-10, 10), 0), "Really black", "SpecialMesh", Vector3.new(11, 1, 11))
        pc.Mesh.MeshType = "FileMesh"
        pc.Anchored = true
        pc.CanCollide = false
        pc.Parent = workspace
        pc.Mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
        pc.Name = "Shockwave"
        game:GetService("Debris"):AddItem(pc, 5)
        coroutine.resume(coroutine.create(function(p)
    for ii = 1, 10 do
      p.Transparency = ii / 10
      p.CFrame = p.CFrame * CFrame.Angles(0, math.rad(10 + ii), 0) - Vector3.new(0, 0, 0)
      p.Mesh.Scale = p.Mesh.Scale - Vector3.new(0.5, 0, 0.5)
      swait()
    end
    p:Remove()
  end), pc)
      end
    end
  end
  BodyVel.Parent = vPlayer.Character.HumanoidRootPart
  BodyGyro.Parent = vPlayer.Character.HumanoidRootPart
  cl = 0
  clastframe = lastframe
  for i = 1, 6 do
    swait()
    cl = cl + i * 0.05
    LerpWelds(clastframe, cl, Animations.LHB.Animation(1))
    local eff = NewPart(Vector3.new(1, 1, 1), vPlayer.Character.Torso.CFrame * CFrame.new(math.random(-20, 20) / 30, math.random(-20, 20) / 30, math.random(-20, 20) / 30) * CFrame.Angles(math.random(-15, 15), math.random(-15, 15), math.random(-15, 15)), "Really black", "BlockMesh", Vector3.new(12, 12, 12))
    eff.Parent = workspace
    eff.Name = "BloodEffect"
    eff.Anchored = true
    eff.CanCollide = false
    game:GetService("Debris"):AddItem(eff, 5)
    coroutine.resume(coroutine.create(function(p, V, x)
    A = vPlayer.Character.Torso.Velocity / 60
    for i = 1, 12 do
      p.Mesh.Scale = p.Mesh.Scale - Vector3.new(11, 1, 11) / 12
      p.Transparency = 0.75 + i / 48
      p.CFrame = p.CFrame * V + A
      swait()
    end
    p:Remove()
  end), eff, CFrame.Angles(math.rad(math.random(-8, 8) * 2), math.rad(math.random(-8, 8) * 2), math.rad(math.random(-8, 8) * 2)))
    if i ~= 1 and (i ~= 4 or i == 6) then
      local pc = NewPart(Vector3.new(1, 1, 1), CFrame.new(vPlayer.Character.Torso.Position - Vector3.new(0, 1.5, 0)) * CFrame.Angles(0, math.rad(i * 20), 0), "White", "SpecialMesh", Vector3.new(8, 1, 8))
      pc.Mesh.MeshType = "FileMesh"
      pc.Anchored = true
      pc.CanCollide = false
      pc.Parent = workspace
      pc.Mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
      pc.Name = "Shockwave"
      game:GetService("Debris"):AddItem(pc, 5)
      coroutine.resume(coroutine.create(function(p)
    for ii = 1, 7 do
      p.Transparency = ii / 7
      p.CFrame = p.CFrame * CFrame.Angles(0, -math.rad(3), 0) - Vector3.new(0, 0, 0)
      p.Mesh.Scale = p.Mesh.Scale + Vector3.new(1.4, 0, 1.4)
      swait()
    end
    p:Remove()
  end), pc)
    end
  end
  swait()
  for i = 1, 20 do
    do
      CPlane = MousePlane()
      BodyGyro.Parent = vPlayer.Character.HumanoidRootPart
      BodyGyro.cframe = CFrame.new(BodyGyro.Parent.Position, BodyGyro.Parent.Position + CPlane * 50)
      if i == 5 or i == 10 then
        local pc = NewPart(Vector3.new(1, 1, 1), CFrame.new(vPlayer.Character.Torso.Position - Vector3.new(0, 1.5, 0)) * CFrame.Angles(0, math.random(-10, 10), 0), "Really black", "SpecialMesh", Vector3.new(8, 2, 8))
        pc.Mesh.MeshType = "FileMesh"
        pc.Anchored = true
        pc.CanCollide = false
        pc.Parent = workspace
        pc.Mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
        pc.Name = "Shockwave"
        game:GetService("Debris"):AddItem(pc, 5)
        coroutine.resume(coroutine.create(function(p)
    for ii = 1, 13 do
      p.Transparency = ii / 13
      p.CFrame = p.CFrame * CFrame.Angles(0, -math.rad(10 + ii), 0) - Vector3.new(0, 0, 0)
      p.Mesh.Scale = p.Mesh.Scale + Vector3.new(3, 0, 3)
      swait()
    end
    p:Remove()
  end), pc)
      else
        do
          do
            if i == 2 or i == 10 then
              local pc = NewPart(Vector3.new(1, 1, 1), CFrame.new(vPlayer.Character.HumanoidRootPart.Position - Vector3.new(0, 1, 0)) * CFrame.Angles(math.rad(90), 0, 0), "Really black", "SpecialMesh", Vector3.new(56, 56, 1))
              pc.Mesh.MeshType = "FileMesh"
              pc.Mesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
              pc.Parent = workspace
              pc.Anchored = true
              pc.CanCollide = false
              pc.Transparency = 0.5
              game:GetService("Debris"):AddItem(pc, 5)
              coroutine.resume(coroutine.create(function(p)
    for ii = 1, 20 do
      p.Transparency = ii / 20
      p.CFrame = p.CFrame * CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 0)
      p.Mesh.Scale = p.Mesh.Scale - Vector3.new(1.4, 1.4, 0) * 2
      swait()
    end
    p:Remove()
  end), pc)
            end
            if i % 4 == 0 then
              for _,v in pairs(GetNubsInRadius(vPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 1, 0), 35)) do
                applyCameraShake(v, 80 + i * 10, 4)
              end
              local pc = NewPart(Vector3.new(1, 1, 1), CFrame.new(vPlayer.Character.Torso.Position - Vector3.new(0, 1.5, 0)) * CFrame.Angles(0, math.rad(i * 20), 0), "Really black", "SpecialMesh", Vector3.new(18, 2, 18))
              pc.Mesh.MeshType = "FileMesh"
              pc.Anchored = true
              pc.CanCollide = false
              pc.Parent = workspace
              pc.Mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
              pc.Name = "Shockwave"
              game:GetService("Debris"):AddItem(pc, 5)
              coroutine.resume(coroutine.create(function(p)
    for ii = 1, 10 do
      p.Transparency = ii / 10
      p.CFrame = p.CFrame * CFrame.Angles(0, math.rad(7 + ii), 0) - Vector3.new(0, 0, 0)
      p.Mesh.Scale = p.Mesh.Scale - Vector3.new(1.4, 0, 1.4)
      swait()
    end
    p:Remove()
  end), pc)
            else
              do
                do
                  if i % 1 == 0 then
                    local eff = NewPart(Vector3.new(1, 1, 1), vPlayer.Character.Torso.CFrame * CFrame.new(math.random(-20, 20) / 10, math.random(-20, 20) / 10, math.random(-20, 20) / 10) * CFrame.Angles(math.random(-15, 15), math.random(-15, 15), math.random(-15, 15)), "Really black", "BlockMesh", Vector3.new(0.7, 0.7, 0.7))
                    eff.Parent = workspace
                    eff.Name = "BloodEffect"
                    eff.Anchored = true
                    eff.CanCollide = false
                    game:GetService("Debris"):AddItem(eff, 5)
                    coroutine.resume(coroutine.create(function(p, V, x)
    A = vPlayer.Character.Torso.Velocity / 60
    for i = 1, 8 do
      p.Mesh.Scale = p.Mesh.Scale + Vector3.new(6, 6, 6) / 8
      p.Transparency = 0.2
      p.CFrame = p.CFrame * V + A
      swait()
    end
    p:Remove()
  end), eff, CFrame.Angles(math.rad(math.random(-8, 8) * 2), math.rad(math.random(-8, 8) * 2), math.rad(math.random(-8, 8) * 2)))
                    local eff = NewPart(Vector3.new(1, 1, 1), vPlayer.Character.Torso.CFrame * CFrame.new(math.random(-20, 20) / 30, math.random(-20, 20) / 30, math.random(-20, 20) / 30) * CFrame.Angles(math.random(-15, 15), math.random(-15, 15), math.random(-15, 15)), "Really black", "BlockMesh", Vector3.new(12, 12, 12))
                    eff.Parent = workspace
                    eff.Name = "BloodEffect"
                    eff.Anchored = true
                    eff.CanCollide = false
                    game:GetService("Debris"):AddItem(eff, 5)
                    coroutine.resume(coroutine.create(function(p, V, x)
    A = vPlayer.Character.Torso.Velocity / 60
    for i = 1, 12 do
      p.Mesh.Scale = p.Mesh.Scale - Vector3.new(11, 1, 11) / 12
      p.Transparency = 0.75 + i / 48
      p.CFrame = p.CFrame * V + A
      swait()
    end
    p:Remove()
  end), eff, CFrame.Angles(math.rad(math.random(-8, 8) * 2), math.rad(math.random(-8, 8) * 2), math.rad(math.random(-8, 8) * 2)))
                  end
                  do
                    fwait()
                  end
                  -- DECOMPILER ERROR at PC942: LeaveBlock: unexpected jumping out DO_STMT

                  -- DECOMPILER ERROR at PC942: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                  -- DECOMPILER ERROR at PC942: LeaveBlock: unexpected jumping out IF_STMT

                  -- DECOMPILER ERROR at PC942: LeaveBlock: unexpected jumping out DO_STMT

                  -- DECOMPILER ERROR at PC942: LeaveBlock: unexpected jumping out DO_STMT

                  -- DECOMPILER ERROR at PC942: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                  -- DECOMPILER ERROR at PC942: LeaveBlock: unexpected jumping out IF_STMT

                  -- DECOMPILER ERROR at PC942: LeaveBlock: unexpected jumping out DO_STMT

                end
              end
            end
          end
        end
      end
    end
  end
  cl = 0
  clastframe = lastframe
  for i = 1, 6 do
    swait()
    cl = cl + i * 0.05
    LerpWelds(clastframe, cl, Animations.LHB.Animation(2))
    local pc = NewPart(Vector3.new(1, 1, 1), vPlayer.Character["Left Arm"].CFrame * CFrame.new(0, -1.5, 0) * CFrame.Angles(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)), "Really black", "BlockMesh", Vector3.new(2.3, 2.3, 2.3))
    pc.CanCollide = false
    pc.Anchored = true
    pc.Parent = workspace
    game:GetService("Debris"):AddItem(pc, 5)
    coroutine.resume(coroutine.create(function(p)
    local R = CFrame.Angles(math.random(-3, 3), math.random(-4, 4), math.random(-5, 5))
    local C = Vector3.new(math.random(-5, 5) / 40, math.random(-5, 5) / 40, math.random(-5, 5) / 40) + vPlayer.Character.Torso.Velocity / 120
    for i = 1, 30 do
      p.Mesh.Scale = p.Mesh.Scale - Vector3.new(2, 2, 2) / 30
      p.Transparency = i / 30
      p.CFrame = p.CFrame * R - Vector3.new(0, 0.0054555555555556 * i, 0) + C
      swait()
    end
    p:Remove()
  end), pc)
  end
  cl = 0
  clastframe = lastframe
  local Grabbee = nil
  for i = 1, 15 do
    fwait()
    do
      if i == 3 then
        local pc = NewPart(Vector3.new(1, 1, 1), CFrame.new(vPlayer.Character.Torso.Position, vPlayer.Character.Torso.Position + CPlane * 5) * CFrame.Angles(math.rad(90), math.rad(0), 0), "Really black", "SpecialMesh", Vector3.new(8, 2, 8))
        pc.Mesh.MeshType = "FileMesh"
        pc.Anchored = true
        pc.CanCollide = false
        pc.Parent = workspace
        pc.Mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
        pc.Name = "Shockwave"
        game:GetService("Debris"):AddItem(pc, 5)
        coroutine.resume(coroutine.create(function(p)
    for ii = 1, 10 do
      p.Transparency = ii / 10
      p.CFrame = p.CFrame * CFrame.Angles(0, math.rad(7 + ii), 0) - Vector3.new(0, 0, 0)
      p.Mesh.Scale = p.Mesh.Scale + Vector3.new(1, 0, 1)
      swait()
    end
    p:Remove()
  end), pc)
      end
      BodyVel.velocity = CPlane * (i * 7.5 + 65)
      for _,v in pairs(GetNubsInRadius(vPlayer.Character.HumanoidRootPart.Position + CPlane * 2, 4.75)) do
        Grabbee = v
        do break end
      end
      do
        local pc = NewPart(Vector3.new(1, 1, 1), vPlayer.Character["Left Arm"].CFrame * CFrame.new(0, -1.5, 0) * CFrame.Angles(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)), "Really black", "BlockMesh", Vector3.new(2.3, 2.3, 2.3))
        pc.CanCollide = false
        pc.Anchored = true
        pc.Parent = workspace
        game:GetService("Debris"):AddItem(pc, 5)
        coroutine.resume(coroutine.create(function(p)
    local R = CFrame.Angles(math.random(-3, 3), math.random(-4, 4), math.random(-5, 5))
    local C = Vector3.new(math.random(-5, 5) / 40, math.random(-5, 5) / 40, math.random(-5, 5) / 40) + vPlayer.Character.Torso.Velocity / 120
    for i = 1, 20 do
      p.Mesh.Scale = p.Mesh.Scale - Vector3.new(2, 2, 2) / 20
      p.Transparency = i / 20
      p.CFrame = p.CFrame * R - Vector3.new(0, 0.0054555555555556 * i, 0) + C
      swait()
    end
    p:Remove()
  end), pc)
        do
          local pc = NewPart(Vector3.new(1, 1, 1), vPlayer.Character["Left Arm"].CFrame * CFrame.new(0, -3.5, 0) * CFrame.Angles(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)), "Really black", "BlockMesh", Vector3.new(5, 5, 5))
          pc.CanCollide = false
          pc.Anchored = true
          pc.Parent = workspace
          game:GetService("Debris"):AddItem(pc, 5)
          coroutine.resume(coroutine.create(function(p)
    local R = CFrame.Angles(math.random(-3, 3), math.random(-4, 4), math.random(-5, 5))
    for i = 1, 20 do
      p.Mesh.Scale = p.Mesh.Scale - Vector3.new(5, 5, 5) / 20
      p.Transparency = 0.5 + i / 40
      p.CFrame = p.CFrame * R
      swait()
    end
    p:Remove()
  end), pc)
          if i <= 6 then
            cl = cl + i * 0.05
            LerpWelds(clastframe, cl, Animations.LHB.Animation(3))
          end
          -- DECOMPILER ERROR at PC1273: LeaveBlock: unexpected jumping out DO_STMT

          -- DECOMPILER ERROR at PC1273: LeaveBlock: unexpected jumping out DO_STMT

        end
      end
    end
  end
  if Grabbee ~= nil then
    if Grabbee:FindFirstChild("Stats") and Grabbee.Stats.Stunned.Value == false then
      Grabbee.Stats.Stun.Value = 999
    end
    cbuff = Instance.new("NumberValue", playerstats.Decrease)
    cbuff.Name = "DecreaseDef"
    cbuff.Value = -2
    Mana.Value = Mana.Value - 10
    if useRageVer == true then
      borb = math.floor(40 + Mana.Value / 3 + (locor) / 3) * 0.4
    else
      borb = math.floor(40 + Mana.Value / 3) * 0.4
    end
    local Grabdone = false
    gpos = Instance.new("BodyPosition")
    gpos.Name = ":<"
    gpos.Parent = vPlayer.Character.HumanoidRootPart
    gpos.P = 5000
    gpos.D = 600
    gpos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
    gpos.position = vPlayer.Character.HumanoidRootPart.Position
    coroutine.resume(coroutine.create(function(NNoob)
    nubgyro = nil
    while Grabdone == false and vPlayer.Character.Humanoid.Health > 0 do
      if NNoob.Parent == nil then
        break
      else
        if NNoob.Humanoid.Health < 0 then
          break
        end
      end
      NNoob.Humanoid.PlatformStand = true
      if nubgyro == nil or nubpos == nil then
        if NNoob.Torso:FindFirstChild(":>") then
          NNoob.Torso[":>"]:Remove()
        end
        if NNoob.Torso:FindFirstChild(":<") then
          NNoob.Torso[":<"]:Remove()
        end
        nubgyro = Instance.new("BodyGyro")
        nubgyro.Name = ":>"
        nubgyro.Parent = NNoob.Torso
        nubgyro.P = 5000
        nubgyro.D = 200
        nubgyro.maxTorque = Vector3.new(50000, 50000, 50000) * 5000
        nubgyro.cframe = vPlayer.Character["Left Arm"].CFrame
        nubpos = Instance.new("BodyPosition")
        nubpos.Name = ":<"
        nubpos.Parent = NNoob.Torso
        nubpos.P = 8000
        nubpos.D = 200
        nubpos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
        nubpos.position = vPlayer.Character["Left Arm"].CFrame * CFrame.new(0, -1.6, 0).p
      else
        if nubgyro.Parent == nil then
          nubgyro = nil
          nubpos = nil
        else
          nubgyro.cframe = vPlayer.Character.HumanoidRootPart.CFrame * CFrame.fromEulerAnglesXYZ(math.pi / 18, math.pi, 0)
          nubpos.position = vPlayer.Character["Left Arm"].CFrame * CFrame.new(0, -1.4, 0).p - Vector3.new(0, 0.3, 0)
        end
      end
      swait()
    end
    if nubpos and nubgyro then
      nubpos:Remove()
      nubgyro:Remove()
      if NNoob:FindFirstChild("Humanoid") then
        NNoob.Humanoid.PlatformStand = false
      end
    end
  end), Grabbee)
    p = Instance.new("Sound", vPlayer.Character.Torso)
    p.Volume = 1
    p.Pitch = 0.9
    p.SoundId = "http://www.roblox.com/asset/?id=240429615"
    p:Play()
    game:GetService("Debris"):AddItem(p, 3)
    BodyVel.velocity = Vector3.new()
    cl = 0
    clastframe = lastframe
    for i = 1, 7 do
      swait()
      cl = cl + i * 0.036
      LerpWelds(clastframe, cl, Animations.LHB.Animation(4))
    end
    cl = 0
    clastframe = lastframe
    for i = 1, 8 do
      swait()
      cl = cl + i * 0.028
      LerpWelds(clastframe, cl, Animations.LHB.Animation(5))
    end
    p = Instance.new("Sound", vPlayer.Character.Torso)
    p.Volume = 1
    p.Pitch = 0.55
    p.SoundId = "http://www.roblox.com/asset/?id=233856115"
    p:Play()
    game:GetService("Debris"):AddItem(p, 3)
    p = Instance.new("Sound", vPlayer.Character.Torso)
    p.Volume = 1
    p.Pitch = 1
    p.SoundId = "http://www.roblox.com/asset/?id=192410070"
    p:Play()
    game:GetService("Debris"):AddItem(p, 3)
    p = Instance.new("Sound", vPlayer.Character.Torso)
    p.Volume = 1
    p.Pitch = 0.4
    p.SoundId = "http://www.roblox.com/asset/?id=231917822"
    p:Play()
    game:GetService("Debris"):AddItem(p, 3)
    p = Instance.new("Sound", Grabbee.Torso)
    p.Volume = 1
    p.Pitch = 1
    p.SoundId = "http://www.roblox.com/asset/?id=243711335"
    p:Play()
    game:GetService("Debris"):AddItem(p, 3)
    local sees = math.ceil(Mana.Value / borb)
    local sees2 = (math.ceil(Corruption / borb))
    local partic1, partic2 = nil, nil
    partic1 = Instance.new("ParticleEmitter")
    partic1.Name = "AttackParticleEmitter3"
    partic1.Texture = "http://www.roblox.com/asset/?id=233069772"
    partic1.LightEmission = 0
    partic1.ZOffset = 2
    partic1.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.2), NumberSequenceKeypoint.new(1, 1)})
    partic1.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 5), NumberSequenceKeypoint.new(1, 1)})
    partic1.Color = ColorSequence.new(Color3.new(0, 0, 0), Color3.new(0.1, 0.1, 0.1))
    partic1.Rate = 80
    partic1.VelocitySpread = 180
    partic1.Speed = NumberRange.new(6, 10)
    partic1.Lifetime = NumberRange.new(1, 1.2)
    partic1.Rotation = NumberRange.new(-180, 180)
    partic1.RotSpeed = NumberRange.new(-100, 100)
    partic1.Parent = Grabbee.Torso
    if useRageVer then
      partic2 = Instance.new("ParticleEmitter", p)
      partic2.Name = "AttackParticleEmitter3"
      partic2.Texture = "http://www.roblox.com/asset/?id=241409051"
      partic2.LightEmission = 0
      partic2.ZOffset = 1
      partic2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.5), NumberSequenceKeypoint.new(1, 1)})
      partic2.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 3), NumberSequenceKeypoint.new(1, 0)})
      partic2.Color = ColorSequence.new(Color3.new(0.3, 0.3, 0.3), Color3.new(0.2, 0.2, 0.2))
      partic2.Rate = 60
      partic2.VelocitySpread = 180
      partic2.Speed = NumberRange.new(1, 2)
      partic2.Lifetime = NumberRange.new(1, 1.2)
      partic2.Rotation = NumberRange.new(-180, 180)
      partic2.RotSpeed = NumberRange.new(-100, 100)
      partic2.Acceleration = Vector3.new(0, 10, 0)
      partic2.Parent = Grabbee.Torso
    end
    for i = 1, borb + borb % 2 do
      swait()
      if i % 2 == 0 then
        applyDamage(Grabbee, 3, Vector3.new(), false, false, nil, 0, 0, "", 0, false, false, 0, true, "Pure", true, false)
        local st = Grabbee:FindFirstChild("Stats")
        if st and st:FindFirstChild("Mana") then
          if st.Mana.Value >= 3 then
            --script.Parent.DMG.RemoteEventM:FireServer(st.Mana, 3)
			st.Mana.Value = st.Mana.Value - 3
          else
            st.Mana.Value = 0
          end
        end
      end
      do
        if sees <= Mana.Value then
          Mana.Value = Mana.Value - sees
        else
          Mana.Value = 0
        end
        if useRageVer then
          if sees2 <= Corruption then
            Corruption = Corruption - sees2
          else
            Corruption = 0
          end
        end
        if useRageVer == true and i % 2 == 0 then
          if vPlayer.Character.Humanoid.Health >= 6.5 then
            vPlayer.Character.Humanoid:TakeDamage(1.5)
          end
          local eb = BillboardGui("http://www.roblox.com/asset/?id=233069772", Grabbee.Torso.CFrame * CFrame.new(math.random(-20, 20) / 10, math.random(-20, 20) / 10, math.random(-20, 20) / 20).p, 0)
          eb.Parent = workspace
          eb.BillboardGui.ImageLabel.Rotation = math.random(-180, 180)
          eb.BillboardGui.Size = UDim2.new(2, 0, 2, 0)
          game:GetService("Debris"):AddItem(eb, 3)
          coroutine.resume(coroutine.create(function(p)
    local r = math.random(-3, 3) * 9
    if r > -12 and r < 1 then
      r = -12
    else
      if r < 12 and r > -1 then
        r = 12
      end
    end
    for i = 1, 12 do
      p.BillboardGui.ImageLabel.ImageTransparency = 0.5 + i / 24
      p.BillboardGui.Size = UDim2.new(3 + i, 0, 3 + i, 0)
      p.BillboardGui.ImageLabel.Rotation = p.BillboardGui.ImageLabel.Rotation + r
      swait()
    end
    p:Remove()
  end), eb)
        end
        do
          local eff = NewPart(Vector3.new(1, 1, 1), vPlayer.Character.Torso.CFrame * CFrame.new(math.random(-20, 20) / 30, math.random(-20, 20) / 30, math.random(-20, 20) / 30) * CFrame.Angles(math.random(-15, 15), math.random(-15, 15), math.random(-15, 15)), "Really black", "BlockMesh", Vector3.new(12, 12, 12))
          eff.Parent = workspace
          eff.Name = "BloodEffect"
          eff.Anchored = true
          eff.CanCollide = false
          game:GetService("Debris"):AddItem(eff, 5)
          coroutine.resume(coroutine.create(function(p, V, x)
    A = vPlayer.Character.Torso.Velocity / 60
    for i = 1, 8 do
      p.Mesh.Scale = p.Mesh.Scale - Vector3.new(11, 1, 11) / 8
      p.Transparency = 0.75 + i / 32
      p.CFrame = p.CFrame * V + A
      swait()
    end
    p:Remove()
  end), eff, CFrame.Angles(math.rad(math.random(-8, 8) * 2), math.rad(math.random(-8, 8) * 2), math.rad(math.random(-8, 8) * 2)))
          if i % 5 == 0 then
            for _,v in pairs(GetNubsInRadius(vPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 1, 0), 35)) do
              applyCameraShake(v, 120, 5)
            end
            applyCameraShake(vPlayer.Character, 120, 5)
            local pc = NewPart(Vector3.new(1, 1, 1), CFrame.new(vPlayer.Character.Torso.Position + Vector3.new(0, 2.5, 0)) * CFrame.Angles(0, math.rad(i * 20), 0), "Really black", "SpecialMesh", Vector3.new(6, 13, 6))
            pc.Mesh.MeshType = "FileMesh"
            pc.Anchored = true
            pc.CanCollide = false
            pc.Parent = workspace
            pc.Mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
            pc.Name = "Shockwave"
            game:GetService("Debris"):AddItem(pc, 5)
            coroutine.resume(coroutine.create(function(p)
    for ii = 1, 13 do
      p.Transparency = ii / 13
      p.CFrame = p.CFrame * CFrame.Angles(0, math.rad(5 + ii), 0) - Vector3.new(0, 0.38461538461538, 0)
      p.Mesh.Scale = p.Mesh.Scale + Vector3.new(1, -1, 1)
      swait()
    end
    p:Remove()
  end), pc)
          end
          do
            if Grabbee.Parent == nil then
              break
            else
              if Grabbee:FindFirstChild("Humanoid") == nil then
                break
              end
            end
            local eff = NewPart(Vector3.new(1, 1, 1), Grabbee.Torso.CFrame * CFrame.new(math.random(-20, 20) / 10, math.random(-25, 25) / 10, math.random(-20, 20) / 20) * CFrame.Angles(math.random(-15, 15), math.random(-15, 15), math.random(-15, 15)), "Really black", "BlockMesh", Vector3.new(1.1, 1.1, 1.1))
            eff.Parent = workspace
            eff.Name = "BloodEffect"
            eff.Anchored = true
            eff.CanCollide = false
            game:GetService("Debris"):AddItem(eff, 5)
            coroutine.resume(coroutine.create(function(p, V, x)
    A = vPlayer.Character.Torso.Velocity / 60
    for i = 1, 12 do
      p.Mesh.Scale = p.Mesh.Scale + Vector3.new(5, 5, 5) / 12
      p.Transparency = 0.25 + i / 48
      p.CFrame = p.CFrame * V + A
      swait()
    end
    p:Remove()
  end), eff, CFrame.Angles(math.rad(math.random(-8, 8) * 2), math.rad(math.random(-8, 8) * 2), math.rad(math.random(-8, 8) * 2)))
            do
              if i % 3 == 0 then
                local pc = NewPart(Vector3.new(1, 1, 1), Grabbee.Torso.CFrame * CFrame.new(math.random(-10, 10) / 10, math.random(-10, 10) / 10, math.random(-10, 10) / 10) * CFrame.Angles(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)), "Bright blue", "BlockMesh", Vector3.new(2, 2, 2))
                pc.CanCollide = false
                pc.Anchored = true
                pc.Parent = workspace
                game:GetService("Debris"):AddItem(pc, 5)
                coroutine.resume(coroutine.create(function(p)
    local R = CFrame.Angles(math.random(-3, 3), math.random(-4, 4), math.random(-5, 5))
    local C = Vector3.new(math.random(-5, 5) / 40, math.random(-5, 5) / 40, math.random(-5, 5) / 40)
    for i = 1, 20 do
      p.Mesh.Scale = p.Mesh.Scale - Vector3.new(2, 2, 2) / 20
      p.Transparency = i / 20
      p.CFrame = p.CFrame * R - Vector3.new(0, 0.029757575757576 * i, 0)
      swait()
    end
    p:Remove()
  end), pc)
              end
            end
          end
        end
      end
    end
    cl = 0
    clastframe = lastframe
    for i = 1, 5 do
      wait()
      cl = cl + i * 0.07
      if i == 3 then
        Grabdone = true
        partic1.Enabled = false
        game:GetService("Debris"):AddItem(partic1, 5)
        if partic2 then
          partic2.Enabled = false
          game:GetService("Debris"):AddItem(partic2, 5)
        end
        p = Instance.new("Sound", vPlayer.Character.Torso)
        p.Volume = 1
        p.Pitch = 0.95
        p.SoundId = "http://www.roblox.com/asset/?id=241816029"
        p:Play()
        game:GetService("Debris"):AddItem(p, 3)
        if Grabbee:FindFirstChild("Stats") then
          if Grabbee.Stats.Mana.Value >= 10 then
            Grabbee.Stats.Mana.Value = Grabbee.Stats.Mana.Value - 10
          else
            Grabbee.Stats.Mana.Value = 0
          end
          if Grabbee.Stats.Stunned.Value == false then
            Grabbee.Stats.Stun.Value = 999
          end
        end
        applyDamage(Grabbee, 15, Vector3.new(0, 30, 0) + CPlane * 40, true, false, addonCullMovers, 0, 0, "", 0, false, false, 0, true, "IgnoreDefense", true, false)
        local pc = NewPart(Vector3.new(1, 1, 1), CFrame.new(Grabbee.Torso.Position, Grabbee.Torso.Position + CPlane * 9.5 + Vector3.new(0, 5, 0)) * CFrame.Angles(math.random(-30, 30) / 50, math.random(-30, 30) / 50, math.random(-30, 30) / 50), "Really black", "SpecialMesh", Vector3.new(6, 6, 2))
        pc.Mesh.MeshType = "FileMesh"
        pc.Mesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
        pc.Parent = workspace
        pc.Anchored = true
        pc.CanCollide = false
        pc.Transparency = 0.5
        game:GetService("Debris"):AddItem(pc, 5)
        coroutine.resume(coroutine.create(function(p)
    for ii = 1, 28 do
      p.Transparency = ii / 28
      p.CFrame = p.CFrame * CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 0.1)
      p.Mesh.Scale = p.Mesh.Scale + Vector3.new(1.8 - ii * 0.05, 1.8 - ii * 0.05, 0)
      swait()
    end
    p:Remove()
  end), pc)
        for loel = 1, 8 do
          local eff = NewPart(Vector3.new(1, 1, 1), Grabbee.Torso.CFrame * CFrame.Angles(math.random(-15, 15), math.random(-15, 15), math.random(-15, 15)), "Really black", "BlockMesh", Vector3.new(4, 4, 4))
          eff.Parent = workspace
          eff.Name = "BloodEffect"
          eff.Anchored = true
          eff.CanCollide = false
          game:GetService("Debris"):AddItem(eff, 5)
          coroutine.resume(coroutine.create(function(p, V, x)
    for i = 1, 25 do
      p.Transparency = 0.5 + i / 50
      p.CFrame = p.CFrame + x / 2
      swait()
    end
    p:Remove()
  end), eff, CFrame.Angles(math.rad(math.random(-8, 8)), math.rad(math.random(-8, 8)), math.rad(math.random(-8, 8))), Vector3.new(math.random(-10, 10) / 10, math.random(-10, 10) / 10, math.random(-10, 10) / 10))
        end
        for loel = 1, 3 do
          local eff = NewPart(Vector3.new(1, 1, 1), Grabbee.Torso.CFrame * CFrame.new(math.random(-20, 20) / 10, math.random(-25, 25) / 10, math.random(-20, 20) / 20) * CFrame.Angles(math.random(-15, 15), math.random(-15, 15), math.random(-15, 15)), "Really black", "BlockMesh", Vector3.new(4, 4, 4))
          eff.Parent = workspace
          eff.Name = "BloodEffect"
          eff.Anchored = true
          eff.CanCollide = false
          game:GetService("Debris"):AddItem(eff, 5)
          coroutine.resume(coroutine.create(function(p, V, x)
    for i = 1, 25 do
      p.Mesh.Scale = p.Mesh.Scale + Vector3.new(14 + loel * 8, 14 + loel * 8, 14 + loel * 8) / 25
      p.Transparency = 0.25 + i / 18.75
      p.CFrame = p.CFrame * V
      swait()
    end
    p:Remove()
  end), eff, CFrame.Angles(math.rad(math.random(-8, 8)), math.rad(math.random(-8, 8)), math.rad(math.random(-8, 8))))
        end
      end
      do
        do
          LerpWelds(clastframe, cl, Animations.LHB.Animation(6))
          -- DECOMPILER ERROR at PC2735: LeaveBlock: unexpected jumping out DO_STMT

        end
      end
    end
    cbuff:Remove()
    gpos:Remove()
  else
    do
      for i = 1, 4 do
        fwait()
        BodyVel.velocity = BodyVel.velocity / 1.25
      end
      do
        cl = 0
        coroutine.resume(coroutine.create(function(p)
    for i = 1, 30 do
      p.Volume = 1 - i / 30
      swait()
    end
    p:Stop()
  end), pb)
        clastframe = lastframe
        BodyVel.maxForce = Vector3.new(1000000, 0, 1000000)
        for i = 1, 15 do
          fwait()
          BodyVel.velocity = BodyVel.velocity / 1.2
          LerpWelds(clastframe, i / 15, Animations.Stand.Animation(0))
        end
        if Grabbee == nil then
          Cooldowns["4"] = CooldownsB["4"] / 3
        else
          Cooldowns["4"] = CooldownsB["4"]
        end
      end
    end
  end
        CanInterrupt(true)
        PlayerIsAttacking = false
        BodyVel.Parent = nil
        BodyGyro.Parent = nil
        Ult = false
end



mouse.KeyDown:connect(function(k)
  
k = k:lower()
if k == "q" then
  BlastStorm()
end
if k == "e" then
  WindFloor2()
end
if k == "t" then
  WindFloor()
end
end)








local BC = BrickColor.new
local Col3 = Color3.new
local Inst = Instance.new
local Ud2 = UDim2.new
local FONT = "SourceSansLight"







 Colour1 = BC("Pastel Blue")
 Colour2 = BC("Black")
 Colour3 = BC("Ghost grey")
 Chaos_UI = Inst("ScreenGui", Player.PlayerGui)
Chaos_UI.Name = "Chaos UI"
ColMain, KP, Moves, OM = Inst("Frame", Chaos_UI), Inst("Frame", Chaos_UI), Inst("ScrollingFrame", Chaos_UI), Inst("TextButton", Chaos_UI)


Moves.BackgroundColor3 = Col3(72/255,72/255,72/255)
Moves.BackgroundTransparency = .8
Moves.BorderSizePixel = 0
Moves.Name = "Moves"
Moves.Position = Ud2(-.2, 0, .4, 0)
Moves.Size = Ud2(.2, 0, .5, 0)
Moves.ScrollBarThickness = 8
OM.Name = "VML"
OM.Position = Ud2(.002, 0, .83, 0)
OM.Size = Ud2(.05, 0, .08, 0)
OM.Visible = false
OM.Style = "RobloxRoundButton"
OM.Font = FONT
OM.Text = "View Move List"
OM.TextColor3 = Col3(1,1,1)
OM.TextScaled = true
local Title = Inst("TextLabel", Moves)
Title.BackgroundTransparency = 1
Title.Name = "Title"
Title.Size = Ud2(1, 0, .014, 0)
Title.Font = FONT
Title.Text = "Move List"
Title.TextColor3 = Col3(1,1,1)
Title.TextScaled = true
Title.TextStrokeTransparency = 0

		OM.Visible = true

function Create_Moves_In_List()
	local ah = .012
	local am = .012
	local move = Title:Clone() move.Parent = Moves move.Name = "A Move" move.Text = "*Whatever you do, DO NOT use 2 different moves tat the same time!!*" move.Position = Ud2(0, 0, ah, 0) move.TextXAlignment = "Left" ah = ah+am
	move = Title:Clone() move.Parent = Moves move.Name = "A Move" move.Text = "Q - Ultimate Shadow Blast, must be flying when in use, *be carefull using this*" move.Position = Ud2(0, 0, ah, 0) move.TextXAlignment = "Left" ah = ah+am
	move = Title:Clone() move.Parent = Moves move.Name = "A Move" move.Text = "E - Shadow Blast" move.Position = Ud2(0, 0, ah, 0) move.TextXAlignment = "Left" ah = ah+am
	move = Title:Clone() move.Parent = Moves move.Name = "A Move" move.Text = "R - Purple Nova, I recommend being in a high distance when you use this" move.Position = Ud2(0, 0, ah, 0) move.TextXAlignment = "Left" ah = ah+am
	move = Title:Clone() move.Parent = Moves move.Name = "A Move" move.Text = "T - Unfinished, dont press it" move.Position = Ud2(0, 0, ah, 0) move.TextXAlignment = "Left" ah = ah+am
	move = Title:Clone() move.Parent = Moves move.Name = "A Move" move.Text = "F - Fly mode/ Fly mode Deactivate" move.Position = Ud2(0, 0, ah, 0) move.TextXAlignment = "Left" ah = ah+am
	move = Title:Clone() move.Parent = Moves move.Name = "A Move" move.Text = "B - Roar, you know how that is" move.Position = Ud2(0, 0, ah, 0) move.TextXAlignment = "Left" ah = ah+am
	move = Title:Clone() move.Parent = Moves move.Name = "A Move" move.Text = "G - Destructive Fire Blasts, I recommend being in fly mode" move.Position = Ud2(0, 0, ah, 0) move.TextXAlignment = "Left" ah = ah+am
end
Create_Moves_In_List()


local mopen = false
OM.MouseButton1Click:connect(function()
	if not Debounces.UIAction and not mopen then
		Debounces.UIAction = true
		OM.Text = "Hide Move List"
		mopen = true
		Moves:TweenPosition(Ud2(.002, 0, .4, 0),_, "Bounce", .6, true)
		OM:TweenPosition(Ud2(.202, 0, .83, 0),_, "Bounce", .6, true)
		wait(.3)
		Debounces.UIAction = false
	elseif not Debounces.UIAction and mopen then
		Debounces.UIAction = true
		OM.Text = "View Move List"
		mopen = false
		Moves:TweenPosition(Ud2(-.2, 0, .4, 0),_, "Bounce", .6, true)
		OM:TweenPosition(Ud2(.002, 0, .83, 0),_, "Bounce", .6, true)
		wait(.3)
		Debounces.UIAction = false
	end
end)





local animpose = "Idle"
local lastanimpose = "Idle"
local sine = 0
local change = 1
local val = 0
local ffing = false
-------------------------------
game:GetService("RunService").RenderStepped:connect(function()
--[[if char.Humanoid.Jump == true then
jump = true
else
jump = false
end]]
char.Humanoid.FreeFalling:connect(function(f)
if f then
ffing = true
else
ffing = false
end
end)
sine = sine + change
if jumpn == true then
animpose = "Jumping"
elseif ffing == true then
animpose = "Freefalling"
elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude < 2 then
animpose = "Idle"
elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude < 20 then
animpose = "Walking"
elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude > 20 then
animpose = "Running"
end
if animpose ~= lastanimpose then
sine = 0
if Debounces.NoIdl == false then
if animpose == "Idle" then
for i = 1, 2 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62,0)*CFrame.Angles(math.rad(-6),math.rad(-6),math.rad(8)), 0.4)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62,0)*CFrame.Angles(math.rad(-6),math.rad(6),math.rad(-8)), 0.4)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14),math.rad(0),0), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.4)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-8)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(8)), 0.4)
end
elseif animpose == "Walking" then
for i = 1, 2 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(-16),math.rad(-12),math.rad(10+2*math.cos(sine/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0)*CFrame.Angles(math.rad(-16),math.rad(12),math.rad(-10-2*math.cos(sine/14))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2) * CFrame.Angles(math.rad(-14),0,0), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-10),0, math.rad(0)), 0.05)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-8), 0, math.rad(-8)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-8), 0, math.rad(8)), 0.4)
end
elseif animpose == "Running" then
for i = 1, 2 do
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(-20),math.rad(-14),math.rad(8+2*math.cos(sine/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0)*CFrame.Angles(math.rad(-20),math.rad(14),math.rad(-8-2*math.cos(sine/14))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2) * CFrame.Angles(math.rad(-10),0,0), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-20),0, math.rad(0)), 0.4)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-12), 0, math.rad(-7)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-12), 0, math.rad(7)), 0.4)
wait()
end
end
else
end
end
lastanimpose = animpose
if Debounces.NoIdl == false then
if animpose == "Idle" then
change = 0.5
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.62+0.1*math.cos(sine/10),0)*CFrame.Angles(math.rad(-10),math.rad(-10),math.rad(14+2*math.cos(sine/10))), 0.4)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.62+0.1*math.cos(sine/10),0)*CFrame.Angles(math.rad(-20),math.rad(6),math.rad(-10-2*math.cos(sine/10))), 0.4)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-14+1*math.cos(sine/10)),math.rad(20),0), 0.2)
hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),0), 0.2)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 1-0.16*math.cos(sine/10), 0) * CFrame.Angles(0, math.rad(-20), math.rad(0)), 0.05)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, 0-0.1*math.cos(sine/10), -0.55) * CFrame.Angles(math.rad(-10+1*math.cos(sine/10)), math.rad(10), math.rad(-0-2*math.cos(sine/10))), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1-0.1*math.cos(sine/10), 0) * CFrame.Angles(0, math.rad(-10), math.rad(0+2*math.cos(sine/10))), 0.4)
elseif animpose == "Walking" then
change = 1
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55,0)*CFrame.Angles(math.rad(-16),math.rad(-12),math.rad(10+2*math.cos(sine/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.55,0)*CFrame.Angles(math.rad(-16),math.rad(12),math.rad(-10-2*math.cos(sine/14))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2) * CFrame.Angles(math.rad(-14),0,0), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0-0.1*math.cos(sine/14), 0) * CFrame.Angles(math.rad(-10),0, math.rad(0)), 0.05)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-8), 0, math.rad(-8)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-8), 0, math.rad(8)), 0.4)
elseif animpose == "Running" then
change = 1
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.35,.4)*CFrame.Angles(math.rad(-30),math.rad(14),math.rad(-30+2*math.cos(sine/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2,0.55,-.4)*CFrame.Angles(math.rad(110),math.rad(0),math.rad(40-2*math.cos(sine/14))), 0.2)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, .2) * CFrame.Angles(math.rad(20),math.rad(10),0), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0-0.1*math.cos(sine/14), 0) * CFrame.Angles(math.rad(-40),math.rad(-10), math.rad(0)), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, 0, -1.2) * CFrame.Angles(math.rad(-20), math.rad(10), math.rad(0)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-12), math.rad(10), math.rad(0)), 0.4)
end
end
end)

hum.MaxHealth = math.huge
wait(3)
hum.Health = math.huge


spawn(function()
	while wait(2)
		 do
		GroundWave3()	
	end
end)


while true do --Loop
	wait(0.04)
part2.Texture = "http://www.roblox.com/asset/?id=358965396" --Insert decal's first texture 
part2.Texture = "http://www.roblox.com/asset/?id=358965513" --second texture
wait(0.04) --wait 1 second, you can change this and make it different for every one
part2.Texture = "http://www.roblox.com/asset/?id=358965632" 
wait(0.04)
part2.Texture = "http://www.roblox.com/asset/?id=358965664" 
wait(0.04)
end
