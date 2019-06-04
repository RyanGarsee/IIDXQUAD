local curgame = GAMESTATE:GetCurrentGame():GetName();

sets2 = {
	dance = 1
}

SelectStyle = function()
	local style = GAMEMAN:GetStylesForGame(curgame)[1]:GetName()
	return style
end

SelectStyle2 = function()
	local style2 = GAMEMAN:GetStylesForGame(curgame)[sets2[curgame]]:GetName()
	--local style2 = GAMEMAN:GetStylesForGame(curgame)[2]:GetName()
	return style2
end