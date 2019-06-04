return Def.ActorFrame {
  InitCommand=function(self)
  	self:Center()
  end;
	Def.Quad {
		InitCommand=function(self)
			self:scaletoclipped(SCREEN_WIDTH,SCREEN_HEIGHT)
		end;
		OnCommand=function(self)
			if iidxlifetable[#iidxlifetable] > 79 then
				self:diffuse(color("#376eac"))
			else
				self:diffuse(color("#8c5044"))
			end
		end
	};
	Def.Quad {
		InitCommand=function(self)
			self:scaletoclipped(SCREEN_WIDTH,SCREEN_HEIGHT)
		end;
		OnCommand=function(self)
			self:diffuse(color("#000000")):fadetop(0.8):diffusealpha(0.8)
		end;
	};
	Def.Quad {
		InitCommand=function(self)
			self:scaletoclipped(SCREEN_WIDTH,SCREEN_HEIGHT):fadebottom(0.8):diffusealpha(0.8)
		end;
		OnCommand=function(self)
			if iidxlifetable[#iidxlifetable] > 79 then
				self:diffuse(color("#93f2f8"))
			else
				self:diffuse(color("#f7a4ab"))
			end
		end
	};
};