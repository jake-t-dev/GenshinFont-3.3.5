local GenshinFont = CreateFrame("Frame")
local fontPath = "Interface\\AddOns\\GenshinFont-3.3.5\\font.ttf"

function GenshinFont:ApplyAllFonts()
    -- 1. Replace the standard Global Strings (Damage, Chat, etc)
    DAMAGE_TEXT_FONT = fontPath
    UNIT_NAME_FONT = fontPath
    NAMEPLATE_FONT = fontPath
    CHAT_FONT_HEIGHTS = {12, 13, 14, 15, 16, 17, 18, 20, 22, 24}

    -- 2. Loop through the internal UI font objects
    -- This covers buttons, health bars, quest logs, and menus
    local fonts = {
        "GameFontNormal", "GameFontHighlight", "GameFontDisable",
        "GameFontNormalSmall", "GameFontHighlightSmall", "GameFontDisableSmall",
        "GameFontNormalLarge", "GameFontHighlightLarge", "GameFontDisableLarge",
        "GameFontNormalHuge", "GameFontHighlightHuge",
        "SystemFont_Tiny", "SystemFont_Small", "SystemFont_Med1", "SystemFont_Med2",
        "SystemFont_Med3", "SystemFont_Large", "SystemFont_Huge1", "SystemFont_Huge2",
        "QuestFont", "QuestFont_Large", "QuestFont_Shadow_Huge", "QuestTitleFont",
        "QuestTitleFontBlackShadow", "NumberFontNormal", "NumberFontNormalSmall",
        "NumberFontNormalLarge", "NumberFontNormalHuge", "ChatFontNormal",
        "ChatFontSmall", "SpellFont_Small", "InvoiceFont_Med", "InvoiceFont_Small",
        "Tooltip_Med", "Tooltip_Small", "FriendsFont_Normal", "FriendsFont_Small",
        "FriendsFont_Large", "FriendsFont_UserText"
    }

    for _, fontName in pairs(fonts) do
        local fontObj = _G[fontName]
        if fontObj then
            local _, size, flags = fontObj:GetFont()
            fontObj:SetFont(fontPath, size, flags)
        end
    end
end

-- Force updates when the addon loads or variables change
GenshinFont:RegisterEvent("ADDON_LOADED")
GenshinFont:RegisterEvent("VARIABLES_LOADED")
GenshinFont:SetScript("OnEvent", function(self, event, arg1)
    if event == "ADDON_LOADED" and arg1 == "GenshinFont-3.3.5" then
        self:ApplyAllFonts()
    end
end)

-- Run once immediately
GenshinFont:ApplyAllFonts()