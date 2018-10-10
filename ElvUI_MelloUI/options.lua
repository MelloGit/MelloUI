local E, L, V, P, G = unpack(ElvUI);
local MLUI = E:GetModule('MelloUI');

local tsort, tconcat = table.sort, table.concat

V['melloui'] = {
	['install_complete'] = nil,
}

P['melloui'] = {
	['installed'] = nil,
}

local DONATORS = {
	'Kaidasora',
	'Mounja',
	'Rearun',
	'Snesteget',
	'Orangepaw33',
}

tsort(DONATORS, function(a, b) return a < b end)
local DONATOR_STRING = tconcat(DONATORS, ", ")

-- Options
function MLUI:ConfigTable()
	E.Options.args.melloui = {
		order = 1000,
		type = "group",
		name = MLUI.Title,
		args = {
			header1 = {
				order = 1,
				type = "header",
				name = format(L["%s version %s by Mello"], MLUI.Title, MLUI.Version),
			},		
			logo = {
				order = 2,
				type = "description",
				name = "",
				image = function() return 'Interface\\AddOns\\ElvUI_MelloUI\\media\\MelloLogo.tga', 384, 192 end,
			},
			header2 = {
				order = 3,
				type = "header",
				name = format(L["%s is bla bla bla"], MLUI.Title), -- Short description
			},
			install = {
				order = 4,
				type = 'execute',
				name = L['Install'],
				desc = L['Run the installation process.'],
				func = function() E:GetModule("PluginInstaller"):Queue(MLUI.installTable); E:ToggleConfig() end,
			},
			spacer1 = {
				order = 5,
				type = "description",
				name = "\n",
			},
			info = {
				order = 6,
				type = "group",
				name = L["Information / Help"],
				guiInline = true,
				args = {
					description2 = {
						order = 1,
						type = "description",
						name = L["Please use the following links if you need help or wish to know more about this AddOn."].."\n",
					},
					addonpage = {
						order = 2,
						type = "input",
						width = "full",
						name = L["AddOn Description"],
						get = function() return "" end, -- main addon page
						set = function() return "" end, -- main addon page
					},
					tickets = {
						order = 3,
						type = "input",
						width = "full",
						name = L["Report Bugs or Requests"],
						get = function() return "" end, -- here we add a web page/github that the user can add tickets
						set = function() return "" end, -- here we add a web page/github that the user can add tickets
					},
					donors = {
						order = 4,
						type = 'group',
						name = L['Donations'],
						args = {
							names = {
								order = 1,
								type = 'description',
								fontSize = 'medium',
								name = format('|cffffd200%s|r', DONATOR_STRING)
							},
						},
					},
				},
			},
		},
	}

	for _, func in pairs(MLUI.Config) do
		func()
	end
end