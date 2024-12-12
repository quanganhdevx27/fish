local scripts = {
    "https://raw.githubusercontent.com/JustLevel/goombahub/main/fisch.lua",
    "https://raw.githubusercontent.com/quanganhdevx27/fish/refs/heads/main/afk.lua"
}

-- Hàm tải và chạy script
local function loadScripts()
    for _, url in ipairs(scripts) do
        local success, result = pcall(function()
            return loadstring(game:HttpGet(url))()
        end)
        if not success then
            warn("Error loading script from: " .. url .. "\n" .. result)
        end
    end
end

-- Thực thi cả hai script
loadScripts()
