local E, L, V, P, G = unpack(ElvUI);
local MLUI = E:GetModule('MelloUI');

local res = '1080'

local function SetupLayout(layout)

	if layout == '1080' then

		print('layout 1080')
	elseif layout == '1440' then
		print('layout 1440')
	end
	PluginInstallStepComplete.message = MLUI.Title..L['Layout Set']
	PluginInstallStepComplete:Show()

	E:UpdateAll(true)
end

local function SetupActionbars(layout)

	if layout == '1080' then
		
		print('Actionbars 1080')
	elseif layout == '1440' then
		print('Actionbars 1440')
	end
	PluginInstallStepComplete.message = MLUI.Title..L['Actionbars Set']
	PluginInstallStepComplete:Show()
	E:UpdateAll(true)
end

local function SetupUnitframes(layout)
	if layout == '1080' then
		
		print('Unitframes 1080')
	elseif layout == '1440' then
		print('Unitframes 1440')
	end

	PluginInstallStepComplete.message = MLUI.Title..L['Unitframes Set']
	PluginInstallStepComplete:Show()
	E:UpdateAll(true)
end

local function InstallComplete()
	--E.private.install_complete = E.version
	--E.db.melloui.installed = true
	--E.private.melloui.install_complete = MLUI.Version

	ReloadUI()
end

-- ElvUI PlugIn installer
MLUI.installTable = {
	["Name"] = "|cff00c0faMelloUI|r",
	["Title"] = L["|cff00c0faMelloUI|r Installation"],
	["tutorialImage"] = [[Interface\AddOns\ElvUI_MelloUI\media\MelloLogo.tga]],
	["Pages"] = {
		[1] = function()
			PluginInstallTutorialImage:Size(384, 192)
			PluginInstallTutorialImage:Point('BOTTOM', 0, 60)
			PluginInstallTitleFrame.text:SetFont(E["media"].normFont, 16, "OUTLINE")
			PluginInstallFrame.SubTitle:SetFormattedText(L["Welcome to MelloUI version %s, for ElvUI %s."], MLUI.Version, E.version)
			PluginInstallFrame.Desc1:SetText(L["By pressing the Continue button, MelloUI will be applied on your current ElvUI installation.\n\n|cffff8000 TIP: It would be nice if you apply the changes in a new profile, just in case you don't like the result.|r"])
			PluginInstallFrame.Desc2:SetText(L["Please press the continue button to go onto the next step."])
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript("OnClick", function() InstallComplete() end)
			PluginInstallFrame.Option1:SetText(L["Skip Process"])
		end,
		[2] = function()
			PluginInstallFrame.SubTitle:SetText(L["Screen Resolution"])
			PluginInstallFrame.Desc1:SetText(L["This part of the installation will setup the layout to the correct resolution."])
			PluginInstallFrame.Desc2:SetText(L["Please click the button below that corresponds to your screen resolution."])
			PluginInstallFrame.Desc3:SetText(L["Importance: |cff07D400High|r"])
			PluginInstallFrame.Next:Disable()
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript("OnClick", function() res = '1080'; PluginInstallFrame.Next:Enable() end)
			PluginInstallFrame.Option1:SetText("1920x1080")
			PluginInstallFrame.Option2:Show()
			PluginInstallFrame.Option2:SetScript("OnClick", function() res = '1440'; PluginInstallFrame.Next:Enable() end)
			PluginInstallFrame.Option2:SetText("2560x1440")
		end,
		[3] = function()
			PluginInstallFrame.SubTitle:SetText(L["Layout"])
			PluginInstallFrame.Desc1:SetText(L["This part of the installation will change the default ElvUI look."])
			PluginInstallFrame.Desc2:SetText(L["Please click the button below to apply the new layout."])
			PluginInstallFrame.Desc3:SetText(L["Importance: |cff07D400High|r"])
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript("OnClick", function() SetupLayout(res) end)
			PluginInstallFrame.Option1:SetText(L["Apply"])
		end,
		[4] = function()
			PluginInstallFrame.SubTitle:SetText(L["UnitFrames"])
			PluginInstallFrame.Desc1:SetText(L["This part of the installation process will reposition your Unitframes."])
			PluginInstallFrame.Desc2:SetText(L["Please click a button below to setup your Unitframes."])
			PluginInstallFrame.Desc3:SetText(L["Importance: |cff07D400High|r"])
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript("OnClick", function() SetupUnitframes(res) end)
			PluginInstallFrame.Option1:SetText(L["Apply"])
		end,
		[5] = function()
			PluginInstallFrame.SubTitle:SetText(L["ActionBars"])
			PluginInstallFrame.Desc1:SetText(L["This part of the installation process will reposition your Actionbars and will enable backdrops"])
			PluginInstallFrame.Desc2:SetText(L["Please click a button below to setup your actionbars."])
			PluginInstallFrame.Desc3:SetText(L["Importance: |cff07D400High|r"])
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript("OnClick", function() SetupActionbars(res) end)
			PluginInstallFrame.Option1:SetText(L["Apply"])
		end,
		[6] = function()
			PluginInstallFrame.SubTitle:SetText(L["Installation Complete"])
			PluginInstallFrame.Desc1:SetText(L["You are now finished with the installation process. If you are in need of technical support please visit us at https://www.tukui.org."])
			PluginInstallFrame.Desc2:SetText(L["Please click the button below so you can setup variables and ReloadUI."])
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript("OnClick", function() InstallComplete() end)
			PluginInstallFrame.Option1:SetText(L["Finished"])
			PluginInstallStepComplete.message = MLUI.Title..L['Installed']
			PluginInstallStepComplete:Show()
		end,
	},

	["StepTitles"] = {
		[1] = START,
		[2] = L["Screen Resolution"],
		[3] = L["Layout"],
		[4] = L["UnitFrames"],
		[5] = L["ActionBars"],
		[6] = L["Installation Complete"],
	},
	StepTitlesColor = {1, 1, 1},
	StepTitlesColorSelected = {0, 192/255, 250},
	StepTitleWidth = 200,
	StepTitleButtonWidth = 200,
	StepTitleTextJustification = "CENTER",
}