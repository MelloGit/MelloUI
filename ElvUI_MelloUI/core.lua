local E, L, V, P, G = unpack(ElvUI);
local MLUI = E:NewModule('MelloUI', "AceHook-3.0", "AceEvent-3.0", "AceTimer-3.0");

local LSM = LibStub('LibSharedMedia-3.0')
local EP = LibStub('LibElvUIPlugin-1.0')
local addon, ns = ...

local _G = _G
local pairs, print = pairs, print
local format = string.format
local GetAddOnMetadata = GetAddOnMetadata
local GetAddOnEnableState = GetAddOnEnableState

V['melloui'] = {}
P['melloui'] = {}

MLUI.Config = {}
MLUI.Title = format('|cff00c0fa%s |r', 'MelloUI')
MLUI.Version = GetAddOnMetadata('ElvUI_MelloUI', 'Version')

function MLUI:IsAddOnEnabled(addon)
	return GetAddOnEnableState(E.myname, addon) == 2
end

-- Check other addons
MLUI.AS = MLUI:IsAddOnEnabled('AddOnSkins')
MLUI.BU = MLUI:IsAddOnEnabled('ElvUI_BenikUI')
MLUI.DT = MLUI:IsAddOnEnabled('ElvUI_DTBars2')
MLUI.CT = MLUI:IsAddOnEnabled('ElvUI_CustomTweaks')
MLUI.VAT = MLUI:IsAddOnEnabled('ElvUI_VisualAuraTimers')

LSM:Register('font', 'MelloUI Club', [[Interface\AddOns\ElvUI_MelloUI\media\fonts\CLUB____.ttf]])
LSM:Register('font', 'MelloUI Tukui UnitFrame', [[Interface\AddOns\ElvUI_MelloUI\media\fonts\uf_font.ttf]])
LSM:Register('font', 'MelloUI Forced Square', [[Interface\AddOns\ElvUI_MelloUI\media\fonts\FORCED_SQUARE.ttf]])

local function PrintURL(url)
	return format("|cFF00c0fa[|Hurl:%s|h%s|h]|r", url, url)
end

function MLUI:Initialize()

	-- run install when ElvUI install finishes
	--if E.private.install_complete == E.version and E.db.melloui.installed == nil then
		E:GetModule("PluginInstaller"):Queue(MLUI.installTable)
		print('que melloui')
	--end

	-- run the setup again when a profile gets deleted.
	local profileKey = ElvDB.profileKeys[E.myname..' - '..E.myrealm]
	if ElvDB.profileKeys and profileKey == nil then
		E:GetModule("PluginInstaller"):Queue(MLUI.installTable)
	end

	EP:RegisterPlugin(addon, self.ConfigTable)
	print('MelloUI Loaded')
end

local function InitializeCallback()
	MLUI:Initialize()
end

E:RegisterModule(MLUI:GetName(), InitializeCallback)