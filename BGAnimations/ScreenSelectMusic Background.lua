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
		self:rotationx(10):rotationy(0)
	end;
	LoadFont("Common Normal") .. {
		Text="IIDXQUAD IIDXQUAD\nIIDXQUAD IIDXQUAD\nIIDXQUAD IIDXQUAD";
		InitCommand=function(self)
			self:diffuse(color("#000000")):zoom(4):spin():effectmagnitude(0,15,0):diffusealpha(0.5)
		end;
	};
	};
	Def.ActorFrame {
	InitCommand=function(self)
		self:rotationx(10):rotationy(90)
	end;
	LoadFont("Common Normal") .. {
		Text="IIDXQUAD IIDXQUAD\nIIDXQUAD IIDXQUAD\nIIDXQUAD IIDXQUAD";
		InitCommand=function(self)
			self:diffuse(color("#000000")):zoom(4):spin():effectmagnitude(0,15,0):diffusealpha(0.5)
		end;
	};
	};
};