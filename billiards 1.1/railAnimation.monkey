Strict
Import JPMod.MonkeyBall2DMod

Class RailAnimation
	Field jobList:List<Ball>
	Field settledList:List<RailBall>
	Field movingList:List<RailBall>
	Field stopPVector2Ds:Vec2D[]
	Field finalStop:Int=0
	Method New()
		Self.jobList= New List<Ball>
		Self.settledList= New List<RailBall>
		Self.movingList= New List<RailBall>
		Self.stopPVector2Ds=[New Vec2D(375.0,340.0,366.0,370.0),New Vec2D(366.0,370.0,355.0,380.0),New Vec2D(355.0,380.0,325.0,380.0),
						 New Vec2D(325.0,380.0,305.0,380.0),New Vec2D(305.0,380.0,285.0,380.0),New Vec2D(285.0,380.0,265.0,380.0),
						 New Vec2D(265.0,380.0,245.0,380.0),New Vec2D(245.0,380.0,225.0,380.0),New Vec2D(225.0,380.0,205.0,380.0),
						 New Vec2D(205.0,380.0,185.0,380.0),New Vec2D(185.0,380.0,165.0,380.0),New Vec2D(165.0,380.0,145.0,380.0),
						 New Vec2D(145.0,380.0,125.0,380.0),New Vec2D(125.0,380.0,105.0,380.0),New Vec2D(105.0,380.0,85.0,380.0),
						 New Vec2D(85.0,380.0,65.0,380.0),New Vec2D(65.0,380.0,45.0,380.0),New Vec2D(45.0,380.0,25.0,380.0),
						 New Vec2D(25.0,380.0,25.0,380.0)]
		Self.finalStop=18
	End
	Field showStops:Int=0
	Method ShowStops:Void(show:Int)
		Self.showStops=show
	End
	Field index:Int=0
	Method Reset:Void()
		Self.jobList.Clear()
		Self.movingList.Clear()
		Self.settledList.Clear()
		Self.index=0
		Self.finalStop=18
	End
	Method AddJob:Void(b:Ball)
		Self.jobList.AddFirst(b)
	End
	Method RemoveCueBall:Void()
		If(Not Self.jobList.IsEmpty())
			For Local b:Ball = Eachin Self.jobList
				If(b.num=16)
					Self.jobList.RemoveEach(b)
					Return
				End
			End
		End
		If(Not Self.movingList.IsEmpty())
			For Local b2:RailBall = Eachin Self.movingList
				If(b2.ball.num=16)
					Self.movingList.RemoveEach(b2)
					Return
				End
			End
		End
		If( Not Self.settledList.IsEmpty())
			For Local b3:RailBall = Eachin Self.settledList
				If(b3.ball.num=16)
					Self.settledList.RemoveEach(b3)
					Self.finalStop=b3.index
				End
			End
		End
		If( Not Self.settledList.IsEmpty())
			Local c:Int=0
			For Local b4:RailBall = Eachin Self.settledList.Backwards()
				If(b4.index<Self.finalStop)
					Self.settledList.RemoveEach(b4)
					Self.movingList.AddLast(b4)
				End
			End
		End
	End
	Method Update:Void(spd:Float)
		If(Self.movingList.IsEmpty() And Self.jobList.IsEmpty())
			Return
		End
		If(Self.movingList.IsEmpty())
			Local b:Ball=Self.jobList.RemoveLast()
			If(b<>Null)
				Local rb:RailBall=New RailBall(b,Self.stopPVector2Ds[0].x,Self.stopPVector2Ds[0].y)
				Self.movingList.AddLast(rb)
			End
		Else
			If( Not Self.jobList.IsEmpty())
				Local rb2:RailBall=Self.movingList.Last()
				If((rb2)<>Null)
					Local vx1:Float=rb2.ball.P.x-Self.stopPVector2Ds[0].x
					Local vy1:Float=rb2.ball.P.y-Self.stopPVector2Ds[0].y
					Local dp:Float=vx1*Self.stopPVector2Ds[0].dx+vy1*Self.stopPVector2Ds[0].dy
					If(Abs(dp)>rb2.ball.radius+20.0)
						Local b2:Ball=Self.jobList.RemoveLast()
						Self.movingList.AddLast(New RailBall(b2,Self.stopPVector2Ds[0].x,Self.stopPVector2Ds[0].y))
					End
				End
			End
		End
		Local vx:Float=.0
		Local vy:Float=.0
		For Local rb3:RailBall = Eachin Self.movingList
			vx=Self.stopPVector2Ds[rb3.index].dx*spd
			vy=Self.stopPVector2Ds[rb3.index].dy*spd
			rb3.ball.P.x+=vx
			rb3.ball.P.y+=vy
		End
		For Local rb4:RailBall = Eachin Self.movingList
			If(rb4.index<Self.finalStop)
				Local vx12:Float=rb4.ball.P.x-Self.stopPVector2Ds[rb4.index].x
				Local vy12:Float=rb4.ball.P.y-Self.stopPVector2Ds[rb4.index].y
				Local dp1:Float=vx12*Self.stopPVector2Ds[rb4.index].dx+vy12*Self.stopPVector2Ds[rb4.index].dy
				If(Abs(dp1)>=Self.stopPVector2Ds[rb4.index].len)
					Local len:Float=Abs(dp1)-Self.stopPVector2Ds[rb4.index].len
					vx12=Self.stopPVector2Ds[rb4.index].dx*Self.stopPVector2Ds[rb4.index].len
					vy12=Self.stopPVector2Ds[rb4.index].dy*Self.stopPVector2Ds[rb4.index].len
					rb4.ball.P.x=Self.stopPVector2Ds[rb4.index].x+vx12
					rb4.ball.P.y=Self.stopPVector2Ds[rb4.index].y+vy12
					rb4.animation.Rotate(vx*1.2,vy*1.2)
					rb4.index+=1
					If(rb4.index=Self.finalStop)
						Self.movingList.RemoveEach(rb4)
						Self.settledList.AddLast(rb4)
						rb4.animation.Rotate(vx*1.2,vy*1.2)
						If(Self.finalStop<18)
							media.PlayBallCol(2)
						End
						Self.finalStop-=1
					Else
						vx12=Self.stopPVector2Ds[rb4.index].dx*len
						vy12=Self.stopPVector2Ds[rb4.index].dy*len
						rb4.ball.P.x+=Self.stopPVector2Ds[rb4.index].dx*len
						rb4.ball.P.y+=Self.stopPVector2Ds[rb4.index].dy*len
					End
				Else
					rb4.animation.Rotate(vx,vy)
				End
			Else
				If(rb4.index=Self.finalStop)
					Self.movingList.RemoveEach(rb4)
					rb4.index=Self.finalStop
					rb4.ball.P.x=Self.stopPVector2Ds[Self.finalStop].x
					rb4.ball.P.y=Self.stopPVector2Ds[Self.finalStop].y
					Self.settledList.AddLast(rb4)
				End
			End
		End
	End
	Method Render:Void()
		If(Self.showStops=1)
			graphics.SetColor(240.0,240.0,100.0)
			Local t_:Vec2D[]=Self.stopPVector2Ds
			Local t_2:Int=0
			While(t_2<t_.Length)
				Local stop:Vec2D=t_[t_2]
				t_2=t_2+1
				DrawCircle(stop.x,stop.y,3.0)
				DrawLine(stop.x,stop.y,stop.x+stop.dx*stop.len,stop.y+stop.dy*stop.len)
			End
		End
		For Local railBall:RailBall = Eachin Self.settledList
			railBall.Render()
		End
		For Local moving:RailBall = Eachin Self.movingList
			moving.Render()
		End
	End
End

Class RailBall
	Field ball:Ball
	Field index:Int=0
	Field animation:ABall3D
	Method New(b:Ball,x:Float,y:Float)
		b.P.x=x
		b.P.y=y
		Self.ball=b
		Self.animation=ABall3D(b.animation)
		Self.index=0
	End

	Method Render:Void()
		Self.ball.Render()
	End
End
