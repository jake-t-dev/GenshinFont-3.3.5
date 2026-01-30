GenshinFont = CreateFrame("Frame", "GenshinFont");

local fontPath = "Interface\\AddOns\\GenshinFont-3.3.5\\font.ttf";

function GenshinFont:ApplySystemFonts()
    -- Damage Numbers
    DAMAGE_TEXT_FONT = fontPath;

    -- Main UI Fonts
    UIDP_Font = fontPath; 
    SystemFont_Tiny = fontPath;
    SystemFont_Small = fontPath;
    SystemFont_Outline_Small = fontPath;
    SystemFont_Shadow_Small = fontPath;
    SystemFont_Inverse_Small = fontPath;
    SystemFont_Med1 = fontPath;
    SystemFont_Med2 = fontPath;
    SystemFont_Med3 = fontPath;
    SystemFont_Shadow_Med1 = fontPath;
    SystemFont_Shadow_Med2 = fontPath;
    SystemFont_Shadow_Med3 = fontPath;
    SystemFont_Large = fontPath;
    SystemFont_Shadow_Large = fontPath;
    SystemFont_Huge1 = fontPath;
    SystemFont_Huge2 = fontPath;
    SystemFont_Shadow_Huge1 = fontPath;
    SystemFont_Shadow_Huge2 = fontPath;
    SystemFont_Shadow_Huge3 = fontPath;
    
    -- Chat and Input
    ChatFontNormal = fontPath;
    
    -- Headers
    QuestFont = fontPath;
    QuestFont_Large = fontPath;
    QuestFont_Huge = fontPath;
    QuestFont_Shadow_Huge = fontPath;
    QuestFont_Super_Huge = fontPath;
    QuestFont_Shadow_Small = fontPath;
end

GenshinFont:SetScript("OnEvent", function() 
    if (event == "ADDON_LOADED") then
        GenshinFont:ApplySystemFonts()
    end
end);

GenshinFont:RegisterEvent("ADDON_LOADED");

-- Apply
GenshinFont:ApplySystemFonts()