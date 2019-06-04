local tLocation = {
	Beginner	= 18*0.40,
	Easy 		= 18*1.46,
	Medium		= 18*2.52,
	Hard		= 18*3.58,
	Challenge	= 18*4.64,
	Edit 		= 18*5.70,
};


local t = Def.ActorFrame {};

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
	LoadActor( THEME:GetPathG("ScreenSelectMusic","DifficultyDisplay") )..{
		OnCommand=function(self)
			self:x(SCREEN_CENTER_X+60):y(SCREEN_CENTER_Y+50)
		end;
	};
	Def.ActorFrame {
	InitCommand=function(self)
		self:x(SCREEN_CENTER_X+280):y(SCREEN_CENTER_Y)
	end;
		Def.Quad {
			ShowPressStartForOptionsCommand=function(self)
				self:stoptweening()
			end;
			InitCommand=function(self)
				self:scaletoclipped(356,34):diffuse(color("#dd8637")):diffusealpha(0.5)
			end;
			OnCommand=function(self)
				self:linear(1):diffusealpha(0.2):linear(1):diffusealpha(0.5):queuecommand("On")
			end;
		};
	};
	Def.ActorFrame {
		InitCommand=function(self)
			self:x(SCREEN_CENTER_X+100):y(SCREEN_CENTER_Y-140)
		end;
		Def.ActorFrame {
			OnCommand=function(self)
				self:linear(0.5):y(-20):diffusealpha(0):linear(0.001):y(0):diffusealpha(1):queuecommand("On")
			end;
			Def.Quad {
				ShowPressStartForOptionsCommand=function(self)
					self:stoptweening()
				end;
				InitCommand=function(self)
					self:scaletoclipped(14,5):diffuse(color("#dd8637")):diffusealpha(1):rotationz(45):x(7.7):y(1.7)
				end;
			};
			Def.Quad {
				ShowPressStartForOptionsCommand=function(self)
					self:stoptweening()
				end;
				InitCommand=function(self)
					self:scaletoclipped(20,5):diffuse(color("#dd8637")):diffusealpha(1):rotationz(-45):x(-4)
				end;
			};
		};
	};
	Def.ActorFrame {
		InitCommand=function(self)
			self:x(SCREEN_CENTER_X+100):y(SCREEN_CENTER_Y+140):rotationz(180)
		end;
		Def.ActorFrame {
			OnCommand=function(self)
				self:linear(0.5):y(-20):diffusealpha(0):linear(0.001):y(0):diffusealpha(1):queuecommand("On")
			end;
			Def.Quad {
				ShowPressStartForOptionsCommand=function(self)
					self:stoptweening()
				end;
				InitCommand=function(self)
					self:scaletoclipped(14,5):diffuse(color("#dd8637")):diffusealpha(1):rotationz(45):x(7.7):y(1.7)
				end;
			};
			Def.Quad {
				ShowPressStartForOptionsCommand=function(self)
					self:stoptweening()
				end;
				InitCommand=function(self)
					self:scaletoclipped(20,5):diffuse(color("#dd8637")):diffusealpha(1):rotationz(-45):x(-4)
				end;
			};
		};
	};
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
	ShowPressStartForOptionsCommand=function(self)
		self:stoptweening()
	end;
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
	ShowPressStartForOptionsCommand=function(self)
		self:stoptweening()
	end;
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
	ShowPressStartForOptionsCommand=function(self)
		self:stoptweening()
	end;
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
			self:y(SCREEN_CENTER_Y-50):x(SCREEN_CENTER_X+50):diffuse(color("#c3a545")):strokecolor(color("#000000")):zoom(2):zoomx(1):halign(1):uppercase(true):maxwidth(400)
		end;
		CurrentSongChangedMessageCommand=function(self)
			local song = GAMESTATE:GetCurrentSong();
			if song then
				self:settext(song:GetDisplayMainTitle());
			else
				self:settext("");
			end
		end;
	};
	LoadFont("Common Normal") .. {
		InitCommand=function(self)
			self:y(SCREEN_CENTER_Y-10):x(SCREEN_CENTER_X+50):diffuse(color("#ffffff")):strokecolor(color("#000000")):zoom(.8):halign(1):uppercase(true):maxwidth(400)
		end;
		CurrentSongChangedMessageCommand=function(self)
			local song = GAMESTATE:GetCurrentSong();
			if song then
				self:settext(song:GetDisplayArtist());
			else
				self:settext("");
			end
		end;
	};
	LoadFont("Common Normal") .. {
		InitCommand=function(self)
			self:y(SCREEN_CENTER_Y-80):x(SCREEN_CENTER_X+50):diffuse(color("#ffffff")):strokecolor(color("#000000")):zoom(.8):halign(1):uppercase(true):maxwidth(400)
		end;
		CurrentSongChangedMessageCommand=function(self)
			local song = GAMESTATE:GetCurrentSong();
			if song then
				self:settext(song:GetDisplaySubTitle());
			else
				self:settext("");
			end
		end;
	};
	LoadFont("Common Normal") .. {
		InitCommand=function(self)
			self:y(SCREEN_CENTER_Y+10):x(SCREEN_CENTER_X+50):diffuse(color("#08ddcf")):strokecolor(color("#000000")):halign(1):uppercase(true):maxwidth(400)
		end;
		CurrentSongChangedMessageCommand=function(self)
			local song = GAMESTATE:GetCurrentSong();
			if song then
				local bpm = {
					string.format("%.0f", song:GetDisplayBpms()[1]),
					string.format("%.0f", song:GetDisplayBpms()[2]),
				};
				if bpm[1] == bpm[2] then
					self:settext("BPM "..bpm[1])
				else
					self:settext("BPM "..bpm[1].."~"..bpm[2]);
				end
			else
				self:settext("");
			end
		end;
	};
	LoadFont("Common Normal") .. {
		InitCommand=function(self)
			self:y(SCREEN_BOTTOM-30):x(SCREEN_CENTER_X):diffuse(color("#FFFFFF")):uppercase(true):strokecolor(color("#000000"))
		end;
		Text="PICK A SONG";
	};
	LoadFont("Common Normal") .. {
		Text="MUSIC SELECT";
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