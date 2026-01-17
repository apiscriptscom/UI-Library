--[[
	/* ──────────────────────────────────────────────────────────────
	*  Project: Celtoic UI Library
	*  Version: 1.0.0
	*  Platform: Roblox
	*
	*  Author: Celtoic
	*  Created: 2026
	*
	*  Description:
	*  This is a UI Library that provides a set of components viable for building an easy UI.
	*  The library is designed to be only for scripters, with a focus of creating an original UI concept.
	*  The library is made with my own hands and brain, it took 13 hours to complete without any AI usage.
	*
	*  License:
	*  Copyright © 2026 Celtoic
	*  All rights reserved.
	*
	*  Unauthorized copying of this code without permission is strictly prohibited.
	*  I will respect and credit for UniquaDev creating a plugin for this, which is GuiToLua.
	*
	*  This code is provided "as is" without warranty of any kind.
	* ──────────────────────────────────────────────────────────────
	*/
]]

local G2L = {};
cloneref = cloneref or function(A) return A end
RunService = cloneref(game:GetService('RunService'))
HttpService = cloneref(game:GetService('HttpService'))
gethui = gethui or function(A) if RunService:IsStudio() then return game.Players.LocalPlayer:WaitForChild('PlayerGui') else return game:GetService('CoreGui') end; end
get_hidden_gui = get_hidden_gui or function(A) if RunService:IsStudio() then return game.Players.LocalPlayer:WaitForChild('PlayerGui') else return game:GetService('CoreGui') end; end
writefile = writefile or nil
readfile = readfile or nil

-- StarterGui.CeltoicLib
G2L["1"] = cloneref(Instance.new('ScreenGui'));
if get_hidden_gui or gethui then
	local hiddenUI = get_hidden_gui or gethui
	G2L['1'].Name = HttpService:GenerateGUID()
	G2L['1'].Parent = hiddenUI()
end
G2L["1"]["IgnoreGuiInset"] = true;
G2L["1"]["ScreenInsets"] = Enum.ScreenInsets.DeviceSafeInsets;
G2L["1"]["Name"] = [[CeltoicLib]];
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;


-- StarterGui.CeltoicLib.Storage
G2L["2"] = Instance.new("Folder", G2L["1"]);
G2L["2"]["Name"] = [[Storage]];


-- StarterGui.CeltoicLib.Storage.TabTemplate
G2L["3"] = Instance.new("ScrollingFrame", G2L["2"]);
G2L["3"]["Visible"] = false;
G2L["3"]["Active"] = true;
G2L["3"]["BorderSizePixel"] = 0;
G2L["3"]["CanvasSize"] = UDim2.new(0, 0, 1, 0);
G2L["3"]["Name"] = [[TabTemplate]];
G2L["3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
G2L["3"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3"]["ScrollBarThickness"] = 0;
G2L["3"]["BackgroundTransparency"] = 1;


-- StarterGui.CeltoicLib.Storage.TabTemplate.UIListLayout
G2L["4"] = Instance.new("UIListLayout", G2L["3"]);
G2L["4"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["4"]["Padding"] = UDim.new(0, 10);
G2L["4"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.CeltoicLib.Storage.TabTemplate.CurrentTab
G2L["5"] = Instance.new("TextLabel", G2L["3"]);
G2L["5"]["TextWrapped"] = true;
G2L["5"]["BorderSizePixel"] = 0;
G2L["5"]["TextSize"] = 14;
G2L["5"]["TextScaled"] = true;
G2L["5"]["BackgroundColor3"] = Color3.fromRGB(60, 60, 60);
G2L["5"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["5"]["TextColor3"] = Color3.fromRGB(255, 241, 77);
G2L["5"]["Size"] = UDim2.new(0.95, 0, 0, 30);
G2L["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5"]["Text"] = [[Current Tab: Main]];
G2L["5"]["LayoutOrder"] = -1;
G2L["5"]["Name"] = [[CurrentTab]];


-- StarterGui.CeltoicLib.Storage.TabTemplate.CurrentTab.UICorner
G2L["6"] = Instance.new("UICorner", G2L["5"]);



-- StarterGui.CeltoicLib.Storage.TabTemplate.CurrentTab.UIGradient
G2L["7"] = Instance.new("UIGradient", G2L["5"]);
G2L["7"]["Rotation"] = 90;
G2L["7"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(1.000, 1)};


-- StarterGui.CeltoicLib.Storage.ButtonTemplate
G2L["8"] = Instance.new("TextButton", G2L["2"]);
G2L["8"]["TextWrapped"] = true;
G2L["8"]["BorderSizePixel"] = 0;
G2L["8"]["TextSize"] = 14;
G2L["8"]["TextScaled"] = true;
G2L["8"]["TextColor3"] = Color3.fromRGB(242, 242, 242);
G2L["8"]["BackgroundColor3"] = Color3.fromRGB(82, 82, 82);
G2L["8"]["FontFace"] = Font.new([[rbxasset://fonts/families/Balthazar.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["8"]["BackgroundTransparency"] = 0.5;
G2L["8"]["Size"] = UDim2.new(0.8, 0, 0, 45);
G2L["8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8"]["Text"] = [[]];
G2L["8"]["Name"] = [[ButtonTemplate]];
G2L["8"]["Visible"] = false;


-- StarterGui.CeltoicLib.Storage.ButtonTemplate.UICorner
G2L["9"] = Instance.new("UICorner", G2L["8"]);



-- StarterGui.CeltoicLib.Storage.ButtonTemplate.TouchImage
G2L["a"] = Instance.new("ImageLabel", G2L["8"]);
G2L["a"]["BorderSizePixel"] = 0;
G2L["a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["a"]["Image"] = [[rbxassetid://6031229361]];
G2L["a"]["Size"] = UDim2.new(0, 40, 0, 40);
G2L["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a"]["BackgroundTransparency"] = 1;
G2L["a"]["Name"] = [[TouchImage]];
G2L["a"]["Position"] = UDim2.new(1, -30, 0.5, 0);


-- StarterGui.CeltoicLib.Storage.ButtonTemplate.TouchImage.UIGradient
G2L["b"] = Instance.new("UIGradient", G2L["a"]);
G2L["b"]["Rotation"] = 90;
G2L["b"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(1.000, 0.62295)};


-- StarterGui.CeltoicLib.Storage.ButtonTemplate.TitleText
G2L["c"] = Instance.new("TextLabel", G2L["8"]);
G2L["c"]["TextWrapped"] = true;
G2L["c"]["BorderSizePixel"] = 0;
G2L["c"]["TextSize"] = 14;
G2L["c"]["TextScaled"] = true;
G2L["c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["c"]["TextColor3"] = Color3.fromRGB(242, 242, 242);
G2L["c"]["BackgroundTransparency"] = 1;
G2L["c"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["c"]["Size"] = UDim2.new(0.5, 120, 1, 0);
G2L["c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c"]["Text"] = [[Text Here]];
G2L["c"]["Name"] = [[TitleText]];
G2L["c"]["Position"] = UDim2.new(0, 0, 0.5, 0);


-- StarterGui.CeltoicLib.Storage.ButtonTemplate.TitleText.UIGradient
G2L["d"] = Instance.new("UIGradient", G2L["c"]);
G2L["d"]["Rotation"] = 90;
G2L["d"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(1.000, 0.62295)};


-- StarterGui.CeltoicLib.Storage.ButtonTemplate.UIGradient
G2L["e"] = Instance.new("UIGradient", G2L["8"]);
G2L["e"]["Rotation"] = 90;
G2L["e"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(1.000, 0.62295)};


-- StarterGui.CeltoicLib.Storage.TextBoxTemplate
G2L["f"] = Instance.new("TextBox", G2L["2"]);
G2L["f"]["Visible"] = false;
G2L["f"]["Name"] = [[TextBoxTemplate]];
G2L["f"]["BorderSizePixel"] = 0;
G2L["f"]["TextTransparency"] = 1;
G2L["f"]["TextSize"] = 14;
G2L["f"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f"]["BackgroundColor3"] = Color3.fromRGB(82, 82, 82);
G2L["f"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["f"]["Size"] = UDim2.new(0.8, 0, 0, 45);
G2L["f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f"]["Text"] = [[]];
G2L["f"]["BackgroundTransparency"] = 0.5;


-- StarterGui.CeltoicLib.Storage.TextBoxTemplate.UICorner
G2L["10"] = Instance.new("UICorner", G2L["f"]);



-- StarterGui.CeltoicLib.Storage.TextBoxTemplate.UIGradient
G2L["11"] = Instance.new("UIGradient", G2L["f"]);
G2L["11"]["Rotation"] = 90;
G2L["11"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(1.000, 0.62295)};


-- StarterGui.CeltoicLib.Storage.TextBoxTemplate.WriteImage
G2L["12"] = Instance.new("ImageLabel", G2L["f"]);
G2L["12"]["BorderSizePixel"] = 0;
G2L["12"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["12"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["12"]["Image"] = [[http://www.roblox.com/asset/?id=6034934040]];
G2L["12"]["Size"] = UDim2.new(0, 40, 0, 40);
G2L["12"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["12"]["BackgroundTransparency"] = 1;
G2L["12"]["Name"] = [[WriteImage]];
G2L["12"]["Position"] = UDim2.new(1, -30, 0.5, 0);


-- StarterGui.CeltoicLib.Storage.TextBoxTemplate.WriteImage.UIGradient
G2L["13"] = Instance.new("UIGradient", G2L["12"]);
G2L["13"]["Rotation"] = 90;
G2L["13"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(1.000, 0.62295)};


-- StarterGui.CeltoicLib.Storage.TextBoxTemplate.TitleText
G2L["14"] = Instance.new("TextLabel", G2L["f"]);
G2L["14"]["TextWrapped"] = true;
G2L["14"]["BorderSizePixel"] = 0;
G2L["14"]["TextSize"] = 14;
G2L["14"]["TextScaled"] = true;
G2L["14"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["14"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["14"]["TextColor3"] = Color3.fromRGB(242, 242, 242);
G2L["14"]["BackgroundTransparency"] = 1;
G2L["14"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["14"]["Size"] = UDim2.new(0.5, 120, 1, 0);
G2L["14"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["14"]["Text"] = [[Text Here]];
G2L["14"]["Name"] = [[TitleText]];
G2L["14"]["Position"] = UDim2.new(0, 0, 0.5, 0);


-- StarterGui.CeltoicLib.Storage.TextBoxTemplate.TitleText.UIGradient
G2L["15"] = Instance.new("UIGradient", G2L["14"]);
G2L["15"]["Rotation"] = 90;
G2L["15"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(1.000, 0.62295)};


-- StarterGui.CeltoicLib.Storage.TextBoxTemplate.WriteLines
G2L["16"] = Instance.new("TextLabel", G2L["f"]);
G2L["16"]["TextWrapped"] = true;
G2L["16"]["BorderSizePixel"] = 0;
G2L["16"]["TextSize"] = 14;
G2L["16"]["TextScaled"] = true;
G2L["16"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["16"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["16"]["TextColor3"] = Color3.fromRGB(242, 242, 242);
G2L["16"]["BackgroundTransparency"] = 1;
G2L["16"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["16"]["Size"] = UDim2.new(0.5, 120, 1, 0);
G2L["16"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["16"]["Text"] = [[___________]];
G2L["16"]["Name"] = [[WriteLines]];
G2L["16"]["Position"] = UDim2.new(0, 0, 0.5, 0);


-- StarterGui.CeltoicLib.Storage.TextBoxTemplate.WriteLines.UIGradient
G2L["17"] = Instance.new("UIGradient", G2L["16"]);
G2L["17"]["Rotation"] = 90;
G2L["17"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(1.000, 0.62295)};


-- StarterGui.CeltoicLib.Storage.LabelTemplate
G2L["18"] = Instance.new("TextLabel", G2L["2"]);
G2L["18"]["TextWrapped"] = true;
G2L["18"]["BorderSizePixel"] = 0;
G2L["18"]["TextSize"] = 14;
G2L["18"]["TextScaled"] = true;
G2L["18"]["BackgroundColor3"] = Color3.fromRGB(82, 82, 82);
G2L["18"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["18"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["18"]["BackgroundTransparency"] = 0.5;
G2L["18"]["Size"] = UDim2.new(0.6, 0, 0, 30);
G2L["18"]["Visible"] = false;
G2L["18"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["18"]["Text"] = [[Current Tab: Main]];
G2L["18"]["Name"] = [[LabelTemplate]];


-- StarterGui.CeltoicLib.Storage.LabelTemplate.UICorner
G2L["19"] = Instance.new("UICorner", G2L["18"]);



-- StarterGui.CeltoicLib.Storage.LabelTemplate.UIGradient
G2L["1a"] = Instance.new("UIGradient", G2L["18"]);
G2L["1a"]["Rotation"] = 90;
G2L["1a"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(1.000, 0.62295)};


-- StarterGui.CeltoicLib.Storage.SliderTemplate
G2L["1b"] = Instance.new("Frame", G2L["2"]);
G2L["1b"]["Visible"] = false;
G2L["1b"]["BorderSizePixel"] = 0;
G2L["1b"]["BackgroundColor3"] = Color3.fromRGB(82, 82, 82);
G2L["1b"]["Size"] = UDim2.new(0.8, 0, 0, 70);
G2L["1b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1b"]["Name"] = [[SliderTemplate]];
G2L["1b"]["BackgroundTransparency"] = 0.5;


-- StarterGui.CeltoicLib.Storage.SliderTemplate.UICorner
G2L["1c"] = Instance.new("UICorner", G2L["1b"]);



-- StarterGui.CeltoicLib.Storage.SliderTemplate.UIGradient
G2L["1d"] = Instance.new("UIGradient", G2L["1b"]);
G2L["1d"]["Rotation"] = 90;
G2L["1d"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(1.000, 0.62295)};


-- StarterGui.CeltoicLib.Storage.SliderTemplate.SliderImage
G2L["1e"] = Instance.new("ImageLabel", G2L["1b"]);
G2L["1e"]["BorderSizePixel"] = 0;
G2L["1e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1e"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["1e"]["Image"] = [[rbxassetid://10734963191]];
G2L["1e"]["Size"] = UDim2.new(0, 40, 0, 40);
G2L["1e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1e"]["BackgroundTransparency"] = 1;
G2L["1e"]["Name"] = [[SliderImage]];
G2L["1e"]["Position"] = UDim2.new(1, -10, 0.5, 0);


-- StarterGui.CeltoicLib.Storage.SliderTemplate.SliderImage.UIGradient
G2L["1f"] = Instance.new("UIGradient", G2L["1e"]);
G2L["1f"]["Rotation"] = 90;
G2L["1f"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(1.000, 0.62295)};


-- StarterGui.CeltoicLib.Storage.SliderTemplate.TitleText
G2L["20"] = Instance.new("TextLabel", G2L["1b"]);
G2L["20"]["TextWrapped"] = true;
G2L["20"]["BorderSizePixel"] = 0;
G2L["20"]["TextSize"] = 14;
G2L["20"]["TextScaled"] = true;
G2L["20"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["20"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["20"]["TextColor3"] = Color3.fromRGB(242, 242, 242);
G2L["20"]["BackgroundTransparency"] = 1;
G2L["20"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["20"]["Size"] = UDim2.new(0.5, 30, 0.5, 0);
G2L["20"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["20"]["Text"] = [[Text Here]];
G2L["20"]["Name"] = [[TitleText]];
G2L["20"]["Position"] = UDim2.new(0.5, 0, 0.5, -15);


-- StarterGui.CeltoicLib.Storage.SliderTemplate.TitleText.UIGradient
G2L["21"] = Instance.new("UIGradient", G2L["20"]);
G2L["21"]["Rotation"] = 90;
G2L["21"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(1.000, 0.62295)};


-- StarterGui.CeltoicLib.Storage.SliderTemplate.BoundSlider
G2L["22"] = Instance.new("Frame", G2L["1b"]);
G2L["22"]["BorderSizePixel"] = 0;
G2L["22"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["22"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["22"]["Size"] = UDim2.new(0.6, 30, 0, 30);
G2L["22"]["Position"] = UDim2.new(0.5, 0, 0.5, 15);
G2L["22"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["22"]["Name"] = [[BoundSlider]];
G2L["22"]["BackgroundTransparency"] = 0.9;


-- StarterGui.CeltoicLib.Storage.SliderTemplate.BoundSlider.UICorner
G2L["23"] = Instance.new("UICorner", G2L["22"]);



-- StarterGui.CeltoicLib.Storage.SliderTemplate.BoundSlider.UIStroke
G2L["24"] = Instance.new("UIStroke", G2L["22"]);
G2L["24"]["Transparency"] = 0.8;
G2L["24"]["Color"] = Color3.fromRGB(231, 231, 231);


-- StarterGui.CeltoicLib.Storage.SliderTemplate.BoundSlider.Handle
G2L["25"] = Instance.new("Frame", G2L["22"]);
G2L["25"]["BorderSizePixel"] = 0;
G2L["25"]["BackgroundColor3"] = Color3.fromRGB(255, 243, 104);
G2L["25"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["25"]["Size"] = UDim2.new(0, 30, 0, 30);
G2L["25"]["Position"] = UDim2.new(0, 0, 0.5, 0);
G2L["25"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["25"]["Name"] = [[Handle]];


-- StarterGui.CeltoicLib.Storage.SliderTemplate.BoundSlider.Handle.UICorner
G2L["26"] = Instance.new("UICorner", G2L["25"]);



-- StarterGui.CeltoicLib.Storage.SliderTemplate.BoundSlider.Handle.UIDragDetector
G2L["27"] = Instance.new("UIDragDetector", G2L["25"]);
G2L["27"]["ResponseStyle"] = Enum.UIDragDetectorResponseStyle.Scale;
-- [ERROR] cannot convert BoundingUI, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["27"]["DragStyle"] = Enum.UIDragDetectorDragStyle.TranslateLine;
-- [ERROR] cannot convert ReferenceUIInstance, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["27"]["DragRelativity"] = Enum.UIDragDetectorDragRelativity.Relative;


-- StarterGui.CeltoicLib.Storage.SliderTemplate.BoundSlider.Handle.UIGradient
G2L["28"] = Instance.new("UIGradient", G2L["25"]);
G2L["28"]["Rotation"] = 90;
G2L["28"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(1.000, 0.62295)};


-- StarterGui.CeltoicLib.Storage.ToggleTemplate
G2L["29"] = Instance.new("TextButton", G2L["2"]);
G2L["29"]["TextWrapped"] = true;
G2L["29"]["BorderSizePixel"] = 0;
G2L["29"]["TextSize"] = 14;
G2L["29"]["TextScaled"] = true;
G2L["29"]["TextColor3"] = Color3.fromRGB(242, 242, 242);
G2L["29"]["BackgroundColor3"] = Color3.fromRGB(82, 82, 82);
G2L["29"]["FontFace"] = Font.new([[rbxasset://fonts/families/Balthazar.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["29"]["BackgroundTransparency"] = 0.5;
G2L["29"]["Size"] = UDim2.new(0.8, 0, 0, 45);
G2L["29"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["29"]["Text"] = [[]];
G2L["29"]["Name"] = [[ToggleTemplate]];
G2L["29"]["Visible"] = false;


-- StarterGui.CeltoicLib.Storage.ToggleTemplate.UICorner
G2L["2a"] = Instance.new("UICorner", G2L["29"]);



-- StarterGui.CeltoicLib.Storage.ToggleTemplate.ToggleImage
G2L["2b"] = Instance.new("ImageLabel", G2L["29"]);
G2L["2b"]["BorderSizePixel"] = 0;
G2L["2b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2b"]["ImageColor3"] = Color3.fromRGB(255, 0, 0);
G2L["2b"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["2b"]["Image"] = [[http://www.roblox.com/asset/?id=6031068429]];
G2L["2b"]["Size"] = UDim2.new(0, 40, 0, 40);
G2L["2b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2b"]["BackgroundTransparency"] = 1;
G2L["2b"]["Name"] = [[ToggleImage]];
G2L["2b"]["Position"] = UDim2.new(1, -30, 0.5, 0);


-- StarterGui.CeltoicLib.Storage.ToggleTemplate.ToggleImage.UIGradient
G2L["2c"] = Instance.new("UIGradient", G2L["2b"]);
G2L["2c"]["Rotation"] = 90;
G2L["2c"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(1.000, 0.62295)};


-- StarterGui.CeltoicLib.Storage.ToggleTemplate.TitleText
G2L["2d"] = Instance.new("TextLabel", G2L["29"]);
G2L["2d"]["TextWrapped"] = true;
G2L["2d"]["BorderSizePixel"] = 0;
G2L["2d"]["TextSize"] = 14;
G2L["2d"]["TextScaled"] = true;
G2L["2d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2d"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["2d"]["TextColor3"] = Color3.fromRGB(242, 242, 242);
G2L["2d"]["BackgroundTransparency"] = 1;
G2L["2d"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["2d"]["Size"] = UDim2.new(0.5, 120, 1, 0);
G2L["2d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2d"]["Text"] = [[Text Here]];
G2L["2d"]["Name"] = [[TitleText]];
G2L["2d"]["Position"] = UDim2.new(0, 0, 0.5, 0);


-- StarterGui.CeltoicLib.Storage.ToggleTemplate.TitleText.UIGradient
G2L["2e"] = Instance.new("UIGradient", G2L["2d"]);
G2L["2e"]["Rotation"] = 90;
G2L["2e"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(1.000, 0.62295)};


-- StarterGui.CeltoicLib.Storage.ToggleTemplate.UIGradient
G2L["2f"] = Instance.new("UIGradient", G2L["29"]);
G2L["2f"]["Rotation"] = 90;
G2L["2f"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(1.000, 0.62295)};


-- StarterGui.CeltoicLib.Storage.DropdownTemplate
G2L["30"] = Instance.new("TextButton", G2L["2"]);
G2L["30"]["TextWrapped"] = true;
G2L["30"]["BorderSizePixel"] = 0;
G2L["30"]["TextSize"] = 14;
G2L["30"]["TextScaled"] = true;
G2L["30"]["TextColor3"] = Color3.fromRGB(242, 242, 242);
G2L["30"]["BackgroundColor3"] = Color3.fromRGB(82, 82, 82);
G2L["30"]["FontFace"] = Font.new([[rbxasset://fonts/families/Balthazar.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["30"]["BackgroundTransparency"] = 0.5;
G2L["30"]["Size"] = UDim2.new(0.8, 0, 0, 45);
G2L["30"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["30"]["Text"] = [[]];
G2L["30"]["Name"] = [[DropdownTemplate]];
G2L["30"]["Visible"] = false;


-- StarterGui.CeltoicLib.Storage.DropdownTemplate.UICorner
G2L["31"] = Instance.new("UICorner", G2L["30"]);



-- StarterGui.CeltoicLib.Storage.DropdownTemplate.DropImage
G2L["32"] = Instance.new("ImageLabel", G2L["30"]);
G2L["32"]["BorderSizePixel"] = 0;
G2L["32"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["32"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["32"]["Image"] = [[rbxassetid://10723426886]];
G2L["32"]["Size"] = UDim2.new(0, 40, 0, 40);
G2L["32"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["32"]["BackgroundTransparency"] = 1;
G2L["32"]["Name"] = [[DropImage]];
G2L["32"]["Position"] = UDim2.new(1, -30, 0.5, 0);


-- StarterGui.CeltoicLib.Storage.DropdownTemplate.DropImage.UIGradient
G2L["33"] = Instance.new("UIGradient", G2L["32"]);
G2L["33"]["Rotation"] = 90;
G2L["33"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(1.000, 0.62295)};


-- StarterGui.CeltoicLib.Storage.DropdownTemplate.TitleText
G2L["34"] = Instance.new("TextLabel", G2L["30"]);
G2L["34"]["TextWrapped"] = true;
G2L["34"]["BorderSizePixel"] = 0;
G2L["34"]["TextSize"] = 14;
G2L["34"]["TextScaled"] = true;
G2L["34"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["34"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["34"]["TextColor3"] = Color3.fromRGB(242, 242, 242);
G2L["34"]["BackgroundTransparency"] = 1;
G2L["34"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["34"]["Size"] = UDim2.new(0.5, 120, 1, 0);
G2L["34"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["34"]["Text"] = [[Text Here]];
G2L["34"]["Name"] = [[TitleText]];
G2L["34"]["Position"] = UDim2.new(0, 0, 0.5, 0);


-- StarterGui.CeltoicLib.Storage.DropdownTemplate.TitleText.UIGradient
G2L["35"] = Instance.new("UIGradient", G2L["34"]);
G2L["35"]["Rotation"] = 90;
G2L["35"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(1.000, 0.62295)};


-- StarterGui.CeltoicLib.Storage.DropdownTemplate.UIGradient
G2L["36"] = Instance.new("UIGradient", G2L["30"]);
G2L["36"]["Rotation"] = 90;
G2L["36"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(1.000, 0.62295)};


-- StarterGui.CeltoicLib.Storage.DropdownTemplate.Dropdowns
G2L["37"] = Instance.new("ScrollingFrame", G2L["30"]);
G2L["37"]["Visible"] = false;
G2L["37"]["Active"] = true;
G2L["37"]["BorderSizePixel"] = 0;
G2L["37"]["CanvasSize"] = UDim2.new(0, 0, 1, 0);
G2L["37"]["Name"] = [[Dropdowns]];
G2L["37"]["BackgroundColor3"] = Color3.fromRGB(82, 82, 82);
G2L["37"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
G2L["37"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["37"]["Position"] = UDim2.new(0, 0, 0.978, 0);
G2L["37"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["37"]["ScrollBarThickness"] = 0;
G2L["37"]["BackgroundTransparency"] = 0.4;


-- StarterGui.CeltoicLib.Storage.DropdownTemplate.Dropdowns.UICorner
G2L["38"] = Instance.new("UICorner", G2L["37"]);



-- StarterGui.CeltoicLib.Storage.DropdownTemplate.Dropdowns.UIGradient
G2L["39"] = Instance.new("UIGradient", G2L["37"]);
G2L["39"]["Rotation"] = 90;
G2L["39"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(1.000, 0.62295)};


-- StarterGui.CeltoicLib.Storage.DropdownTemplate.Dropdowns.UIListLayout
G2L["3a"] = Instance.new("UIListLayout", G2L["37"]);
G2L["3a"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["3a"]["Padding"] = UDim.new(0, 20);
G2L["3a"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.CeltoicLib.Storage.DropdownTemplate.Dropdowns.DummyFrame
G2L["3b"] = Instance.new("Frame", G2L["37"]);
G2L["3b"]["BorderSizePixel"] = 0;
G2L["3b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3b"]["Size"] = UDim2.new(0, 1, 0, 1);
G2L["3b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3b"]["Name"] = [[DummyFrame]];
G2L["3b"]["LayoutOrder"] = -2;
G2L["3b"]["BackgroundTransparency"] = 1;


-- StarterGui.CeltoicLib.Storage.NotifyHolder
G2L["3c"] = Instance.new("Frame", G2L["2"]);
G2L["3c"]["Visible"] = false;
G2L["3c"]["BorderSizePixel"] = 0;
G2L["3c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3c"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["3c"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["3c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3c"]["Name"] = [[NotifyHolder]];
G2L["3c"]["BackgroundTransparency"] = 1;


-- StarterGui.CeltoicLib.Storage.NotifyHolder.Frame
G2L["3d"] = Instance.new("Frame", G2L["3c"]);
G2L["3d"]["BorderSizePixel"] = 0;
G2L["3d"]["BackgroundColor3"] = Color3.fromRGB(59, 59, 59);
G2L["3d"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["3d"]["Size"] = UDim2.new(0, 173, 0, 100);
G2L["3d"]["Position"] = UDim2.new(0.765, 0, 0.5, 0);
G2L["3d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3d"]["LayoutOrder"] = 1;


-- StarterGui.CeltoicLib.Storage.NotifyHolder.Frame.Title
G2L["3e"] = Instance.new("TextLabel", G2L["3d"]);
G2L["3e"]["TextWrapped"] = true;
G2L["3e"]["BorderSizePixel"] = 0;
G2L["3e"]["TextSize"] = 14;
G2L["3e"]["TextScaled"] = true;
G2L["3e"]["BackgroundColor3"] = Color3.fromRGB(62, 62, 62);
G2L["3e"]["FontFace"] = Font.new([[rbxasset://fonts/families/Balthazar.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["3e"]["TextColor3"] = Color3.fromRGB(255, 235, 0);
G2L["3e"]["Size"] = UDim2.new(0.7, 0, -0.172, 50);
G2L["3e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3e"]["Text"] = [[Celtoic Lib Notifier]];
G2L["3e"]["Name"] = [[Title]];


-- StarterGui.CeltoicLib.Storage.NotifyHolder.Frame.Title.UICorner
G2L["3f"] = Instance.new("UICorner", G2L["3e"]);



-- StarterGui.CeltoicLib.Storage.NotifyHolder.Frame.Title.UIGradient
G2L["40"] = Instance.new("UIGradient", G2L["3e"]);
G2L["40"]["Rotation"] = 90;
G2L["40"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(0.343, 0.37705),NumberSequenceKeypoint.new(0.674, 0.39891),NumberSequenceKeypoint.new(1.000, 0.74863)};


-- StarterGui.CeltoicLib.Storage.NotifyHolder.Frame.UIGradient
G2L["41"] = Instance.new("UIGradient", G2L["3d"]);
G2L["41"]["Rotation"] = 90;
G2L["41"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(0.343, 0.37705),NumberSequenceKeypoint.new(0.674, 0.39891),NumberSequenceKeypoint.new(1.000, 0.74863)};


-- StarterGui.CeltoicLib.Storage.NotifyHolder.Frame.UICorner
G2L["42"] = Instance.new("UICorner", G2L["3d"]);



-- StarterGui.CeltoicLib.Storage.NotifyHolder.Frame.Description
G2L["43"] = Instance.new("TextLabel", G2L["3d"]);
G2L["43"]["TextWrapped"] = true;
G2L["43"]["BorderSizePixel"] = 0;
G2L["43"]["TextSize"] = 14;
G2L["43"]["TextScaled"] = true;
G2L["43"]["BackgroundColor3"] = Color3.fromRGB(62, 62, 62);
G2L["43"]["FontFace"] = Font.new([[rbxasset://fonts/families/Balthazar.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["43"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["43"]["Size"] = UDim2.new(1, 0, 0.17, 50);
G2L["43"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["43"]["Text"] = [[You have been flagged]];
G2L["43"]["Name"] = [[Description]];
G2L["43"]["Position"] = UDim2.new(0, 0, 0.33, 0);


-- StarterGui.CeltoicLib.Storage.NotifyHolder.Frame.Description.UICorner
G2L["44"] = Instance.new("UICorner", G2L["43"]);



-- StarterGui.CeltoicLib.Storage.NotifyHolder.Frame.Description.UIGradient
G2L["45"] = Instance.new("UIGradient", G2L["43"]);
G2L["45"]["Rotation"] = 90;
G2L["45"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(0.343, 0.37705),NumberSequenceKeypoint.new(0.673, 0),NumberSequenceKeypoint.new(1.000, 0.74863)};
G2L["45"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 242, 232))};


-- StarterGui.CeltoicLib.Storage.NotifyHolder.Frame.UIStroke
G2L["46"] = Instance.new("UIStroke", G2L["3d"]);
G2L["46"]["Transparency"] = 0.5;
G2L["46"]["Thickness"] = 5;
G2L["46"]["Color"] = Color3.fromRGB(107, 107, 107);


-- StarterGui.CeltoicLib.Sounds
G2L["47"] = Instance.new("Folder", G2L["1"]);
G2L["47"]["Name"] = [[Sounds]];


-- StarterGui.CeltoicLib.Sounds.Slider
G2L["48"] = Instance.new("Sound", G2L["47"]);
G2L["48"]["Volume"] = 1;
G2L["48"]["RollOffMode"] = Enum.RollOffMode.InverseTapered;
G2L["48"]["Name"] = [[Slider]];
-- [ERROR] cannot convert AudioContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["48"]["SoundId"] = [[rbxassetid://9125419091]];


-- StarterGui.CeltoicLib.Sounds.Toggle
G2L["49"] = Instance.new("Sound", G2L["47"]);
G2L["49"]["Volume"] = 1;
G2L["49"]["Name"] = [[Toggle]];
-- [ERROR] cannot convert AudioContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["49"]["SoundId"] = [[rbxassetid://9120091934]];


-- StarterGui.CeltoicLib.Sounds.Enter
G2L["4a"] = Instance.new("Sound", G2L["47"]);
G2L["4a"]["Volume"] = 1;
G2L["4a"]["Name"] = [[Enter]];
-- [ERROR] cannot convert AudioContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["4a"]["SoundId"] = [[rbxassetid://9113873548]];


-- StarterGui.CeltoicLib.Sounds.Click
G2L["4b"] = Instance.new("Sound", G2L["47"]);
G2L["4b"]["Volume"] = 1;
G2L["4b"]["Name"] = [[Click]];
-- [ERROR] cannot convert AudioContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["4b"]["SoundId"] = [[rbxassetid://9117982418]];


-- StarterGui.CeltoicLib.Sounds.Notify
G2L["4c"] = Instance.new("Sound", G2L["47"]);
G2L["4c"]["Name"] = [[Notify]];
-- [ERROR] cannot convert AudioContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["4c"]["SoundId"] = [[rbxassetid://225320558]];


-- StarterGui.CeltoicLib.Logo
G2L["4d"] = Instance.new("ImageLabel", G2L["1"]);
G2L["4d"]["BorderSizePixel"] = 0;
G2L["4d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4d"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["4d"]["Image"] = [[rbxassetid://7669594209]];
G2L["4d"]["Size"] = UDim2.new(0, 100, 0, 100);
G2L["4d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4d"]["Name"] = [[Logo]];
G2L["4d"]["Position"] = UDim2.new(0, -100, 0.5, 0);


-- StarterGui.CeltoicLib.Logo.meow
G2L["4e"] = Instance.new("Sound", G2L["4d"]);
G2L["4e"]["Name"] = [[meow]];
-- [ERROR] cannot convert AudioContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["4e"]["SoundId"] = [[rbxassetid://7527135213]];


-- StarterGui.CeltoicLib.Logo.UICorner
G2L["4f"] = Instance.new("UICorner", G2L["4d"]);
G2L["4f"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.CeltoicLib.Logo.TextLabel
G2L["50"] = Instance.new("TextLabel", G2L["4d"]);
G2L["50"]["TextWrapped"] = true;
G2L["50"]["BorderSizePixel"] = 0;
G2L["50"]["TextSize"] = 14;
G2L["50"]["TextScaled"] = true;
G2L["50"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["50"]["FontFace"] = Font.new([[rbxasset://fonts/families/Balthazar.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["50"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["50"]["BackgroundTransparency"] = 1.01;
G2L["50"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["50"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["50"]["Text"] = [[UI Library by Celtoic]];


-- StarterGui.CeltoicLib.Logo.TextLabel.UIStroke
G2L["51"] = Instance.new("UIStroke", G2L["50"]);



-- StarterGui.CeltoicLib.Logo.UIStroke
G2L["52"] = Instance.new("UIStroke", G2L["4d"]);
G2L["52"]["Thickness"] = 5;


-- StarterGui.CeltoicLib.CeltoicHolder
G2L["53"] = Instance.new("ImageLabel", G2L["1"]);
G2L["53"]["BorderSizePixel"] = 0;
G2L["53"]["BackgroundColor3"] = Color3.fromRGB(43, 43, 43);
G2L["53"]["ImageColor3"] = Color3.fromRGB(43, 43, 43);
G2L["53"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["53"]["Image"] = [[rbxassetid://9590477813]];
G2L["53"]["Size"] = UDim2.new(0, 500, 0, 400);
G2L["53"]["Visible"] = false;
G2L["53"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["53"]["Name"] = [[CeltoicHolder]];
G2L["53"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.CeltoicLib.CeltoicHolder.LibHandler
G2L["54"] = Instance.new("LocalScript", G2L["53"]);
G2L["54"]["Name"] = [[LibHandler]];


-- StarterGui.CeltoicLib.CeltoicHolder.UIGradient
G2L["55"] = Instance.new("UIGradient", G2L["53"]);
G2L["55"]["Rotation"] = 90;
G2L["55"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(0.343, 0.37705),NumberSequenceKeypoint.new(0.674, 0.39891),NumberSequenceKeypoint.new(1.000, 0.74863)};


-- StarterGui.CeltoicLib.CeltoicHolder.TitleBar
G2L["56"] = Instance.new("Frame", G2L["53"]);
G2L["56"]["ZIndex"] = -1;
G2L["56"]["BorderSizePixel"] = 0;
G2L["56"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["56"]["Size"] = UDim2.new(1, 0, -0.04333, 59);
G2L["56"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["56"]["Name"] = [[TitleBar]];
G2L["56"]["BackgroundTransparency"] = 0.95;


-- StarterGui.CeltoicLib.CeltoicHolder.TitleBar.InfoBars
G2L["57"] = Instance.new("Frame", G2L["56"]);
G2L["57"]["BorderSizePixel"] = 0;
G2L["57"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["57"]["Size"] = UDim2.new(1, -100, 1, 0);
G2L["57"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["57"]["Name"] = [[InfoBars]];
G2L["57"]["BackgroundTransparency"] = 1;


-- StarterGui.CeltoicLib.CeltoicHolder.TitleBar.InfoBars.Image
G2L["58"] = Instance.new("ImageButton", G2L["57"]);
G2L["58"]["Active"] = false;
G2L["58"]["Interactable"] = false;
G2L["58"]["BorderSizePixel"] = 0;
G2L["58"]["BackgroundTransparency"] = 1;
G2L["58"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["58"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["58"]["Image"] = [[rbxassetid://10734953241]];
G2L["58"]["Size"] = UDim2.new(0, 35, 0, 35);
G2L["58"]["LayoutOrder"] = -1;
G2L["58"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["58"]["Name"] = [[Image]];
G2L["58"]["Position"] = UDim2.new(0, 10, 0.5, 0);


-- StarterGui.CeltoicLib.CeltoicHolder.TitleBar.InfoBars.Image.UIGradient
G2L["59"] = Instance.new("UIGradient", G2L["58"]);
G2L["59"]["Rotation"] = 90;
G2L["59"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(0.355, 0.12022),NumberSequenceKeypoint.new(0.674, 0.39891),NumberSequenceKeypoint.new(1.000, 0.53552)};


-- StarterGui.CeltoicLib.CeltoicHolder.TitleBar.InfoBars.TitleText
G2L["5a"] = Instance.new("TextLabel", G2L["57"]);
G2L["5a"]["TextWrapped"] = true;
G2L["5a"]["BorderSizePixel"] = 0;
G2L["5a"]["TextSize"] = 14;
G2L["5a"]["TextScaled"] = true;
G2L["5a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5a"]["FontFace"] = Font.new([[rbxasset://fonts/families/AccanthisADFStd.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["5a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5a"]["BackgroundTransparency"] = 1;
G2L["5a"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["5a"]["Size"] = UDim2.new(0, 150, 0, 30);
G2L["5a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5a"]["Text"] = [[Admin Panel]];
G2L["5a"]["Name"] = [[TitleText]];
G2L["5a"]["Position"] = UDim2.new(0.1, 0, 0.5, 0);


-- StarterGui.CeltoicLib.CeltoicHolder.TitleBar.InfoBars.TitleText.UIGradient
G2L["5b"] = Instance.new("UIGradient", G2L["5a"]);
G2L["5b"]["Rotation"] = 90;
G2L["5b"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(0.355, 0.12022),NumberSequenceKeypoint.new(0.674, 0.39891),NumberSequenceKeypoint.new(1.000, 0.53552)};


-- StarterGui.CeltoicLib.CeltoicHolder.TitleBar.InfoBars.UIListLayout
G2L["5c"] = Instance.new("UIListLayout", G2L["57"]);
G2L["5c"]["Padding"] = UDim.new(0, 10);
G2L["5c"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["5c"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["5c"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.CeltoicLib.CeltoicHolder.TitleBar.InfoBars.DummyFrame
G2L["5d"] = Instance.new("Frame", G2L["57"]);
G2L["5d"]["BorderSizePixel"] = 0;
G2L["5d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5d"]["Size"] = UDim2.new(0, 1, 0, 1);
G2L["5d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5d"]["Name"] = [[DummyFrame]];
G2L["5d"]["LayoutOrder"] = -2;
G2L["5d"]["BackgroundTransparency"] = 1;


-- StarterGui.CeltoicLib.CeltoicHolder.TitleBar.ImportantBars
G2L["5e"] = Instance.new("Frame", G2L["56"]);
G2L["5e"]["BorderSizePixel"] = 0;
G2L["5e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5e"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["5e"]["Size"] = UDim2.new(0, 100, 1, 0);
G2L["5e"]["Position"] = UDim2.new(1, 0, 0, 0);
G2L["5e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5e"]["Name"] = [[ImportantBars]];
G2L["5e"]["BackgroundTransparency"] = 1;


-- StarterGui.CeltoicLib.CeltoicHolder.TitleBar.ImportantBars.UIListLayout
G2L["5f"] = Instance.new("UIListLayout", G2L["5e"]);
G2L["5f"]["Padding"] = UDim.new(0, 10);
G2L["5f"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["5f"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["5f"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.CeltoicLib.CeltoicHolder.TitleBar.ImportantBars.Filter
G2L["60"] = Instance.new("ImageButton", G2L["5e"]);
G2L["60"]["BorderSizePixel"] = 0;
G2L["60"]["BackgroundTransparency"] = 1;
G2L["60"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["60"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["60"]["Image"] = [[rbxassetid://10723375128]];
G2L["60"]["Size"] = UDim2.new(0, 24, 0, 24);
G2L["60"]["LayoutOrder"] = -1;
G2L["60"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["60"]["Name"] = [[Filter]];
G2L["60"]["Position"] = UDim2.new(0, 10, 0.5, 0);


-- StarterGui.CeltoicLib.CeltoicHolder.TitleBar.ImportantBars.Filter.UIGradient
G2L["61"] = Instance.new("UIGradient", G2L["60"]);
G2L["61"]["Rotation"] = 90;
G2L["61"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(0.355, 0.12022),NumberSequenceKeypoint.new(0.674, 0.39891),NumberSequenceKeypoint.new(1.000, 0.53552)};


-- StarterGui.CeltoicLib.CeltoicHolder.TitleBar.ImportantBars.Filter.FilterBox
G2L["62"] = Instance.new("TextBox", G2L["60"]);
G2L["62"]["Visible"] = false;
G2L["62"]["Name"] = [[FilterBox]];
G2L["62"]["PlaceholderColor3"] = Color3.fromRGB(162, 0, 0);
G2L["62"]["BorderSizePixel"] = 0;
G2L["62"]["TextWrapped"] = true;
G2L["62"]["TextSize"] = 14;
G2L["62"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["62"]["TextScaled"] = true;
G2L["62"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["62"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["62"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["62"]["PlaceholderText"] = [[Filter any elements name here]];
G2L["62"]["Size"] = UDim2.new(1, 150, 1, 20);
G2L["62"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["62"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["62"]["Text"] = [[]];


-- StarterGui.CeltoicLib.CeltoicHolder.TitleBar.ImportantBars.Filter.FilterBox.UIGradient
G2L["63"] = Instance.new("UIGradient", G2L["62"]);
G2L["63"]["Rotation"] = 90;
G2L["63"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(0.355, 0.12022),NumberSequenceKeypoint.new(0.674, 0.39891),NumberSequenceKeypoint.new(1.000, 0.53552)};


-- StarterGui.CeltoicLib.CeltoicHolder.TitleBar.ImportantBars.Filter.FilterBox.UICorner
G2L["64"] = Instance.new("UICorner", G2L["62"]);



-- StarterGui.CeltoicLib.CeltoicHolder.TitleBar.ImportantBars.Filter.FilterBox.UIStroke
G2L["65"] = Instance.new("UIStroke", G2L["62"]);
G2L["65"]["Thickness"] = 1.5;
G2L["65"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["65"]["BorderStrokePosition"] = Enum.BorderStrokePosition.Center;


-- StarterGui.CeltoicLib.CeltoicHolder.TitleBar.ImportantBars.Filter.FilterBox.UIStroke
G2L["66"] = Instance.new("UIStroke", G2L["62"]);
G2L["66"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["66"]["BorderStrokePosition"] = Enum.BorderStrokePosition.Center;


-- StarterGui.CeltoicLib.CeltoicHolder.TitleBar.ImportantBars.Minimize
G2L["67"] = Instance.new("ImageButton", G2L["5e"]);
G2L["67"]["BorderSizePixel"] = 0;
G2L["67"]["BackgroundTransparency"] = 1;
G2L["67"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["67"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["67"]["Image"] = [[rbxassetid://10734895530]];
G2L["67"]["Size"] = UDim2.new(0, 24, 0, 24);
G2L["67"]["LayoutOrder"] = -1;
G2L["67"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["67"]["Name"] = [[Minimize]];
G2L["67"]["Position"] = UDim2.new(0, 10, 0.5, 0);


-- StarterGui.CeltoicLib.CeltoicHolder.TitleBar.ImportantBars.Minimize.UIGradient
G2L["68"] = Instance.new("UIGradient", G2L["67"]);
G2L["68"]["Rotation"] = 90;
G2L["68"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(0.355, 0.12022),NumberSequenceKeypoint.new(0.674, 0.39891),NumberSequenceKeypoint.new(1.000, 0.53552)};


-- StarterGui.CeltoicLib.CeltoicHolder.TitleBar.ImportantBars.Close
G2L["69"] = Instance.new("ImageButton", G2L["5e"]);
G2L["69"]["BorderSizePixel"] = 0;
G2L["69"]["BackgroundTransparency"] = 1;
G2L["69"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["69"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["69"]["Image"] = [[rbxassetid://10747384394]];
G2L["69"]["Size"] = UDim2.new(0, 24, 0, 24);
G2L["69"]["LayoutOrder"] = -1;
G2L["69"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["69"]["Name"] = [[Close]];
G2L["69"]["Position"] = UDim2.new(0, 10, 0.5, 0);


-- StarterGui.CeltoicLib.CeltoicHolder.TitleBar.ImportantBars.Close.UIGradient
G2L["6a"] = Instance.new("UIGradient", G2L["69"]);
G2L["6a"]["Rotation"] = 90;
G2L["6a"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(0.355, 0.12022),NumberSequenceKeypoint.new(0.674, 0.39891),NumberSequenceKeypoint.new(1.000, 0.53552)};


-- StarterGui.CeltoicLib.CeltoicHolder.TitleBar.UIGradient
G2L["6b"] = Instance.new("UIGradient", G2L["56"]);
G2L["6b"]["Rotation"] = 90;
G2L["6b"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(0.343, 0.37705),NumberSequenceKeypoint.new(0.674, 0.39891),NumberSequenceKeypoint.new(1.000, 0.74863)};


-- StarterGui.CeltoicLib.CeltoicHolder.UICorner
G2L["6c"] = Instance.new("UICorner", G2L["53"]);



-- StarterGui.CeltoicLib.CeltoicHolder.UIDragDetector
G2L["6d"] = Instance.new("UIDragDetector", G2L["53"]);



-- StarterGui.CeltoicLib.CeltoicHolder.Pages
G2L["6e"] = Instance.new("Frame", G2L["53"]);
G2L["6e"]["BorderSizePixel"] = 0;
G2L["6e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6e"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["6e"]["Size"] = UDim2.new(0.985, 0, 1, -50);
G2L["6e"]["Position"] = UDim2.new(0, 5, 0.5, 20);
G2L["6e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6e"]["Name"] = [[Pages]];
G2L["6e"]["BackgroundTransparency"] = 0.95;


-- StarterGui.CeltoicLib.CeltoicHolder.Pages.UICorner
G2L["6f"] = Instance.new("UICorner", G2L["6e"]);



-- StarterGui.CeltoicLib.CeltoicHolder.Pages.UIPageLayout
G2L["70"] = Instance.new("UIPageLayout", G2L["6e"]);
G2L["70"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.CeltoicLib.CeltoicHolder.Next
G2L["71"] = Instance.new("ImageButton", G2L["53"]);
G2L["71"]["BorderSizePixel"] = 0;
G2L["71"]["BackgroundTransparency"] = 1;
G2L["71"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["71"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["71"]["Image"] = [[http://www.roblox.com/asset/?id=6034818365]];
G2L["71"]["Size"] = UDim2.new(0, 50, 0, 50);
G2L["71"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["71"]["Name"] = [[Next]];
G2L["71"]["Position"] = UDim2.new(1, 50, 0.5, 0);


-- StarterGui.CeltoicLib.CeltoicHolder.Next.UIGradient
G2L["72"] = Instance.new("UIGradient", G2L["71"]);
G2L["72"]["Rotation"] = 90;
G2L["72"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(0.355, 0.12022),NumberSequenceKeypoint.new(0.674, 0.39891),NumberSequenceKeypoint.new(1.000, 0.53552)};


-- StarterGui.CeltoicLib.CeltoicHolder.Previous
G2L["73"] = Instance.new("ImageButton", G2L["53"]);
G2L["73"]["BorderSizePixel"] = 0;
G2L["73"]["BackgroundTransparency"] = 1;
G2L["73"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["73"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["73"]["Image"] = [[http://www.roblox.com/asset/?id=6034818375]];
G2L["73"]["Size"] = UDim2.new(0, 50, 0, 50);
G2L["73"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["73"]["Name"] = [[Previous]];
G2L["73"]["Position"] = UDim2.new(0, -50, 0.5, 0);


-- StarterGui.CeltoicLib.CeltoicHolder.Previous.UIGradient
G2L["74"] = Instance.new("UIGradient", G2L["73"]);
G2L["74"]["Rotation"] = 90;
G2L["74"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(0.355, 0.12022),NumberSequenceKeypoint.new(0.674, 0.39891),NumberSequenceKeypoint.new(1.000, 0.53552)};


-- StarterGui.CeltoicLib.CeltoicHolder.UIScale
G2L["75"] = Instance.new("UIScale", G2L["53"]);



-- StarterGui.CeltoicLib.MinimizeLogo
G2L["76"] = Instance.new("TextLabel", G2L["1"]);
G2L["76"]["TextWrapped"] = true;
G2L["76"]["BorderSizePixel"] = 0;
G2L["76"]["TextSize"] = 14;
G2L["76"]["TextScaled"] = true;
G2L["76"]["BackgroundColor3"] = Color3.fromRGB(75, 75, 75);
G2L["76"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["76"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["76"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["76"]["Size"] = UDim2.new(0, 56, 0, 95);
G2L["76"]["Visible"] = false;
G2L["76"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["76"]["Text"] = [[Drag]];
G2L["76"]["Name"] = [[MinimizeLogo]];
G2L["76"]["Position"] = UDim2.new(0.38606, 0, 0.51609, 0);


-- StarterGui.CeltoicLib.MinimizeLogo.ImageButton
G2L["77"] = Instance.new("ImageButton", G2L["76"]);
G2L["77"]["BorderSizePixel"] = 0;
G2L["77"]["BackgroundColor3"] = Color3.fromRGB(75, 75, 75);
G2L["77"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["77"]["Image"] = [[rbxassetid://6031225809]];
G2L["77"]["Size"] = UDim2.new(0, 79, 0, 82);
G2L["77"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["77"]["Position"] = UDim2.new(-1.4, 0, 0.5, 0);


-- StarterGui.CeltoicLib.MinimizeLogo.ImageButton.UICorner
G2L["78"] = Instance.new("UICorner", G2L["77"]);



-- StarterGui.CeltoicLib.MinimizeLogo.ImageButton.UIGradient
G2L["79"] = Instance.new("UIGradient", G2L["77"]);
G2L["79"]["Rotation"] = 90;
G2L["79"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(0.343, 0.37705),NumberSequenceKeypoint.new(0.674, 0.39891),NumberSequenceKeypoint.new(1.000, 0.74863)};


-- StarterGui.CeltoicLib.MinimizeLogo.UICorner
G2L["7a"] = Instance.new("UICorner", G2L["76"]);



-- StarterGui.CeltoicLib.MinimizeLogo.UIDragDetector
G2L["7b"] = Instance.new("UIDragDetector", G2L["76"]);



-- StarterGui.CeltoicLib.MinimizeLogo.UIGradient
G2L["7c"] = Instance.new("UIGradient", G2L["76"]);
G2L["7c"]["Rotation"] = 90;
G2L["7c"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(0.343, 0.37705),NumberSequenceKeypoint.new(0.674, 0.39891),NumberSequenceKeypoint.new(1.000, 0.74863)};


-- StarterGui.CeltoicLib.MinimizeLogo.UIScale
G2L["7d"] = Instance.new("UIScale", G2L["76"]);
G2L["7d"]["Scale"] = 1.25;


-- StarterGui.CeltoicLib.NotifyCore
G2L["7e"] = Instance.new("Frame", G2L["1"]);
G2L["7e"]["Interactable"] = false;
G2L["7e"]["BorderSizePixel"] = 0;
G2L["7e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7e"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["7e"]["Size"] = UDim2.new(0, 250, 1, 0);
G2L["7e"]["Position"] = UDim2.new(1, 0, 0, 0);
G2L["7e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7e"]["Name"] = [[NotifyCore]];
G2L["7e"]["BackgroundTransparency"] = 1;


-- StarterGui.CeltoicLib.NotifyCore.UIListLayout
G2L["7f"] = Instance.new("UIListLayout", G2L["7e"]);
G2L["7f"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["7f"]["Padding"] = UDim.new(0, 15);
G2L["7f"]["VerticalAlignment"] = Enum.VerticalAlignment.Bottom;
G2L["7f"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.CeltoicLib.NotifyCore.DummyFrame
G2L["80"] = Instance.new("Frame", G2L["7e"]);
G2L["80"]["BorderSizePixel"] = 0;
G2L["80"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["80"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["80"]["Name"] = [[DummyFrame]];
G2L["80"]["LayoutOrder"] = 999;


local script = G2L["54"];
writefile = writefile or nil
readfile = readfile or nil
getconnections = getconnections or nil
firesignal = firesignal or nil
local Holder = script.Parent
-- Internal Variables
local TweenService = game:GetService('TweenService')
local UserInputService = game:GetService('UserInputService')
local HttpService = game:GetService('HttpService')
local NextButton = Holder:WaitForChild("Next")
local PreviousButton = Holder:WaitForChild("Previous")
local Pages = Holder:WaitForChild("Pages")
local PageLayout = Pages:WaitForChild("UIPageLayout")
local TitleBar = Holder:WaitForChild('TitleBar')
local InfoBars = TitleBar:WaitForChild('InfoBars')
local NotifyCore = Holder.Parent.NotifyCore
local ImportantBars = TitleBar:WaitForChild('ImportantBars')
local Storage = Holder.Parent.Storage
local Sounds = Holder.Parent.Sounds
local Logo = Holder.Parent.Logo
local CurrentPage = nil
-- Lib Used Variables
local LibTitle = InfoBars:WaitForChild('TitleText')
local LibImage = InfoBars:WaitForChild('Image')
local MinimizeLogo = Holder.Parent.MinimizeLogo

local Connections = {}
local DropdownConnections = {}
local RecycleTable = {}

function GetPages(IndexingMode, Current, Increment)
	IndexingMode = IndexingMode or false
	local PageInstances = {}
	local Index = 0
	for i,v in ipairs(Pages:GetChildren()) do
		if v:IsA('ScrollingFrame') then
			Index += 1
			PageInstances[v] = Index
		end
	end
	if IndexingMode and Current then
		local Incremented = PageInstances[Current] + Increment
		local PageResult = nil
		for i,v in pairs(PageInstances) do
			if v == Incremented then
				PageResult = i
				break
			end
		end
		return PageResult
	end
	return PageInstances
end

function GetPageByName(Naem)
	local PageInstance = nil
	for i, v in pairs(GetPages()) do
		if i and i.Name == Naem then
			PageInstance = i
			break
		end
	end
	return PageInstance
end

function SetInteractable(Button, Interactable)
	Button.Interactable = Interactable
	Button.Active = Interactable
	Button.ImageTransparency = Interactable and 0 or 0.5
end

table.insert(Connections, NextButton.Activated:Connect(function()
	Sounds.Click:Play()
	if not GetPages(true, CurrentPage, 2) then
		SetInteractable(Holder.Next, false)
	end
	PageLayout:Next()
end))

table.insert(Connections, PreviousButton.Activated:Connect(function()
	Sounds.Click:Play()
	if not GetPages(true, CurrentPage, -2) then
		SetInteractable(Holder.Previous, false)
	end
	PageLayout:Previous()
end))

table.insert(Connections, ImportantBars.Close.Activated:Connect(function()
	Holder.Parent:Destroy()
	for i, v in pairs(Connections) do
		v:Disconnect()
	end
	for i, v in pairs(DropdownConnections) do
		v:Disconnect()
	end
end))

table.insert(Connections, ImportantBars.Minimize.Activated:Connect(function()
	Sounds.Click:Play()
	Holder.Parent.MinimizeLogo.Visible = true
	Holder.Visible = false
end))

table.insert(Connections, ImportantBars.Filter.Activated:Connect(function()
	Sounds.Click:Play()
	ImportantBars.Filter.FilterBox.Visible = true
	ImportantBars.Filter.FilterBox:CaptureFocus()
	GetAllElementsWithName('')
end))

function GetAllElementsWithName(Str)
	for i, v in pairs(Pages:GetDescendants()) do
		if v:GetAttribute('Element') and Str ~= "" then
			if string.find(v.Name:lower(), Str:lower()) then
				v.Visible = true
			else
				v.Visible = false
			end
		end
		if v:GetAttribute('Element') and Str == "" then
			v.Visible = true
		end
	end
end

table.insert(Connections, ImportantBars.Filter.FilterBox.FocusLost:Connect(function(Enter)
	if not Enter then
		Sounds.Enter:Play()
		ImportantBars.Filter.FilterBox.Visible = false
		return
	end
	Sounds.Enter:Play()
	ImportantBars.Filter.FilterBox.Visible = false
	GetAllElementsWithName(ImportantBars.Filter.FilterBox.Text)
end))

table.insert(Connections, MinimizeLogo.ImageButton.Activated:Connect(function()
	Sounds.Click:Play()
	Holder.Parent.MinimizeLogo.Visible = false
	Holder.Visible = true
end))

table.insert(Connections, PageLayout:GetPropertyChangedSignal('CurrentPage'):Connect(function()
	if CurrentPage then
		CurrentPage.Interactable = false
		CurrentPage.Active = false
		CurrentPage.Size = UDim2.new(0,0,0,0)
		local Tween = TweenService:Create(CurrentPage,TweenInfo.new(0.2,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut),{Size = UDim2.new(0,0,0,0)})
		Tween:Play()
		task.wait()
		CurrentPage = PageLayout.CurrentPage
		if GetPages(true, CurrentPage, 1) then
			SetInteractable(Holder.Next, true)
			Holder.Next.ImageTransparency = 0
		end
		if GetPages(true, CurrentPage, -1) then
			SetInteractable(Holder.Previous, true)
			Holder.Previous.ImageTransparency = 0
		end
		CurrentPage.Interactable = true
		CurrentPage.Active = true
		local Tween = TweenService:Create(CurrentPage,TweenInfo.new(0.2,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut),{Size = UDim2.new(1,0,1,0)})
		Tween:Play()
	end
end))

local Module = {}

function PlayIntro()
	Holder.Visible = false
	local Pos = TweenService:Create(Logo,TweenInfo.new(1,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut),{Position = UDim2.new(0.5,0,0.5,0), Size = Holder.Size})
	local UICorner = TweenService:Create(Logo.UICorner,TweenInfo.new(1,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut),{CornerRadius = UDim.new(0,8)})
	Pos:Play()
	UICorner:Play()
	Logo.meow:Play()
	UICorner.Completed:Wait()
	local Transparency = TweenService:Create(Logo,TweenInfo.new(0.5,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut),{ImageTransparency = 1, BackgroundTransparency = 1})
	Transparency:Play()
	local Laebl = TweenService:Create(Logo.TextLabel,TweenInfo.new(0.5,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut),{TextTransparency = 1})
	Transparency:Play()
	Laebl:Play()
	Holder.Visible = true
	Transparency.Completed:Wait()
	Logo.Visible = false
	return true
end

function Module:Intialize(Title, Image, Opened)
	local Lib = {}
	Title = Title or 'Celtoic Lib'
	Image = Image or LibImage.Image
	LibImage.Image = Image
	MinimizeLogo.ImageButton.Image = Image
	LibTitle.Text = Title
	local Finished = PlayIntro()
	repeat task.wait() until Finished == true
	function Lib:Notify(Title, Description, Duration)
		task.spawn(function()
			Title = Title or 'Celtoic Lib'
			Description = Description or 'Description Here'
			Duration = Duration or 3
			local NotifyHolder = Storage.NotifyHolder:Clone()
			NotifyHolder.Parent = NotifyCore
			NotifyHolder.Frame.Title.Text = Title
			NotifyHolder.Frame.Description.Text = Description
			local LastUDim2 = NotifyHolder.Frame.Position
			NotifyHolder.Frame.Position = UDim2.new(5, 0, 0.5, 0)
			local Tween = TweenService:Create(NotifyHolder.Frame,TweenInfo.new(0.2,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut),{Position = LastUDim2})
			NotifyHolder.Visible = true
			Tween:Play()
			Sounds.Notify:Play()
			task.delay(Duration,function()
				if Tween.PlaybackState ~= Enum.PlaybackState.Completed then
					Tween:Cancel()
				end
				local Ending = TweenService:Create(NotifyHolder.Frame,TweenInfo.new(0.2,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut),{Position = UDim2.new(5, 0, 0.5, 0)})
				Ending:Play()
				Ending.Completed:Wait()
				NotifyHolder:Destroy()
			end)
		end)
	end
	function Lib:LoadConfigManager(ConfigName)
		ConfigName = ConfigName or Title
		local FileName = 'CeltoicLibConfigManager_'..ConfigName..'.json'
		local ConfigManager
		local LibManager = {}
		if pcall(function() readfile(FileName) end) then
			ConfigManager = HttpService:JSONDecode(readfile(FileName))
		end
		ConfigManager = writefile(FileName, HttpService:JSONEncode({}))
		if not ConfigManager then return end
		function LibManager:Save(Element)
			local Value, Name = Element:GetSaveProperties()
			if Value and Name then
				ConfigManager[Name] = Value
			end
		end
		function LibManager:Load()
			for i, v in pairs(Pages:GetDescendants()) do
				if v:GetAttribute('Element') then
					if v:FindFirstChild('BoundSlider') and ConfigManager[v.Name] then
						v:FindFirstChildWhichIsA('UIDragDetector', true).DragUDim2 = UDim2.new(ConfigManager[v.Name][1],ConfigManager[v.Name][2], 0, 0)
						firesignal(v:FindFirstChildWhichIsA('UIDragDetector',true).DragEnd, UDim2.new(ConfigManager[v.Name][1],ConfigManager[v.Name][2], 0, 0))
					end
					if v:IsA('TextBox') and ConfigManager[v.Name] then
						v.Text = ConfigManager[v.Name] or v.Text
						firesignal(v.FocusLost, true)
					end
					if v:FindFirstChild('ToggleImage') and ConfigManager[v.Name] and v:GetAttribute('Value') ~= ConfigManager[v.Name] then
						firesignal(v.Activated)
					end
				end
			end
		end
		return LibManager
	end
	function Lib:CreatePage(TabName)
		local PageLib = {}
		TabName = TabName or 'Page'
		local Clone = Storage:WaitForChild('TabTemplate'):Clone()
		Clone.Name = TabName
		Clone.Parent = Pages
		Clone.Visible = true
		Clone.CurrentTab.Text = 'Current Tab: '..TabName
		local LayoutOrder = 0
		if not CurrentPage then
			CurrentPage = Clone
			PageLayout:JumpTo(CurrentPage)
			if not GetPages(true, CurrentPage, 2) then
				SetInteractable(Holder.Next, false)
			end
			if not GetPages(true, CurrentPage, -2) then
				SetInteractable(Holder.Previous, false)
			end
			CurrentPage.Size = UDim2.new(1,0,1,0)
		end
		function PageLib:ToPage()
			PageLayout:JumpTo(Clone)
		end
		function PageLib:CreateSlider(Title, Max, Min, Callback)
			local Element = {}
			Title = Title or 'Text Here'
			local ValueElement, NameElement
			local SliderClone = Storage:WaitForChild('SliderTemplate'):Clone()
			SliderClone.LayoutOrder = LayoutOrder
			LayoutOrder += 1
			SliderClone.Name = Title
			SliderClone.Parent = Clone
			SliderClone.TitleText.Text = Title
			SliderClone.Visible = true
			local Slider = SliderClone
			local UIDragDetector = Slider:FindFirstChildWhichIsA('UIDragDetector',true)
			SliderClone:SetAttribute('Element', true)
			table.insert(Connections, UIDragDetector.DragEnd:Connect(function(x)
				Sounds.Slider:Play()
				local raw = UIDragDetector.DragUDim2.X.Scale * 2.5
				local normalized = math.clamp((raw + 1.1) / 2.2, 0, 1)
				local scaled
				if typeof(Max) and typeof(Min) == 'number' then
					scaled = Min + normalized * (Max - Min)
				end
				if scaled or normalized then
					ValueElement = {UIDragDetector.DragUDim2.X.Scale, UIDragDetector.DragUDim2.X.Offset}
				end
				if typeof(Callback) == 'function' then
					Callback(scaled or normalized)
				end
				if typeof(Max) == 'function' then
					Max(scaled or normalized)
				end
				if typeof(Min) == 'function' then
					Min(scaled or normalized)
				end
			end))
			NameElement = SliderClone.Name
			function Element:GetSaveProperties()
				return ValueElement, NameElement
			end
			return Element
		end
		function PageLib:CreateDropdown(Title, Selection, Callback)
			local DropdownLib = {}
			Title = Title or 'Text Here'
			local ChangedEvent = Instance.new('BindableEvent')
			table.insert(RecycleTable, ChangedEvent)
			local DropdownClone = Storage:WaitForChild('DropdownTemplate'):Clone()
			local Dropdowns = DropdownClone:WaitForChild('Dropdowns')
			Selection = Selection or {}
			DropdownClone.LayoutOrder = LayoutOrder
			LayoutOrder += 1
			DropdownClone.Name = Title
			DropdownClone.TitleText.Text = Title
			DropdownClone.Parent = Clone
			DropdownClone.Visible = true
			DropdownClone:SetAttribute('Element', true)
			local Vis = false
			for i, v in pairs(Selection) do
				local ButtonClone = Storage:WaitForChild('ButtonTemplate'):Clone()
				ButtonClone.Name = 'Button'
				ButtonClone.Parent = Dropdowns
				ButtonClone.TitleText.Text = v
				ButtonClone.Visible = true
				table.insert(DropdownConnections, ButtonClone.Activated:Connect(function()
					ChangedEvent:Fire(v)
				end))
			end
			table.insert(Connections, ChangedEvent.Event:Connect(function(Value)
				Sounds.Click:Play()
				Callback(Value)
			end))
			local Prog = false
			table.insert(Connections, DropdownClone.Activated:Connect(function()
				if Prog == true then return end
				Prog = true
				Sounds.Click:Play()
				Vis = not Vis
				if Vis == true then
					local Tween = TweenService:Create(Dropdowns, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Size = UDim2.new(0.7, 0, 0, 250)})
					Tween:Play()
					Dropdowns.Visible = Vis
					Dropdowns.Parent = Clone
					Dropdowns.LayoutOrder = DropdownClone.LayoutOrder
					Tween.Completed:Wait()
				else
					local Tween = TweenService:Create(Dropdowns, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Size = UDim2.new(0, 0, 0, 0)})
					Tween:Play()
					Tween.Completed:Wait()
					Dropdowns.Visible = Vis
					Dropdowns.Parent = DropdownClone
				end
				Prog = false
			end))
			function DropdownLib:Refresh(NewSelection)
				for i, v in pairs(DropdownConnections) do
					v:Disconnect()
				end
				for i, v in pairs(Dropdowns:GetChildren()) do
					if v:IsA('TextButton') then
						v:Destroy()
					end
				end
				for i, v in pairs(NewSelection) do
					local ButtonClone = Storage:WaitForChild('ButtonTemplate'):Clone()
					ButtonClone.Name = 'Button'
					ButtonClone.Parent = Dropdowns
					ButtonClone.TitleText.Text = v
					ButtonClone.Visible = true
					table.insert(DropdownConnections, ButtonClone.Activated:Connect(function()
						ChangedEvent:Fire(v)
					end))
				end
			end
			return DropdownLib
		end
		function PageLib:CreateButton(Title, Callback)
			Title = Title or 'Text Here'
			local ButtonClone = Storage:WaitForChild('ButtonTemplate'):Clone()
			ButtonClone.LayoutOrder = LayoutOrder
			LayoutOrder += 1
			ButtonClone.Name = Title
			ButtonClone.Parent = Clone
			ButtonClone.TitleText.Text = Title
			ButtonClone.Visible = true
			ButtonClone:SetAttribute('Element', true)
			table.insert(Connections, ButtonClone.Activated:Connect(function()
				Sounds.Click:Play()
				if typeof(Callback) == 'function' then
					Callback()
				end
			end))
		end
		function PageLib:CreateToggle(Title, Callback)
			Title = Title or 'Text Here'
			local Element = {}
			local ValueElement, NameElement
			local ToggleClone = Storage:WaitForChild('ToggleTemplate'):Clone()
			ToggleClone.LayoutOrder = LayoutOrder
			LayoutOrder += 1
			ToggleClone.Name = Title
			ToggleClone.Parent = Clone
			ToggleClone.TitleText.Text = Title
			ToggleClone.Visible = true
			local Debounce = false
			ToggleClone:SetAttribute('Element', true)
			ToggleClone:SetAttribute('Value', Debounce)
			table.insert(Connections, ToggleClone.Activated:Connect(function()
				Sounds.Toggle:Play()
				Debounce = not Debounce
				if Debounce == false then
					ToggleClone.ToggleImage.Image = 'http://www.roblox.com/asset/?id=6031068429'
					ToggleClone.ToggleImage.ImageColor3 = Color3.fromRGB(255, 0, 0)
				else
					ToggleClone.ToggleImage.Image = 'http://www.roblox.com/asset/?id=6031068430'
					ToggleClone.ToggleImage.ImageColor3 = Color3.fromRGB(0, 255, 0)
				end
				ToggleClone:SetAttribute('Value', Debounce)
				if typeof(Callback) == 'function' then
					ValueElement = Debounce
					Callback(Debounce)
				end
			end))
			NameElement = ToggleClone.Name
			function Element:GetSaveProperties()
				return ValueElement, NameElement
			end
			return Element
		end
		function PageLib:CreateTextBox(Title, Callback)
			Title = Title or 'Text Here'
			local Element = {}
			local ValueElement
			local NameElement
			local TextBoxClone = Storage:WaitForChild('TextBoxTemplate'):Clone()
			TextBoxClone.LayoutOrder = LayoutOrder
			LayoutOrder += 1
			TextBoxClone.Name = Title
			TextBoxClone.Parent = Clone
			TextBoxClone.TitleText.Text = Title
			TextBoxClone.Visible = true
			TextBoxClone:SetAttribute('Element', true)
			table.insert(Connections, TextBoxClone:GetPropertyChangedSignal('Text'):Connect(function()
				if TextBoxClone.Text ~= '' then
					TextBoxClone.TitleText.Text = 'Current Text: '..TextBoxClone.Text
				else
					TextBoxClone.TitleText.Text = Title
				end
				ValueElement = TextBoxClone.Text
			end))
			table.insert(Connections, TextBoxClone.FocusLost:Connect(function(EnterPressed)
				if not EnterPressed then return end
				Sounds.Enter:Play()
				if typeof(Callback) == 'function' and TextBoxClone.Text then
					Callback(TextBoxClone.Text)
				end
			end))
			NameElement = TextBoxClone.Name
			function Element:GetSaveProperties()
				return ValueElement, NameElement
			end
			return Element
		end
		function PageLib:CreateLabel(Title)
			Title = Title or 'Text Here'
			local LabelClone = Storage:WaitForChild('LabelTemplate'):Clone()
			LabelClone.LayoutOrder = LayoutOrder
			LayoutOrder += 1
			LabelClone.Parent = Clone
			LabelClone.Text = Title
			LabelClone.Visible = true
		end
		return PageLib
	end
	return Lib
end

return Module
