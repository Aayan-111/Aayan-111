game:GetService("Players").LocalPlayer.Chatted:connect(
    function(msg)
        if string.lower(msg) == "/kittyraid " then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Alikhammass/MyAdmin/main/kittyraid", false))()
        elseif string.lower(msg) == "/boomboxraid on" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Alikhammass/MyAdmin/main/boomboxtoggles", false))()
        elseif string.lower(msg) == "/getoutmyinv" then
            loadstring(game:HttpGet('https://raw.githubusercontent.com/Alikhammass/MyAdmin/main/getoutmyinv', true))()
        elseif string.lower(msg) == "/gimmetools" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Alikhammass/MyAdmin/main/gimmetools"))()
        elseif string.lower(msg) == "/hub" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/i4mitty/Peruanito.exe/main/Peruanito.exe.lua"))()
        elseif string.lower(msg) == "/oof" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Alikhammass/MyAdmin/main/oof"))()
        elseif string.lower(msg) == "/cmds" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Alikhammass/MyAdmin/main/freecmdsguis"))()
        elseif string.lower(msg) == "/antilog" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Alikhammass/MyAdmin/main/antilogger"))()
        elseif string.lower(msg) == "/dontyoudaretouchme" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/0Ben1/fe./main/Fling%20GUI"))()
        elseif string.lower(msg) == "/serverhop" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Alikhammass/emoji/main/serverhop", true))()
        elseif string.lower(msg) == "/afk" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/2dgeneralspam1/scripts-and-stuff/master/scripts/LoadstringypVvhJBq4QNz", true))()
        elseif string.lower(msg) == "/ftao" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/BlizTBr/scripts/main/FTAP.lua"))()
        elseif string.lower(msg) == "/iy" then
            loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source', true))()
        elseif string.lower(msg) == "/emoji" then
            loadstring(game:HttpGet('https://raw.githubusercontent.com/Alikhammass/emoji/main/emo', true))()
        elseif string.lower(msg) == "/f3x" then
            loadstring(game:HttpGet('https://raw.githubusercontent.com/Alikhammass/antifling./main/F3x', true))()
        elseif string.lower(msg) == "/swordreach" then
            loadstring(game:HttpGet('https://raw.githubusercontent.com/Alikhammass/emoji/main/swordreach', true))()
        elseif string.lower(msg) == "/crash" then
            loadstring(game:HttpGet('https://raw.githubusercontent.com/Alikhammass/MyAdmin/main/crash', true))()
        elseif string.lower(msg) == "/pltiger" then
            loadstring(game:HttpGet('https://raw.githubusercontent.com/h17s3/TIGERADMIN/main/TIGERADMINSCRIPTFREE', true))()
        elseif string.lower(msg) == "/kick all" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Alikhammass/MyAdmin/main/kick%20all%20%3A)", true))()
        elseif string.lower(msg) == "/fps" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/insanedude59/MiscReleases/main/Roblox/UWPFPSBooster.lua"))()
        elseif string.lower(msg) == "/byebye all" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Alikhammass/MyAdmin/main/quickfling"))()
        elseif string.lower(msg) == "/ad" then
            game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer("join server for script", "All")
            game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer(".gg/pcPKMpgs", "All")
        end
    end
)

-- Add other commands here --
loadstring(game:HttpGet("https://raw.githubusercontent.com/Alikhammass/MyAdmin/main/messagefree"))()
game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer("😍AK ADMIN😍", "All")
game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer(".gg/pcPKMpgs", "All")
