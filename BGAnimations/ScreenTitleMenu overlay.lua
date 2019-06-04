local t = Def.ActorFrame {};

local setname = {
	SelectStyle(),
	"Settings",
	"Online",
	"GitHub",
	"Exit",
};
local setinfo = {
	"Play a game of StepMania",
	"Edit your configuration",
	"Play with other people",
	"Check out this theme's GitHub",
	"Quit the game",
};

--Header
t[#t+1] = Def.ActorFrame {
	InitCommand=function(self)
		self:x(SCREEN_CENTER_X):y(SCREEN_TOP+36)
	end;
	Def.Quad {
		InitCommand=function(self)
			self:scaletoclipped(SCREEN_WIDTH+1,70)
		end;
		OnCommand=function(self)
			self:diffuse(color("#000000")):diffusealpha(.5)
		end;
	};
};

for i=1,50 do
t[#t+1] = Def.ActorFrame {
	InitCommand=function(self)
		self:x(-10+i*19):y(SCREEN_TOP+13)
	end;
	Def.Quad {
		InitCommand=function(self)
			self:scaletoclipped(16,20)
		end;
		OnCommand=function(self)
			self:diffuse(color("#7f7f7f")):diffusealpha(.5)
		end;
	};
};
end;

for i=1,50 do
t[#t+1] = Def.ActorFrame {
	InitCommand=function(self)
		self:x(-10+i*19):y(SCREEN_TOP+36)
	end;
	Def.Quad {
		InitCommand=function(self)
			self:scaletoclipped(16,20)
		end;
		OnCommand=function(self)
			self:diffuse(color("#7f7f7f")):diffusealpha(.5)
		end;
	};
};
end;

for i=1,50 do
t[#t+1] = Def.ActorFrame {
	InitCommand=function(self)
		self:x(-10+i*19):y(SCREEN_TOP+59)
	end;
	Def.Quad {
		InitCommand=function(self)
			self:scaletoclipped(16,20)
		end;
		OnCommand=function(self)
			self:diffuse(color("#7f7f7f")):diffusealpha(.5)
		end;
	};
};
end;


--Footer
t[#t+1] = Def.ActorFrame {
	InitCommand=function(self)
		self:x(SCREEN_CENTER_X):y(SCREEN_BOTTOM-36)
	end;
	Def.Quad {
		InitCommand=function(self)
			self:scaletoclipped(SCREEN_WIDTH+1,70)
		end;
		OnCommand=function(self)
			self:diffuse(color("#000000")):diffusealpha(.5)
		end;
	};
};

for i=1,50 do
t[#t+1] = Def.ActorFrame {
	InitCommand=function(self)
		self:x(-10+i*19):y(SCREEN_BOTTOM-13)
	end;
	Def.Quad {
		InitCommand=function(self)
			self:scaletoclipped(16,20)
		end;
		OnCommand=function(self)
			self:diffuse(color("#7f7f7f")):diffusealpha(.5)
		end;
	};
};
end;

for i=1,50 do
t[#t+1] = Def.ActorFrame {
	InitCommand=function(self)
		self:x(-10+i*19):y(SCREEN_BOTTOM-36)
	end;
	Def.Quad {
		InitCommand=function(self)
			self:scaletoclipped(16,20)
		end;
		OnCommand=function(self)
			self:diffuse(color("#7f7f7f")):diffusealpha(.5)
		end;
	};
};
end;

for i=1,50 do
t[#t+1] = Def.ActorFrame {
	InitCommand=function(self)
		self:x(-10+i*19):y(SCREEN_BOTTOM-59)
	end;
	Def.Quad {
		InitCommand=function(self)
			self:scaletoclipped(16,20)
		end;
		OnCommand=function(self)
			self:diffuse(color("#7f7f7f")):diffusealpha(.5)
		end;
	};
};
end;

t[#t+1] = Def.ActorFrame {
	Def.ActorFrame {
	InitCommand=function(self)
		self:x(SCREEN_CENTER_X):y(SCREEN_TOP+50)
	end;
		Def.Quad {
			InitCommand=function(self)
				self:scaletoclipped(SCREEN_WIDTH+1,6)
			end;
			OnCommand=function(self)
				self:diffuse(color("#d8a97f"))
			end;
		};
		
	};
	Def.ActorFrame {
	OnCommand=function(self)
		self:stoptweening():queuecommand("Move")
	end;
	MoveCommand=function(self)
		self:x(SCREEN_RIGHT+18):y(SCREEN_TOP+50):linear(2):x(SCREEN_LEFT-18):queuecommand("Move")
	end;
		Def.Quad {
			InitCommand=function(self)
				self:scaletoclipped(18,6)
			end;
			OnCommand=function(self)
				self:diffuse(color("#000000")):diffusealpha(.5)
			end;
		};
	};
	Def.ActorFrame {
	InitCommand=function(self)
		self:x(SCREEN_CENTER_X):y(SCREEN_BOTTOM-60)
	end;
		Def.Quad {
			InitCommand=function(self)
				self:scaletoclipped(SCREEN_WIDTH+1,18)
			end;
			OnCommand=function(self)
				self:diffuse(color("#000000"))
			end;
		};
		
	};
	Def.ActorFrame {
	InitCommand=function(self)
		self:x(SCREEN_CENTER_X):y(SCREEN_BOTTOM-60)
	end;
		Def.Quad {
			InitCommand=function(self)
				self:scaletoclipped(SCREEN_WIDTH+1,6)
			end;
			OnCommand=function(self)
				self:diffuse(color("#d8a97f"))
			end;
		};
		
	};
	Def.ActorFrame {
	OnCommand=function(self)
		self:stoptweening():queuecommand("Move")
	end;
	MoveCommand=function(self)
		self:x(SCREEN_CENTER_X+18):y(SCREEN_BOTTOM-60):linear(1):x(SCREEN_LEFT-18):sleep(1):queuecommand("Move")
	end;
		Def.Quad {
			InitCommand=function(self)
				self:scaletoclipped(18,6)
			end;
			OnCommand=function(self)
				self:diffuse(color("#000000")):diffusealpha(.5)
			end;
		};
	};
	Def.ActorFrame {
	OnCommand=function(self)
		self:stoptweening():queuecommand("Move")
	end;
	MoveCommand=function(self)
		self:x(SCREEN_CENTER_X-18):y(SCREEN_BOTTOM-60):linear(1):x(SCREEN_RIGHT+18):sleep(1):queuecommand("Move")
	end;
		Def.Quad {
			InitCommand=function(self)
				self:scaletoclipped(18,6)
			end;
			OnCommand=function(self)
				self:diffuse(color("#000000")):diffusealpha(.5)
			end;
		};
	};
	Def.ActorFrame {
	InitCommand=function(self)
		self:x(SCREEN_CENTER_X):y(SCREEN_BOTTOM-60)
	end;
		Def.Quad {
			InitCommand=function(self)
				self:scaletoclipped(180,18)
			end;
			OnCommand=function(self)
				self:diffuse(color("#000000"))
			end;
		};
		
	};
	LoadFont("Common Normal") .. {
		InitCommand=function(self)
			self:y(SCREEN_CENTER_Y):x(SCREEN_LEFT+100):diffuse(color("#c3a545")):strokecolor(color("#000000")):zoom(3):halign(0):uppercase(true)
		end;
		Text=string.upper(SelectStyle());
		MenuSelectionChangedMessageCommand=function(self)
			self:settext(setname[SCREENMAN:GetTopScreen():GetSelectionIndex(PLAYER_1)+1]);
		end;
	};
	LoadFont("Common Normal") .. {
		InitCommand=function(self)
			self:y(SCREEN_CENTER_Y+60):x(SCREEN_LEFT+100):strokecolor(color("#000000")):halign(0):uppercase(true)
		end;
		Text=string.upper(setinfo[1]);
		MenuSelectionChangedMessageCommand=function(self)
			self:settext(setinfo[SCREENMAN:GetTopScreen():GetSelectionIndex(PLAYER_1)+1]);
		end;
	};
	LoadFont("Common Normal") .. {
		InitCommand=function(self)
			self:y(SCREEN_BOTTOM-30):x(SCREEN_CENTER_X):diffuse(color("#FFFFFF")):uppercase(true):strokecolor(color("#000000"))
		end;
		Text=string.upper("Welcome to StepMania");
	};
	LoadFont("Common Normal") .. {
		Text="MENU SELECT";
		InitCommand=function(self)
			self:y(SCREEN_TOP+30):x(SCREEN_LEFT+200):diffuse(color("#ffffff")):zoomx(1.5)
		end;
	};
	LoadFont("Common Normal") .. {
		Text="INFORMATION";
		InitCommand=function(self)
			self:y(SCREEN_BOTTOM-60):x(SCREEN_CENTER_X):diffuse(color("#ffffff"))
		end;
	};
	Def.Quad {
		InitCommand=function(self)
			self:scaletoclipped(60,60)
		end;
		OnCommand=function(self)
			self:y(SCREEN_LEFT+40):x(SCREEN_TOP+40):diffuse(color("#c3a545")):spin()
		end;
	};
	LoadFont("Common Normal") .. {
		Text="QUAD\nIIDX";
		InitCommand=function(self)
			self:y(SCREEN_LEFT+40):x(SCREEN_TOP+40):diffuse(color("#000000")):spin():zoom(.8)
		end;
	};
};



return t;