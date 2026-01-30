
GenshinFont = CreateFrame("Frame", "GenshinFont");

local damagefont_FONT_NUMBER = "Interface\\AddOns\\GenshinFont-3.3.5\\font.ttf";

function GenshinFont:ApplySystemFonts()

DAMAGE_TEXT_FONT = damagefont_FONT_NUMBER;

end

GenshinFont:SetScript("OnEvent",
		    function() 
		       if (event == "ADDON_LOADED") then
			  GenshinFont:ApplySystemFonts()
		       end
		    end);
GenshinFont:RegisterEvent("ADDON_LOADED");

GenshinFont:ApplySystemFonts()