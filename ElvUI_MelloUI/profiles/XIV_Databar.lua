local E, L, V, P, G = unpack(ElvUI);
local MLUI = E:GetModule('MelloUI');

function MLUI:LoadXIV_DatabarProfile(res)
	print('XIV_Databar')
	if res == '1080' then
		print('XIV_Databar1080')
	elseif res == '1440' then
		print('XIV_Databar1440')
	end
end