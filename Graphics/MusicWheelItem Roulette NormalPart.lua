return Def.ActorFrame {
	Def.Quad{
		InitCommand=function(self)
			self:zoomto(400,30):diffuse(color("0.3,0.3,0.3,1")):halign(0):x(-35)
		end;
	};
	Def.Quad{
		InitCommand=function(self)
			self:zoomto(400,28):diffuse(color("0.5,0.5,0.5,1")):halign(0):x(6)
		end;
	};
	LoadFont("Common Normal") .. {
		Text="? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ?";
		InitCommand=function(self)
			self:diffuse(color("#e54523")):strokecolor(color("#000000")):halign(0):uppercase(true):x(10)
		end;
	};
	Def.Quad{
		InitCommand=function(self)
			self:zoomto(32,28):diffuse(color("0.5,0.5,0.5,1")):halign(1):x(4)
		end;
	};
	Def.Quad{
		InitCommand=function(self)
			self:zoomto(5,28):diffuse(color("0.2,0.2,0.2,1")):halign(0):x(-35)
		end;
	};
	LoadFont("Common Normal") .. {
		Text="?";
		InitCommand=function(self)
			self:diffuse(color("#e54523")):strokecolor(color("#000000")):uppercase(true):x(-10)
		end;
		OnCommand=function(self)
			self:pulse():effectmagnitude(1,1.4,0):effectperiod(.2)
		end;
	};
};