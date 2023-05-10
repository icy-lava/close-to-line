V=require'v'
L=love
G=L.graphics
l=G.line
M=math
s=M.sin
p=0
L.draw=->
	t=L.timer.getTime!
	x=400+400*s t+2*s t+3*s t
	y=300+300*s t+3*s t+5*s t
	X=400+400*s t+4*s t+4*s t
	Y=300+300*s t+3*s t+2*s t
	o=V x-X,y-Y
	o.length=1e4
	l x+o.x,y+o.y,x-o.x,y-o.y
	-- m=L.mouse.getY!
	-- p+=.1*M.max 0,200-M.abs y-m
	-- G.print M.floor p