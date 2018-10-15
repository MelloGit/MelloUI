local E, L, V, P, G = unpack(ElvUI);
local MLUI = E:GetModule('MelloUI');

function MLUI:LoadDetailsProfile(res)
	print('Details')
	if res == '1080' then
		print('Details1080')
	elseif res == '1440' then
		print('Details1440')
	end
end