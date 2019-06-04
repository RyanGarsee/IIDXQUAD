return Def.ActorFrame {	
	Def.Quad{
		InitCommand=function(self)
			self:zoomto(400,30):diffuse(color("0.3,0.3,0.3,1")):halign(0):x(-35)
		end;
	};
	Def.Quad{
		InitCommand=function(self)
			self:zoomto(400,28):diffuse(color("#2198cb")):halign(0):x(-28)
		end;
	};
	Def.Quad{
		InitCommand=function(self)
			self:zoomto(5,28):diffuse(color("0.2,0.2,0.2,1")):halign(0):x(-35)
		end;
	};
	LoadFont("Common Normal") .. {
		Text="VERSION";
		InitCommand=function(self)
			self:diffuse(color("#2198cb")):strokecolor(color("#000000")):halign(0):uppercase(true):x(180):zoom(0.8)
		end;
	};
	LoadFont("Common Normal") .. {
		InitCommand=function(self)
			self:diffuse(color("#ffffff")):strokecolor(color("#000000")):halign(0):uppercase(true)
		end;
		CurrentSongChangedMessageCommand=function(self) 
			local Title = self:GetParent():GetParent()
			self:settext(Title:GetText()):maxwidth(200):x(-20)
		end;
		SetCommand=function(self) 
			local Title = self:GetParent():GetParent()
			self:settext(Title:GetText()):maxwidth(200):x(-20)
		end;
	};
};