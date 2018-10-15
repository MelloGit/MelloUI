local E, L, V, P, G = unpack(ElvUI);
local MLUI = E:GetModule('MelloUI');

function MLUI:LoadXIV_DatabarProfile(res)
	if res == '1080' then
		XIVBarDB = {
			["char"] = {
				["Mellö - Tarren Mill"] = {
					["portItem"] = {
						["portId"] = 140192,
					},
				},
			},
			["profiles"] = {
				["Mellö - Tarren Mill"] = {
				},
				["Mello1920"] = {
					["color"] = {
						["hover"] = {
							["a"] = 1,
						},
						["normal"] = {
							["a"] = 1,
							["r"] = 0,
							["g"] = 1,
							["b"] = 0.59,
						},
						["useHoverCC"] = false,
						["barColor"] = {
							["a"] = 0,
							["r"] = 0.0941176470588235,
							["g"] = 0.0941176470588235,
							["b"] = 0.0941176470588235,
						},
						["useTextCC"] = true,
					},
					["text"] = {
						["fontSize"] = 10,
						["font"] = "MelloUI Club",
					},
				},
			},
			["profileKeys"] = {
				["Mellö - Tarren Mill"] = "Mello1920",
			},
			["factionrealm"] = {
				["Alliance - Tarren Mill"] = {
					["Mellö"] = {
						["dailyMoney"] = 0,
						["sessionMoney"] = 0,
						["currentMoney"] = 3470688,
						["lastLoginDate"] = 20181015,
						["daily"] = 0,
					},
				},
			},
		}
	elseif res == '1440' then
		XIVBarDB = {
			["char"] = {
				["Mellö - Tarren Mill"] = {
					["portItem"] = {
						["portId"] = 140192,
					},
				},
			},
			["factionrealm"] = {
				["Alliance - Tarren Mill"] = {
					["Mellö"] = {
						["dailyMoney"] = 0,
						["sessionMoney"] = 0,
						["daily"] = 0,
						["currentMoney"] = 3470688,
						["lastLoginDate"] = 20181015,
					},
				},
			},
			["profileKeys"] = {
				["Mellö - Tarren Mill"] = "Mello2560",
			},
			["profiles"] = {
				["Mellö - Tarren Mill"] = {
				},
				["Mello2560"] = {
					["color"] = {
						["hover"] = {
							["a"] = 1,
						},
						["normal"] = {
							["a"] = 1,
							["r"] = 0,
							["g"] = 1,
							["b"] = 0.59,
						},
						["useHoverCC"] = false,
						["barColor"] = {
							["a"] = 0,
							["r"] = 0.0941176470588235,
							["g"] = 0.0941176470588235,
							["b"] = 0.0941176470588235,
						},
						["useTextCC"] = true,
					},
					["text"] = {
						["fontSize"] = 10,
						["font"] = "MelloUI Club",
					},
				},
			},
		}
	end
end