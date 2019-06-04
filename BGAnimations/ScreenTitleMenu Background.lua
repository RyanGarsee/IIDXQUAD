return Def.ActorFrame {
  InitCommand=function(self)
  	self:Center()
  end;
	Def.Quad {
		InitCommand=function(self)
			self:scaletoclipped(SCREEN_WIDTH,SCREEN_HEIGHT)
		end;
		OnCommand=function(self)
			self:diffuse(color("#da934f"))
		end;
	};
	Def.Quad {
		InitCommand=function(self)
			self:scaletoclipped(SCREEN_WIDTH,SCREEN_HEIGHT)
		end;
		OnCommand=function(self)
			self:diffuse(color("#000000")):fadebottom(0.8):diffusealpha(0.8)
		end;
	};
	Def.ActorFrame {
	InitCommand=function(self)
		self:rotationx(70):rotationy(-10)
	end;
	LoadFont("Common Normal") .. {
		Text="IIDXQUAD\nIIDXQUAD\nIIDXQUAD";
		InitCommand=function(self)
			self:diffuse(color("#000000")):zoom(10):spin():effectmagnitude(0,0,10):diffusealpha(0.5)
		end;
	};
	};
};