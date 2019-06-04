local t = Def.ActorFrame {};

local judg = {
	["TapNoteScore_W1"] = "GREAT",
	["TapNoteScore_W2"] = "GREAT",
	["TapNoteScore_W3"] = "GOOD",
	["TapNoteScore_W4"] = "BAD",
	["TapNoteScore_W5"] = "POOR",
	["TapNoteScore_Miss"] = "POOR",
};

local tColour = {
	Beginner	= "#01c6f8",
	Easy 		= "#01c6f8",
	Medium		= "#f1a201",
	Hard		= "#f1a201",
	Challenge	= "#f00200",
	Edit 		= "#f00200",
};

totaliidxscore = 0;

local lastjudg = 22;

t[#t+1] = Def.ActorFrame {
	InitCommand=function(self)
		self:x(SCREEN_CENTER_X):y(SCREEN_BOTTOM-30)
	end;
	OnCommand=function(self)
		 SCREENMAN:GetTopScreen():GetChild("PlayerP1"):SetLife(0.22)
	end;
	Def.Quad {
		InitCommand=function(self)
			self:zoomto(SCREEN_WIDTH-14,30):diffuse(color("#302e2d")):y(-25)
		end;
	};
	Def.Quad {
		InitCommand=function(self)
			self:zoomto(220,20):diffuse(color("#302e2d")):x(-300)
		end;
	};
	Def.Quad {
		InitCommand=function(self)
			self:zoomto(220,20):diffuse(color("#302e2d")):x(300)
		end;
	};
	
	Def.Quad {
		InitCommand=function(self)
			self:zoomto(220,5):diffuse(color("#302e2d")):y(17.5):x(-300)
		end;
	};
	Def.Quad {
		InitCommand=function(self)
			self:zoomto(220,5):diffuse(color("#302e2d")):y(17.5):x(300)
		end;
	};
	
	Def.Quad {
		InitCommand=function(self)
			self:zoomto(140,60):diffuse(color("#302e2d")):x(-170)
		end;
	};
	Def.Quad {
		InitCommand=function(self)
			self:zoomto(140,60):diffuse(color("#302e2d")):x(170)
		end;
	};
			
	Def.Quad {
		InitCommand=function(self)
			self:zoomto(32,SCREEN_HEIGHT):diffuse(color("#302e2d")):y(-300):x(-384)
		end;
	};
	Def.Quad {
		InitCommand=function(self)
			self:zoomto(500,50):diffuse(color("#302e2d")):halign(1):y(-50):x(100)
		end;
	};
	Def.Quad {
		InitCommand=function(self)
			self:zoomto(100,40):diffuse(color("#302e2d")):halign(1):y(-90):x(40)
		end;
	};
	
	Def.Quad {
		InitCommand=function(self)
			self:zoomto(200,30):diffuse(color("#ffffff")):y(-13)
		end;
	};
	Def.Quad {
		InitCommand=function(self)
			self:zoomto(10,40):diffuse(color("#ffffff")):y(-8):x(-95)
		end;
	};
	Def.Quad {
		InitCommand=function(self)
			self:zoomto(10,40):diffuse(color("#ffffff")):y(-8):x(95)
		end;
	};

	Def.Quad {
		InitCommand=function(self)
			self:zoomto(490,32):diffuse(color("#9e8574")):halign(1):y(-55):x(95)
		end;
	};
	Def.Quad {
		InitCommand=function(self)
			self:zoomto(90,40):diffuse(color("#9e8574")):halign(1):y(-85):x(35)
		end;
	};
	Def.Quad {
		InitCommand=function(self)
			self:zoomto(320,20):diffuse(color("#9e8574")):y(-25):x(-260):fadebottom(1)
		end;
	};
	Def.Quad {
		InitCommand=function(self)
			self:zoomto(320,20):diffuse(color("#9e8574")):y(-25):x(260):fadebottom(1)
		end;
	};
	
	Def.Quad {
		InitCommand=function(self)
			self:zoomto(120,30):diffuse(color("#9e8574")):y(10):x(-170)
		end;
	};
	Def.Quad {
		InitCommand=function(self)
			self:zoomto(120,20):diffuse(color("#cccccc")):y(-20):x(-170)
		end;
	};
	Def.Quad {
		InitCommand=function(self)
			self:zoomto(110,20):diffuse(color("#000000")):y(10):x(-170)
		end;
	};
	
	Def.Quad {
		InitCommand=function(self)
			self:zoomto(120,30):diffuse(color("#9e8574")):y(10):x(170)
		end;
	};
	Def.Quad {
		InitCommand=function(self)
			self:zoomto(120,20):diffuse(color("#cccccc")):y(-20):x(170)
		end;
	};
	Def.Quad {
		InitCommand=function(self)
			self:zoomto(110,20):diffuse(color("#000000")):y(10):x(170)
		end;
	};
	Def.Quad {
		InitCommand=function(self)
			self:zoomto(160,30):diffuse(color("#000000")):y(-10):x(-320)
		end;
	};
	Def.Quad {
		InitCommand=function(self)
			self:zoomto(160,30):diffuse(color("#000000")):y(-10):x(320)
		end;
	};
	Def.Quad {
		InitCommand=function(self)
			self:zoomto(3,20):diffuse(color("#ffffff")):y(20):x(105)
		end;
	};
	Def.Quad {
		InitCommand=function(self)
			self:zoomto(3,20):diffuse(color("#ffffff")):y(20):x(235)
		end;
	};
	Def.Quad {
		InitCommand=function(self)
			self:zoomto(3,20):diffuse(color("#ffffff")):y(20):x(-105)
		end;
	};
	Def.Quad {
		InitCommand=function(self)
			self:zoomto(3,20):diffuse(color("#ffffff")):y(20):x(-235)
		end;
	};
	
	Def.Quad {
		InitCommand=function(self)
			self:zoomto(70,30):diffuse(color("#9e8574")):y(15)
		end;
	};
	Def.Quad {
		InitCommand=function(self)
			self:zoomto(180,30):diffuse(color("#9e8574")):y(-10)
		end;
	};
	Def.Quad {
		InitCommand=function(self)
			self:zoomto(150,5):diffuse(color("#9e8574")):y(12.5)
		end;
	};
	Def.Quad {
		InitCommand=function(self)
			self:zoomto(100,5):diffuse(color("#9e8574")):y(17.5)
		end;
	};
	Def.Quad {
		InitCommand=function(self)
			self:zoomto(10,40):diffuse(color("#9e8574")):x(-395):y(-95)
		end;
	};
	Def.Quad {
		InitCommand=function(self)
			self:zoomto(22,SCREEN_HEIGHT):diffuse(color("#9e8574")):y(-300):x(-384)
		end;
	};
	
	Def.Quad {
		InitCommand=function(self)
			self:zoomto(480,22):diffuse(color("#000000")):halign(1):y(-55):x(90)
		end;
	};
	Def.Quad {
		InitCommand=function(self)
			self:zoomto(70,30):diffuse(color("#000000")):halign(1):y(-85):x(25)
		end;
	};
	Def.Quad {
		InitCommand=function(self)
			self:zoomto(50,20):diffuse(color("#000000")):y(15)
		end;
	};
	Def.Quad {
		InitCommand=function(self)
			self:zoomto(170,20):diffuse(color("#000000")):y(-10)
		end;
	};
	Def.Quad {
		InitCommand=function(self)
			self:zoomto(6,320):diffuse(color("#000000")):y(-280):x(-380)
		end;
	};
	
	Def.Quad {
		InitCommand=function(self)
			self:zoomto(65,5):diffuse(color("#ffffff")):halign(1):y(-72.5):x(100)
		end;
	};
	Def.Quad {
		InitCommand=function(self)
			self:zoomto(5,10):diffuse(color("#ffffff")):halign(1):y(-65):x(100)
		end;
	};
	Def.Quad {
		InitCommand=function(self)
			self:zoomto(100,5):diffuse(color("#ffffff")):halign(1):y(-107.5):x(40)
		end;
	};
	Def.Quad {
		InitCommand=function(self)
			self:zoomto(5,35):diffuse(color("#ffffff")):halign(1):y(-90):x(40)
		end;
	};
	Def.Quad {
		InitCommand=function(self)
			self:zoomto(75,5):diffuse(color("#ffffff")):halign(1):y(-105):x(30)
		end;
	};
	Def.Quad {
		InitCommand=function(self)
			self:zoomto(70,5):diffuse(color("#000000")):halign(1):y(-107.5):x(27.5)
		end;
	};
	
	Def.Quad {
		InitCommand=function(self)
			self:zoomto(20,2.5):diffuse(color("#ffffff")):y(-30):x(-400)
		end;
	};	
	Def.Quad {
		InitCommand=function(self)
			self:zoomto(20,2.5):diffuse(color("#ffffff")):y(-30):x(400)
		end;
	};	
	Def.Quad {
		InitCommand=function(self)
			self:zoomto(20,10):diffuse(color("#000000")):y(-20):x(-400)
		end;
	};	
	Def.Quad {
		InitCommand=function(self)
			self:zoomto(20,10):diffuse(color("#000000")):y(-20):x(400)
		end;
	};	
	
	Def.Quad {
		InitCommand=function(self)
			self:zoomto(70,5):diffusealpha(0):diffuseblink():effectperiod(0.1):effectcolor1(color("0,0,0,0")):effectcolor2(color("#2afcfe")):halign(1):y(-107.5):x(27.5)
		end;
		OnCommand=function(self)
			local newjudg = tonumber(string.format("%.0f", SCREENMAN:GetTopScreen():GetLifeMeter(PLAYER_1):GetLife()*100/2))*2
			if newjudg > 79 then
				self:diffusealpha(1)
			elseif lastjudg < newjudg then
				self:diffusealpha(1)
				self:sleep(0.2)
				self:diffusealpha(0)
				lastjudg = newjudg
			else
				self:sleep(0.01)
				self:diffusealpha(0)
				lastjudg = newjudg
			end
			self:sleep(0.01)
			self:queuecommand("On")
		end;
	};
	
	Def.Quad {
		InitCommand=function(self)
			self:zoomto(4,340):diffuse(color("#fdc875")):y(-280):x(-389)
		end;
	};	
	Def.ActorFrame {
		InitCommand=function(self)
			self:x(-395):y(-100)
		end;
		Def.Quad {
			InitCommand=function(self)
				self:zoomto(4,20):diffuse(color("#fdc875")):rotationz(-45)
			end;
		};
		Def.Quad {
			InitCommand=function(self)
				self:zoomto(4,20):diffuse(color("#fdc875")):rotationz(-45):y(15)
			end;
		};
	};
	Def.Quad {
		InitCommand=function(self)
			self:zoomto(2.5,12):diffuse(color("#fdc875")):halign(0):y(-55):x(-395)
		end;
	};
	Def.Quad {
		InitCommand=function(self)
			self:zoomto(40,7):diffuse(color("#fdc875")):y(-26)
		end;
	};
	Def.Quad {
		InitCommand=function(self)
			self:zoomto(5,5):diffuse(color("#fdc875")):y(7.5):x(-70)
		end;
	};
	Def.Quad {
		InitCommand=function(self)
			self:zoomto(5,5):diffuse(color("#fdc875")):y(7.5):x(70)
		end;
	};
	
	Def.Quad {
		InitCommand=function(self)
			self:zoomto(5,10):diffuse(color("#fdc875")):y(-20):x(-110)
		end;
	};
	Def.Quad {
		InitCommand=function(self)
			self:zoomto(5,10):diffuse(color("#fdc875")):y(-20):x(110)
		end;
	};
	Def.Quad {
		InitCommand=function(self)
			self:zoomto(5,10):diffuse(color("#fdc875")):y(-20):x(-230)
		end;
	};
	Def.Quad {
		InitCommand=function(self)
			self:zoomto(5,10):diffuse(color("#fdc875")):y(-20):x(230)
		end;
	};
	
	Def.Quad {
		InitCommand=function(self)
			self:zoomto(5,15):diffuse(color("#fdc875")):y(-22.5):x(-420)
		end;
	};	
	Def.Quad {
		InitCommand=function(self)
			self:zoomto(5,15):diffuse(color("#fdc875")):y(-22.5):x(420)
		end;
	};	
	
	Def.Quad {
		InitCommand=function(self)
			self:zoomto(5,5):diffuse(color("#fdc875")):y(12.5):x(-400)
		end;
	};
	Def.Quad {
		InitCommand=function(self)
			self:zoomto(5,5):diffuse(color("#fdc875")):y(12.5):x(400)
		end;
	};
	Def.Quad {
		InitCommand=function(self)
			self:zoomto(5,5):diffuse(color("#fdc875")):y(12.5):x(-250)
		end;
	};
	Def.Quad {
		InitCommand=function(self)
			self:zoomto(5,5):diffuse(color("#fdc875")):y(12.5):x(250)
		end;
	};
	
	Def.Quad {
		InitCommand=function(self)
			self:zoomto(6,20):diffuse(color("#f2af16")):y(-430):x(-380)
		end;
		OnCommand=function(self)
			local sec = GAMESTATE:GetSongPercent(GAMESTATE:GetSongBeat());
			if sec < 0 then sec = 0 end
			if sec > 1 then sec = 1 end
			self:y(-430+sec*300)
			self:sleep(0.01)
			self:queuecommand("On")
		end;
	};	
	LoadFont("Common Normal") .. {
		InitCommand=function(self)
			self:halign(1):x(20):y(-85):diffuse(color("#6af9fe")):strokecolor(color("#1e476f"))
		end;
		OnCommand=function(self)
			if SCREENMAN:GetTopScreen():GetLifeMeter(PLAYER_1):GetLife() < 0.02 then
				SCREENMAN:GetTopScreen():GetChild("PlayerP1"):SetLife(0.02)
				self:settext("2%")
			else
				self:settext(tonumber(string.format("%.0f", SCREENMAN:GetTopScreen():GetLifeMeter(PLAYER_1):GetLife()*100/2))*2 .."%")
			end;
			self:sleep(0.01)
			self:queuecommand("On")
		end;
	};
	LoadFont("Common Normal") .. {
		Text=GAMESTATE:GetPlayerState(PLAYER_1):GetPlayerOptionsString("ModsLevel_Preferred");
		InitCommand=function(self)
			self:y(-10):diffuse(color("#6af9fe")):strokecolor(color("#000000")):zoomx(0.8):zoomy(0.6):maxwidth(200)
		end;
	};
	
	LoadFont("Common Normal") .. {
		Text="2DX14";
		InitCommand=function(self)
			self:y(10):x(-170):diffuse(color("#6af9fe")):strokecolor(color("#000000")):zoomx(0.8):zoomy(0.6):maxwidth(200)
		end;
	};
	LoadFont("Common Normal") .. {
		InitCommand=function(self)
			self:y(10):x(170):diffuse(color("#6af9fe")):strokecolor(color("#000000")):zoomx(0.8):zoomy(0.6):maxwidth(130)
		end;
		OnCommand=function(self)
			local diffname = ToEnumShortString(GAMESTATE:GetCurrentSteps(PLAYER_1):GetDifficulty())
			self:settext(diffname)
			self:diffuse(color(tColour[diffname]))
		end;
	};
		
	LoadFont("Common Normal") .. {
		Text="000000";
		InitCommand=function(self)
			self:y(-10):x(-245):diffuse(color("#023a42")):strokecolor(color("#000000")):maxwidth(200):zoomx(1.5):halign(1)
		end;
	};
	Def.Quad {
		InitCommand=function(self)
			self:zoomto(20,20):diffuse(color("#000000")):y(-10):x(-245):halign(1)
		end;
		OnCommand=function(self)
			if totaliidxscore > 99999 then
				self:zoomto(125,20)
			elseif totaliidxscore > 9999 then
				self:zoomto(104,20)
			elseif totaliidxscore > 999 then
				self:zoomto(83,20)
			elseif totaliidxscore > 99 then
				self:zoomto(62,20)
			elseif totaliidxscore > 9 then
				self:zoomto(41,20)
			else
				self:zoomto(20,20)
			end
			self:sleep(0.01)
			self:queuecommand("On")
		end;
	};	
	
	LoadFont("Common Normal") .. {
		Text="0";
		InitCommand=function(self)
			self:y(-10):x(-245):diffuse(color("#08c7db")):strokecolor(color("#000000")):maxwidth(200):zoomx(1.5):halign(1)
		end;
		JudgmentMessageCommand=function(self,params)
			self:settext(iidxscore(self,params))
		end;
		OnCommand=function()
			resetscore()
		end
	};
	
		LoadFont("Common Normal") .. {
		Text="0000";
		InitCommand=function(self)
			self:y(-10):x(330):diffuse(color("#023a42")):strokecolor(color("#000000")):maxwidth(200):zoomx(1.5):halign(1)
		end;
	};
	
	Def.Quad {
		InitCommand=function(self)
			self:zoomto(20,20):diffuse(color("#000000")):y(-10):x(330):halign(1)
		end;
		OnCommand=function(self)
			local curcombo = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1):MaxCombo()
			if curcombo > 999 then
				self:zoomto(83,20)
			elseif curcombo > 99 then
				self:zoomto(62,20)
			elseif curcombo > 9 then
				self:zoomto(41,20)
			else
				self:zoomto(20,20)
			end
			self:sleep(0.01)
			self:queuecommand("On")
		end;
	};	
	
	LoadFont("Common Normal") .. {
		Text="0";
		InitCommand=function(self)
			self:y(-10):x(330):diffuse(color("#08c7db")):strokecolor(color("#000000")):maxwidth(200):zoomx(1.5):halign(1)
		end;
		JudgmentMessageCommand=function(self,params)
			local curcombo = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1):MaxCombo()
			self:settext(curcombo)
		end;
		OnCommand=function()
			resetscore()
		end
	};
	
	LoadFont("Common Normal") .. {
		Text="SCORE";
		InitCommand=function(self)
			self:y(-20):x(-390):diffuse(color("#ffffff")):strokecolor(color("#000000")):maxwidth(200):zoom(0.4)
		end;
		OnCommand=function(self)
			iidxlife()
			self:sleep(0.1)
			self:queuecommand("On")
		end;
	};
	LoadFont("Common Normal") .. {
		Text="MAXCOMBO";
		InitCommand=function(self)
			self:y(-20):x(375):diffuse(color("#ffffff")):strokecolor(color("#000000")):maxwidth(200):zoom(0.4)
		end;
	};
	
	LoadFont("Common Normal") .. {
		Text="BPM";
		InitCommand=function(self)
			self:y(2):diffuse(color("#6af9fe")):strokecolor(color("#000000")):zoom(0.8):zoomy(0.4)
		end;
	};
	LoadFont("Common Normal") .. {
		InitCommand=function(self)
			self:y(15):diffuse(color("#6af9fe")):strokecolor(color("#000000")):zoom(.9)
		end;
		OnCommand=function(self)
			self:settext(string.format("%03.0f",GAMESTATE:GetSongBPS()*60))
			self:sleep(0.01)
			self:queuecommand("On")
		end;
	};
	LoadFont("Common Normal") .. {
		InitCommand=function(self)
			self:y(-200):x(-210):diffuse(color("#f87800")):strokecolor(color("#000000")):zoom(1.5):diffusealpha(0)
		end;
		JudgmentMessageCommand=function(self,params)
			local curcomb = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1):GetCurrentCombo()
			self:diffuseblink():effectperiod(0.1):effectcolor1(color("#0,0,0,0")):effectcolor2(color("#f87800"))
			if curcomb == 0 then curcomb = "" end
			if judg[params.TapNoteScore] then
				self:settext(judg[params.TapNoteScore].." "..curcomb)
				self:diffusealpha(1)
				if params.TapNoteScore == "TapNoteScore_W1" then
					self:stoptweening()
					self:diffuseblink():effectperiod(0.1):effectcolor1(color("#f85890")):effectcolor2(color("#5888f8"))
					self:sleep(0.5):diffusealpha(0)
				elseif params.TapNoteScore == "TapNoteScore_W2" or params.TapNoteScore == "TapNoteScore_W3" then
					self:stoptweening()
					self:diffuseblink():effectperiod(0.1):effectcolor1(color("0,0,0,0")):effectcolor2(color("#f0e000"))
					self:sleep(0.5):diffusealpha(0)
				else
					self:stoptweening()
					self:diffuseblink():effectperiod(0.1):effectcolor1(color("0,0,0,0")):effectcolor2(color("#f87800"))
					self:sleep(0.5):diffusealpha(0)
				end
			else
				self:diffusealpha(0)
			end
		end;
	};
};

for i = 1,50 do
t[#t+1] = Def.ActorFrame {
	InitCommand=function(self)
		self:x(SCREEN_CENTER_X):y(SCREEN_BOTTOM-30)
	end;
	Def.Quad {
		InitCommand=function(self)
			self:zoomto(5,12):diffuse(color("#043a3a")):halign(0):y(-55):x(-395+i*9.5)
		end;
		OnCommand=function(self)
			if i > 39 then
				self:diffuse(color("#4a0c06"))
			else
				self:diffuse(color("#043a3a"))
			end
		end;
	};
	Def.Quad {
		InitCommand=function(self)
			self:zoomto(5,12):diffuse(color("#043a3a")):halign(0):y(-55):x(-395+i*9.5)
		end;
		OnCommand=function(self)
			local life = tonumber(string.format("%.0f", SCREENMAN:GetTopScreen():GetLifeMeter(PLAYER_1):GetLife()*100/2))
			if i > 39 then
				self:diffuse(color("#ff0000"))
			else
				self:diffuse(color("#1cdfdf"))
			end
			if i > life then
				self:diffusealpha(0)
			else
				if i == life-2 then
					self:queuecommand("Repeat1Diffuse")
				elseif i == life-1 then
					self:queuecommand("Repeat2Diffuse")
				else
					self:stoptweening():diffusealpha(1)
				end
			end
			self:sleep(0.1)
			self:queuecommand("On")
		end;
		Repeat1DiffuseCommand=function(self)
			self:sleep(0.05)
			self:diffusealpha(0)
			self:sleep(0.05)
			self:diffusealpha(1)
		end;
		Repeat2DiffuseCommand=function(self)
			self:sleep(0.01)
			self:diffusealpha(0)
			self:sleep(0.09)
			self:diffusealpha(1)
		end;
		
	};
};
end

return t;