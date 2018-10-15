local E, L, V, P, G = unpack(ElvUI);
local MLUI = E:GetModule('MelloUI');

function MLUI:LoadBigWigsProfile(res)
	LoadAddOn("BigWigs_Options")
	LoadAddOn("BigWigs")

	if BigWigs3DB['profiles'] == nil then BigWigs3DB['profiles'] = {} end

	if res == '1080' then
		BigWigs3DB = {
			["profileKeys"] = {
				["Meruid - Tarren Mill"] = "Mello1920",
			},
			["namespaces"] = {
				["BigWigs_Plugins_Victory"] = {
				},
				["BigWigs_Plugins_Alt Power"] = {
					["profiles"] = {
						["Mello1920"] = {
							["posx"] = 1112.30157844278,
							["posy"] = 227.431869303056,
						},
					},
				},
				["BigWigs_Plugins_Colors"] = {
				},
				["BigWigs_Plugins_Wipe"] = {
				},
				["BigWigs_Plugins_BossBlock"] = {
				},
				["BigWigs_Plugins_Bars"] = {
					["profiles"] = {
						["Default"] = {
							["BigWigsAnchor_width"] = 219.999923706055,
							["BigWigsEmphasizeAnchor_width"] = 320.000030517578,
							["BigWigsEmphasizeAnchor_height"] = 21.9999923706055,
							["BigWigsAnchor_height"] = 16.0000438690186,
						},
						["Mello1920"] = {
							["BigWigsEmphasizeAnchor_y"] = 329.460496031015,
							["BigWigsAnchor_width"] = 123.000030517578,
							["BigWigsAnchor_x"] = 161.762415032114,
							["icon"] = false,
							["fill"] = true,
							["BigWigsEmphasizeAnchor_height"] = 18.9998912811279,
							["monochrome"] = false,
							["fontName"] = "MelloUI Club",
							["BigWigsAnchor_height"] = 22.9999828338623,
							["fontSize"] = 11,
							["BigWigsAnchor_y"] = 179.200187376191,
							["emphasizeGrowup"] = true,
							["texture"] = "BuiFlat",
							["barStyle"] = "MonoUI",
							["BigWigsEmphasizeAnchor_width"] = 139.000640869141,
							["BigWigsEmphasizeAnchor_x"] = 793.971132616724,
							["alignText"] = "CENTER",
							["outline"] = "OUTLINE",
							["fontSizeEmph"] = 11,
						},
					},
				},
				["BigWigs_Plugins_InfoBox"] = {
					["profiles"] = {
						["Mello1920"] = {
							["posx"] = 236.707141363962,
							["posy"] = 384.741997043031,
						},
					},
				},
				["BigWigs_Plugins_Super Emphasize"] = {
				},
				["BigWigs_Plugins_Sounds"] = {
				},
				["BigWigs_Plugins_AutoReply"] = {
				},
				["BigWigs_Plugins_Proximity"] = {
					["profiles"] = {
						["Mello1920"] = {
							["posx"] = 1004.70728123188,
							["posy"] = 244.498468627011,
							["lock"] = true,
						},
					},
				},
				["BigWigs_Plugins_Statistics"] = {
				},
				["BigWigs_Plugins_Messages"] = {
					["profiles"] = {
						["Mello1920"] = {
							["outline"] = "OUTLINE",
							["BWEmphasizeCountdownMessageAnchor_x"] = 664.858084659303,
							["useicons"] = false,
							["BWMessageAnchor_y"] = 342.446501916305,
							["BWMessageAnchor_x"] = 641.855321180137,
							["fontName"] = "MelloUI Club",
							["BWEmphasizeCountdownMessageAnchor_y"] = 425.924471297811,
							["growUpwards"] = false,
							["align"] = "RIGHT",
						},
					},
				},
				["BigWigs_Plugins_Raid Icons"] = {
				},
				["BigWigs_Plugins_Pull"] = {
				},
				["LibDualSpec-1.0"] = {
				},
			},
			["wipe80"] = true,
			["discord"] = 2,
			["profiles"] = {
				["Default"] = {
				},
				["Mello1920"] = {
				},
				["Mello2560"] = {
				},
			},
		}
		BigWigsIconDB = {
			["minimapPos"] = 244.558841895062,
		}
		BigWigsStatsDB = {
		}

		print('BigWigs1080')
	elseif res == '1440' then
		BigWigs3DB = {
			["profileKeys"] = {
				["Meruid - Tarren Mill"] = "Mello2560",
			},
			["namespaces"] = {
				["BigWigs_Plugins_Victory"] = {
				},
				["BigWigs_Plugins_Wipe"] = {
				},
				["BigWigs_Plugins_Colors"] = {
				},
				["BigWigs_Plugins_Alt Power"] = {
					["profiles"] = {
						["Mello1920"] = {
							["posx"] = 1112.30157844278,
							["posy"] = 227.431869303056,
						},
						["Mello2560"] = {
							["posx"] = 1578.07833682331,
							["posy"] = 217.476155439663,
						},
					},
				},
				["LibDualSpec-1.0"] = {
				},
				["BigWigs_Plugins_Bars"] = {
					["profiles"] = {
						["Default"] = {
							["BigWigsAnchor_width"] = 219.999923706055,
							["BigWigsEmphasizeAnchor_width"] = 320.000030517578,
							["BigWigsEmphasizeAnchor_height"] = 21.9999923706055,
							["BigWigsAnchor_height"] = 16.0000438690186,
						},
						["Mello2560"] = {
							["outline"] = "OUTLINE",
							["BigWigsAnchor_width"] = 123.000061035156,
							["BigWigsAnchor_x"] = 155.362406105755,
							["icon"] = false,
							["fill"] = true,
							["BigWigsEmphasizeAnchor_height"] = 18.9999103546143,
							["monochrome"] = false,
							["fontName"] = "MelloUI Club",
							["BigWigsAnchor_height"] = 22.9999942779541,
							["fontSize"] = 11,
							["BigWigsAnchor_y"] = 173.511343177165,
							["emphasizeGrowup"] = true,
							["barStyle"] = "MonoUI",
							["BigWigsEmphasizeAnchor_width"] = 139.00065612793,
							["BigWigsEmphasizeAnchor_x"] = 1111.12658940525,
							["alignText"] = "CENTER",
							["BigWigsEmphasizeAnchor_y"] = 336.571644434598,
							["texture"] = "BuiFlat",
							["fontSizeEmph"] = 11,
						},
					},
				},
				["BigWigs_Plugins_InfoBox"] = {
					["profiles"] = {
						["Mello2560"] = {
							["posx"] = 236.707141363962,
							["posy"] = 384.741997043031,
						},
					},
				},
				["BigWigs_Plugins_Super Emphasize"] = {
				},
				["BigWigs_Plugins_Sounds"] = {
				},
				["BigWigs_Plugins_Statistics"] = {
				},
				["BigWigs_Plugins_Proximity"] = {
					["profiles"] = {
						["Mello2560"] = {
							["posy"] = 173.388035882513,
							["posx"] = 1318.30688956088,
							["lock"] = true,
						},
					},
				},
				["BigWigs_Plugins_AutoReply"] = {
				},
				["BigWigs_Plugins_Messages"] = {
					["profiles"] = {
						["Mello2560"] = {
							["outline"] = "OUTLINE",
							["BWEmphasizeCountdownMessageAnchor_x"] = 891.703059786487,
							["useicons"] = false,
							["BWMessageAnchor_y"] = 320.402025987505,
							["BWMessageAnchor_x"] = 914.921897154272,
							["fontName"] = "MelloUI Club",
							["BWEmphasizeCountdownMessageAnchor_y"] = 440.857866577881,
							["growUpwards"] = false,
							["align"] = "RIGHT",
						},
					},
				},
				["BigWigs_Plugins_Raid Icons"] = {
				},
				["BigWigs_Plugins_Pull"] = {
				},
				["BigWigs_Plugins_BossBlock"] = {
				},
			},
			["wipe80"] = true,
			["discord"] = 4,
			["profiles"] = {
				["Default"] = {
				},
				["Mello1920"] = {
				},
				["Mello2560"] = {
				},
			},
		}
		BigWigsIconDB = {
			["minimapPos"] = 244.558841895062,
		}
		BigWigsStatsDB = {
		}

		print('BigWigs1440')
	end
end