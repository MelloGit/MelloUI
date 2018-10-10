local E, L, V, P, G = unpack(ElvUI);
local MLUI = E:GetModule('MelloUI');

local res = '1080'

local function SetupLayout(layout)
	-- TIP: We put on top or at the end settings that are common for both layouts.
	E.db["currentTutorial"] = 1
	E.db["hideTutorial"] = true

	if layout == '1080' then
		E.db["databars"]["experience"]["textFormat"] = "CURPERC"
		E.db["databars"]["experience"]["width"] = 338
		E.db["databars"]["experience"]["font"] = "MelloUI Forced Square"
		E.db["databars"]["experience"]["hideAtMaxLevel"] = false
		E.db["databars"]["experience"]["fontOutline"] = "THICKOUTLINE"
		E.db["databars"]["experience"]["orientation"] = "HORIZONTAL"
		E.db["databars"]["experience"]["height"] = 6
		E.db["databars"]["experience"]["textSize"] = 10
		E.db["databars"]["experience"]["textYoffset"] = 10
		E.db["databars"]["honor"]["font"] = "MelloUI Club"
		E.db["databars"]["honor"]["fontOutline"] = "THICKOUTLINE"
		E.db["databars"]["honor"]["orientation"] = "HORIZONTAL"
		E.db["databars"]["honor"]["height"] = 6
		E.db["databars"]["honor"]["textSize"] = 9
		E.db["databars"]["honor"]["width"] = 338
		E.db["databars"]["reputation"]["font"] = "MelloUI Forced Square"
		E.db["databars"]["reputation"]["enable"] = true
		E.db["databars"]["reputation"]["fontOutline"] = "THICKOUTLINE"
		E.db["databars"]["reputation"]["orientation"] = "HORIZONTAL"
		E.db["databars"]["reputation"]["height"] = 6
		E.db["databars"]["reputation"]["textSize"] = 9
		E.db["databars"]["reputation"]["width"] = 338
		E.db["databars"]["azerite"]["font"] = "MelloUI Forced Square"
		E.db["databars"]["azerite"]["fontOutline"] = "THICKOUTLINE"
		E.db["databars"]["azerite"]["orientation"] = "HORIZONTAL"
		E.db["databars"]["azerite"]["height"] = 6
		E.db["databars"]["azerite"]["textSize"] = 9
		E.db["databars"]["azerite"]["width"] = 338

		E.db["bags"]["junkIcon"] = true
		E.db["bags"]["countFont"] = "Expressway"
		E.db["bags"]["itemLevelFont"] = "Expressway"
		E.db["bags"]["currencyFormat"] = "ICON"
		E.db["bags"]["bankSize"] = 35
		E.db["bags"]["countFontOutline"] = "OUTLINE"
		E.db["bags"]["bankWidth"] = 542
		E.db["bags"]["itemLevelFontSize"] = 15
		E.db["bags"]["itemLevelFontOutline"] = "OUTLINE"
		E.db["bags"]["countFontSize"] = 20
		E.db["bags"]["sortInverted"] = false
		E.db["bags"]["bagWidth"] = 338

		if MLUI.DT then
			E.db["dtbars"]["DTB2_Sata"]["enable"] = false
			E.db["dtbars"]["DTB2_Sata"]["transparent"] = false
			E.db["dtbars"]["DTB2_Sata"]["height"] = 22
			E.db["dtbars"]["DTB2_Sata"]["pethide"] = false
			E.db["dtbars"]["DTB2_Sata"]["growth"] = "HORIZONTAL"
			E.db["dtbars"]["DTB2_Sata"]["width"] = 300
			E.db["dtbars"]["DTB2_Haste"]["enable"] = true
			E.db["dtbars"]["DTB2_Haste"]["transparent"] = false
			E.db["dtbars"]["DTB2_Haste"]["height"] = 22
			E.db["dtbars"]["DTB2_Haste"]["pethide"] = false
			E.db["dtbars"]["DTB2_Haste"]["growth"] = "HORIZONTAL"
			E.db["dtbars"]["DTB2_Haste"]["width"] = 300
			E.db["dtbars"]["DTB2_Timee"]["height"] = 22
			E.db["dtbars"]["DTB2_Timee"]["transparent"] = true
			E.db["dtbars"]["DTB2_Timee"]["enable"] = false
			E.db["dtbars"]["DTB2_Timee"]["pethide"] = false
			E.db["dtbars"]["DTB2_Timee"]["growth"] = "HORIZONTAL"
			E.db["dtbars"]["DTB2_Timee"]["width"] = 300
			E.db["dtbars"]["DTB2_Time"]["enable"] = false
			E.db["dtbars"]["DTB2_Time"]["transparent"] = true
			E.db["dtbars"]["DTB2_Time"]["height"] = 67
			E.db["dtbars"]["DTB2_Time"]["pethide"] = false
			E.db["dtbars"]["DTB2_Time"]["growth"] = "VERTICAL"
			E.db["dtbars"]["DTB2_Time"]["width"] = 267
			E.db["datatexts"]["panels"]["DTB2_Timee"] = "Time"
			E.db["datatexts"]["panels"]["DTB2_Time"]["left"] = "System"
		end

		if MLUI.VAT then
			E.db["VAT"]["backdropTexture"] = "ElvUI Blank"
			E.db["VAT"]["enableStaticColor"] = true
			E.db["VAT"]["staticColor"]["r"] = 1
			E.db["VAT"]["staticColor"]["g"] = 0.5
			E.db["VAT"]["staticColor"]["b"] = 0
			E.db["VAT"]["threshold"]["buffs"] = true
			E.db["VAT"]["colors"]["minutesIndicator"]["r"] = 1
			E.db["VAT"]["colors"]["minutesIndicator"]["g"] = 0.5
			E.db["VAT"]["colors"]["minutesIndicator"]["b"] = 0
			E.db["VAT"]["colors"]["expireIndicator"]["r"] = 1
			E.db["VAT"]["colors"]["expireIndicator"]["g"] = 0.5
			E.db["VAT"]["colors"]["expireIndicator"]["b"] = 0
			E.db["VAT"]["colors"]["secondsIndicator"]["r"] = 1
			E.db["VAT"]["colors"]["secondsIndicator"]["g"] = 0.5
			E.db["VAT"]["colors"]["secondsIndicator"]["b"] = 0
			E.db["VAT"]["colors"]["daysIndicator"]["r"] = 1
			E.db["VAT"]["colors"]["daysIndicator"]["g"] = 0.5
			E.db["VAT"]["colors"]["daysIndicator"]["b"] = 0
			E.db["VAT"]["colors"]["hoursIndicator"]["r"] = 1
			E.db["VAT"]["colors"]["hoursIndicator"]["g"] = 0.5
			E.db["VAT"]["colors"]["hoursIndicator"]["b"] = 0
			E.db["VAT"]["spacing"] = -6
			E.db["VAT"]["statusbarTexture"] = "BuiFlat"
			E.db["VAT"]["position"] = "TOP"
			E.db["VAT"]["showText"] = true
		end
		
		if MLUI.BU then
			E.db["benikui"]["misc"]["ilevel"]["font"] = "MelloUI Tukui UnitFrame"
			E.db["benikui"]["misc"]["ilevel"]["fontsize"] = 17
			E.db["benikui"]["general"]["shadows"] = false
			E.db["benikui"]["general"]["splashScreen"] = false
			E.db["benikui"]["datatexts"]["mail"]["toggle"] = false
			E.db["benikui"]["datatexts"]["middle"]["enable"] = false
			E.db["benikui"]["datatexts"]["middle"]["styled"] = true
			E.db["benikui"]["datatexts"]["middle"]["backdrop"] = true
			E.db["benikui"]["datatexts"]["middle"]["width"] = 322
			E.db["benikui"]["datatexts"]["chat"]["enable"] = false
			E.db["benikui"]["datatexts"]["chat"]["editBoxPosition"] = "ABOVE_CHAT"
			E.db["benikuiDatabars"]["experience"]["buiStyle"] = false
			E.db["benikuiDatabars"]["honor"]["notifiers"]["position"] = "LEFT"
			E.db["benikuiDatabars"]["honor"]["buiStyle"] = false
			E.db["benikuiDatabars"]["reputation"]["buttonStyle"] = "DEFAULT"
			E.db["benikuiDatabars"]["reputation"]["buiStyle"] = false
			E.db["benikuiDatabars"]["azerite"]["buttonStyle"] = "DEFAULT"
			E.db["benikuiDatabars"]["azerite"]["buiStyle"] = false
			E.db["benikuiDatabars"]["azerite"]["notifiers"]["position"] = "RIGHT"
			E.db["datatexts"]["panels"]["BuiMiddleDTPanel"]["right"] = "Mastery"
			E.db["datatexts"]["panels"]["BuiMiddleDTPanel"]["left"] = "Versatility"
			E.db["datatexts"]["panels"]["BuiMiddleDTPanel"]["middle"] = "Haste"
			E.db["dashboards"]["tokens"]["enableTokens"] = false
			E.db["dashboards"]["professions"]["enableProfessions"] = false
			E.db["dashboards"]["system"]["enableSystem"] = false
		end

		if MLUI.CT then
			E.db["CustomTweaks"]["PowerBarTexture"]["powerstatusbar"] = "ElvUI Blank"
			E.db["CustomTweaks"]["CastbarCustomBackdrop"]["backdropColor"]["a"] = 0
			E.db["CustomTweaks"]["CastbarCustomBackdrop"]["backdropColor"]["b"] = 1
			E.db["CustomTweaks"]["CastbarCustomBackdrop"]["backdropColor"]["g"] = 0.98039215686274
			E.db["CustomTweaks"]["CastbarCustomBackdrop"]["backdropColor"]["r"] = 0
			E.db["CustomTweaks"]["PushedColor"]["Color"]["a"] = 0.31568837165832
			E.db["CustomTweaks"]["PushedColor"]["Color"]["b"] = 1
			E.db["CustomTweaks"]["PushedColor"]["Color"]["g"] = 0.98823529411765
			E.db["CustomTweaks"]["PushedColor"]["Color"]["r"] = 0
			E.db["CustomTweaks"]["BagButtons"]["buttonColor"]["b"] = 1
			E.db["CustomTweaks"]["BagButtons"]["buttonColor"]["g"] = 0.9921568627451
			E.db["CustomTweaks"]["BagButtons"]["buttonColor"]["r"] = 0
			E.db["CustomTweaks"]["BagButtons"]["stackButton"] = true
			E.db["CustomTweaks"]["BagButtons"]["style"] = "TEXTURE"
			E.db["CustomTweaks"]["AuraIconSpacing"]["spacing"] = 0
			E.db["CustomTweaks"]["CastbarText"]["Player"]["text"]["color"]["b"] = 1
			E.db["CustomTweaks"]["CastbarText"]["Player"]["text"]["color"]["g"] = 0.92941176470588
			E.db["CustomTweaks"]["CastbarText"]["Player"]["text"]["color"]["r"] = 0
			E.db["CustomTweaks"]["CastbarText"]["Player"]["text"]["xOffset"] = 1
			E.db["CustomTweaks"]["CastbarText"]["Player"]["text"]["yOffset"] = 25
			E.db["CustomTweaks"]["CastbarText"]["Player"]["duration"]["color"]["b"] = 1
			E.db["CustomTweaks"]["CastbarText"]["Player"]["duration"]["color"]["g"] = 0.92941176470588
			E.db["CustomTweaks"]["CastbarText"]["Player"]["duration"]["color"]["r"] = 0
		end

		E.db["chat"]["useCustomTimeColor"] = false
		E.db["chat"]["fontSize"] = 10
		E.db["chat"]["tabFontOutline"] = "OUTLINE"
		E.db["chat"]["keywordSound"] = "Whisper Alert"
		E.db["chat"]["timeStampFormat"] = "%H:%M "
		E.db["chat"]["tabFontSize"] = 17
		E.db["chat"]["panelColorConverted"] = true
		E.db["chat"]["panelTabTransparency"] = true
		E.db["chat"]["fontOutline"] = "OUTLINE"
		E.db["chat"]["panelWidthRight"] = 417
		E.db["chat"]["socialQueueMessages"] = true
		E.db["chat"]["keywords"] = "%MYNAME%"
		E.db["chat"]["tabFont"] = "MelloUI Tukui UnitFrame"
		E.db["chat"]["editBoxPosition"] = "ABOVE_CHAT"
		E.db["chat"]["panelHeightRight"] = 261
		E.db["chat"]["font"] = "MelloUI Club"
		E.db["chat"]["noAlertInCombat"] = true
		E.db["chat"]["fadeTabsNoBackdrop"] = false
		E.db["chat"]["panelHeight"] = 174
		E.db["chat"]["tapFontSize"] = 13
		E.db["chat"]["panelWidth"] = 338

		E.db["general"]["totems"]["enable"] = false
		E.db["general"]["totems"]["growthDirection"] = "HORIZONTAL"
		E.db["general"]["totems"]["size"] = 45
		E.db["general"]["totems"]["spacing"] = 10

		E.db["general"]["fontSize"] = 13
		E.db["general"]["taintLog"] = true
		E.db["general"]["autoRepair"] = "PLAYER"
		E.db["general"]["minimap"]["locationFont"] = "MelloUI Club"
		E.db["general"]["minimap"]["locationText"] = "HIDE"
		E.db["general"]["minimap"]["locationFontSize"] = 18
		E.db["general"]["minimap"]["icons"]["difficulty"]["scale"] = 1.45
		E.db["general"]["minimap"]["icons"]["lfgEye"]["scale"] = 2
		E.db["general"]["minimap"]["icons"]["lfgEye"]["position"] = "BOTTOMLEFT"
		E.db["general"]["minimap"]["icons"]["lfgEye"]["xOffset"] = -17
		E.db["general"]["minimap"]["icons"]["lfgEye"]["yOffset"] = 6
		E.db["general"]["minimap"]["icons"]["mail"]["scale"] = 1.2
		E.db["general"]["minimap"]["icons"]["classHall"]["xOffset"] = -24
		E.db["general"]["minimap"]["icons"]["classHall"]["scale"] = 1.3
		E.db["general"]["minimap"]["icons"]["classHall"]["yOffset"] = -28
		E.db["general"]["minimap"]["icons"]["classHall"]["position"] = "BOTTOMLEFT"
		E.db["general"]["minimap"]["icons"]["vehicleLeave"]["scale"] = 1.35
		E.db["general"]["minimap"]["icons"]["vehicleLeave"]["xOffset"] = 19
		E.db["general"]["minimap"]["size"] = 173
		E.db["general"]["backdropfadecolor"]["a"] = 0.75
		E.db["general"]["backdropfadecolor"]["r"] = 0.054
		E.db["general"]["backdropfadecolor"]["g"] = 0.054
		E.db["general"]["backdropfadecolor"]["b"] = 0.054
		E.db["general"]["valuecolor"]["a"] = 1
		E.db["general"]["valuecolor"]["r"] = 1
		E.db["general"]["valuecolor"]["g"] = 0.5
		E.db["general"]["valuecolor"]["b"] = 0
		E.db["general"]["movertransparancy"] = 1
		E.db["general"]["threat"]["enable"] = false
		E.db["general"]["backdropcolor"]["r"] = 0.025
		E.db["general"]["backdropcolor"]["g"] = 0.025
		E.db["general"]["backdropcolor"]["b"] = 0.025
		E.db["general"]["vendorGrays"] = true
		E.db["general"]["bordercolor"]["r"] = 0
		E.db["general"]["bordercolor"]["g"] = 0
		E.db["general"]["bordercolor"]["b"] = 0
		E.db["general"]["font"] = "MelloUI Club"
		E.db["general"]["altPowerBar"]["statusBar"] = "BuiFlat"
		E.db["general"]["altPowerBar"]["fontSize"] = 11
		E.db["general"]["altPowerBar"]["font"] = "Expressway"
		E.db["general"]["interruptAnnounce"] = "EMOTE"
		E.db["general"]["topPanel"] = false
		E.db["general"]["bonusObjectivePosition"] = "RIGHT"
		E.db["general"]["objectiveFrameHeight"] = 750

		E.db["tooltip"]["itemCount"] = "BOTH"
		E.db["tooltip"]["healthBar"]["statusPosition"] = "TOP"
		E.db["tooltip"]["healthBar"]["fontSize"] = 14
		E.db["tooltip"]["healthBar"]["font"] = "Expressway"
		E.db["tooltip"]["healthBar"]["height"] = 15
		E.db["tooltip"]["useCustomFactionColors"] = true
		E.db["tooltip"]["headerFontSize"] = 18
		E.db["tooltip"]["textFontSize"] = 15
		E.db["tooltip"]["font"] = "Expressway"
		E.db["tooltip"]["fontSize"] = 10
		E.db["tooltip"]["playerTitles"] = false
		E.db["tooltip"]["guildRanks"] = false
		E.db["tooltip"]["progressInfo"] = false
		E.db["tooltip"]["smallTextFontSize"] = 11

		E.db["datatexts"]["minimapPanels"] = false
		E.db["datatexts"]["noCombatHover"] = true
		E.db["datatexts"]["goldFormat"] = "CONDENSED"
		E.db["datatexts"]["panelTransparency"] = true
		E.db["datatexts"]["time24"] = true

		E.db["datatexts"]["panels"]["RightMiniPanel"] = ""

		E.db["datatexts"]["panels"]["DTB2_Haste"] = "Haste"
		E.db["datatexts"]["panels"]["DTB2_Sata"] = "Currencies"
		E.db["datatexts"]["panels"]["LeftMiniPanel"] = "Prof"

		E.db["datatexts"]["fontOutline"] = "OUTLINE"
		E.db["datatexts"]["leftChatPanel"] = false
		E.db["datatexts"]["rightChatPanel"] = false
		E.db["datatexts"]["noCombatClick"] = true
		E.db["datatexts"]["font"] = "Expressway"
		E.db["datatexts"]["actionbar1"] = false
		E.db["datatexts"]["panelBackdrop"] = false
		E.db["datatexts"]["fontSize"] = 11
		E.db["datatexts"]["battleground"] = false

		E.db["movers"]["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-140"
		E.db["movers"]["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,0,-441"
		E.db["movers"]["ArenaHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-270,-323"
		E.db["movers"]["AzeriteBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,213"
		E.db["movers"]["BNETMover"] = "TOP,ElvUIParent,TOP,277,-4"
		E.db["movers"]["BelowMinimapContainerMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-189"
		E.db["movers"]["BuffsMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-7"
		E.db["movers"]["BuiDashboardMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-8"
		E.db["movers"]["BuiMiddleDtMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,243"
		E.db["movers"]["DebuffsMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-124"
		E.db["movers"]["DigSiteProgressBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,315"
		E.db["movers"]["ElvUIBagMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-340,31"
		E.db["movers"]["ElvUIBankMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,420,21"
		E.db["movers"]["ExperienceBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,208"
		E.db["movers"]["GMMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-634,-4"
		E.db["movers"]["GhostFrameMover"] = "BOTTOM,ElvUIParent,BOTTOM,-354,462"
		E.db["movers"]["HonorBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,218"
		E.db["movers"]["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,31"
		E.db["movers"]["LocationLiteMover"] = "TOP,ElvUIParent,TOP,0,-7"
		E.db["movers"]["LocationMover"] = "TOP,ElvUIParent,TOP,0,-7"
		E.db["movers"]["LootFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,279,-110"
		E.db["movers"]["MinimapButtonAnchor"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-257"
		E.db["movers"]["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-6,-10"
		E.db["movers"]["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-59,-245"
		E.db["movers"]["OzCooldownsMover"] = "BOTTOM,ElvUIParent,BOTTOM,-317,306"
		E.db["movers"]["ProfessionsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-5,-184"
		E.db["movers"]["RaidMarkerBarAnchor"] = "TOP,ElvUIParent,TOP,0,-4"
		E.db["movers"]["ReputationBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,208"
		E.db["movers"]["RequestStopButton"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-516,306"
		E.db["movers"]["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,31"
		E.db["movers"]["SocialMenuMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,325"
		E.db["movers"]["SquareMinimapButtonBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-297"
		E.db["movers"]["TalkingHeadFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-260,-182"
		E.db["movers"]["TooltipMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-342,29"
		E.db["movers"]["TopCenterContainerMover"] = "TOP,ElvUIParent,TOP,0,-34"
		E.db["movers"]["UIErrorsFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,578,-235"
		E.db["movers"]["VOICECHAT"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-503"
		E.db["movers"]["tokenHolderMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-123"
		E.db["movers"]["WatchFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-122,-292"
		E.db["movers"]["ZoneAbility"] = "BOTTOM,ElvUIParent,BOTTOM,243,455"

		E.db["movers"]["DTB2_Haste_Mover"] = "TOP,ElvUIParent,TOP,0,-64"
		E.db["movers"]["DTB2_Sata_Mover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,292"
		E.db["movers"]["DTB2_Time_Mover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-4"
		E.db["movers"]["DTB2_Timee_Mover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-31,-263"

		print('layout 1080')
	elseif layout == '1440' then
		E.db["general"]["fontSize"] = 13
		E.db["databars"]["experience"]["textFormat"] = "CURPERC"
		E.db["databars"]["experience"]["width"] = 338
		E.db["databars"]["experience"]["font"] = "MelloUI Club"
		E.db["databars"]["experience"]["hideAtMaxLevel"] = false
		E.db["databars"]["experience"]["fontOutline"] = "THICKOUTLINE"
		E.db["databars"]["experience"]["height"] = 6
		E.db["databars"]["experience"]["orientation"] = "HORIZONTAL"
		E.db["databars"]["experience"]["textSize"] = 10
		E.db["databars"]["experience"]["textYoffset"] = 10
		E.db["databars"]["honor"]["font"] = "MelloUI Club"
		E.db["databars"]["honor"]["fontOutline"] = "THICKOUTLINE"
		E.db["databars"]["honor"]["orientation"] = "HORIZONTAL"
		E.db["databars"]["honor"]["height"] = 6
		E.db["databars"]["honor"]["textSize"] = 9
		E.db["databars"]["honor"]["width"] = 338
		E.db["databars"]["reputation"]["font"] = "MelloUI Club"
		E.db["databars"]["reputation"]["enable"] = true
		E.db["databars"]["reputation"]["fontOutline"] = "THICKOUTLINE"
		E.db["databars"]["reputation"]["orientation"] = "HORIZONTAL"
		E.db["databars"]["reputation"]["height"] = 6
		E.db["databars"]["reputation"]["textSize"] = 9
		E.db["databars"]["reputation"]["width"] = 338
		E.db["databars"]["azerite"]["font"] = "MelloUI Club"
		E.db["databars"]["azerite"]["fontOutline"] = "THICKOUTLINE"
		E.db["databars"]["azerite"]["orientation"] = "HORIZONTAL"
		E.db["databars"]["azerite"]["height"] = 6
		E.db["databars"]["azerite"]["textSize"] = 9
		E.db["databars"]["azerite"]["width"] = 338

		E.db["datatexts"]["fontOutline"] = "OUTLINE"
		E.db["datatexts"]["leftChatPanel"] = false
		E.db["datatexts"]["rightChatPanel"] = false
		E.db["datatexts"]["noCombatClick"] = true
		E.db["datatexts"]["font"] = "Expressway"
		E.db["datatexts"]["actionbar1"] = false
		E.db["datatexts"]["panelBackdrop"] = false
		E.db["datatexts"]["noCombatHover"] = true
		E.db["datatexts"]["battleground"] = false
		E.db["datatexts"]["minimapPanels"] = false
		E.db["datatexts"]["fontSize"] = 11
		E.db["datatexts"]["goldFormat"] = "CONDENSED"
		E.db["datatexts"]["panelTransparency"] = true
		E.db["datatexts"]["time24"] = true

		E.db["datatexts"]["panels"]["LeftMiniPanel"] = "Prof"
		E.db["datatexts"]["panels"]["RightMiniPanel"] = ""

		if MLUI.DT then
			E.db["dtbars"]["DTB2_Time"]["height"] = 67
			E.db["dtbars"]["DTB2_Time"]["transparent"] = true
			E.db["dtbars"]["DTB2_Time"]["enable"] = false
			E.db["dtbars"]["DTB2_Time"]["pethide"] = false
			E.db["dtbars"]["DTB2_Time"]["growth"] = "VERTICAL"
			E.db["dtbars"]["DTB2_Time"]["width"] = 267
			E.db["dtbars"]["DTB2_Sata"]["height"] = 22
			E.db["dtbars"]["DTB2_Sata"]["transparent"] = false
			E.db["dtbars"]["DTB2_Sata"]["enable"] = false
			E.db["dtbars"]["DTB2_Sata"]["pethide"] = false
			E.db["dtbars"]["DTB2_Sata"]["growth"] = "HORIZONTAL"
			E.db["dtbars"]["DTB2_Sata"]["width"] = 300
			E.db["dtbars"]["DTB2_Timee"]["enable"] = false
			E.db["dtbars"]["DTB2_Timee"]["transparent"] = true
			E.db["dtbars"]["DTB2_Timee"]["height"] = 22
			E.db["dtbars"]["DTB2_Timee"]["pethide"] = false
			E.db["dtbars"]["DTB2_Timee"]["growth"] = "HORIZONTAL"
			E.db["dtbars"]["DTB2_Timee"]["width"] = 300
			E.db["dtbars"]["DTB2_Haste"]["height"] = 22
			E.db["dtbars"]["DTB2_Haste"]["transparent"] = false
			E.db["dtbars"]["DTB2_Haste"]["enable"] = true
			E.db["dtbars"]["DTB2_Haste"]["pethide"] = false
			E.db["dtbars"]["DTB2_Haste"]["growth"] = "HORIZONTAL"
			E.db["dtbars"]["DTB2_Haste"]["width"] = 300
			E.db["datatexts"]["panels"]["DTB2_Timee"] = "Time"
			E.db["datatexts"]["panels"]["DTB2_Time"]["left"] = "System"
			E.db["datatexts"]["panels"]["DTB2_Haste"] = "Haste"
			E.db["datatexts"]["panels"]["DTB2_Sata"] = "Currencies"
		end

		E.db["general"]["backdropfadecolor"]["a"] = 0.75
		E.db["general"]["backdropfadecolor"]["b"] = 0.054
		E.db["general"]["backdropfadecolor"]["g"] = 0.054
		E.db["general"]["backdropfadecolor"]["r"] = 0.054
		E.db["general"]["objectiveFrameHeight"] = 750

		E.db["general"]["totems"]["enable"] = false
		E.db["general"]["totems"]["size"] = 45
		E.db["general"]["totems"]["growthDirection"] = "HORIZONTAL"
		E.db["general"]["totems"]["spacing"] = 10

		E.db["general"]["interruptAnnounce"] = "EMOTE"
		E.db["general"]["autoRepair"] = "PLAYER"
		E.db["general"]["movertransparancy"] = 1
		E.db["general"]["threat"]["enable"] = false
		E.db["general"]["backdropcolor"]["b"] = 0.025
		E.db["general"]["backdropcolor"]["g"] = 0.025
		E.db["general"]["backdropcolor"]["r"] = 0.025
		E.db["general"]["topPanel"] = false
		E.db["general"]["bordercolor"]["b"] = 0
		E.db["general"]["bordercolor"]["g"] = 0
		E.db["general"]["bordercolor"]["r"] = 0
		E.db["general"]["font"] = "MelloUI Club"
		E.db["general"]["bonusObjectivePosition"] = "RIGHT"
		E.db["general"]["taintLog"] = true
		E.db["general"]["vendorGrays"] = true
		E.db["general"]["altPowerBar"]["statusBar"] = "BuiFlat"
		E.db["general"]["altPowerBar"]["fontSize"] = 11
		E.db["general"]["altPowerBar"]["font"] = "Expressway"
		E.db["general"]["valuecolor"]["a"] = 1
		E.db["general"]["valuecolor"]["b"] = 0
		E.db["general"]["valuecolor"]["g"] = 0.5
		E.db["general"]["valuecolor"]["r"] = 1

		E.db["general"]["minimap"]["locationFont"] = "Dajova"
		E.db["general"]["minimap"]["locationText"] = "HIDE"
		E.db["general"]["minimap"]["locationFontSize"] = 18
		E.db["general"]["minimap"]["icons"]["difficulty"]["scale"] = 1.45
		E.db["general"]["minimap"]["icons"]["lfgEye"]["scale"] = 2
		E.db["general"]["minimap"]["icons"]["lfgEye"]["yOffset"] = 6
		E.db["general"]["minimap"]["icons"]["lfgEye"]["xOffset"] = -17
		E.db["general"]["minimap"]["icons"]["lfgEye"]["position"] = "BOTTOMLEFT"
		E.db["general"]["minimap"]["icons"]["mail"]["scale"] = 1.2
		E.db["general"]["minimap"]["icons"]["classHall"]["scale"] = 1.3
		E.db["general"]["minimap"]["icons"]["classHall"]["xOffset"] = -24
		E.db["general"]["minimap"]["icons"]["classHall"]["yOffset"] = -28
		E.db["general"]["minimap"]["icons"]["classHall"]["position"] = "BOTTOMLEFT"
		E.db["general"]["minimap"]["icons"]["vehicleLeave"]["scale"] = 1.35
		E.db["general"]["minimap"]["icons"]["vehicleLeave"]["xOffset"] = 19
		E.db["general"]["minimap"]["size"] = 250

		E.db["bags"]["bagWidth"] = 338
		E.db["bags"]["countFont"] = "Expressway"
		E.db["bags"]["itemLevelFont"] = "Expressway"
		E.db["bags"]["currencyFormat"] = "ICON"
		E.db["bags"]["bankSize"] = 35
		E.db["bags"]["countFontOutline"] = "OUTLINE"
		E.db["bags"]["bankWidth"] = 542
		E.db["bags"]["itemLevelFontSize"] = 15
		E.db["bags"]["itemLevelFontOutline"] = "OUTLINE"
		E.db["bags"]["countFontSize"] = 20
		E.db["bags"]["sortInverted"] = false
		E.db["bags"]["junkIcon"] = true
		E.db["hideTutorial"] = true

		if MLUI.VAT then
			E.db["VAT"]["backdropTexture"] = "ElvUI Blank"
			E.db["VAT"]["enableStaticColor"] = true
			E.db["VAT"]["staticColor"]["b"] = 0
			E.db["VAT"]["staticColor"]["g"] = 0.5
			E.db["VAT"]["staticColor"]["r"] = 1
			E.db["VAT"]["threshold"]["buffs"] = true
			E.db["VAT"]["colors"]["minutesIndicator"]["b"] = 0
			E.db["VAT"]["colors"]["minutesIndicator"]["g"] = 0.5
			E.db["VAT"]["colors"]["minutesIndicator"]["r"] = 1
			E.db["VAT"]["colors"]["expireIndicator"]["b"] = 0
			E.db["VAT"]["colors"]["expireIndicator"]["g"] = 0.5
			E.db["VAT"]["colors"]["expireIndicator"]["r"] = 1
			E.db["VAT"]["colors"]["hoursIndicator"]["b"] = 0
			E.db["VAT"]["colors"]["hoursIndicator"]["g"] = 0.5
			E.db["VAT"]["colors"]["hoursIndicator"]["r"] = 1
			E.db["VAT"]["colors"]["daysIndicator"]["b"] = 0
			E.db["VAT"]["colors"]["daysIndicator"]["g"] = 0.5
			E.db["VAT"]["colors"]["daysIndicator"]["r"] = 1
			E.db["VAT"]["colors"]["secondsIndicator"]["b"] = 0
			E.db["VAT"]["colors"]["secondsIndicator"]["g"] = 0.5
			E.db["VAT"]["colors"]["secondsIndicator"]["r"] = 1
			E.db["VAT"]["spacing"] = -6
			E.db["VAT"]["statusbarTexture"] = "BuiFlat"
			E.db["VAT"]["position"] = "TOP"
			E.db["VAT"]["showText"] = true
		end

		if MLUI.BU then
			E.db["benikui"]["installed"] = true
			E.db["benikui"]["misc"]["ilevel"]["font"] = "MelloUI Tukui UnitFrame"
			E.db["benikui"]["misc"]["ilevel"]["fontsize"] = 17
			E.db["benikui"]["general"]["splashScreen"] = false
			E.db["benikui"]["general"]["shadows"] = false
			E.db["benikui"]["datatexts"]["mail"]["toggle"] = false
			E.db["benikui"]["datatexts"]["middle"]["enable"] = false
			E.db["benikui"]["datatexts"]["middle"]["styled"] = true
			E.db["benikui"]["datatexts"]["middle"]["backdrop"] = true
			E.db["benikui"]["datatexts"]["middle"]["width"] = 322
			E.db["benikui"]["datatexts"]["chat"]["enable"] = false
			E.db["benikui"]["datatexts"]["chat"]["editBoxPosition"] = "ABOVE_CHAT"
			E.db["benikuiDatabars"]["experience"]["buiStyle"] = false
			E.db["benikuiDatabars"]["honor"]["notifiers"]["position"] = "LEFT"
			E.db["benikuiDatabars"]["honor"]["buiStyle"] = false
			E.db["benikuiDatabars"]["reputation"]["buttonStyle"] = "DEFAULT"
			E.db["benikuiDatabars"]["reputation"]["buiStyle"] = false
			E.db["benikuiDatabars"]["azerite"]["buttonStyle"] = "DEFAULT"
			E.db["benikuiDatabars"]["azerite"]["buiStyle"] = false
			E.db["benikuiDatabars"]["azerite"]["notifiers"]["position"] = "RIGHT"
			E.db["dashboards"]["tokens"]["enableTokens"] = false
			E.db["dashboards"]["professions"]["enableProfessions"] = false
			E.db["dashboards"]["system"]["enableSystem"] = false
			E.db["datatexts"]["panels"]["BuiMiddleDTPanel"]["right"] = "Mastery"
			E.db["datatexts"]["panels"]["BuiMiddleDTPanel"]["left"] = "Versatility"
			E.db["datatexts"]["panels"]["BuiMiddleDTPanel"]["middle"] = "Haste"
		end

		E.db["chat"]["useCustomTimeColor"] = false
		E.db["chat"]["fontSize"] = 10
		E.db["chat"]["tabFontOutline"] = "OUTLINE"
		E.db["chat"]["keywordSound"] = "Whisper Alert"
		E.db["chat"]["tabFont"] = "MelloUI Tukui UnitFrame"
		E.db["chat"]["tabFontSize"] = 17
		E.db["chat"]["editBoxPosition"] = "ABOVE_CHAT"
		E.db["chat"]["panelTabTransparency"] = true
		E.db["chat"]["fontOutline"] = "OUTLINE"
		E.db["chat"]["panelWidthRight"] = 417
		E.db["chat"]["socialQueueMessages"] = true
		E.db["chat"]["keywords"] = "%MYNAME%"
		E.db["chat"]["timeStampFormat"] = "%H:%M "
		E.db["chat"]["panelColorConverted"] = true
		E.db["chat"]["panelHeightRight"] = 261
		E.db["chat"]["font"] = "MelloUI Club"
		E.db["chat"]["noAlertInCombat"] = true
		E.db["chat"]["fadeTabsNoBackdrop"] = false
		E.db["chat"]["panelHeight"] = 174
		E.db["chat"]["tapFontSize"] = 13
		E.db["chat"]["panelWidth"] = 338

		E.db["tooltip"]["fontSize"] = 10
		E.db["tooltip"]["healthBar"]["statusPosition"] = "TOP"
		E.db["tooltip"]["healthBar"]["font"] = "Expressway"
		E.db["tooltip"]["healthBar"]["fontSize"] = 14
		E.db["tooltip"]["healthBar"]["height"] = 15
		E.db["tooltip"]["useCustomFactionColors"] = true
		E.db["tooltip"]["headerFontSize"] = 18
		E.db["tooltip"]["textFontSize"] = 15
		E.db["tooltip"]["font"] = "Expressway"
		E.db["tooltip"]["itemCount"] = "BOTH"
		E.db["tooltip"]["playerTitles"] = false
		E.db["tooltip"]["guildRanks"] = false
		E.db["tooltip"]["progressInfo"] = false
		E.db["tooltip"]["smallTextFontSize"] = 11

		if MLUI.CT then
			E.db["CustomTweaks"]["PowerBarTexture"]["powerstatusbar"] = "ElvUI Blank"
			E.db["CustomTweaks"]["CastbarCustomBackdrop"]["backdropColor"]["a"] = 0
			E.db["CustomTweaks"]["CastbarCustomBackdrop"]["backdropColor"]["r"] = 0
			E.db["CustomTweaks"]["CastbarCustomBackdrop"]["backdropColor"]["g"] = 0.98039215686274
			E.db["CustomTweaks"]["CastbarCustomBackdrop"]["backdropColor"]["b"] = 1
			E.db["CustomTweaks"]["PushedColor"]["Color"]["a"] = 0.31568837165832
			E.db["CustomTweaks"]["PushedColor"]["Color"]["r"] = 0
			E.db["CustomTweaks"]["PushedColor"]["Color"]["g"] = 0.98823529411765
			E.db["CustomTweaks"]["PushedColor"]["Color"]["b"] = 1
			E.db["CustomTweaks"]["CastbarText"]["Player"]["duration"]["color"]["r"] = 0
			E.db["CustomTweaks"]["CastbarText"]["Player"]["duration"]["color"]["g"] = 0.92941176470588
			E.db["CustomTweaks"]["CastbarText"]["Player"]["duration"]["color"]["b"] = 1
			E.db["CustomTweaks"]["CastbarText"]["Player"]["text"]["color"]["r"] = 0
			E.db["CustomTweaks"]["CastbarText"]["Player"]["text"]["color"]["g"] = 0.92941176470588
			E.db["CustomTweaks"]["CastbarText"]["Player"]["text"]["color"]["b"] = 1
			E.db["CustomTweaks"]["CastbarText"]["Player"]["text"]["xOffset"] = 1
			E.db["CustomTweaks"]["CastbarText"]["Player"]["text"]["yOffset"] = 25
			E.db["CustomTweaks"]["AuraIconSpacing"]["spacing"] = 0
			E.db["CustomTweaks"]["BagButtons"]["buttonColor"]["r"] = 0
			E.db["CustomTweaks"]["BagButtons"]["buttonColor"]["g"] = 0.9921568627451
			E.db["CustomTweaks"]["BagButtons"]["buttonColor"]["b"] = 1
			E.db["CustomTweaks"]["BagButtons"]["stackButton"] = true
			E.db["CustomTweaks"]["BagButtons"]["style"] = "TEXTURE"
		end

		E.db["movers"]["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-140"
		E.db["movers"]["AzeriteBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,213"
		E.db["movers"]["BNETMover"] = "TOP,ElvUIParent,TOP,277,-4"
		E.db["movers"]["BelowMinimapContainerMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-189"
		E.db["movers"]["BuffsMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-10"
		E.db["movers"]["BuiDashboardMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-8"
		E.db["movers"]["BuiMiddleDtMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,243"
		E.db["movers"]["DebuffsMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-238"
		E.db["movers"]["DigSiteProgressBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,315"
		E.db["movers"]["ElvUIBagMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-340,31"
		E.db["movers"]["ElvUIBankMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,420,21"
		E.db["movers"]["ExperienceBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,208"
		E.db["movers"]["GMMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-634,-4"
		E.db["movers"]["GhostFrameMover"] = "BOTTOM,ElvUIParent,BOTTOM,-354,462"
		E.db["movers"]["HonorBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,218"
		E.db["movers"]["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,31"
		E.db["movers"]["LevelUpBossBannerMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-507,-508"
		E.db["movers"]["LocationLiteMover"] = "TOP,ElvUIParent,TOP,0,-7"
		E.db["movers"]["LocationMover"] = "TOP,ElvUIParent,TOP,0,-7"
		E.db["movers"]["LootFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,279,-110"
		E.db["movers"]["LossControlMover"] = "BOTTOM,ElvUIParent,BOTTOM,215,139"
		E.db["movers"]["MinimapButtonAnchor"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-257"
		E.db["movers"]["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-6,-10"
		E.db["movers"]["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-70,-292"
		E.db["movers"]["OzCooldownsMover"] = "BOTTOM,ElvUIParent,BOTTOM,-317,306"
		E.db["movers"]["ProfessionsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-5,-184"
		E.db["movers"]["RaidMarkerBarAnchor"] = "TOP,ElvUIParent,TOP,0,-4"
		E.db["movers"]["ReputationBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,208"
		E.db["movers"]["RequestStopButton"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-516,306"
		E.db["movers"]["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-2,31"
		E.db["movers"]["SocialMenuMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,325"
		E.db["movers"]["SquareMinimapButtonBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-297"
		E.db["movers"]["TalkingHeadFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-425,-150"
		E.db["movers"]["TooltipMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-342,29"
		E.db["movers"]["TopCenterContainerMover"] = "TOP,ElvUIParent,TOP,0,-34"
		E.db["movers"]["TotemBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-262,154"
		E.db["movers"]["UIErrorsFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,578,-235"
		E.db["movers"]["VOICECHAT"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-503"
		E.db["movers"]["WatchFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-122,-292"
		E.db["movers"]["ZoneAbility"] = "BOTTOM,ElvUIParent,BOTTOM,243,455"
		E.db["movers"]["tokenHolderMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-123"

		E.db["movers"]["DTB2_Haste_Mover"] = "TOP,ElvUIParent,TOP,0,-64"
		E.db["movers"]["DTB2_Sata_Mover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,292"
		E.db["movers"]["DTB2_Time_Mover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-4"
		E.db["movers"]["DTB2_Timee_Mover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-31,-263"
		print('layout 1440')
	end
	PluginInstallStepComplete.message = MLUI.Title..L['Layout Set']
	PluginInstallStepComplete:Show()

	E:UpdateAll(true)
end

local function SetupActionbars(layout)

	if layout == '1080' then
		E.db["actionbar"]["bar3"]["buttons"] = 8
		E.db["actionbar"]["bar3"]["buttonspacing"] = -2
		E.db["actionbar"]["bar3"]["mouseover"] = true
		E.db["actionbar"]["bar3"]["inheritGlobalFade"] = true
		E.db["actionbar"]["bar3"]["visibility"] = "[petbattle] hide; show,"
		E.db["actionbar"]["bar3"]["backdrop"] = true
		E.db["actionbar"]["bar3"]["buttonsPerRow"] = 4
		E.db["actionbar"]["bar3"]["backdropSpacing"] = 5
		E.db["actionbar"]["bar3"]["buttonsize"] = 30
		E.db["actionbar"]["fontSize"] = 11
		E.db["actionbar"]["fontColor"]["g"] = 0.4
		E.db["actionbar"]["fontColor"]["b"] = 0
		E.db["actionbar"]["desaturateOnCooldown"] = true
		E.db["actionbar"]["globalFadeAlpha"] = 1
		E.db["actionbar"]["microbar"]["scale"] = 1.49
		E.db["actionbar"]["microbar"]["symbolic"] = true
		E.db["actionbar"]["microbar"]["buttonSpacing"] = 3
		E.db["actionbar"]["bar2"]["enabled"] = true
		E.db["actionbar"]["bar2"]["buttons"] = 9
		E.db["actionbar"]["bar2"]["buttonspacing"] = 1
		E.db["actionbar"]["bar2"]["buttonsize"] = 35
		E.db["actionbar"]["bar2"]["visibility"] = "[petbattle] hide; show"
		E.db["actionbar"]["bar1"]["heightMult"] = 3
		E.db["actionbar"]["bar1"]["buttonsize"] = 35
		E.db["actionbar"]["bar1"]["buttons"] = 9
		E.db["actionbar"]["bar1"]["buttonspacing"] = 1
		E.db["actionbar"]["bar1"]["backdrop"] = true
		E.db["actionbar"]["bar1"]["backdropSpacing"] = 1
		E.db["actionbar"]["fontOutline"] = "OUTLINE"
		E.db["actionbar"]["bar5"]["enabled"] = false
		E.db["actionbar"]["font"] = "Futurapress"
		E.db["actionbar"]["stanceBar"]["buttonspacing"] = 12
		E.db["actionbar"]["stanceBar"]["buttonsPerRow"] = 1
		E.db["actionbar"]["stanceBar"]["mouseover"] = true
		E.db["actionbar"]["stanceBar"]["buttonsize"] = 28
		E.db["actionbar"]["barPet"]["inheritGlobalFade"] = true
		E.db["actionbar"]["barPet"]["buttons"] = 9
		E.db["actionbar"]["barPet"]["buttonspacing"] = 0
		E.db["actionbar"]["barPet"]["buttonsPerRow"] = 3
		E.db["actionbar"]["barPet"]["backdrop"] = false
		E.db["actionbar"]["barPet"]["buttonsize"] = 35
		E.db["actionbar"]["bar4"]["buttonsize"] = 35
		E.db["actionbar"]["bar4"]["buttons"] = 9
		E.db["actionbar"]["bar4"]["buttonsPerRow"] = 12
		E.db["actionbar"]["bar4"]["backdrop"] = false
		E.db["actionbar"]["bar4"]["buttonspacing"] = 1

		E.db["movers"]["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,31"
		E.db["movers"]["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,68"
		E.db["movers"]["ElvAB_3"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-418,31"
		E.db["movers"]["ElvAB_4"] = "BOTTOM,ElvUIParent,BOTTOM,0,103"
		E.db["movers"]["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,-287,-22"
		E.db["movers"]["LevelUpBossBannerMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-507,-508"
		E.db["movers"]["TotemBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-262,154"
		E.db["movers"]["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,155,-81"
		E.db["movers"]["PetAB"] = "BOTTOM,ElvUIParent,BOTTOM,218,31"
		E.db["movers"]["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,1082,140"
		E.db["movers"]["LossControlMover"] = "BOTTOM,ElvUIParent,BOTTOM,-43,360"
		E.db["movers"]["MicrobarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,417,-491"
		E.db["movers"]["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,243,455"
		E.db["movers"]["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-300,-323"

		print('Actionbars 1080')
	elseif layout == '1440' then
		E.db["actionbar"]["bar3"]["buttons"] = 8
		E.db["actionbar"]["bar3"]["buttonspacing"] = -2
		E.db["actionbar"]["bar3"]["mouseover"] = true
		E.db["actionbar"]["bar3"]["inheritGlobalFade"] = true
		E.db["actionbar"]["bar3"]["buttonsize"] = 30
		E.db["actionbar"]["bar3"]["backdrop"] = true
		E.db["actionbar"]["bar3"]["buttonsPerRow"] = 4
		E.db["actionbar"]["bar3"]["backdropSpacing"] = 5
		E.db["actionbar"]["bar3"]["visibility"] = "[petbattle] hide; show,"
		E.db["actionbar"]["fontSize"] = 11
		E.db["actionbar"]["fontColor"]["g"] = 0.4
		E.db["actionbar"]["fontColor"]["b"] = 0
		E.db["actionbar"]["desaturateOnCooldown"] = true
		E.db["actionbar"]["fontOutline"] = "OUTLINE"
		E.db["actionbar"]["microbar"]["scale"] = 1.49
		E.db["actionbar"]["microbar"]["symbolic"] = true
		E.db["actionbar"]["microbar"]["buttonSpacing"] = 3
		E.db["actionbar"]["bar2"]["enabled"] = true
		E.db["actionbar"]["bar2"]["buttons"] = 9
		E.db["actionbar"]["bar2"]["buttonspacing"] = 1
		E.db["actionbar"]["bar2"]["buttonsize"] = 35
		E.db["actionbar"]["bar2"]["visibility"] = "[petbattle] hide; show"
		E.db["actionbar"]["bar1"]["heightMult"] = 3
		E.db["actionbar"]["bar1"]["buttonsize"] = 35
		E.db["actionbar"]["bar1"]["buttons"] = 9
		E.db["actionbar"]["bar1"]["buttonspacing"] = 1
		E.db["actionbar"]["bar1"]["backdrop"] = true
		E.db["actionbar"]["bar1"]["backdropSpacing"] = 1
		E.db["actionbar"]["globalFadeAlpha"] = 1
		E.db["actionbar"]["bar5"]["enabled"] = false
		E.db["actionbar"]["font"] = "Futurapress"
		E.db["actionbar"]["stanceBar"]["buttonspacing"] = 12
		E.db["actionbar"]["stanceBar"]["buttonsPerRow"] = 1
		E.db["actionbar"]["stanceBar"]["mouseover"] = true
		E.db["actionbar"]["stanceBar"]["buttonsize"] = 28
		E.db["actionbar"]["barPet"]["inheritGlobalFade"] = true
		E.db["actionbar"]["barPet"]["buttons"] = 9
		E.db["actionbar"]["barPet"]["buttonspacing"] = 0
		E.db["actionbar"]["barPet"]["buttonsPerRow"] = 3
		E.db["actionbar"]["barPet"]["backdrop"] = false
		E.db["actionbar"]["barPet"]["buttonsize"] = 35
		E.db["actionbar"]["bar4"]["buttonsize"] = 35
		E.db["actionbar"]["bar4"]["buttons"] = 9
		E.db["actionbar"]["bar4"]["buttonsPerRow"] = 12
		E.db["actionbar"]["bar4"]["backdrop"] = false
		E.db["actionbar"]["bar4"]["buttonspacing"] = 1

		E.db["movers"]["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,0,-203"
		E.db["movers"]["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,243,455"
		E.db["movers"]["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-300,-323"
		E.db["movers"]["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,31"
		E.db["movers"]["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,68"
		E.db["movers"]["ElvAB_3"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-341,34"
		E.db["movers"]["ElvAB_4"] = "BOTTOM,ElvUIParent,BOTTOM,0,103"
		E.db["movers"]["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,-287,-22"
		E.db["movers"]["MicrobarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,417,-491"
		E.db["movers"]["PetAB"] = "BOTTOM,ElvUIParent,BOTTOM,218,31"
		E.db["movers"]["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,1445,140"
		E.db["movers"]["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,155,-81"
		print('Actionbars 1440')
	end

	if MLUI.BU then
		E.db["benikui"]["actionbars"]["style"]["bar1"] = false
		E.db["benikui"]["actionbars"]["toggleButtons"]["chooseAb"] = "BAR1"
	end
	E.db["layoutSet"] = "dpsCaster"

	PluginInstallStepComplete.message = MLUI.Title..L['Actionbars Set']
	PluginInstallStepComplete:Show()
	E:UpdateAll(true)
end

local function SetupUnitframes(layout)
	-- common custom texts
	if E.db["unitframe"]["units"]["arena"]["customTexts"] == nil then E.db["unitframe"]["units"]["arena"]["customTexts"] = {} end
	if E.db["unitframe"]["units"]["arena"]["customTexts"]["Arena Class"] == nil then E.db["unitframe"]["units"]["arena"]["customTexts"]["Arena Class"] = {} end
	E.db["unitframe"]["units"]["arena"]["customTexts"]["Arena Class"]["attachTextTo"] = "Health"
	E.db["unitframe"]["units"]["arena"]["customTexts"]["Arena Class"]["enable"] = true
	E.db["unitframe"]["units"]["arena"]["customTexts"]["Arena Class"]["text_format"] = "[class]"
	E.db["unitframe"]["units"]["arena"]["customTexts"]["Arena Class"]["yOffset"] = 8
	E.db["unitframe"]["units"]["arena"]["customTexts"]["Arena Class"]["font"] = "MelloUI Tukui UnitFrame"
	E.db["unitframe"]["units"]["arena"]["customTexts"]["Arena Class"]["justifyH"] = "RIGHT"
	E.db["unitframe"]["units"]["arena"]["customTexts"]["Arena Class"]["fontOutline"] = "OUTLINE"
	E.db["unitframe"]["units"]["arena"]["customTexts"]["Arena Class"]["xOffset"] = 0
	E.db["unitframe"]["units"]["arena"]["customTexts"]["Arena Class"]["size"] = 17

	if E.db["unitframe"]["units"]["arena"]["customTexts"]["Arena HP"] == nil then E.db["unitframe"]["units"]["arena"]["customTexts"]["Arena HP"] = {} end
	E.db["unitframe"]["units"]["arena"]["customTexts"]["Arena HP"]["attachTextTo"] = "Health"
	E.db["unitframe"]["units"]["arena"]["customTexts"]["Arena HP"]["enable"] = true
	E.db["unitframe"]["units"]["arena"]["customTexts"]["Arena HP"]["text_format"] = "[health:current] ||"
	E.db["unitframe"]["units"]["arena"]["customTexts"]["Arena HP"]["yOffset"] = 0
	E.db["unitframe"]["units"]["arena"]["customTexts"]["Arena HP"]["font"] = "MelloUI Tukui UnitFrame"
	E.db["unitframe"]["units"]["arena"]["customTexts"]["Arena HP"]["justifyH"] = "CENTER"
	E.db["unitframe"]["units"]["arena"]["customTexts"]["Arena HP"]["fontOutline"] = "OUTLINE"
	E.db["unitframe"]["units"]["arena"]["customTexts"]["Arena HP"]["xOffset"] = -56
	E.db["unitframe"]["units"]["arena"]["customTexts"]["Arena HP"]["size"] = 17

	if E.db["unitframe"]["units"]["arena"]["customTexts"]["Arena Name"] == nil then E.db["unitframe"]["units"]["arena"]["customTexts"]["Arena Name"] = {} end
	E.db["unitframe"]["units"]["arena"]["customTexts"]["Arena Name"]["attachTextTo"] = "Health"
	E.db["unitframe"]["units"]["arena"]["customTexts"]["Arena Name"]["enable"] = true
	E.db["unitframe"]["units"]["arena"]["customTexts"]["Arena Name"]["text_format"] = "[namecolor] [name:short]"
	E.db["unitframe"]["units"]["arena"]["customTexts"]["Arena Name"]["yOffset"] = -8
	E.db["unitframe"]["units"]["arena"]["customTexts"]["Arena Name"]["font"] = "MelloUI Forced Square"
	E.db["unitframe"]["units"]["arena"]["customTexts"]["Arena Name"]["justifyH"] = "RIGHT"
	E.db["unitframe"]["units"]["arena"]["customTexts"]["Arena Name"]["fontOutline"] = "OUTLINE"
	E.db["unitframe"]["units"]["arena"]["customTexts"]["Arena Name"]["xOffset"] = 3
	E.db["unitframe"]["units"]["arena"]["customTexts"]["Arena Name"]["size"] = 17
	
	if E.db["unitframe"]["units"]["target"]["customTexts"] == nil then E.db["unitframe"]["units"]["target"]["customTexts"] = {} end
	if E.db["unitframe"]["units"]["target"]["customTexts"]["Classification"] == nil then E.db["unitframe"]["units"]["target"]["customTexts"]["Classification"] = {} end
	E.db["unitframe"]["units"]["target"]["customTexts"]["Classification"]["attachTextTo"] = "Health"
	E.db["unitframe"]["units"]["target"]["customTexts"]["Classification"]["xOffset"] = 140
	E.db["unitframe"]["units"]["target"]["customTexts"]["Classification"]["text_format"] = "[difficultycolor][classification]"
	E.db["unitframe"]["units"]["target"]["customTexts"]["Classification"]["yOffset"] = -13
	E.db["unitframe"]["units"]["target"]["customTexts"]["Classification"]["font"] = "MelloUI Tukui UnitFrame"
	E.db["unitframe"]["units"]["target"]["customTexts"]["Classification"]["justifyH"] = "LEFT"
	E.db["unitframe"]["units"]["target"]["customTexts"]["Classification"]["fontOutline"] = "OUTLINE"
	E.db["unitframe"]["units"]["target"]["customTexts"]["Classification"]["enable"] = true
	E.db["unitframe"]["units"]["target"]["customTexts"]["Classification"]["size"] = 17
	
	if E.db["unitframe"]["units"]["target"]["customTexts"]["Faction"] == nil then E.db["unitframe"]["units"]["target"]["customTexts"]["Faction"] = {} end
	E.db["unitframe"]["units"]["target"]["customTexts"]["Faction"]["attachTextTo"] = "Health"
	E.db["unitframe"]["units"]["target"]["customTexts"]["Faction"]["xOffset"] = 140
	E.db["unitframe"]["units"]["target"]["customTexts"]["Faction"]["text_format"] = "[faction]"
	E.db["unitframe"]["units"]["target"]["customTexts"]["Faction"]["yOffset"] = -12
	E.db["unitframe"]["units"]["target"]["customTexts"]["Faction"]["font"] = "MelloUI Tukui UnitFrame"
	E.db["unitframe"]["units"]["target"]["customTexts"]["Faction"]["justifyH"] = "LEFT"
	E.db["unitframe"]["units"]["target"]["customTexts"]["Faction"]["fontOutline"] = "OUTLINE"
	E.db["unitframe"]["units"]["target"]["customTexts"]["Faction"]["enable"] = true
	E.db["unitframe"]["units"]["target"]["customTexts"]["Faction"]["size"] = 17

	if E.db["unitframe"]["units"]["target"]["customTexts"]["Leader"] == nil then E.db["unitframe"]["units"]["target"]["customTexts"]["Leader"] = {} end
	E.db["unitframe"]["units"]["target"]["customTexts"]["Leader"]["attachTextTo"] = "Health"
	E.db["unitframe"]["units"]["target"]["customTexts"]["Leader"]["xOffset"] = 103
	E.db["unitframe"]["units"]["target"]["customTexts"]["Leader"]["text_format"] = "[leader]"
	E.db["unitframe"]["units"]["target"]["customTexts"]["Leader"]["yOffset"] = -3
	E.db["unitframe"]["units"]["target"]["customTexts"]["Leader"]["font"] = "MelloUI Tukui UnitFrame"
	E.db["unitframe"]["units"]["target"]["customTexts"]["Leader"]["justifyH"] = "RIGHT"
	E.db["unitframe"]["units"]["target"]["customTexts"]["Leader"]["fontOutline"] = "OUTLINE"
	E.db["unitframe"]["units"]["target"]["customTexts"]["Leader"]["enable"] = true
	E.db["unitframe"]["units"]["target"]["customTexts"]["Leader"]["size"] = 41

	if E.db["unitframe"]["units"]["target"]["customTexts"]["NameTarget"] == nil then E.db["unitframe"]["units"]["target"]["customTexts"]["NameTarget"] = {} end
	E.db["unitframe"]["units"]["target"]["customTexts"]["NameTarget"]["attachTextTo"] = "Health"
	E.db["unitframe"]["units"]["target"]["customTexts"]["NameTarget"]["xOffset"] = 135
	E.db["unitframe"]["units"]["target"]["customTexts"]["NameTarget"]["text_format"] = "[namecolor] [name:short]"
	E.db["unitframe"]["units"]["target"]["customTexts"]["NameTarget"]["yOffset"] = 16
	E.db["unitframe"]["units"]["target"]["customTexts"]["NameTarget"]["font"] = "MelloUI Forced Square"
	E.db["unitframe"]["units"]["target"]["customTexts"]["NameTarget"]["justifyH"] = "LEFT"
	E.db["unitframe"]["units"]["target"]["customTexts"]["NameTarget"]["fontOutline"] = "OUTLINE"
	E.db["unitframe"]["units"]["target"]["customTexts"]["NameTarget"]["enable"] = true
	E.db["unitframe"]["units"]["target"]["customTexts"]["NameTarget"]["size"] = 16
	
	if E.db["unitframe"]["units"]["target"]["customTexts"]["HPTarCurr"] == nil then E.db["unitframe"]["units"]["target"]["customTexts"]["HPTarCurr"] = {} end
	E.db["unitframe"]["units"]["target"]["customTexts"]["HPTarCurr"]["attachTextTo"] = "Health"
	E.db["unitframe"]["units"]["target"]["customTexts"]["HPTarCurr"]["xOffset"] = -2
	E.db["unitframe"]["units"]["target"]["customTexts"]["HPTarCurr"]["text_format"] = "|| [health:current]"
	E.db["unitframe"]["units"]["target"]["customTexts"]["HPTarCurr"]["yOffset"] = 0
	E.db["unitframe"]["units"]["target"]["customTexts"]["HPTarCurr"]["font"] = "MelloUI Tukui UnitFrame"
	E.db["unitframe"]["units"]["target"]["customTexts"]["HPTarCurr"]["justifyH"] = "RIGHT"
	E.db["unitframe"]["units"]["target"]["customTexts"]["HPTarCurr"]["fontOutline"] = "OUTLINE"
	E.db["unitframe"]["units"]["target"]["customTexts"]["HPTarCurr"]["enable"] = true
	E.db["unitframe"]["units"]["target"]["customTexts"]["HPTarCurr"]["size"] = 19

	if E.db["unitframe"]["units"]["target"]["customTexts"]["classtarget"] == nil then E.db["unitframe"]["units"]["target"]["customTexts"]["classtarget"] = {} end
	E.db["unitframe"]["units"]["target"]["customTexts"]["classtarget"]["attachTextTo"] = "Health"
	E.db["unitframe"]["units"]["target"]["customTexts"]["classtarget"]["xOffset"] = 140
	E.db["unitframe"]["units"]["target"]["customTexts"]["classtarget"]["text_format"] = "Level [level] || [class]"
	E.db["unitframe"]["units"]["target"]["customTexts"]["classtarget"]["yOffset"] = 3
	E.db["unitframe"]["units"]["target"]["customTexts"]["classtarget"]["font"] = "MelloUI Tukui UnitFrame"
	E.db["unitframe"]["units"]["target"]["customTexts"]["classtarget"]["justifyH"] = "LEFT"
	E.db["unitframe"]["units"]["target"]["customTexts"]["classtarget"]["fontOutline"] = "OUTLINE"
	E.db["unitframe"]["units"]["target"]["customTexts"]["classtarget"]["enable"] = true
	E.db["unitframe"]["units"]["target"]["customTexts"]["classtarget"]["size"] = 11

	if E.db["unitframe"]["units"]["boss"]["customTexts"] == nil then E.db["unitframe"]["units"]["boss"]["customTexts"] = {} end
	if E.db["unitframe"]["units"]["boss"]["customTexts"]["Boss Name"] == nil then E.db["unitframe"]["units"]["boss"]["customTexts"]["Boss Name"] = {} end
	E.db["unitframe"]["units"]["boss"]["customTexts"]["Boss Name"]["attachTextTo"] = "Health"
	E.db["unitframe"]["units"]["boss"]["customTexts"]["Boss Name"]["xOffset"] = 0
	E.db["unitframe"]["units"]["boss"]["customTexts"]["Boss Name"]["text_format"] = "[namecolor] [name:short]"
	E.db["unitframe"]["units"]["boss"]["customTexts"]["Boss Name"]["yOffset"] = -8
	E.db["unitframe"]["units"]["boss"]["customTexts"]["Boss Name"]["font"] = "MelloUI Forced Square"
	E.db["unitframe"]["units"]["boss"]["customTexts"]["Boss Name"]["justifyH"] = "RIGHT"
	E.db["unitframe"]["units"]["boss"]["customTexts"]["Boss Name"]["fontOutline"] = "OUTLINE"
	E.db["unitframe"]["units"]["boss"]["customTexts"]["Boss Name"]["enable"] = true
	E.db["unitframe"]["units"]["boss"]["customTexts"]["Boss Name"]["size"] = 19

	if E.db["unitframe"]["units"]["boss"]["customTexts"]["Boss"] == nil then E.db["unitframe"]["units"]["boss"]["customTexts"]["Boss"] = {} end
	E.db["unitframe"]["units"]["boss"]["customTexts"]["Boss"]["attachTextTo"] = "Health"
	E.db["unitframe"]["units"]["boss"]["customTexts"]["Boss"]["xOffset"] = 0
	E.db["unitframe"]["units"]["boss"]["customTexts"]["Boss"]["text_format"] = "[difficultycolor]BOSS[classification]"
	E.db["unitframe"]["units"]["boss"]["customTexts"]["Boss"]["yOffset"] = 8
	E.db["unitframe"]["units"]["boss"]["customTexts"]["Boss"]["font"] = "MelloUI Tukui UnitFrame"
	E.db["unitframe"]["units"]["boss"]["customTexts"]["Boss"]["justifyH"] = "RIGHT"
	E.db["unitframe"]["units"]["boss"]["customTexts"]["Boss"]["fontOutline"] = "OUTLINE"
	E.db["unitframe"]["units"]["boss"]["customTexts"]["Boss"]["enable"] = true
	E.db["unitframe"]["units"]["boss"]["customTexts"]["Boss"]["size"] = 20

	if E.db["unitframe"]["units"]["boss"]["customTexts"]["Boss HP"] == nil then E.db["unitframe"]["units"]["boss"]["customTexts"]["Boss HP"] = {} end
	E.db["unitframe"]["units"]["boss"]["customTexts"]["Boss HP"]["attachTextTo"] = "Health"
	E.db["unitframe"]["units"]["boss"]["customTexts"]["Boss HP"]["xOffset"] = 3
	E.db["unitframe"]["units"]["boss"]["customTexts"]["Boss HP"]["text_format"] = "[health:current] ||"
	E.db["unitframe"]["units"]["boss"]["customTexts"]["Boss HP"]["yOffset"] = 0
	E.db["unitframe"]["units"]["boss"]["customTexts"]["Boss HP"]["font"] = "MelloUI Tukui UnitFrame"
	E.db["unitframe"]["units"]["boss"]["customTexts"]["Boss HP"]["justifyH"] = "LEFT"
	E.db["unitframe"]["units"]["boss"]["customTexts"]["Boss HP"]["fontOutline"] = "OUTLINE"
	E.db["unitframe"]["units"]["boss"]["customTexts"]["Boss HP"]["enable"] = true
	E.db["unitframe"]["units"]["boss"]["customTexts"]["Boss HP"]["size"] = 23

	if E.db["unitframe"]["units"]["raid40"]["customTexts"] == nil then E.db["unitframe"]["units"]["raid40"]["customTexts"] = {} end
	if E.db["unitframe"]["units"]["raid40"]["customTexts"]["Raid40Names"] == nil then E.db["unitframe"]["units"]["raid40"]["customTexts"]["Raid40Names"] = {} end
	E.db["unitframe"]["units"]["raid40"]["customTexts"]["Raid40Names"]["attachTextTo"] = "Health"
	E.db["unitframe"]["units"]["raid40"]["customTexts"]["Raid40Names"]["xOffset"] = 0
	E.db["unitframe"]["units"]["raid40"]["customTexts"]["Raid40Names"]["text_format"] = "[namecolor] [name:short]"
	E.db["unitframe"]["units"]["raid40"]["customTexts"]["Raid40Names"]["yOffset"] = -5
	E.db["unitframe"]["units"]["raid40"]["customTexts"]["Raid40Names"]["font"] = "MelloUI Forced Square"
	E.db["unitframe"]["units"]["raid40"]["customTexts"]["Raid40Names"]["justifyH"] = "CENTER"
	E.db["unitframe"]["units"]["raid40"]["customTexts"]["Raid40Names"]["fontOutline"] = "THICKOUTLINE"
	E.db["unitframe"]["units"]["raid40"]["customTexts"]["Raid40Names"]["enable"] = true
	E.db["unitframe"]["units"]["raid40"]["customTexts"]["Raid40Names"]["size"] = 9

	if E.db["unitframe"]["units"]["focus"]["customTexts"] == nil then E.db["unitframe"]["units"]["focus"]["customTexts"] = {} end
	if E.db["unitframe"]["units"]["focus"]["customTexts"]["Level"] == nil then E.db["unitframe"]["units"]["focus"]["customTexts"]["Level"] = {} end
	E.db["unitframe"]["units"]["focus"]["customTexts"]["Level"]["attachTextTo"] = "Health"
	E.db["unitframe"]["units"]["focus"]["customTexts"]["Level"]["xOffset"] = 2
	E.db["unitframe"]["units"]["focus"]["customTexts"]["Level"]["text_format"] = "Level [level] || [class]"
	E.db["unitframe"]["units"]["focus"]["customTexts"]["Level"]["yOffset"] = -8
	E.db["unitframe"]["units"]["focus"]["customTexts"]["Level"]["font"] = "MelloUI Tukui UnitFrame"
	E.db["unitframe"]["units"]["focus"]["customTexts"]["Level"]["justifyH"] = "LEFT"
	E.db["unitframe"]["units"]["focus"]["customTexts"]["Level"]["fontOutline"] = "OUTLINE"
	E.db["unitframe"]["units"]["focus"]["customTexts"]["Level"]["enable"] = true
	E.db["unitframe"]["units"]["focus"]["customTexts"]["Level"]["size"] = 12

	if E.db["unitframe"]["units"]["focus"]["customTexts"]["HP"] == nil then E.db["unitframe"]["units"]["focus"]["customTexts"]["HP"] = {} end
	E.db["unitframe"]["units"]["focus"]["customTexts"]["HP"]["attachTextTo"] = "Health"
	E.db["unitframe"]["units"]["focus"]["customTexts"]["HP"]["xOffset"] = 3
	E.db["unitframe"]["units"]["focus"]["customTexts"]["HP"]["text_format"] = "|| [health:current]"
	E.db["unitframe"]["units"]["focus"]["customTexts"]["HP"]["yOffset"] = -8
	E.db["unitframe"]["units"]["focus"]["customTexts"]["HP"]["font"] = "MelloUI Tukui UnitFrame"
	E.db["unitframe"]["units"]["focus"]["customTexts"]["HP"]["justifyH"] = "RIGHT"
	E.db["unitframe"]["units"]["focus"]["customTexts"]["HP"]["fontOutline"] = "OUTLINE"
	E.db["unitframe"]["units"]["focus"]["customTexts"]["HP"]["enable"] = true
	E.db["unitframe"]["units"]["focus"]["customTexts"]["HP"]["size"] = 17

	if E.db["unitframe"]["units"]["focus"]["customTexts"]["Focus Name"] == nil then E.db["unitframe"]["units"]["focus"]["customTexts"]["Focus Name"] = {} end
	E.db["unitframe"]["units"]["focus"]["customTexts"]["Focus Name"]["attachTextTo"] = "Health"
	E.db["unitframe"]["units"]["focus"]["customTexts"]["Focus Name"]["xOffset"] = -6
	E.db["unitframe"]["units"]["focus"]["customTexts"]["Focus Name"]["text_format"] = "[namecolor] [name:short]"
	E.db["unitframe"]["units"]["focus"]["customTexts"]["Focus Name"]["yOffset"] = 8
	E.db["unitframe"]["units"]["focus"]["customTexts"]["Focus Name"]["font"] = "MelloUI Forced Square"
	E.db["unitframe"]["units"]["focus"]["customTexts"]["Focus Name"]["justifyH"] = "LEFT"
	E.db["unitframe"]["units"]["focus"]["customTexts"]["Focus Name"]["fontOutline"] = "THICKOUTLINE"
	E.db["unitframe"]["units"]["focus"]["customTexts"]["Focus Name"]["enable"] = true
	E.db["unitframe"]["units"]["focus"]["customTexts"]["Focus Name"]["size"] = 19

	if E.db["unitframe"]["units"]["raid"]["customTexts"] == nil then E.db["unitframe"]["units"]["raid"]["customTexts"] = {} end
	if E.db["unitframe"]["units"]["raid"]["customTexts"]["RaidName"] == nil then E.db["unitframe"]["units"]["raid"]["customTexts"]["RaidName"] = {} end
	E.db["unitframe"]["units"]["raid"]["customTexts"]["RaidName"]["attachTextTo"] = "Health"
	E.db["unitframe"]["units"]["raid"]["customTexts"]["RaidName"]["xOffset"] = 3
	E.db["unitframe"]["units"]["raid"]["customTexts"]["RaidName"]["text_format"] = "[namecolor] [name:short]"
	E.db["unitframe"]["units"]["raid"]["customTexts"]["RaidName"]["yOffset"] = 24
	E.db["unitframe"]["units"]["raid"]["customTexts"]["RaidName"]["font"] = "MelloUI Forced Square"
	E.db["unitframe"]["units"]["raid"]["customTexts"]["RaidName"]["justifyH"] = "CENTER"
	E.db["unitframe"]["units"]["raid"]["customTexts"]["RaidName"]["fontOutline"] = "OUTLINE"
	E.db["unitframe"]["units"]["raid"]["customTexts"]["RaidName"]["enable"] = true
	E.db["unitframe"]["units"]["raid"]["customTexts"]["RaidName"]["size"] = 13

	if E.db["unitframe"]["units"]["player"]["customTexts"] == nil then E.db["unitframe"]["units"]["player"]["customTexts"] = {} end
	if E.db["unitframe"]["units"]["player"]["customTexts"]["Leader"] == nil then E.db["unitframe"]["units"]["player"]["customTexts"]["Leader"] = {} end
	E.db["unitframe"]["units"]["player"]["customTexts"]["Leader"]["attachTextTo"] = "Health"
	E.db["unitframe"]["units"]["player"]["customTexts"]["Leader"]["enable"] = true
	E.db["unitframe"]["units"]["player"]["customTexts"]["Leader"]["text_format"] = "[leader]"
	E.db["unitframe"]["units"]["player"]["customTexts"]["Leader"]["yOffset"] = 0
	E.db["unitframe"]["units"]["player"]["customTexts"]["Leader"]["font"] = "MelloUI Tukui UnitFrame"
	E.db["unitframe"]["units"]["player"]["customTexts"]["Leader"]["justifyH"] = "LEFT"
	E.db["unitframe"]["units"]["player"]["customTexts"]["Leader"]["fontOutline"] = "THICKOUTLINE"
	E.db["unitframe"]["units"]["player"]["customTexts"]["Leader"]["xOffset"] = -29
	E.db["unitframe"]["units"]["player"]["customTexts"]["Leader"]["size"] = 45

	if E.db["unitframe"]["units"]["player"]["customTexts"]["Namee"] == nil then E.db["unitframe"]["units"]["player"]["customTexts"]["Namee"] = {} end
	E.db["unitframe"]["units"]["player"]["customTexts"]["Namee"]["attachTextTo"] = "Health"
	E.db["unitframe"]["units"]["player"]["customTexts"]["Namee"]["xOffset"] = -157
	E.db["unitframe"]["units"]["player"]["customTexts"]["Namee"]["text_format"] = "[namecolor] [name:short]"
	E.db["unitframe"]["units"]["player"]["customTexts"]["Namee"]["yOffset"] = 19
	E.db["unitframe"]["units"]["player"]["customTexts"]["Namee"]["font"] = "MelloUI Forced Square"
	E.db["unitframe"]["units"]["player"]["customTexts"]["Namee"]["justifyH"] = "LEFT"
	E.db["unitframe"]["units"]["player"]["customTexts"]["Namee"]["fontOutline"] = "OUTLINE"
	E.db["unitframe"]["units"]["player"]["customTexts"]["Namee"]["enable"] = true
	E.db["unitframe"]["units"]["player"]["customTexts"]["Namee"]["size"] = 16

	if E.db["unitframe"]["units"]["player"]["customTexts"]["HP"] == nil then E.db["unitframe"]["units"]["player"]["customTexts"]["HP"] = {} end
	E.db["unitframe"]["units"]["player"]["customTexts"]["HP"]["attachTextTo"] = "Health"
	E.db["unitframe"]["units"]["player"]["customTexts"]["HP"]["xOffset"] = -2
	E.db["unitframe"]["units"]["player"]["customTexts"]["HP"]["text_format"] = "|| [health:current]"
	E.db["unitframe"]["units"]["player"]["customTexts"]["HP"]["yOffset"] = 8
	E.db["unitframe"]["units"]["player"]["customTexts"]["HP"]["font"] = "MelloUI Tukui UnitFrame"
	E.db["unitframe"]["units"]["player"]["customTexts"]["HP"]["justifyH"] = "RIGHT"
	E.db["unitframe"]["units"]["player"]["customTexts"]["HP"]["fontOutline"] = "OUTLINE"
	E.db["unitframe"]["units"]["player"]["customTexts"]["HP"]["enable"] = true
	E.db["unitframe"]["units"]["player"]["customTexts"]["HP"]["size"] = 19

	if E.db["unitframe"]["units"]["player"]["customTexts"]["class"] == nil then E.db["unitframe"]["units"]["player"]["customTexts"]["class"] = {} end
	E.db["unitframe"]["units"]["player"]["customTexts"]["class"]["attachTextTo"] = "Health"
	E.db["unitframe"]["units"]["player"]["customTexts"]["class"]["xOffset"] = -152
	E.db["unitframe"]["units"]["player"]["customTexts"]["class"]["text_format"] = "Level [level] || [shortclassification][class]"
	E.db["unitframe"]["units"]["player"]["customTexts"]["class"]["yOffset"] = 3
	E.db["unitframe"]["units"]["player"]["customTexts"]["class"]["font"] = "MelloUI Tukui UnitFrame"
	E.db["unitframe"]["units"]["player"]["customTexts"]["class"]["justifyH"] = "LEFT"
	E.db["unitframe"]["units"]["player"]["customTexts"]["class"]["fontOutline"] = "OUTLINE"
	E.db["unitframe"]["units"]["player"]["customTexts"]["class"]["enable"] = true
	E.db["unitframe"]["units"]["player"]["customTexts"]["class"]["size"] = 14

	if E.db["unitframe"]["units"]["party"]["customTexts"] == nil then E.db["unitframe"]["units"]["party"]["customTexts"] = {} end
	if E.db["unitframe"]["units"]["party"]["customTexts"]["HP Party"] == nil then E.db["unitframe"]["units"]["party"]["customTexts"]["HP Party"] = {} end
	E.db["unitframe"]["units"]["party"]["customTexts"]["HP Party"]["attachTextTo"] = "Health"
	E.db["unitframe"]["units"]["party"]["customTexts"]["HP Party"]["xOffset"] = 8
	E.db["unitframe"]["units"]["party"]["customTexts"]["HP Party"]["text_format"] = "[health:percent]"
	E.db["unitframe"]["units"]["party"]["customTexts"]["HP Party"]["yOffset"] = -34
	E.db["unitframe"]["units"]["party"]["customTexts"]["HP Party"]["font"] = "MelloUI Forced Square"
	E.db["unitframe"]["units"]["party"]["customTexts"]["HP Party"]["justifyH"] = "CENTER"
	E.db["unitframe"]["units"]["party"]["customTexts"]["HP Party"]["fontOutline"] = "OUTLINE"
	E.db["unitframe"]["units"]["party"]["customTexts"]["HP Party"]["enable"] = true
	E.db["unitframe"]["units"]["party"]["customTexts"]["HP Party"]["size"] = 10

	if E.db["unitframe"]["units"]["party"]["customTexts"]["Leader"] == nil then E.db["unitframe"]["units"]["party"]["customTexts"]["Leader"] = {} end
	E.db["unitframe"]["units"]["party"]["customTexts"]["Leader"]["attachTextTo"] = "Health"
	E.db["unitframe"]["units"]["party"]["customTexts"]["Leader"]["xOffset"] = 3
	E.db["unitframe"]["units"]["party"]["customTexts"]["Leader"]["text_format"] = "[leader]"
	E.db["unitframe"]["units"]["party"]["customTexts"]["Leader"]["yOffset"] = 39
	E.db["unitframe"]["units"]["party"]["customTexts"]["Leader"]["font"] = "MelloUI Forced Square"
	E.db["unitframe"]["units"]["party"]["customTexts"]["Leader"]["justifyH"] = "CENTER"
	E.db["unitframe"]["units"]["party"]["customTexts"]["Leader"]["fontOutline"] = "OUTLINE"
	E.db["unitframe"]["units"]["party"]["customTexts"]["Leader"]["enable"] = true
	E.db["unitframe"]["units"]["party"]["customTexts"]["Leader"]["size"] = 21

	if E.db["unitframe"]["units"]["party"]["customTexts"]["NameParty"] == nil then E.db["unitframe"]["units"]["party"]["customTexts"]["NameParty"] = {} end
	E.db["unitframe"]["units"]["party"]["customTexts"]["NameParty"]["attachTextTo"] = "Health"
	E.db["unitframe"]["units"]["party"]["customTexts"]["NameParty"]["xOffset"] = 2
	E.db["unitframe"]["units"]["party"]["customTexts"]["NameParty"]["text_format"] = "[namecolor] [name:short]"
	E.db["unitframe"]["units"]["party"]["customTexts"]["NameParty"]["yOffset"] = 30
	E.db["unitframe"]["units"]["party"]["customTexts"]["NameParty"]["font"] = "MelloUI Forced Square"
	E.db["unitframe"]["units"]["party"]["customTexts"]["NameParty"]["justifyH"] = "CENTER"
	E.db["unitframe"]["units"]["party"]["customTexts"]["NameParty"]["fontOutline"] = "OUTLINE"
	E.db["unitframe"]["units"]["party"]["customTexts"]["NameParty"]["enable"] = true
	E.db["unitframe"]["units"]["party"]["customTexts"]["NameParty"]["size"] = 12

	-- filters
	if E.db["unitframe"]["filters"]["buffwatch"][974] == nil then E.db["unitframe"]["filters"]["buffwatch"][974] = {} end
	if E.db["unitframe"]["filters"]["buffwatch"][974]["color"] == nil then E.db["unitframe"]["filters"]["buffwatch"][974]["color"] = {} end
	E.db["unitframe"]["filters"]["buffwatch"][974]["enabled"] = true
	E.db["unitframe"]["filters"]["buffwatch"][974]["anyUnit"] = false
	E.db["unitframe"]["filters"]["buffwatch"][974]["point"] = "TOPRIGHT"
	E.db["unitframe"]["filters"]["buffwatch"][974]["id"] = 974
	E.db["unitframe"]["filters"]["buffwatch"][974]["color"]["r"] = 0
	E.db["unitframe"]["filters"]["buffwatch"][974]["color"]["g"] = 1
	E.db["unitframe"]["filters"]["buffwatch"][974]["color"]["b"] = 0.058823529411765
	E.db["unitframe"]["filters"]["buffwatch"][974]["style"] = "coloredIcon"
	E.db["unitframe"]["filters"]["buffwatch"][974]["xOffset"] = 0
	E.db["unitframe"]["filters"]["buffwatch"][974]["yOffset"] = 0

	if E.db["unitframe"]["filters"]["buffwatch"][155777] == nil then E.db["unitframe"]["filters"]["buffwatch"][155777] = {} end
	if E.db["unitframe"]["filters"]["buffwatch"][155777]["color"] == nil then E.db["unitframe"]["filters"]["buffwatch"][155777]["color"] = {} end
	E.db["unitframe"]["filters"]["buffwatch"][155777]["enabled"] = true
	E.db["unitframe"]["filters"]["buffwatch"][155777]["sizeOverride"] = 8
	E.db["unitframe"]["filters"]["buffwatch"][155777]["point"] = "TOP"
	E.db["unitframe"]["filters"]["buffwatch"][155777]["id"] = 155777
	E.db["unitframe"]["filters"]["buffwatch"][155777]["yOffset"] = -39
	E.db["unitframe"]["filters"]["buffwatch"][155777]["style"] = "coloredIcon"
	E.db["unitframe"]["filters"]["buffwatch"][155777]["xOffset"] = 19
	E.db["unitframe"]["filters"]["buffwatch"][155777]["anyUnit"] = false
	E.db["unitframe"]["filters"]["buffwatch"][155777]["color"]["r"] = 1
	E.db["unitframe"]["filters"]["buffwatch"][155777]["color"]["g"] = 0.5921568627451
	E.db["unitframe"]["filters"]["buffwatch"][155777]["color"]["b"] = 0
	
	if E.db["unitframe"]["filters"]["buffwatch"][48438] == nil then E.db["unitframe"]["filters"]["buffwatch"][48438] = {} end
	if E.db["unitframe"]["filters"]["buffwatch"][48438]["color"] == nil then E.db["unitframe"]["filters"]["buffwatch"][48438]["color"] = {} end
	E.db["unitframe"]["filters"]["buffwatch"][48438]["enabled"] = true
	E.db["unitframe"]["filters"]["buffwatch"][48438]["anyUnit"] = false
	E.db["unitframe"]["filters"]["buffwatch"][48438]["point"] = "TOPRIGHT"
	E.db["unitframe"]["filters"]["buffwatch"][48438]["xOffset"] = -17
	E.db["unitframe"]["filters"]["buffwatch"][48438]["displayText"] = false
	E.db["unitframe"]["filters"]["buffwatch"][48438]["yOffset"] = -39
	E.db["unitframe"]["filters"]["buffwatch"][48438]["style"] = "coloredIcon"
	E.db["unitframe"]["filters"]["buffwatch"][48438]["decimalThreshold"] = -1
	E.db["unitframe"]["filters"]["buffwatch"][48438]["sizeOverride"] = 8
	E.db["unitframe"]["filters"]["buffwatch"][48438]["color"]["b"] = 0.93333333333333
	E.db["unitframe"]["filters"]["buffwatch"][48438]["color"]["g"] = 1
	E.db["unitframe"]["filters"]["buffwatch"][48438]["color"]["r"] = 0
	E.db["unitframe"]["filters"]["buffwatch"][48438]["id"] = 48438
	
	if E.db["unitframe"]["filters"]["buffwatch"][102351] == nil then E.db["unitframe"]["filters"]["buffwatch"][102351] = {} end
	if E.db["unitframe"]["filters"]["buffwatch"][102351]["color"] == nil then E.db["unitframe"]["filters"]["buffwatch"][102351]["color"] = {} end
	E.db["unitframe"]["filters"]["buffwatch"][102351]["enabled"] = true
	E.db["unitframe"]["filters"]["buffwatch"][102351]["anyUnit"] = false
	E.db["unitframe"]["filters"]["buffwatch"][102351]["point"] = "TOPRIGHT"
	E.db["unitframe"]["filters"]["buffwatch"][102351]["xOffset"] = -39
	E.db["unitframe"]["filters"]["buffwatch"][102351]["displayText"] = false
	E.db["unitframe"]["filters"]["buffwatch"][102351]["textThreshold"] = -1
	E.db["unitframe"]["filters"]["buffwatch"][102351]["yOffset"] = -21
	E.db["unitframe"]["filters"]["buffwatch"][102351]["style"] = "coloredIcon"
	E.db["unitframe"]["filters"]["buffwatch"][102351]["decimalThreshold"] = 0
	E.db["unitframe"]["filters"]["buffwatch"][102351]["sizeOverride"] = 8
	E.db["unitframe"]["filters"]["buffwatch"][102351]["color"]["b"] = 0.86666666666667
	E.db["unitframe"]["filters"]["buffwatch"][102351]["color"]["g"] = 1
	E.db["unitframe"]["filters"]["buffwatch"][102351]["color"]["r"] = 0
	E.db["unitframe"]["filters"]["buffwatch"][102351]["id"] = 102351
	
	if E.db["unitframe"]["filters"]["buffwatch"][774] == nil then E.db["unitframe"]["filters"]["buffwatch"][774] = {} end
	if E.db["unitframe"]["filters"]["buffwatch"][774]["color"] == nil then E.db["unitframe"]["filters"]["buffwatch"][774]["color"] = {} end
	E.db["unitframe"]["filters"]["buffwatch"][774]["enabled"] = true
	E.db["unitframe"]["filters"]["buffwatch"][774]["anyUnit"] = false
	E.db["unitframe"]["filters"]["buffwatch"][774]["point"] = "TOPLEFT"
	E.db["unitframe"]["filters"]["buffwatch"][774]["xOffset"] = 39
	E.db["unitframe"]["filters"]["buffwatch"][774]["displayText"] = false
	E.db["unitframe"]["filters"]["buffwatch"][774]["yOffset"] = 1
	E.db["unitframe"]["filters"]["buffwatch"][774]["style"] = "coloredIcon"
	E.db["unitframe"]["filters"]["buffwatch"][774]["decimalThreshold"] = -1
	E.db["unitframe"]["filters"]["buffwatch"][774]["sizeOverride"] = 8
	E.db["unitframe"]["filters"]["buffwatch"][774]["color"]["b"] = 0
	E.db["unitframe"]["filters"]["buffwatch"][774]["color"]["g"] = 0.44705882352941
	E.db["unitframe"]["filters"]["buffwatch"][774]["color"]["r"] = 1
	E.db["unitframe"]["filters"]["buffwatch"][774]["id"] = 774
	
	if E.db["unitframe"]["filters"]["buffwatch"][61295] == nil then E.db["unitframe"]["filters"]["buffwatch"][61295] = {} end
	if E.db["unitframe"]["filters"]["buffwatch"][61295]["color"] == nil then E.db["unitframe"]["filters"]["buffwatch"][61295]["color"] = {} end
	E.db["unitframe"]["filters"]["buffwatch"][61295]["enabled"] = true
	E.db["unitframe"]["filters"]["buffwatch"][61295]["anyUnit"] = false
	E.db["unitframe"]["filters"]["buffwatch"][61295]["point"] = "TOPRIGHT"
	E.db["unitframe"]["filters"]["buffwatch"][61295]["xOffset"] = -19
	E.db["unitframe"]["filters"]["buffwatch"][61295]["displayText"] = true
	E.db["unitframe"]["filters"]["buffwatch"][61295]["yOffset"] = 0
	E.db["unitframe"]["filters"]["buffwatch"][61295]["style"] = "coloredIcon"
	E.db["unitframe"]["filters"]["buffwatch"][61295]["id"] = 61295
	E.db["unitframe"]["filters"]["buffwatch"][61295]["color"]["r"] = 0
	E.db["unitframe"]["filters"]["buffwatch"][61295]["color"]["g"] = 0.94509803921569
	E.db["unitframe"]["filters"]["buffwatch"][61295]["color"]["b"] = 1
	
	if E.db["unitframe"]["filters"]["buffwatch"][33763] == nil then E.db["unitframe"]["filters"]["buffwatch"][33763] = {} end
	if E.db["unitframe"]["filters"]["buffwatch"][33763]["color"] == nil then E.db["unitframe"]["filters"]["buffwatch"][33763]["color"] = {} end
	E.db["unitframe"]["filters"]["buffwatch"][33763]["enabled"] = true
	E.db["unitframe"]["filters"]["buffwatch"][33763]["anyUnit"] = false
	E.db["unitframe"]["filters"]["buffwatch"][33763]["point"] = "TOPRIGHT"
	E.db["unitframe"]["filters"]["buffwatch"][33763]["xOffset"] = -39
	E.db["unitframe"]["filters"]["buffwatch"][33763]["displayText"] = false
	E.db["unitframe"]["filters"]["buffwatch"][33763]["yOffset"] = -39
	E.db["unitframe"]["filters"]["buffwatch"][33763]["style"] = "coloredIcon"
	E.db["unitframe"]["filters"]["buffwatch"][33763]["decimalThreshold"] = -1
	E.db["unitframe"]["filters"]["buffwatch"][33763]["sizeOverride"] = 8
	E.db["unitframe"]["filters"]["buffwatch"][33763]["color"]["b"] = 0
	E.db["unitframe"]["filters"]["buffwatch"][33763]["color"]["g"] = 1
	E.db["unitframe"]["filters"]["buffwatch"][33763]["color"]["r"] = 0.30588235294118
	E.db["unitframe"]["filters"]["buffwatch"][33763]["id"] = 33763
	
	if E.db["unitframe"]["filters"]["buffwatch"][155675] == nil then E.db["unitframe"]["filters"]["buffwatch"][155675] = {} end
	if E.db["unitframe"]["filters"]["buffwatch"][155675]["color"] == nil then E.db["unitframe"]["filters"]["buffwatch"][155675]["color"] = {} end
	E.db["unitframe"]["filters"]["buffwatch"][155675]["enabled"] = true
	E.db["unitframe"]["filters"]["buffwatch"][155675]["sizeOverride"] = 0
	E.db["unitframe"]["filters"]["buffwatch"][155675]["point"] = "TOP"
	E.db["unitframe"]["filters"]["buffwatch"][155675]["id"] = 155675
	E.db["unitframe"]["filters"]["buffwatch"][155675]["yOffset"] = 0
	E.db["unitframe"]["filters"]["buffwatch"][155675]["style"] = "coloredIcon"
	E.db["unitframe"]["filters"]["buffwatch"][155675]["xOffset"] = 0
	E.db["unitframe"]["filters"]["buffwatch"][155675]["anyUnit"] = false
	E.db["unitframe"]["filters"]["buffwatch"][155675]["color"]["r"] = 1
	E.db["unitframe"]["filters"]["buffwatch"][155675]["color"]["g"] = 0
	E.db["unitframe"]["filters"]["buffwatch"][155675]["color"]["b"] = 0
	
	if E.db["unitframe"]["filters"]["buffwatch"][8936] == nil then E.db["unitframe"]["filters"]["buffwatch"][8936] = {} end
	if E.db["unitframe"]["filters"]["buffwatch"][8936]["color"] == nil then E.db["unitframe"]["filters"]["buffwatch"][8936]["color"] = {} end
	E.db["unitframe"]["filters"]["buffwatch"][8936]["enabled"] = true
	E.db["unitframe"]["filters"]["buffwatch"][8936]["anyUnit"] = false
	E.db["unitframe"]["filters"]["buffwatch"][8936]["point"] = "TOPLEFT"
	E.db["unitframe"]["filters"]["buffwatch"][8936]["xOffset"] = 0
	E.db["unitframe"]["filters"]["buffwatch"][8936]["displayText"] = false
	E.db["unitframe"]["filters"]["buffwatch"][8936]["yOffset"] = 1
	E.db["unitframe"]["filters"]["buffwatch"][8936]["style"] = "coloredIcon"
	E.db["unitframe"]["filters"]["buffwatch"][8936]["decimalThreshold"] = -1
	E.db["unitframe"]["filters"]["buffwatch"][8936]["sizeOverride"] = 8
	E.db["unitframe"]["filters"]["buffwatch"][8936]["color"]["b"] = 0.16078431372549
	E.db["unitframe"]["filters"]["buffwatch"][8936]["color"]["g"] = 1
	E.db["unitframe"]["filters"]["buffwatch"][8936]["color"]["r"] = 0
	E.db["unitframe"]["filters"]["buffwatch"][8936]["id"] = 8936

	if layout == '1080' then
		E.db["nameplates"]["fontSize"] = 10
		E.db["nameplates"]["clickableWidth"] = 100
		E.db["nameplates"]["statusbar"] = "BuiFlat"
		E.db["nameplates"]["classbar"]["enable"] = false
		E.db["nameplates"]["threat"]["badScale"] = 0.88
		E.db["nameplates"]["units"]["PLAYER"]["debuffs"]["enable"] = false
		E.db["nameplates"]["units"]["PLAYER"]["portrait"]["height"] = 49
		E.db["nameplates"]["units"]["PLAYER"]["portrait"]["width"] = 63
		E.db["nameplates"]["units"]["PLAYER"]["castbar"]["hideSpellName"] = true
		E.db["nameplates"]["units"]["PLAYER"]["castbar"]["hideTime"] = true
		E.db["nameplates"]["units"]["PLAYER"]["powerbar"]["enable"] = false
		E.db["nameplates"]["units"]["PLAYER"]["powerbar"]["height"] = 7
		E.db["nameplates"]["units"]["PLAYER"]["alwaysShow"] = true
		E.db["nameplates"]["units"]["PLAYER"]["name"]["useClassColor"] = false
		E.db["nameplates"]["units"]["PLAYER"]["buffs"]["enable"] = false
		E.db["nameplates"]["units"]["PLAYER"]["visibility"]["hideDelay"] = 0
		E.db["nameplates"]["units"]["PLAYER"]["healthbar"]["height"] = 4
		E.db["nameplates"]["units"]["PLAYER"]["healthbar"]["text"]["format"] = "PERCENT"
		E.db["nameplates"]["units"]["PLAYER"]["healthbar"]["width"] = 50
		E.db["nameplates"]["units"]["ENEMY_NPC"]["healthbar"]["height"] = 17
		E.db["nameplates"]["units"]["ENEMY_NPC"]["healthbar"]["text"]["enable"] = true
		E.db["nameplates"]["units"]["ENEMY_NPC"]["healthbar"]["width"] = 50
		E.db["nameplates"]["units"]["ENEMY_NPC"]["eliteIcon"]["enable"] = true
		E.db["nameplates"]["units"]["ENEMY_NPC"]["buffs"]["enable"] = false
		E.db["nameplates"]["units"]["ENEMY_NPC"]["showLevel"] = false
		E.db["nameplates"]["units"]["ENEMY_PLAYER"]["healthbar"]["width"] = 100
		E.db["nameplates"]["units"]["HEALER"]["healthbar"]["enable"] = false
		E.db["nameplates"]["font"] = "Expressway"
		E.db["nameplates"]["clickableHeight"] = 60
		E.db["nameplates"]["targetScale"] = 0.67
		E.db["nameplates"]["useTargetScale"] = false

		E.db["auras"]["debuffs"]["countFontSize"] = 13
		E.db["auras"]["debuffs"]["durationFontSize"] = 13
		E.db["auras"]["debuffs"]["growthDirection"] = "RIGHT_DOWN"
		E.db["auras"]["fontOutline"] = "THICKOUTLINE"
		E.db["auras"]["buffs"]["countFontSize"] = 13
		E.db["auras"]["buffs"]["durationFontSize"] = 13
		E.db["auras"]["buffs"]["sortMethod"] = "INDEX"
		E.db["auras"]["buffs"]["growthDirection"] = "RIGHT_DOWN"
		E.db["auras"]["timeYOffset"] = -9
		E.db["auras"]["font"] = "MelloUI Club"

		E.db["unitframe"]["fontSize"] = 17
		E.db["unitframe"]["units"]["tank"]["enable"] = false
		E.db["unitframe"]["units"]["targettarget"]["enable"] = false
		E.db["unitframe"]["units"]["arena"]["debuffs"]["numrows"] = 2
		E.db["unitframe"]["units"]["arena"]["debuffs"]["fontSize"] = 20
		E.db["unitframe"]["units"]["arena"]["debuffs"]["clickThrough"] = true
		E.db["unitframe"]["units"]["arena"]["debuffs"]["xOffset"] = -13
		E.db["unitframe"]["units"]["arena"]["debuffs"]["sizeOverride"] = 41
		E.db["unitframe"]["units"]["arena"]["debuffs"]["maxDuration"] = 0
		E.db["unitframe"]["units"]["arena"]["debuffs"]["yOffset"] = 13
		E.db["unitframe"]["units"]["arena"]["portrait"]["camDistanceScale"] = 1
		E.db["unitframe"]["units"]["arena"]["portrait"]["width"] = 35
		E.db["unitframe"]["units"]["arena"]["castbar"]["width"] = 215

		E.db["unitframe"]["units"]["arena"]["width"] = 187
		E.db["unitframe"]["units"]["arena"]["infoPanel"]["height"] = 16
		E.db["unitframe"]["units"]["arena"]["pvpTrinket"]["enable"] = false
		E.db["unitframe"]["units"]["arena"]["health"]["text_format"] = ""
		E.db["unitframe"]["units"]["arena"]["spacing"] = 34
		E.db["unitframe"]["units"]["arena"]["height"] = 50
		E.db["unitframe"]["units"]["arena"]["buffs"]["enable"] = false
		E.db["unitframe"]["units"]["arena"]["buffs"]["sizeOverride"] = 22
		E.db["unitframe"]["units"]["arena"]["buffs"]["maxDuration"] = 0
		E.db["unitframe"]["units"]["arena"]["buffs"]["yOffset"] = 20
		E.db["unitframe"]["units"]["arena"]["name"]["text_format"] = ""
		E.db["unitframe"]["units"]["arena"]["power"]["offset"] = 9
		E.db["unitframe"]["units"]["arena"]["power"]["attachTextTo"] = "Power"
		E.db["unitframe"]["units"]["arena"]["power"]["text_format"] = ""
		E.db["unitframe"]["units"]["arena"]["power"]["height"] = 12
		E.db["unitframe"]["units"]["pet"]["castbar"]["iconAttached"] = false
		E.db["unitframe"]["units"]["pet"]["castbar"]["height"] = 10
		E.db["unitframe"]["units"]["pet"]["castbar"]["icon"] = false
		E.db["unitframe"]["units"]["pet"]["castbar"]["width"] = 290
		E.db["unitframe"]["units"]["pet"]["width"] = 290
		E.db["unitframe"]["units"]["pet"]["name"]["text_format"] = ""
		E.db["unitframe"]["units"]["pet"]["name"]["yOffset"] = 4
		E.db["unitframe"]["units"]["pet"]["height"] = 10
		E.db["unitframe"]["units"]["pet"]["buffIndicator"]["enable"] = false
		E.db["unitframe"]["units"]["pet"]["power"]["attachTextTo"] = "Power"
		E.db["unitframe"]["units"]["pet"]["power"]["enable"] = false
		E.db["unitframe"]["units"]["target"]["debuffs"]["numrows"] = 3
		E.db["unitframe"]["units"]["target"]["debuffs"]["fontSize"] = 26
		E.db["unitframe"]["units"]["target"]["debuffs"]["attachTo"] = "FRAME"
		E.db["unitframe"]["units"]["target"]["debuffs"]["priority"] = "PlayerBuffs,Blacklist,Personal,RaidDebuffs,CCDebuffs,Friendly:Dispellable"
		E.db["unitframe"]["units"]["target"]["debuffs"]["sizeOverride"] = 43
		E.db["unitframe"]["units"]["target"]["debuffs"]["perrow"] = 5
		E.db["unitframe"]["units"]["target"]["portrait"]["rotation"] = 296
		E.db["unitframe"]["units"]["target"]["portrait"]["enable"] = true
		E.db["unitframe"]["units"]["target"]["portrait"]["xOffset"] = 0.31
		E.db["unitframe"]["units"]["target"]["portrait"]["camDistanceScale"] = 2.82
		E.db["unitframe"]["units"]["target"]["portrait"]["width"] = 0
		E.db["unitframe"]["units"]["target"]["aurabar"]["attachTo"] = "FRAME"
		E.db["unitframe"]["units"]["target"]["aurabar"]["maxBars"] = 11
		E.db["unitframe"]["units"]["target"]["aurabar"]["enable"] = false
		E.db["unitframe"]["units"]["target"]["aurabar"]["priority"] = "blockNonPersonal,Boss,RaidDebuffs,CastByPlayers"
		E.db["unitframe"]["units"]["target"]["aurabar"]["height"] = 21
		E.db["unitframe"]["units"]["target"]["aurabar"]["yOffset"] = -1
		E.db["unitframe"]["units"]["target"]["castbar"]["height"] = 24
		E.db["unitframe"]["units"]["target"]["castbar"]["width"] = 240
		E.db["unitframe"]["units"]["target"]["disableMouseoverGlow"] = true
		E.db["unitframe"]["units"]["target"]["width"] = 137
		E.db["unitframe"]["units"]["target"]["name"]["text_format"] = ""
		E.db["unitframe"]["units"]["target"]["health"]["text_format"] = ""
		E.db["unitframe"]["units"]["target"]["buffs"]["numrows"] = 2
		E.db["unitframe"]["units"]["target"]["buffs"]["fontSize"] = 20
		E.db["unitframe"]["units"]["target"]["buffs"]["anchorPoint"] = "BOTTOMRIGHT"
		E.db["unitframe"]["units"]["target"]["buffs"]["enable"] = false
		E.db["unitframe"]["units"]["target"]["buffs"]["sizeOverride"] = 40
		E.db["unitframe"]["units"]["target"]["buffs"]["perrow"] = 6
		E.db["unitframe"]["units"]["target"]["buffs"]["yOffset"] = -23
		E.db["unitframe"]["units"]["target"]["power"]["detachFromFrame"] = true
		E.db["unitframe"]["units"]["target"]["power"]["strataAndLevel"]["frameLevel"] = 2
		E.db["unitframe"]["units"]["target"]["power"]["strataAndLevel"]["useCustomStrata"] = true
		E.db["unitframe"]["units"]["target"]["power"]["height"] = 12
		E.db["unitframe"]["units"]["target"]["power"]["detachedWidth"] = 240
		E.db["unitframe"]["units"]["target"]["power"]["text_format"] = ""
		E.db["unitframe"]["units"]["target"]["power"]["width"] = "spaced"
		E.db["unitframe"]["units"]["boss"]["debuffs"]["fontSize"] = 20
		E.db["unitframe"]["units"]["boss"]["debuffs"]["clickThrough"] = true
		E.db["unitframe"]["units"]["boss"]["debuffs"]["xOffset"] = -13
		E.db["unitframe"]["units"]["boss"]["debuffs"]["sizeOverride"] = 41
		E.db["unitframe"]["units"]["boss"]["debuffs"]["yOffset"] = 13
		E.db["unitframe"]["units"]["boss"]["power"]["attachTextTo"] = "Power"
		E.db["unitframe"]["units"]["boss"]["power"]["position"] = "LEFT"
		E.db["unitframe"]["units"]["boss"]["power"]["height"] = 12
		E.db["unitframe"]["units"]["boss"]["power"]["text_format"] = ""
		E.db["unitframe"]["units"]["boss"]["power"]["offset"] = 9
		E.db["unitframe"]["units"]["boss"]["threatStyle"] = "ICONBOTTOMLEFT"
		E.db["unitframe"]["units"]["boss"]["width"] = 187
		E.db["unitframe"]["units"]["boss"]["health"]["text_format"] = ""
		E.db["unitframe"]["units"]["boss"]["spacing"] = 34
		E.db["unitframe"]["units"]["boss"]["height"] = 50
		E.db["unitframe"]["units"]["boss"]["buffs"]["enable"] = false
		E.db["unitframe"]["units"]["boss"]["name"]["text_format"] = ""
		E.db["unitframe"]["units"]["raid40"]["rdebuffs"]["font"] = "MelloUI Club"
		E.db["unitframe"]["units"]["raid40"]["roleIcon"]["enable"] = true
		E.db["unitframe"]["units"]["raid40"]["roleIcon"]["damager"] = false
		E.db["unitframe"]["units"]["raid40"]["readycheckIcon"]["size"] = 20
		E.db["unitframe"]["units"]["raid40"]["width"] = 74
		E.db["unitframe"]["units"]["raid40"]["name"]["text_format"] = ""
		E.db["unitframe"]["units"]["raid40"]["height"] = 25
		E.db["unitframe"]["units"]["raid40"]["health"]["text_format"] = ""
		E.db["unitframe"]["units"]["focus"]["debuffs"]["numrows"] = 3
		E.db["unitframe"]["units"]["focus"]["debuffs"]["sizeOverride"] = 52
		E.db["unitframe"]["units"]["focus"]["debuffs"]["fontSize"] = 26
		E.db["unitframe"]["units"]["focus"]["debuffs"]["enable"] = false
		E.db["unitframe"]["units"]["focus"]["disableTargetGlow"] = true
		E.db["unitframe"]["units"]["focus"]["castbar"]["iconSize"] = 42
		E.db["unitframe"]["units"]["focus"]["castbar"]["height"] = 24
		E.db["unitframe"]["units"]["focus"]["castbar"]["width"] = 189
		E.db["unitframe"]["units"]["focus"]["width"] = 189
		E.db["unitframe"]["units"]["focus"]["infoPanel"]["height"] = 20
		E.db["unitframe"]["units"]["focus"]["power"]["enable"] = false
		E.db["unitframe"]["units"]["focus"]["power"]["height"] = 39
		E.db["unitframe"]["units"]["focus"]["power"]["width"] = "spaced"
		E.db["unitframe"]["units"]["focus"]["name"]["text_format"] = ""
		E.db["unitframe"]["units"]["focus"]["orientation"] = "RIGHT"
		E.db["unitframe"]["units"]["focus"]["height"] = 39
		E.db["unitframe"]["units"]["focus"]["buffs"]["maxDuration"] = 0
		E.db["unitframe"]["units"]["focus"]["buffs"]["anchorPoint"] = "TOPRIGHT"
		E.db["unitframe"]["units"]["focus"]["buffs"]["perrow"] = 8
		E.db["unitframe"]["units"]["focus"]["aurabar"]["enable"] = true
		E.db["unitframe"]["units"]["focus"]["aurabar"]["height"] = 21
		E.db["unitframe"]["units"]["focus"]["aurabar"]["maxBars"] = 11
		E.db["unitframe"]["units"]["focus"]["aurabar"]["attachTo"] = "FRAME"
		E.db["unitframe"]["units"]["assist"]["enable"] = false
		E.db["unitframe"]["units"]["raid"]["horizontalSpacing"] = -1
		E.db["unitframe"]["units"]["raid"]["debuffs"]["countFontSize"] = 15
		E.db["unitframe"]["units"]["raid"]["debuffs"]["sizeOverride"] = 17
		E.db["unitframe"]["units"]["raid"]["debuffs"]["enable"] = true
		E.db["unitframe"]["units"]["raid"]["debuffs"]["priority"] = "Blacklist,Boss"
		E.db["unitframe"]["units"]["raid"]["debuffs"]["xOffset"] = -57
		E.db["unitframe"]["units"]["raid"]["debuffs"]["yOffset"] = -9
		E.db["unitframe"]["units"]["raid"]["rdebuffs"]["enable"] = false
		E.db["unitframe"]["units"]["raid"]["rdebuffs"]["font"] = "MelloUI Club"
		E.db["unitframe"]["units"]["raid"]["numGroups"] = 6
		E.db["unitframe"]["units"]["raid"]["growthDirection"] = "DOWN_RIGHT"
		E.db["unitframe"]["units"]["raid"]["groupSpacing"] = 8
		E.db["unitframe"]["units"]["raid"]["roleIcon"]["xOffset"] = 21
		E.db["unitframe"]["units"]["raid"]["roleIcon"]["size"] = 13
		E.db["unitframe"]["units"]["raid"]["roleIcon"]["yOffset"] = -11
		E.db["unitframe"]["units"]["raid"]["roleIcon"]["damager"] = false
		E.db["unitframe"]["units"]["raid"]["power"]["enable"] = false
		E.db["unitframe"]["units"]["raid"]["width"] = 60
		E.db["unitframe"]["units"]["raid"]["name"]["text_format"] = ""
		E.db["unitframe"]["units"]["raid"]["health"]["text_format"] = ""
		E.db["unitframe"]["units"]["raid"]["height"] = 40
		E.db["unitframe"]["units"]["raid"]["verticalSpacing"] = 7
		E.db["unitframe"]["units"]["raid"]["buffs"]["sizeOverride"] = 22
		E.db["unitframe"]["units"]["player"]["debuffs"]["enable"] = false
		E.db["unitframe"]["units"]["player"]["portrait"]["rotation"] = 281
		E.db["unitframe"]["units"]["player"]["portrait"]["width"] = 0
		E.db["unitframe"]["units"]["player"]["portrait"]["enable"] = true
		E.db["unitframe"]["units"]["player"]["portrait"]["xOffset"] = 0.3
		E.db["unitframe"]["units"]["player"]["portrait"]["camDistanceScale"] = 3.15
		E.db["unitframe"]["units"]["player"]["portrait"]["yOffset"] = 0.04
		E.db["unitframe"]["units"]["player"]["classbar"]["detachFromFrame"] = true
		E.db["unitframe"]["units"]["player"]["classbar"]["strataAndLevel"]["useCustomStrata"] = true
		E.db["unitframe"]["units"]["player"]["classbar"]["strataAndLevel"]["frameLevel"] = 80
		E.db["unitframe"]["units"]["player"]["classbar"]["strataAndLevel"]["frameStrata"] = "HIGH"
		E.db["unitframe"]["units"]["player"]["classbar"]["height"] = 15
		E.db["unitframe"]["units"]["player"]["classbar"]["detachedWidth"] = 324
		E.db["unitframe"]["units"]["player"]["classbar"]["fill"] = "spaced"
		E.db["unitframe"]["units"]["player"]["aurabar"]["maxDuration"] = 30
		E.db["unitframe"]["units"]["player"]["aurabar"]["enable"] = false
		E.db["unitframe"]["units"]["player"]["aurabar"]["yOffset"] = 127
		E.db["unitframe"]["units"]["player"]["RestIcon"]["enable"] = false
		E.db["unitframe"]["units"]["player"]["power"]["detachFromFrame"] = true
		E.db["unitframe"]["units"]["player"]["power"]["strataAndLevel"]["useCustomStrata"] = true
		E.db["unitframe"]["units"]["player"]["power"]["text_format"] = ""
		E.db["unitframe"]["units"]["player"]["power"]["detachedWidth"] = 324
		E.db["unitframe"]["units"]["player"]["threatStyle"] = "ICONTOPLEFT"
		E.db["unitframe"]["units"]["player"]["disableMouseoverGlow"] = true
		E.db["unitframe"]["units"]["player"]["width"] = 170
		E.db["unitframe"]["units"]["player"]["health"]["xOffset"] = 157
		E.db["unitframe"]["units"]["player"]["health"]["attachTextTo"] = "Frame"
		E.db["unitframe"]["units"]["player"]["health"]["text_format"] = ""
		E.db["unitframe"]["units"]["player"]["health"]["yOffset"] = -3
		E.db["unitframe"]["units"]["player"]["castbar"]["spark"] = false
		E.db["unitframe"]["units"]["player"]["castbar"]["insideInfoPanel"] = false
		E.db["unitframe"]["units"]["player"]["castbar"]["iconAttached"] = false
		E.db["unitframe"]["units"]["player"]["castbar"]["iconYOffset"] = 1
		E.db["unitframe"]["units"]["player"]["castbar"]["iconXOffset"] = 5
		E.db["unitframe"]["units"]["player"]["castbar"]["iconPosition"] = "RIGHT"
		E.db["unitframe"]["units"]["player"]["castbar"]["iconSize"] = 63
		E.db["unitframe"]["units"]["player"]["castbar"]["height"] = 42
		E.db["unitframe"]["units"]["player"]["castbar"]["width"] = 324
		E.db["unitframe"]["units"]["player"]["castbar"]["iconAttachedTo"] = "Castbar"
		E.db["unitframe"]["units"]["player"]["height"] = 60
		E.db["unitframe"]["units"]["player"]["pvp"]["text_format"] = ""
		E.db["unitframe"]["units"]["party"]["horizontalSpacing"] = 8
		E.db["unitframe"]["units"]["party"]["debuffs"]["enable"] = false
		E.db["unitframe"]["units"]["party"]["rdebuffs"]["font"] = "MelloUI Club"
		E.db["unitframe"]["units"]["party"]["growthDirection"] = "RIGHT_UP"
		E.db["unitframe"]["units"]["party"]["groupBy"] = "ROLE"
		E.db["unitframe"]["units"]["party"]["roleIcon"]["xOffset"] = -14
		E.db["unitframe"]["units"]["party"]["roleIcon"]["size"] = 19
		E.db["unitframe"]["units"]["party"]["roleIcon"]["yOffset"] = -15
		E.db["unitframe"]["units"]["party"]["targetsGroup"]["xOffset"] = 140
		E.db["unitframe"]["units"]["party"]["power"]["offset"] = 6
		E.db["unitframe"]["units"]["party"]["power"]["text_format"] = ""
		E.db["unitframe"]["units"]["party"]["buffIndicator"]["profileSpecific"] = true
		E.db["unitframe"]["units"]["party"]["buffIndicator"]["size"] = 13
		E.db["unitframe"]["units"]["party"]["health"]["frequentUpdates"] = true
		E.db["unitframe"]["units"]["party"]["health"]["text_format"] = ""
		E.db["unitframe"]["units"]["party"]["width"] = 57
		E.db["unitframe"]["units"]["party"]["name"]["text_format"] = ""
		E.db["unitframe"]["units"]["party"]["verticalSpacing"] = 17
		E.db["unitframe"]["units"]["party"]["height"] = 57
		E.db["unitframe"]["units"]["party"]["buffs"]["sizeOverride"] = 22
		E.db["unitframe"]["units"]["party"]["raidicon"]["yOffset"] = -8
		E.db["unitframe"]["smoothbars"] = true
		E.db["unitframe"]["font"] = "MelloUI Tukui UnitFrame"
		E.db["unitframe"]["colors"]["auraBarBuff"]["r"] = 0.53
		E.db["unitframe"]["colors"]["auraBarBuff"]["g"] = 0.53
		E.db["unitframe"]["colors"]["auraBarBuff"]["b"] = 0.93
		E.db["unitframe"]["colors"]["colorhealthbyvalue"] = false
		E.db["unitframe"]["colors"]["healthclass"] = true
		E.db["unitframe"]["colors"]["power"]["PAIN"]["r"] = 0.30980392156863
		E.db["unitframe"]["colors"]["power"]["PAIN"]["g"] = 0.45098039215686
		E.db["unitframe"]["colors"]["power"]["PAIN"]["b"] = 0.63137254901961
		E.db["unitframe"]["colors"]["power"]["FURY"]["r"] = 0.30980392156863
		E.db["unitframe"]["colors"]["power"]["FURY"]["g"] = 0.45098039215686
		E.db["unitframe"]["colors"]["power"]["FURY"]["b"] = 0.63137254901961
		E.db["unitframe"]["colors"]["power"]["FOCUS"]["r"] = 0.30980392156863
		E.db["unitframe"]["colors"]["power"]["FOCUS"]["g"] = 0.45098039215686
		E.db["unitframe"]["colors"]["power"]["FOCUS"]["b"] = 0.63137254901961
		E.db["unitframe"]["colors"]["power"]["LUNAR_POWER"]["r"] = 0.30980392156863
		E.db["unitframe"]["colors"]["power"]["LUNAR_POWER"]["g"] = 0.45098039215686
		E.db["unitframe"]["colors"]["power"]["LUNAR_POWER"]["b"] = 0.63137254901961
		E.db["unitframe"]["colors"]["power"]["RAGE"]["r"] = 0.30980392156863
		E.db["unitframe"]["colors"]["power"]["RAGE"]["g"] = 0.45098039215686
		E.db["unitframe"]["colors"]["power"]["RAGE"]["b"] = 0.63137254901961
		E.db["unitframe"]["colors"]["power"]["INSANITY"]["r"] = 0.30980392156863
		E.db["unitframe"]["colors"]["power"]["INSANITY"]["g"] = 0.45098039215686
		E.db["unitframe"]["colors"]["power"]["INSANITY"]["b"] = 0.63137254901961
		E.db["unitframe"]["colors"]["power"]["MANA"]["r"] = 0.30980392156863
		E.db["unitframe"]["colors"]["power"]["MANA"]["g"] = 0.45098039215686
		E.db["unitframe"]["colors"]["power"]["MANA"]["b"] = 0.63137254901961
		E.db["unitframe"]["colors"]["power"]["RUNIC_POWER"]["r"] = 0.30980392156863
		E.db["unitframe"]["colors"]["power"]["RUNIC_POWER"]["g"] = 0.45098039215686
		E.db["unitframe"]["colors"]["power"]["RUNIC_POWER"]["b"] = 0.63137254901961
		E.db["unitframe"]["colors"]["power"]["MAELSTROM"]["r"] = 0.30980392156863
		E.db["unitframe"]["colors"]["power"]["MAELSTROM"]["g"] = 0.45098039215686
		E.db["unitframe"]["colors"]["power"]["MAELSTROM"]["b"] = 0.63137254901961
		E.db["unitframe"]["colors"]["power"]["ENERGY"]["r"] = 0.30980392156863
		E.db["unitframe"]["colors"]["power"]["ENERGY"]["g"] = 0.45098039215686
		E.db["unitframe"]["colors"]["power"]["ENERGY"]["b"] = 0.63137254901961
		E.db["unitframe"]["colors"]["castColor"]["r"] = 1
		E.db["unitframe"]["colors"]["castColor"]["g"] = 0.49019607843137
		E.db["unitframe"]["colors"]["castColor"]["b"] = 0
		E.db["unitframe"]["colors"]["frameGlow"]["mainGlow"]["enable"] = true
		E.db["unitframe"]["colors"]["frameGlow"]["mainGlow"]["class"] = true
		E.db["unitframe"]["colors"]["frameGlow"]["mainGlow"]["color"]["r"] = 0
		E.db["unitframe"]["colors"]["frameGlow"]["mainGlow"]["color"]["b"] = 0.98823529411765
		E.db["unitframe"]["colors"]["frameGlow"]["mouseoverGlow"]["class"] = true
		E.db["unitframe"]["colors"]["healPrediction"]["absorbs"]["a"] = 0.52632936835289
		E.db["unitframe"]["colors"]["healPrediction"]["absorbs"]["g"] = 0.42745098039216
		E.db["unitframe"]["colors"]["healPrediction"]["healAbsorbs"]["a"] = 0.48244601488113
		E.db["unitframe"]["colors"]["healPrediction"]["others"]["a"] = 0.45611578226089
		E.db["unitframe"]["colors"]["healPrediction"]["others"]["r"] = 0.63137254901961
		E.db["unitframe"]["colors"]["healPrediction"]["personal"]["a"] = 0.53510645031929
		E.db["unitframe"]["colors"]["healPrediction"]["personal"]["r"] = 1
		E.db["unitframe"]["colors"]["healPrediction"]["personal"]["g"] = 0.42745098039216
		E.db["unitframe"]["colors"]["healPrediction"]["personal"]["b"] = 0
		E.db["unitframe"]["colors"]["health"]["r"] = 1
		E.db["unitframe"]["colors"]["health"]["g"] = 1
		E.db["unitframe"]["colors"]["health"]["b"] = 1
		E.db["unitframe"]["fontOutline"] = "THICKOUTLINE"
		E.db["unitframe"]["statusbar"] = "ElvUI Blank"
		E.db["unitframe"]["smartRaidFilter"] = false

		if MLUI.BU then
			E.db["benikui"]["unitframes"]["castbar"]["text"]["target"]["yOffset"] = -23
			E.db["benikui"]["unitframes"]["castbar"]["text"]["player"]["yOffset"] = 29
			E.db["benikui"]["unitframes"]["player"]["portraitWidth"] = 150
			E.db["benikui"]["unitframes"]["player"]["detachPortrait"] = true
			E.db["benikui"]["unitframes"]["player"]["portraitFrameStrata"] = "LOW"
			E.db["benikui"]["unitframes"]["player"]["portraitShadow"] = true
			E.db["benikui"]["unitframes"]["player"]["portraitHeight"] = 59
			E.db["benikui"]["unitframes"]["target"]["portraitWidth"] = 100
			E.db["benikui"]["unitframes"]["target"]["detachPortrait"] = true
			E.db["benikui"]["unitframes"]["target"]["portraitFrameStrata"] = "LOW"
			E.db["benikui"]["unitframes"]["target"]["portraitHeight"] = 53
			E.db["benikui"]["unitframes"]["target"]["getPlayerPortraitSize"] = false
		end

		E.db["movers"]["iFilger Buffs"] = "BOTTOM,ElvUIParent,BOTTOM,-95,220"
		E.db["movers"]["iFilger Cooldowns"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,46,245"
		E.db["movers"]["iFilger Enhancements"] = "TOPLEFT,ElvUIParent,TOPLEFT,364,-454"
		E.db["movers"]["iFilger FocusBuffs"] = "TOPLEFT,ElvUIParent,TOPLEFT,583,-460"
		E.db["movers"]["iFilger FocusDebuffs"] = "TOPLEFT,ElvUIParent,TOPLEFT,361,-410"
		E.db["movers"]["iFilger Procs"] = "TOPLEFT,ElvUIParent,TOPLEFT,371,-498"
		E.db["movers"]["iFilger PvPPlayerDebuffs"] = "TOPLEFT,ElvUIParent,TOPLEFT,361,-388"
		E.db["movers"]["iFilger PvPTargetBuffs"] = "TOPLEFT,ElvUIParent,TOPLEFT,363,-432"
		E.db["movers"]["iFilger PvPTargetDebuffs"] = "TOPLEFT,ElvUIParent,TOPLEFT,368,-476"
		E.db["movers"]["iFilger RaidDebuffs"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-687,254"
		E.db["movers"]["iFilger TargetDebuffs"] = "BOTTOM,ElvUIParent,BOTTOM,420,400"
		E.db["movers"]["TargetPortraitMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-488,154"
		E.db["movers"]["TargetPowerBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-488,146"
		E.db["movers"]["PlayerNameplate"] = "BOTTOM,ElvUIParent,BOTTOM,0,359"
		E.db["movers"]["PlayerPortraitMover"] = "BOTTOM,ElvUIParent,BOTTOM,-87,148"
		E.db["movers"]["PlayerPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,146"
		E.db["movers"]["ElvUF_FocusAuraMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,639,400"
		E.db["movers"]["ElvUF_FocusMover"] = "BOTTOM,ElvUIParent,BOTTOM,-355,420"
		E.db["movers"]["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,761,216"
		E.db["movers"]["ElvUF_PetCastbarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,309"
		E.db["movers"]["ElvUF_PetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,299"
		E.db["movers"]["ElvUF_PlayerAuraMover"] = "BOTTOM,ElvUIParent,BOTTOM,1,215"
		E.db["movers"]["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,287"
		E.db["movers"]["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,77,147"
		E.db["movers"]["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,349,252"
		E.db["movers"]["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,352,258"
		E.db["movers"]["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736"
		E.db["movers"]["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,543,641"
		E.db["movers"]["ElvUF_TargetAuraMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-641,400"
		E.db["movers"]["ElvUF_TargetCastbarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-488,134"
		E.db["movers"]["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,261,153"
		E.db["movers"]["ElvUF_TargetTargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-513,293"
		E.db["movers"]["ClassBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,154"

		print('Unitframes 1080')
	elseif layout == '1440' then
		E.db["auras"]["debuffs"]["countFontSize"] = 13
		E.db["auras"]["debuffs"]["durationFontSize"] = 13
		E.db["auras"]["debuffs"]["size"] = 60
		E.db["auras"]["debuffs"]["growthDirection"] = "RIGHT_DOWN"
		E.db["auras"]["fontOutline"] = "THICKOUTLINE"
		E.db["auras"]["buffs"]["countFontSize"] = 13
		E.db["auras"]["buffs"]["durationFontSize"] = 13
		E.db["auras"]["buffs"]["sortMethod"] = "INDEX"
		E.db["auras"]["buffs"]["size"] = 60
		E.db["auras"]["buffs"]["growthDirection"] = "RIGHT_DOWN"
		E.db["auras"]["timeYOffset"] = -9
		E.db["auras"]["font"] = "MelloUI Club"

		E.db["nameplates"]["fontSize"] = 10
		E.db["nameplates"]["clickableWidth"] = 100
		E.db["nameplates"]["statusbar"] = "BuiFlat"
		E.db["nameplates"]["classbar"]["enable"] = false
		E.db["nameplates"]["threat"]["badScale"] = 0.88
		E.db["nameplates"]["units"]["ENEMY_NPC"]["healthbar"]["height"] = 17
		E.db["nameplates"]["units"]["ENEMY_NPC"]["healthbar"]["text"]["enable"] = true
		E.db["nameplates"]["units"]["ENEMY_NPC"]["healthbar"]["width"] = 50
		E.db["nameplates"]["units"]["ENEMY_NPC"]["eliteIcon"]["enable"] = true
		E.db["nameplates"]["units"]["ENEMY_NPC"]["buffs"]["enable"] = false
		E.db["nameplates"]["units"]["ENEMY_NPC"]["showLevel"] = false
		E.db["nameplates"]["units"]["PLAYER"]["debuffs"]["enable"] = false
		E.db["nameplates"]["units"]["PLAYER"]["healthbar"]["height"] = 4
		E.db["nameplates"]["units"]["PLAYER"]["healthbar"]["text"]["format"] = "PERCENT"
		E.db["nameplates"]["units"]["PLAYER"]["healthbar"]["width"] = 50
		E.db["nameplates"]["units"]["PLAYER"]["castbar"]["hideSpellName"] = true
		E.db["nameplates"]["units"]["PLAYER"]["castbar"]["hideTime"] = true
		E.db["nameplates"]["units"]["PLAYER"]["powerbar"]["enable"] = false
		E.db["nameplates"]["units"]["PLAYER"]["powerbar"]["height"] = 7
		E.db["nameplates"]["units"]["PLAYER"]["alwaysShow"] = true
		E.db["nameplates"]["units"]["PLAYER"]["name"]["useClassColor"] = false
		E.db["nameplates"]["units"]["PLAYER"]["buffs"]["enable"] = false
		E.db["nameplates"]["units"]["PLAYER"]["visibility"]["hideDelay"] = 0
		E.db["nameplates"]["units"]["PLAYER"]["portrait"]["height"] = 49
		E.db["nameplates"]["units"]["PLAYER"]["portrait"]["width"] = 63
		E.db["nameplates"]["units"]["ENEMY_PLAYER"]["healthbar"]["width"] = 100
		E.db["nameplates"]["units"]["HEALER"]["healthbar"]["enable"] = false
		E.db["nameplates"]["font"] = "Expressway"
		E.db["nameplates"]["clickableHeight"] = 60
		E.db["nameplates"]["targetScale"] = 0.67
		E.db["nameplates"]["useTargetScale"] = false

		E.db["unitframe"]["fontSize"] = 17
		E.db["unitframe"]["units"]["pet"]["castbar"]["iconAttached"] = false
		E.db["unitframe"]["units"]["pet"]["castbar"]["height"] = 10
		E.db["unitframe"]["units"]["pet"]["castbar"]["icon"] = false
		E.db["unitframe"]["units"]["pet"]["castbar"]["width"] = 290
		E.db["unitframe"]["units"]["pet"]["width"] = 290
		E.db["unitframe"]["units"]["pet"]["name"]["text_format"] = ""
		E.db["unitframe"]["units"]["pet"]["name"]["yOffset"] = 4
		E.db["unitframe"]["units"]["pet"]["height"] = 10
		E.db["unitframe"]["units"]["pet"]["buffIndicator"]["enable"] = false
		E.db["unitframe"]["units"]["pet"]["power"]["enable"] = false
		E.db["unitframe"]["units"]["pet"]["power"]["attachTextTo"] = "Power"
		E.db["unitframe"]["units"]["tank"]["enable"] = false
		E.db["unitframe"]["units"]["player"]["debuffs"]["enable"] = false
		E.db["unitframe"]["units"]["player"]["portrait"]["rotation"] = 281
		E.db["unitframe"]["units"]["player"]["portrait"]["yOffset"] = 0.04
		E.db["unitframe"]["units"]["player"]["portrait"]["xOffset"] = 0.3
		E.db["unitframe"]["units"]["player"]["portrait"]["enable"] = true
		E.db["unitframe"]["units"]["player"]["portrait"]["camDistanceScale"] = 3.15
		E.db["unitframe"]["units"]["player"]["portrait"]["width"] = 0
		E.db["unitframe"]["units"]["player"]["classbar"]["detachFromFrame"] = true
		E.db["unitframe"]["units"]["player"]["classbar"]["strataAndLevel"]["useCustomStrata"] = true
		E.db["unitframe"]["units"]["player"]["classbar"]["strataAndLevel"]["frameStrata"] = "HIGH"
		E.db["unitframe"]["units"]["player"]["classbar"]["strataAndLevel"]["frameLevel"] = 80
		E.db["unitframe"]["units"]["player"]["classbar"]["height"] = 15
		E.db["unitframe"]["units"]["player"]["classbar"]["detachedWidth"] = 327
		E.db["unitframe"]["units"]["player"]["classbar"]["fill"] = "spaced"
		E.db["unitframe"]["units"]["player"]["aurabar"]["maxDuration"] = 30
		E.db["unitframe"]["units"]["player"]["aurabar"]["enable"] = false
		E.db["unitframe"]["units"]["player"]["aurabar"]["yOffset"] = 127
		E.db["unitframe"]["units"]["player"]["RestIcon"]["enable"] = false
		E.db["unitframe"]["units"]["player"]["power"]["detachFromFrame"] = true
		E.db["unitframe"]["units"]["player"]["power"]["strataAndLevel"]["useCustomStrata"] = true
		E.db["unitframe"]["units"]["player"]["power"]["text_format"] = ""
		E.db["unitframe"]["units"]["player"]["power"]["detachedWidth"] = 327
		E.db["unitframe"]["units"]["player"]["threatStyle"] = "ICONTOPLEFT"
		E.db["unitframe"]["units"]["player"]["disableMouseoverGlow"] = true
		E.db["unitframe"]["units"]["player"]["width"] = 173
		E.db["unitframe"]["units"]["player"]["health"]["xOffset"] = 157
		E.db["unitframe"]["units"]["player"]["health"]["attachTextTo"] = "Frame"
		E.db["unitframe"]["units"]["player"]["health"]["text_format"] = ""
		E.db["unitframe"]["units"]["player"]["health"]["yOffset"] = -3
		E.db["unitframe"]["units"]["player"]["castbar"]["spark"] = false
		E.db["unitframe"]["units"]["player"]["castbar"]["insideInfoPanel"] = false
		E.db["unitframe"]["units"]["player"]["castbar"]["iconAttached"] = false
		E.db["unitframe"]["units"]["player"]["castbar"]["iconYOffset"] = 1
		E.db["unitframe"]["units"]["player"]["castbar"]["iconPosition"] = "RIGHT"
		E.db["unitframe"]["units"]["player"]["castbar"]["iconXOffset"] = 5
		E.db["unitframe"]["units"]["player"]["castbar"]["iconSize"] = 63
		E.db["unitframe"]["units"]["player"]["castbar"]["height"] = 42
		E.db["unitframe"]["units"]["player"]["castbar"]["iconAttachedTo"] = "Castbar"
		E.db["unitframe"]["units"]["player"]["castbar"]["width"] = 324
		E.db["unitframe"]["units"]["player"]["height"] = 59
		E.db["unitframe"]["units"]["player"]["pvp"]["text_format"] = ""
		E.db["unitframe"]["units"]["raid"]["horizontalSpacing"] = -1
		E.db["unitframe"]["units"]["raid"]["debuffs"]["countFontSize"] = 15
		E.db["unitframe"]["units"]["raid"]["debuffs"]["sizeOverride"] = 17
		E.db["unitframe"]["units"]["raid"]["debuffs"]["enable"] = true
		E.db["unitframe"]["units"]["raid"]["debuffs"]["priority"] = "Blacklist,Boss"
		E.db["unitframe"]["units"]["raid"]["debuffs"]["xOffset"] = -57
		E.db["unitframe"]["units"]["raid"]["debuffs"]["yOffset"] = -9
		E.db["unitframe"]["units"]["raid"]["rdebuffs"]["enable"] = false
		E.db["unitframe"]["units"]["raid"]["rdebuffs"]["font"] = "MelloUI Club"
		E.db["unitframe"]["units"]["raid"]["numGroups"] = 6
		E.db["unitframe"]["units"]["raid"]["growthDirection"] = "DOWN_RIGHT"
		E.db["unitframe"]["units"]["raid"]["groupSpacing"] = 8
		E.db["unitframe"]["units"]["raid"]["roleIcon"]["xOffset"] = 21
		E.db["unitframe"]["units"]["raid"]["roleIcon"]["size"] = 13
		E.db["unitframe"]["units"]["raid"]["roleIcon"]["yOffset"] = -11
		E.db["unitframe"]["units"]["raid"]["roleIcon"]["damager"] = false
		E.db["unitframe"]["units"]["raid"]["power"]["enable"] = false
		E.db["unitframe"]["units"]["raid"]["width"] = 60
		E.db["unitframe"]["units"]["raid"]["name"]["text_format"] = ""
		E.db["unitframe"]["units"]["raid"]["health"]["text_format"] = ""
		E.db["unitframe"]["units"]["raid"]["height"] = 40
		E.db["unitframe"]["units"]["raid"]["verticalSpacing"] = 7
		E.db["unitframe"]["units"]["raid"]["buffs"]["sizeOverride"] = 22
		E.db["unitframe"]["units"]["targettarget"]["enable"] = false
		E.db["unitframe"]["units"]["target"]["debuffs"]["numrows"] = 3
		E.db["unitframe"]["units"]["target"]["debuffs"]["fontSize"] = 26
		E.db["unitframe"]["units"]["target"]["debuffs"]["attachTo"] = "FRAME"
		E.db["unitframe"]["units"]["target"]["debuffs"]["priority"] = "PlayerBuffs,Blacklist,Personal,RaidDebuffs,CCDebuffs,Friendly:Dispellable"
		E.db["unitframe"]["units"]["target"]["debuffs"]["sizeOverride"] = 43
		E.db["unitframe"]["units"]["target"]["debuffs"]["perrow"] = 5
		E.db["unitframe"]["units"]["target"]["portrait"]["rotation"] = 296
		E.db["unitframe"]["units"]["target"]["portrait"]["xOffset"] = 0.31
		E.db["unitframe"]["units"]["target"]["portrait"]["enable"] = true
		E.db["unitframe"]["units"]["target"]["portrait"]["camDistanceScale"] = 2.82
		E.db["unitframe"]["units"]["target"]["portrait"]["width"] = 0
		E.db["unitframe"]["units"]["target"]["aurabar"]["attachTo"] = "FRAME"
		E.db["unitframe"]["units"]["target"]["aurabar"]["maxBars"] = 11
		E.db["unitframe"]["units"]["target"]["aurabar"]["enable"] = false
		E.db["unitframe"]["units"]["target"]["aurabar"]["priority"] = "blockNonPersonal,Boss,RaidDebuffs,CastByPlayers"
		E.db["unitframe"]["units"]["target"]["aurabar"]["height"] = 21
		E.db["unitframe"]["units"]["target"]["aurabar"]["yOffset"] = -1
		E.db["unitframe"]["units"]["target"]["power"]["detachFromFrame"] = true
		E.db["unitframe"]["units"]["target"]["power"]["strataAndLevel"]["frameLevel"] = 2
		E.db["unitframe"]["units"]["target"]["power"]["strataAndLevel"]["useCustomStrata"] = true
		E.db["unitframe"]["units"]["target"]["power"]["height"] = 12
		E.db["unitframe"]["units"]["target"]["power"]["detachedWidth"] = 239
		E.db["unitframe"]["units"]["target"]["power"]["text_format"] = ""
		E.db["unitframe"]["units"]["target"]["power"]["width"] = "spaced"
		E.db["unitframe"]["units"]["target"]["disableMouseoverGlow"] = true
		E.db["unitframe"]["units"]["target"]["width"] = 137
		E.db["unitframe"]["units"]["target"]["name"]["text_format"] = ""
		E.db["unitframe"]["units"]["target"]["health"]["text_format"] = ""
		E.db["unitframe"]["units"]["target"]["buffs"]["numrows"] = 2
		E.db["unitframe"]["units"]["target"]["buffs"]["fontSize"] = 20
		E.db["unitframe"]["units"]["target"]["buffs"]["anchorPoint"] = "BOTTOMRIGHT"
		E.db["unitframe"]["units"]["target"]["buffs"]["enable"] = false
		E.db["unitframe"]["units"]["target"]["buffs"]["sizeOverride"] = 40
		E.db["unitframe"]["units"]["target"]["buffs"]["yOffset"] = -23
		E.db["unitframe"]["units"]["target"]["buffs"]["perrow"] = 6
		E.db["unitframe"]["units"]["target"]["castbar"]["height"] = 24
		E.db["unitframe"]["units"]["target"]["castbar"]["width"] = 239
		E.db["unitframe"]["units"]["boss"]["debuffs"]["fontSize"] = 20
		E.db["unitframe"]["units"]["boss"]["debuffs"]["clickThrough"] = true
		E.db["unitframe"]["units"]["boss"]["debuffs"]["xOffset"] = -13
		E.db["unitframe"]["units"]["boss"]["debuffs"]["sizeOverride"] = 41
		E.db["unitframe"]["units"]["boss"]["debuffs"]["yOffset"] = 13
		E.db["unitframe"]["units"]["boss"]["power"]["offset"] = 9
		E.db["unitframe"]["units"]["boss"]["power"]["position"] = "LEFT"
		E.db["unitframe"]["units"]["boss"]["power"]["height"] = 12
		E.db["unitframe"]["units"]["boss"]["power"]["text_format"] = ""
		E.db["unitframe"]["units"]["boss"]["power"]["attachTextTo"] = "Power"
		E.db["unitframe"]["units"]["boss"]["threatStyle"] = "ICONBOTTOMLEFT"
		E.db["unitframe"]["units"]["boss"]["width"] = 187
		E.db["unitframe"]["units"]["boss"]["health"]["text_format"] = ""
		E.db["unitframe"]["units"]["boss"]["spacing"] = 34
		E.db["unitframe"]["units"]["boss"]["height"] = 50
		E.db["unitframe"]["units"]["boss"]["buffs"]["enable"] = false
		E.db["unitframe"]["units"]["boss"]["name"]["text_format"] = ""
		E.db["unitframe"]["units"]["raid40"]["rdebuffs"]["font"] = "MelloUI Club"
		E.db["unitframe"]["units"]["raid40"]["roleIcon"]["enable"] = true
		E.db["unitframe"]["units"]["raid40"]["roleIcon"]["damager"] = false
		E.db["unitframe"]["units"]["raid40"]["readycheckIcon"]["size"] = 20
		E.db["unitframe"]["units"]["raid40"]["width"] = 74
		E.db["unitframe"]["units"]["raid40"]["name"]["text_format"] = ""
		E.db["unitframe"]["units"]["raid40"]["height"] = 25
		E.db["unitframe"]["units"]["raid40"]["health"]["text_format"] = ""
		E.db["unitframe"]["units"]["focus"]["debuffs"]["numrows"] = 3
		E.db["unitframe"]["units"]["focus"]["debuffs"]["fontSize"] = 26
		E.db["unitframe"]["units"]["focus"]["debuffs"]["sizeOverride"] = 52
		E.db["unitframe"]["units"]["focus"]["debuffs"]["enable"] = false
		E.db["unitframe"]["units"]["focus"]["disableTargetGlow"] = true
		E.db["unitframe"]["units"]["focus"]["power"]["enable"] = false
		E.db["unitframe"]["units"]["focus"]["power"]["height"] = 39
		E.db["unitframe"]["units"]["focus"]["power"]["width"] = "spaced"
		E.db["unitframe"]["units"]["focus"]["width"] = 189
		E.db["unitframe"]["units"]["focus"]["infoPanel"]["height"] = 20
		E.db["unitframe"]["units"]["focus"]["castbar"]["height"] = 24
		E.db["unitframe"]["units"]["focus"]["castbar"]["iconSize"] = 42
		E.db["unitframe"]["units"]["focus"]["castbar"]["width"] = 189
		E.db["unitframe"]["units"]["focus"]["name"]["text_format"] = ""
		E.db["unitframe"]["units"]["focus"]["height"] = 39
		E.db["unitframe"]["units"]["focus"]["orientation"] = "RIGHT"
		E.db["unitframe"]["units"]["focus"]["buffs"]["maxDuration"] = 0
		E.db["unitframe"]["units"]["focus"]["buffs"]["anchorPoint"] = "TOPRIGHT"
		E.db["unitframe"]["units"]["focus"]["buffs"]["perrow"] = 8
		E.db["unitframe"]["units"]["focus"]["aurabar"]["enable"] = true
		E.db["unitframe"]["units"]["focus"]["aurabar"]["height"] = 21
		E.db["unitframe"]["units"]["focus"]["aurabar"]["maxBars"] = 11
		E.db["unitframe"]["units"]["focus"]["aurabar"]["attachTo"] = "FRAME"
		E.db["unitframe"]["units"]["assist"]["enable"] = false
		E.db["unitframe"]["units"]["arena"]["debuffs"]["numrows"] = 2
		E.db["unitframe"]["units"]["arena"]["debuffs"]["fontSize"] = 20
		E.db["unitframe"]["units"]["arena"]["debuffs"]["clickThrough"] = true
		E.db["unitframe"]["units"]["arena"]["debuffs"]["xOffset"] = -13
		E.db["unitframe"]["units"]["arena"]["debuffs"]["sizeOverride"] = 41
		E.db["unitframe"]["units"]["arena"]["debuffs"]["maxDuration"] = 0
		E.db["unitframe"]["units"]["arena"]["debuffs"]["yOffset"] = 13
		E.db["unitframe"]["units"]["arena"]["pvpTrinket"]["enable"] = false
		E.db["unitframe"]["units"]["arena"]["power"]["offset"] = 9
		E.db["unitframe"]["units"]["arena"]["power"]["attachTextTo"] = "Power"
		E.db["unitframe"]["units"]["arena"]["power"]["text_format"] = ""
		E.db["unitframe"]["units"]["arena"]["power"]["height"] = 12
		E.db["unitframe"]["units"]["arena"]["width"] = 187
		E.db["unitframe"]["units"]["arena"]["infoPanel"]["height"] = 16
		E.db["unitframe"]["units"]["arena"]["portrait"]["camDistanceScale"] = 1
		E.db["unitframe"]["units"]["arena"]["portrait"]["width"] = 35
		E.db["unitframe"]["units"]["arena"]["health"]["text_format"] = ""
		E.db["unitframe"]["units"]["arena"]["spacing"] = 34
		E.db["unitframe"]["units"]["arena"]["height"] = 50
		E.db["unitframe"]["units"]["arena"]["buffs"]["enable"] = false
		E.db["unitframe"]["units"]["arena"]["buffs"]["sizeOverride"] = 22
		E.db["unitframe"]["units"]["arena"]["buffs"]["maxDuration"] = 0
		E.db["unitframe"]["units"]["arena"]["buffs"]["yOffset"] = 20
		E.db["unitframe"]["units"]["arena"]["name"]["text_format"] = ""
		E.db["unitframe"]["units"]["arena"]["castbar"]["width"] = 215
		E.db["unitframe"]["units"]["party"]["horizontalSpacing"] = 8
		E.db["unitframe"]["units"]["party"]["debuffs"]["enable"] = false
		E.db["unitframe"]["units"]["party"]["rdebuffs"]["font"] = "CLUB"
		E.db["unitframe"]["units"]["party"]["growthDirection"] = "RIGHT_UP"
		E.db["unitframe"]["units"]["party"]["buffIndicator"]["profileSpecific"] = true
		E.db["unitframe"]["units"]["party"]["buffIndicator"]["size"] = 13
		E.db["unitframe"]["units"]["party"]["roleIcon"]["xOffset"] = -14
		E.db["unitframe"]["units"]["party"]["roleIcon"]["size"] = 19
		E.db["unitframe"]["units"]["party"]["roleIcon"]["yOffset"] = -15
		E.db["unitframe"]["units"]["party"]["targetsGroup"]["xOffset"] = 140
		E.db["unitframe"]["units"]["party"]["power"]["offset"] = 6
		E.db["unitframe"]["units"]["party"]["power"]["text_format"] = ""
		E.db["unitframe"]["units"]["party"]["groupBy"] = "ROLE"
		E.db["unitframe"]["units"]["party"]["health"]["frequentUpdates"] = true
		E.db["unitframe"]["units"]["party"]["health"]["text_format"] = ""
		E.db["unitframe"]["units"]["party"]["width"] = 57
		E.db["unitframe"]["units"]["party"]["name"]["text_format"] = ""
		E.db["unitframe"]["units"]["party"]["verticalSpacing"] = 17
		E.db["unitframe"]["units"]["party"]["height"] = 57
		E.db["unitframe"]["units"]["party"]["buffs"]["sizeOverride"] = 22
		E.db["unitframe"]["units"]["party"]["raidicon"]["yOffset"] = -8
		E.db["unitframe"]["statusbar"] = "ElvUI Blank"
		E.db["unitframe"]["font"] = "MelloUI Tukui UnitFrame"
		E.db["unitframe"]["colors"]["auraBarBuff"]["b"] = 0.93
		E.db["unitframe"]["colors"]["auraBarBuff"]["g"] = 0.53
		E.db["unitframe"]["colors"]["auraBarBuff"]["r"] = 0.53
		E.db["unitframe"]["colors"]["colorhealthbyvalue"] = false
		E.db["unitframe"]["colors"]["healthclass"] = true
		E.db["unitframe"]["colors"]["power"]["PAIN"]["b"] = 0.63137254901961
		E.db["unitframe"]["colors"]["power"]["PAIN"]["g"] = 0.45098039215686
		E.db["unitframe"]["colors"]["power"]["PAIN"]["r"] = 0.30980392156863
		E.db["unitframe"]["colors"]["power"]["FURY"]["b"] = 0.63137254901961
		E.db["unitframe"]["colors"]["power"]["FURY"]["g"] = 0.45098039215686
		E.db["unitframe"]["colors"]["power"]["FURY"]["r"] = 0.30980392156863
		E.db["unitframe"]["colors"]["power"]["FOCUS"]["b"] = 0.63137254901961
		E.db["unitframe"]["colors"]["power"]["FOCUS"]["g"] = 0.45098039215686
		E.db["unitframe"]["colors"]["power"]["FOCUS"]["r"] = 0.30980392156863
		E.db["unitframe"]["colors"]["power"]["LUNAR_POWER"]["b"] = 0.63137254901961
		E.db["unitframe"]["colors"]["power"]["LUNAR_POWER"]["g"] = 0.45098039215686
		E.db["unitframe"]["colors"]["power"]["LUNAR_POWER"]["r"] = 0.30980392156863
		E.db["unitframe"]["colors"]["power"]["ENERGY"]["b"] = 0.63137254901961
		E.db["unitframe"]["colors"]["power"]["ENERGY"]["g"] = 0.45098039215686
		E.db["unitframe"]["colors"]["power"]["ENERGY"]["r"] = 0.30980392156863
		E.db["unitframe"]["colors"]["power"]["MAELSTROM"]["b"] = 0.63137254901961
		E.db["unitframe"]["colors"]["power"]["MAELSTROM"]["g"] = 0.45098039215686
		E.db["unitframe"]["colors"]["power"]["MAELSTROM"]["r"] = 0.30980392156863
		E.db["unitframe"]["colors"]["power"]["MANA"]["b"] = 0.63137254901961
		E.db["unitframe"]["colors"]["power"]["MANA"]["g"] = 0.45098039215686
		E.db["unitframe"]["colors"]["power"]["MANA"]["r"] = 0.30980392156863
		E.db["unitframe"]["colors"]["power"]["RUNIC_POWER"]["b"] = 0.63137254901961
		E.db["unitframe"]["colors"]["power"]["RUNIC_POWER"]["g"] = 0.45098039215686
		E.db["unitframe"]["colors"]["power"]["RUNIC_POWER"]["r"] = 0.30980392156863
		E.db["unitframe"]["colors"]["power"]["INSANITY"]["b"] = 0.63137254901961
		E.db["unitframe"]["colors"]["power"]["INSANITY"]["g"] = 0.45098039215686
		E.db["unitframe"]["colors"]["power"]["INSANITY"]["r"] = 0.30980392156863
		E.db["unitframe"]["colors"]["power"]["RAGE"]["b"] = 0.63137254901961
		E.db["unitframe"]["colors"]["power"]["RAGE"]["g"] = 0.45098039215686
		E.db["unitframe"]["colors"]["power"]["RAGE"]["r"] = 0.30980392156863
		E.db["unitframe"]["colors"]["castColor"]["b"] = 0
		E.db["unitframe"]["colors"]["castColor"]["g"] = 0.49019607843137
		E.db["unitframe"]["colors"]["castColor"]["r"] = 1
		E.db["unitframe"]["colors"]["frameGlow"]["mainGlow"]["enable"] = true
		E.db["unitframe"]["colors"]["frameGlow"]["mainGlow"]["class"] = true
		E.db["unitframe"]["colors"]["frameGlow"]["mainGlow"]["color"]["b"] = 0.98823529411765
		E.db["unitframe"]["colors"]["frameGlow"]["mainGlow"]["color"]["r"] = 0
		E.db["unitframe"]["colors"]["frameGlow"]["mouseoverGlow"]["class"] = true
		E.db["unitframe"]["colors"]["healPrediction"]["absorbs"]["a"] = 0.52632936835289
		E.db["unitframe"]["colors"]["healPrediction"]["absorbs"]["g"] = 0.42745098039216
		E.db["unitframe"]["colors"]["healPrediction"]["healAbsorbs"]["a"] = 0.48244601488113
		E.db["unitframe"]["colors"]["healPrediction"]["others"]["a"] = 0.45611578226089
		E.db["unitframe"]["colors"]["healPrediction"]["others"]["r"] = 0.63137254901961
		E.db["unitframe"]["colors"]["healPrediction"]["personal"]["a"] = 0.53510645031929
		E.db["unitframe"]["colors"]["healPrediction"]["personal"]["b"] = 0
		E.db["unitframe"]["colors"]["healPrediction"]["personal"]["g"] = 0.42745098039216
		E.db["unitframe"]["colors"]["healPrediction"]["personal"]["r"] = 1
		E.db["unitframe"]["colors"]["health"]["b"] = 1
		E.db["unitframe"]["colors"]["health"]["g"] = 1
		E.db["unitframe"]["colors"]["health"]["r"] = 1
		E.db["unitframe"]["smartRaidFilter"] = false
		E.db["unitframe"]["smoothbars"] = true
		E.db["unitframe"]["fontOutline"] = "THICKOUTLINE"

		if MLUI.BU then
			E.db["benikui"]["unitframes"]["castbar"]["text"]["target"]["yOffset"] = -23
			E.db["benikui"]["unitframes"]["castbar"]["text"]["player"]["yOffset"] = 29
			E.db["benikui"]["unitframes"]["player"]["portraitHeight"] = 59
			E.db["benikui"]["unitframes"]["player"]["detachPortrait"] = true
			E.db["benikui"]["unitframes"]["player"]["portraitFrameStrata"] = "LOW"
			E.db["benikui"]["unitframes"]["player"]["portraitShadow"] = true
			E.db["benikui"]["unitframes"]["player"]["portraitWidth"] = 150
			E.db["benikui"]["unitframes"]["target"]["portraitWidth"] = 100
			E.db["benikui"]["unitframes"]["target"]["detachPortrait"] = true
			E.db["benikui"]["unitframes"]["target"]["portraitFrameStrata"] = "LOW"
			E.db["benikui"]["unitframes"]["target"]["portraitHeight"] = 53
			E.db["benikui"]["unitframes"]["target"]["getPlayerPortraitSize"] = false
		end

		E.db["movers"]["ArenaHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-270,-323"
		E.db["movers"]["ClassBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,154"
		E.db["movers"]["ElvUF_FocusAuraMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,639,400"
		E.db["movers"]["ElvUF_FocusMover"] = "BOTTOM,ElvUIParent,BOTTOM,-355,420"
		E.db["movers"]["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,1121,213"
		E.db["movers"]["ElvUF_PetCastbarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,309"
		E.db["movers"]["ElvUF_PetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,299"
		E.db["movers"]["ElvUF_PlayerAuraMover"] = "BOTTOM,ElvUIParent,BOTTOM,1,215"
		E.db["movers"]["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,287"
		E.db["movers"]["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,77,147"
		E.db["movers"]["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,686,247"
		E.db["movers"]["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,686,255"
		E.db["movers"]["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736"
		E.db["movers"]["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,543,641"
		E.db["movers"]["ElvUF_TargetAuraMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-641,400"
		E.db["movers"]["ElvUF_TargetCastbarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-710,124"
		E.db["movers"]["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,400,154"
		E.db["movers"]["ElvUF_TargetTargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-513,293"
		E.db["movers"]["PlayerNameplate"] = "BOTTOM,ElvUIParent,BOTTOM,0,359"
		E.db["movers"]["PlayerPortraitMover"] = "BOTTOM,ElvUIParent,BOTTOM,-89,147"
		E.db["movers"]["PlayerPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,146"
		E.db["movers"]["TargetPortraitMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-710,154"
		E.db["movers"]["TargetPowerBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-710,149"
		E.db["movers"]["iFilger Buffs"] = "BOTTOM,ElvUIParent,BOTTOM,-95,220"
		E.db["movers"]["iFilger Cooldowns"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,46,245"
		E.db["movers"]["iFilger Enhancements"] = "TOPLEFT,ElvUIParent,TOPLEFT,364,-454"
		E.db["movers"]["iFilger FocusBuffs"] = "TOPLEFT,ElvUIParent,TOPLEFT,583,-460"
		E.db["movers"]["iFilger FocusDebuffs"] = "TOPLEFT,ElvUIParent,TOPLEFT,361,-410"
		E.db["movers"]["iFilger Procs"] = "TOPLEFT,ElvUIParent,TOPLEFT,371,-498"
		E.db["movers"]["iFilger PvPPlayerDebuffs"] = "TOPLEFT,ElvUIParent,TOPLEFT,361,-388"
		E.db["movers"]["iFilger PvPTargetBuffs"] = "TOPLEFT,ElvUIParent,TOPLEFT,363,-432"
		E.db["movers"]["iFilger PvPTargetDebuffs"] = "TOPLEFT,ElvUIParent,TOPLEFT,368,-476"
		E.db["movers"]["iFilger RaidDebuffs"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-687,254"
		E.db["movers"]["iFilger TargetDebuffs"] = "BOTTOM,ElvUIParent,BOTTOM,420,400"
		print('Unitframes 1440')
	end

	PluginInstallStepComplete.message = MLUI.Title..L['Unitframes Set']
	PluginInstallStepComplete:Show()
	E:UpdateAll(true)
end

local function InstallComplete()
	--E.private.install_complete = E.version
	E.db.melloui.installed = true
	E.private.melloui.install_complete = MLUI.Version

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