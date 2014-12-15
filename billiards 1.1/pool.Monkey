Strict
Import mojo
Import JPMod.GuiMod
Import JPMod.MonkeyBall2DMod
Import railAnimation
Import PlayerRecords

Class Game Extends App

	Field state:Int=0
	Field fontImg:Image
	Field frame1:FrameAnimation
	Field frame2:FrameAnimation
	Field pvcBtn:Button2
	Field pvpBtn:Button2
	Field soloBtn:Button2
	Field scores:Button2
	Field pool8:Pool
	Field poolSolo:Pool
	Field alpha:Float=.0
	Field started:Int=0
	Method OnCreate:Int()
		'SetBlend(0)
		'Mouse = New cMouse
		Self.state=1
		atlasImg=LoadImage("poolAtlasb.png",1,Image.DefaultFlags)
		If atlasImg = Null Error("Unable to load poolatlasb.png")
		media=New Media(atlasImg)
		LargeText=New VaryFont(atlasImg)
		Self.fontImg=atlasImg.GrabImage(0,512,10,16,96,Image.DefaultFlags)
		If(Not Self.fontImg)
			Error("Unable to load fontImg.png")
		End
		SetFont(Self.fontImg,32)
		Text=New BitmapText(Self.fontImg,77)
		Self.frame1=New FrameAnimation(media,50,50,DeviceWidth()-100,DeviceHeight()-100,2,40)
		Self.frame2=New FrameAnimation(media,50,20,DeviceWidth()-100,DeviceHeight()-40,0,40)
		Local buttonImg:Image=media.buttonImg
		Self.pvcBtn=New Button2(buttonImg,(((DeviceWidth()-buttonImg.Width())/2)),120,"VS Computer",Null)
		Self.pvpBtn=New Button2(buttonImg,(((DeviceWidth()-buttonImg.Width())/2)),200,"VS Player",Null)
		Self.soloBtn=New Button2(buttonImg,(((DeviceWidth()-buttonImg.Width())/2)),280,"VS Time",Null)
		Self.scores=New Button2(buttonImg,(((DeviceWidth()-buttonImg.Width())/2)),360,"Scores",Null)
		inputName=New TextFieldGui(150,150,"Player 1",Null,200)
		Self.pool8= New EightBall()
		Self.poolSolo= New PoolSoloTime()
		scoreTableVsTime= New ScoreTable("scoreTable.dat")
		Self.alpha=0.0
		Self.started=1
		Self.frame1.Init()
		SetUpdateRate(30)
		Return 1
	End
	
	Field down:Int=0
	Field pool:Pool
	Method OnUpdate:Int()
		mouse.Update()
		If(mouse.ButtonInUse())
			Self.down=1
		End
		If(state=1)
			If(mouse.ButtonInUse()=0 And Self.down=1)
				Self.frame2.Init()
				Self.alpha=0.0
				Self.down=0
				Self.state=2
			End
		Else
			If(state=2)
				Self.pvcBtn.Update()
				Self.pvpBtn.Update()
				Self.soloBtn.Update()
				Self.scores.Update()
				Local t_2:Bool=True
				If(((t_2))=Self.pvcBtn.GetState())
					Self.pool=Self.pool8
					Self.pool.SetupPVC()
					Self.state=6
					Self.pool.Reset()
				Else
					If(((t_2))=Self.pvpBtn.GetState())
						Self.pool=Self.pool8
						Self.pool.SetupPVP()
						Self.state=6
						Self.pool.Reset()
					Else
						If(((t_2))=Self.soloBtn.GetState())
							Self.pool=Self.poolSolo
							Self.pool.SetupTimed()
							Self.state=6
							Self.pool.InitGame()
						Else
							If(((t_2))=Self.scores.GetState())
								Self.state=7
								scoreTableVsTime.InitFrame()
							End
						End
					End
				End
			Else
				If(state=6)
					If(Self.pool.Update()=0)
						Self.state=7
						Local record:Record=Self.pool.GetRecord()
						scoreTableVsTime.SetRecord(record)
						scoreTableVsTime.SaveTable()
						scoreTableVsTime.InitFrame()
					End
				Else
					If(state=7)
						If(scoreTableVsTime.Update()=False)
							Self.frame2.Init()
							Self.alpha=0.0
							Self.down=0
							Self.state=2
						End
					Else
						If(state=4)
						End
					End
				End
			End
		End
		Return 1
	End
	Method OnRender:Int()
		graphics.SetColor(255.0,255.0,255.0)
		DrawImage(media.titleImg,0.0,0.0,0)
		Local t_3:Int=Self.state
		If(t_3=1)
			Self.frame1.Render()
			If(Self.started=1)
				graphics.SetColor(255.0,255.0,255.0)
				DrawImage(media.titleImg,0.0,0.0,0)
				Self.started=0
			Else
				If(Self.frame1.Update()=0)
					DrawImage(media.logoImg,180.0,60.0,0)
					Local str:String="HEXOBOT"
					Local x:Int=(((DeviceWidth()-LargeText.TextWidth(str))/2))
					Local y:Int=340
					If(Self.alpha<1.0)
						SetAlpha(Self.alpha)
						Self.alpha+=.02
					End
					LargeText.Draw(str,(x),(y))
					str="Touch To Continue"
					graphics.SetColor(255.0,255.0,255.0)
					x=(((DeviceWidth()-Text.Width(str))/2))
					y=DeviceHeight()-80
					Text.Draw(str,x,y)
				End
			End
			SetAlpha(1.0)
		Else
			If(t_3=2)
				Self.frame2.Render()
				If(Self.frame2.Update()=0)
					DrawImage(media.logoImg,180.0,60.0,0)
					Local str2:String="8 BALL HUSTLER"
					Local x2:Int=(((DeviceWidth()-LargeText.TextWidth(str2))/2))
					Local y2:Int=40
					If(Self.alpha<1.0)
						SetAlpha(Self.alpha)
						Self.alpha+=0.02
					End
					LargeText.Draw(str2,(x2),(y2))
					Self.pvcBtn.Render()
					Self.pvpBtn.Render()
					Self.soloBtn.Render()
					Self.scores.Render()
				End
				SetAlpha(1.0)
			Else
				If(t_3=6)
					Self.pool.Render()
				Else
					If(t_3=7)
						scoreTableVsTime.Render()
					End
				End
			End
		End
		Return 1
	End
End


Function Main:Int()
	New Game()
	Return 1
End

Global atlasImg:Image

Global inputName:TextFieldGui

Class Pool
	Field engine:ElasticEngine
	Field ballList:List<Ball>
	Field arcList:List<ArcWall>
	Field pottedList:List<Ball>
	Field turnList:List<Ball>
	Field tableImg:Image
	Field arrowsImg:Image
	Field ballImg:Image
	Field railAnimation:RailAnimation
	Field Exiting:Int=0
	Field player:Record
	Field state:Int=0
	Field cue:Ball
	
	Method Setup16:Void()
		For Local a:ArcWall = Eachin arcList
			Select a.num
				Case 1 a.SetTarget(a.P.x+16.0,a.P.y+16.0)
				Case 2 a.SetTarget(a.P.x,a.P.y+15.0)
				Case 3 a.SetTarget(a.P.x-16.0,a.P.y+16.0)
				Case 4 a.SetTarget(a.P.x-16.0,a.P.y-16.0)
				Case 5 a.SetTarget(a.P.x,a.P.y-15.0)
				Case 6 a.SetTarget(a.P.x+16.0,a.P.y-16.0)
			End Select
		Next
		Self.engine.Add3DBall(180.8,180.0,10.0,0.0,0.0,media.ballImg,16776992.0,10040217.0,1,0)
		Self.engine.Add3DBall(162.6,170.0,10.0,0.0,0.0,media.ballImg,4210943.0,16776960.0,2,0)
		Self.engine.Add3DBall(162.6,190.0,10.0,0.0,0.0,media.ballImg,16728128.0,16776960.0,3,0)
		Self.engine.Add3DBall(144.4,160.0,10.0,0.0,0.0,media.ballImg,6697983.0,16776960.0,4,0)
		Self.engine.Add3DBall(144.4,200.0,10.0,0.0,0.0,media.ballImg,16737826.0,65535.0,5,0)
		Self.engine.Add3DBall(126.2,150.0,10.0,0.0,0.0,media.ballImg,2149408.0,255.0,6,0)
		Self.engine.Add3DBall(126.2,170.0,10.0,0.0,0.0,media.ballImg,14487568.0,14737632.0,7,0)
		Self.engine.Add3DBall(144.4,180.0,10.0,0.0,0.0,media.ballImg,5263440.0,15790320.0,8,0)
		Self.engine.Add3DBall(126.2,190.0,10.0,0.0,0.0,media.ballImg,16776992.0,10040217.0,9,0)
		Self.engine.Add3DBall(126.2,210.0,10.0,0.0,0.0,media.ballImg,4210943.0,16776960.0,10,0)
		Self.engine.Add3DBall(108.0,140.0,10.0,0.0,0.0,media.ballImg,16728128.0,16776960.0,11,0)
		Self.engine.Add3DBall(108.0,160.0,10.0,0.0,0.0,media.ballImg,6697983.0,16776960.0,12,0)
		Self.engine.Add3DBall(108.0,180.0,10.0,0.0,0.0,media.ballImg,16737826.0,65535.0,13,0)
		Self.engine.Add3DBall(108.0,200.0,10.0,0.0,0.0,media.ballImg,2149408.0,255.0,14,0)
		Self.engine.Add3DBall(108.0,220.0,10.0,0.0,0.0,media.ballImg,14487568.0,14737632.0,15,0)
		Self.cue=Self.engine.Add3DBall(490.0,180.0,10.0,-15.0,0.05,media.ballImg,16777215.0,10040217.0,16,0)
	End
	Method SetupPVC:Void() Abstract
	Method Reset:Void() Abstract
	Method SetupPVP:Void() Abstract
	Method SetupTimed:Void() Abstract
	Method InitGame:Void() Abstract
	Method Update:Int() Abstract
	Method GetRecord:Record()
		Return Self.player
	End
	Method Render:Void() Abstract

	Field activePlayer:User
	Field otherPlayer:User
	Field incrementer:Int=0
	Field scoreLevel:Int=1
	Field maxLevel:Int=15
	Field decrementer:Int=0
	Method BallInHole:Void()
		For Local a:ArcWall = Eachin Self.arcList
			For Local b:Ball = Eachin Self.ballList
				If(a.BallInside(b))
					Self.engine.RemoveBall(b)
					Self.pottedList.AddLast(b)
					Self.turnList.AddLast(b)
					Self.railAnimation.AddJob(b)
					media.PlayPocketCol()
					If(b.num<16)
						Self.incrementer+=5000
						Self.player.score+=Self.scoreLevel*100
						Self.scoreLevel+=1
						If(Self.scoreLevel>Self.maxLevel)
							Self.scoreLevel=Self.maxLevel
						End
						Self.player.IncrementPocketed()
					Else
						Self.decrementer+=30000
						media.PlayScratch()
					End
				End
			End
		End
	End
	Method ListContains:Bool(list:List<Ball>,num:Int)
		For Local b2:Ball = Eachin list
			If(b2.num=num)
				Return True
			End
		End
		Return False
	End

	Method ListContains:Bool(list:List<Ball>,b:Ball)
		For Local b2:Ball = Eachin list
			If(b2=b)
				Return True
			End
		End
		Return False
	End
	
	Method RestoreCue:Void()
		Self.state=9
		Self.cue.Init(0.0,0.0)
		Self.cue.SetPosition(490.0,180.0)
		Self.turnList.RemoveEach(Self.cue)
		Self.pottedList.RemoveEach(Self.cue)
		Self.railAnimation.RemoveCueBall()
		Self.engine.AddBall(Self.cue)
	End
	
	Method ListContainsSolids:Bool(list:List<Ball>)
		For Local b:Ball = Eachin list
			If(b.num<8)
				Return True
			End
		End
		Return False
	End
	Method ListContainsStripes:Bool(list:List<Ball>)
		For Local b:Ball = Eachin list
			If(b.num>8 And b.num<16)
				Return True
			End
		End
		Return False
	End
	
	Field user:User
	Field minLevel:Int
	
End

Class EightBall Extends Pool
	Field inacuracy:Float=.0
	Method Init:Void()
		Self.Exiting=1
	End
	Field lastTime:Float=.0
	
	Method New()
		Self.inacuracy=0.4
		Self.engine=New ElasticEngine()
		Self.engine.SetGravity(0.0,0.0)
		Self.engine.SetFriction(0.980)
		Self.ballList=Self.engine.ballList
		Self.arcList=New List<ArcWall>
		Self.pottedList= New List<Ball>
		Self.turnList=New List<Ball>
		tableStorage= New TableStorage()
		tableStorage.GetTable(0,Self.engine,Self.arcList)
		Self.tableImg=media.tableImg
		Self.arrowsImg=media.arrowsImg
		Self.ballImg=media.ballImg
		Self.railAnimation=New RailAnimation()
		Self.railAnimation.ShowStops(0)
		Self.Init()
		Self.player=New Record()
		Self.state=1
		Self.Setup16()
		Self.lastTime=(Millisecs())
	End

	Method SetupTimed:Void()
		Error("invald attemp to create 8ball pool timed")
	End
	Method SetupPVC:Void()
		Self.activePlayer= New Player("Player 1",Self.cue,Self.engine,media.ghostImg,media.ballImg,media.stickImg,media.rotatorImg,media.buttonImg,media.stripImg,media.frameTopImg,media.frameBotImg,media.topImg,media.botImg,media.lrImg,media.meterImg,media.stretchImg,media.sliderImg)
		Self.otherPlayer= New Cpu("Cpu",Self.cue,Self.engine,Self.arcList,media.stickImg,media.ballImg,Self.inacuracy)
	End
	Method SetupPVP:Void()
		Self.activePlayer=New Player("Player 1",Self.cue,Self.engine,media.ghostImg,media.ballImg,media.stickImg,media.rotatorImg,media.buttonImg,media.stripImg,media.frameTopImg,media.frameBotImg,media.topImg,media.botImg,media.lrImg,media.meterImg,media.stretchImg,media.sliderImg)
		Self.otherPlayer=New Player("Player 2",Self.cue,Self.engine,media.ghostImg,media.ballImg,media.stickImg,media.rotatorImg,media.buttonImg,media.stripImg,media.frameTopImg,media.frameBotImg,media.topImg,media.botImg,media.lrImg,media.meterImg,media.stretchImg,media.sliderImg)
	End
	Method InitGame:Void()
	End
	
	Field down:Int=0
	Method Reset:Void()
		For Local b:Ball= Eachin Self.pottedList
			Self.engine.AddBall(b)
			Self.pottedList.RemoveEach(b)
		End
		Self.turnList.Clear()
		Self.railAnimation.Reset()
		For Local b2:Ball = Eachin Self.ballList
			b2.Init(0.0,0.0)
			Local t_22:Int=b2.num
			If(t_22=1)
				b2.SetPosition(180.8,180.0)
			Else
				If(t_22=2)
					b2.SetPosition(162.6,170.0)
				Else
					If(t_22=3)
						b2.SetPosition(162.6,190.0)
					Else
						If(t_22=4)
							b2.SetPosition(144.4,160.0)
						Else
							If(t_22=5)
								b2.SetPosition(144.4,200.0)
							Else
								If(t_22=6)
									b2.SetPosition(126.2,150.0)
								Else
									If(t_22=7)
										b2.SetPosition(126.2,170.0)
									Else
										If(t_22=8)
											b2.SetPosition(144.4,180.0)
										Else
											If(t_22=9)
												b2.SetPosition(126.2,190.0)
											Else
												If(t_22=10)
													b2.SetPosition(126.2,210.0)
												Else
													If(t_22=11)
														b2.SetPosition(108.0,140.0)
													Else
														If(t_22=12)
															b2.SetPosition(108.0,160.0)
														Else
															If(t_22=13)
																b2.SetPosition(108.0,180.0)
															Else
																If(t_22=14)
																	b2.SetPosition(108.0,200.0)
																Else
																	If(t_22=15)
																		b2.SetPosition(108.0,220.0)
																	Else
																		If(t_22=16)
																			b2.SetPosition(490.0,180.0)
																		End
																	End
																End
															End
														End
													End
												End
											End
										End
									End
								End
							End
						End
					End
				End
			End
			b2.ResetAnimation()
		End
		
		Self.state=2
		Self.Exiting=1
		Self.down=False
	
	End
	
	Field timeFrame:Float=.0
	
	Method AssignBalls:Void()
		For Local b:Ball = Eachin Self.turnList
			If(Self.activePlayer.OwnsSolids())
				If(b.num<=8)
					Self.activePlayer.AddBall(b)
				Else
					If(b.num>8)
						Self.otherPlayer.AddBall(b)
					End
				End
			Else
				If(Self.activePlayer.OwnsStripes())
					If(b.num>=8)
						Self.activePlayer.AddBall(b)
					Else
						Self.otherPlayer.AddBall(b)
					End
				Else
					If(b.num<8)
						Self.activePlayer.SetToSolids()
						Self.otherPlayer.SetToStripes()
						Self.activePlayer.AddBall(b)
					Else
						If(b.num>8)
							Self.activePlayer.SetToStripes()
							Self.otherPlayer.SetToSolids()
							Self.activePlayer.AddBall(b)
						Else
							Self.activePlayer.AddBall(b)
						End
					End
				End
			End
		End
	End
	Method ResolveTurn:Void()
		If(Self.turnList.IsEmpty())
			Self.Exiting=0
			Self.state=10
			Return
		End
		Self.state=3
		If(Self.Exiting=1)
			For Local b:Ball = Eachin Self.turnList
				If(b.num<8)
					Self.activePlayer.SetToSolids()
					Self.otherPlayer.SetToStripes()
					Exit
				End
				If(b.num>8 And b.num<16)
					Self.activePlayer.SetToStripes()
					Self.otherPlayer.SetToSolids()
					Exit
				End
			End
			If(Self.ListContains(Self.turnList,Self.cue))
				Self.state=9
				If(Self.ListContains(Self.turnList,8))
					Self.state=7
				Else
					Self.RestoreCue()
				End
			Else
				If(Self.ListContains(Self.turnList,8))
					Self.state=6
				End
			End
			For Local b2:Ball = Eachin Self.turnList
				If(Self.activePlayer.OwnsSolids())
					If(b2.num<=8)
						Self.activePlayer.AddBall(b2)
					Else
						If(b2.num>8 And b2.num<16)
							Self.otherPlayer.AddBall(b2)
						Else
							Self.RestoreCue()
						End
					End
				Else
					If(Self.activePlayer.OwnsStripes())
						If(b2.num>=8 And b2.num<16)
							Self.activePlayer.AddBall(b2)
						Else
							If(b2.num<8)
								Self.otherPlayer.AddBall(b2)
							Else
								Self.RestoreCue()
							End
						End
					Else
						If(b2.num=8)
							Self.activePlayer.AddBall(b2)
						End
					End
				End
			End
			Self.Exiting=0
		Else
			Local b3:Ball=Self.engine.GetFirstCollision()
			If(Self.activePlayer.CompletedSet()=True)
				If(Self.ListContains(Self.turnList,8))
					Self.state=6
					If(Self.ListContains(Self.turnList,Self.cue))
						Self.state=7
					End
					If(Self.activePlayer.OwnsSolids())
						If(b3.num>8 And b3.num<16)
							Self.state=7
						End
					Else
						If(b3.num<8)
							Self.state=7
						End
					End
				Else
					If(Self.ListContains(Self.turnList,Self.cue))
						Self.state=7
					Else
						Self.state=10
					End
				End
			Else
				If((b3)<>Null)
					If(b3.num<8 And Self.activePlayer.OwnsStripes())
						Self.state=10
					End
					If(b3.num>8 And b3.num<16 And Self.activePlayer.OwnsSolids())
						Self.state=10
					End
				End
				If(Self.activePlayer.OwnsSolids())
					If(Self.ListContainsSolids(Self.turnList)=False)
						Self.state=10
					End
				Else
					If(Self.activePlayer.OwnsStripes())
						If(Self.ListContainsStripes(Self.turnList)=False)
							Self.state=10
						End
					End
				End
				If(Self.ListContains(Self.turnList,Self.cue))
					Self.RestoreCue()
				End
				If(Self.ListContains(Self.turnList,8))
					Self.state=7
				End
				Self.AssignBalls()
			End
		End
		Self.turnList.Clear()
		Return
	End
	
	Method SwitchPlayers:Void()
		Self.user=Self.activePlayer
		Self.activePlayer=Self.otherPlayer
		Self.otherPlayer=Self.user
	End
	
	Field finalText1:String=""
	Field finalText2:String=""
	
	Method Update:Int()
		Local t_SelfTime:Float = Millisecs()
		Self.timeFrame=(t_SelfTime-Self.lastTime)/30.0
		Self.lastTime=t_SelfTime
		Local done:Int=0
		Local t_3:Int=Self.state
		If(t_3=1)
			Self.state=2
			Self.activePlayer.SetButtonText("position")
			Self.activePlayer.Init()
		Else
			If(t_3=2)
				If(Self.activePlayer.Positioning()=False)
					Self.state=3
					Self.activePlayer.SetButtonText("Shoot")
					Self.activePlayer.Init()
				End
			Else
				If(t_3=3)
					If(Self.activePlayer.Aiming()=False)
						Self.state=4
					End
				Else
					If(t_3=4)
						If(Self.activePlayer.ShootingAnimating()=False)
							Self.lastTime=(Millisecs())
							Self.state=5
						End
					Else
						If(t_3=5)
							Self.engine.Update(Self.timeFrame)
							Self.BallInHole()
							If(Self.engine.BallsMoving()=False)
								Self.ResolveTurn()
								Self.engine.ClearFirstCollision()
								Self.activePlayer.Init()
							End
						Else
							If(t_3=10)
								Self.SwitchPlayers()
								Self.activePlayer.Init()
								Self.state=3
							Else
								If(t_3=9)
									Self.SwitchPlayers()
									Self.activePlayer.SetButtonText("position")
									Self.activePlayer.Init()
									Self.state=2
								Else
									If(t_3=6)
										Self.finalText1=Self.activePlayer.name+" WINS GAME"
										Self.finalText2=Self.otherPlayer.name+" LOST GAME"
										Self.state=8
									Else
										If(t_3=7)
											Self.finalText1=Self.otherPlayer.name+" WINS GAME"
											Self.finalText2=Self.activePlayer.name+" LOST GAME"
											Self.state=8
										Else
											If(t_3=8)
												If((mouse.ButtonInUse())<>0)
													Self.down=1
												End
												If(mouse.ButtonInUse()=0 And Self.down=1)
													done=1
												End
											End
										End
									End
								End
							End
						End
					End
				End
			End
		End
		Self.railAnimation.Update(Self.timeFrame*2.0)
		Local t_:Int= Not(done)
		Return t_
	End
	
	Method Render:Void()
		DrawImage(media.railImg,5.0,360.0,0)
		Self.railAnimation.Render()
		graphics.SetColor(255.0,255.0,255.0)
		DrawImage(Self.tableImg,0.0,0.0,0)
		Self.engine.Render()
		graphics.SetColor(255.0,255.0,255.0)
		If(state=2)
			SetAlpha(.2)
			DrawRect(466.0,37.0,140.0,288.0)
			SetAlpha(.3)
			DrawImage(Self.arrowsImg,Self.cue.P.x,Self.cue.P.y,0)
			SetAlpha(1.0)
			Self.activePlayer.RenderButton()
		Else
			If(state=4 Or state=3)
				Self.activePlayer.Render(1)
			Else
				If(state=8)
					Text.Draw(Self.finalText1,200,100)
					Text.Draw(Self.finalText2,200,150)
				End
			End
		End
		Local x:Float=25.0
		graphics.SetColor(255.0,255.0,255.0)
	End
End

Class TableStorage
	Field currentTable:Int=0
	Method New()
		Self.currentTable=-1
	End
	Field table:Table
	Method GetTable:Table(index:Int,engine:ElasticEngine,arcList:List<ArcWall>)
		If(Self.currentTable=index)
			Return Self.table
		Else
			If(index<1 And index>-1)
				Local t_2:Int=index
				If(t_2=0)
					engine.RemoveWalls()
					Local t_wall:Wall[]=[Wall(New Arc(28.0,28.0,17.0,135.0,315.0,0.0,0.0,media.arcImg,16711680)),
					New Line(41.0,17.0,58.0,34.0,media.lineImg,16711680),
					New Line(59.0,34.0,296.0,34.0,media.lineImg,16711680),
					New Line(296.0,33.0,303.0,25.0,media.lineImg,16711680),
					New Line(303.0,24.0,303.0,19.0,media.lineImg,16711680),
					New Arc(320.0,18.0,17.0,180.0,360.0,0.0,0.0,media.arcImg,16711680),
					New Line(338.0,19.0,338.0,24.0,media.lineImg,16711680),
					New Line(337.0,25.0,345.0,33.0,media.lineImg,16711680),
					New Line(345.0,34.0,582.0,34.0,media.lineImg,16711680),
					New Line(583.0,33.0,599.0,17.0,media.lineImg,16711680),
					New Arc(612.0,28.0,17.0,225.0,405.0,0.0,0.0,media.arcImg,16711680),
					New Line(624.0,41.0,609.0,57.0,media.lineImg,16711680),
					New Line(608.0,57.0,608.0,304.0,media.lineImg,16711680),
					New Line(609.0,305.0,624.0,320.0,media.lineImg,16711680),
					New Arc(613.0,333.0,17.0,-45.0,135.0,0.0,0.0,media.arcImg,16711680),
					New Line(599.0,344.0,584.0,328.0,media.lineImg,16711680),
					New Line(584.0,327.0,345.0,327.0,media.lineImg,16711680),
					New Line(344.0,328.0,338.0,335.0,media.lineImg,16711680),
					New Line(338.0,336.0,338.0,341.0,media.lineImg,16711680),
					New Arc(320.0,342.0,17.0,0.0,180.0,0.0,0.0,media.arcImg,16711680),
					New Line(303.0,341.0,303.0,336.0,media.lineImg,16711680),
					New Line(303.0,335.0,296.0,328.0,media.lineImg,16711680),
					New Line(295.0,327.0,59.0,327.0,media.lineImg,16711680),
					New Line(58.0,328.0,41.0,344.0,media.lineImg,16711680),
					New Arc(27.0,333.0,17.0,45.0,225.0,0.0,0.0,media.arcImg,16711680),
					New Line(16.0,320.0,31.0,305.0,media.lineImg,16711680),
					New Line(33.0,304.0,33.0,58.0,media.lineImg,16711680),
					New Line(32.0,57.0,17.0,43.0,media.lineImg,16711680)]
					
					Self.table=New Table(t_wall,engine,arcList)
					Return Self.table
				End
			End
		End
		Return Null
	End
End
Global tableStorage:TableStorage
Class Table

	Method New(t_wall:Wall[],engine:ElasticEngine,arcList:List<ArcWall>)
		Local n:Int=1
		Local t_:Wall[]=t_wall
		Local t_2:Int=0
		While(t_2<t_.Length)
			Local t_w:Wall=t_[t_2]
			t_2=t_2+1
			Local t_1:String=t_w.name
			If(t_1="Line")
				Local l:Line=Line(t_w)
				If((l.image)<>Null)
					engine.AddLineWallImage(l.x1,l.y1,l.x2,l.y2,t_w.image,0)
				Else
					engine.AddLineWallOutline(l.x1,l.y1,l.x2,l.y2,Null,l.color)
				End
			Else
				If(t_1="Arc")
					Local a:Arc=Arc(t_w)
					If((a.image)<>Null)
						Local t_w2:ArcWall=engine.AddArcWallImage(a.x1,a.y1,a.radius,a.startAngle,a.endAngle,a.image,16777215)
						arcList.AddLast(t_w2)
						t_w2.num=n
						n+=1
					Else
						Local t_w3:ArcWall=engine.AddArcWallOutline(a.x1,a.y1,a.radius,a.startAngle,a.endAngle,a.color)
						If arcList = Null Then Error "arclist not initialized"
						arcList.AddLast(t_w3)
						t_w3.num=n
						n+=1
					End
				Else
					If(t_1="Circle")
					End
				End
			End
		End
	End
End

Class PoolSoloTime Extends Pool
	Field blinkOn:Int=0
	Method New()
		Self.engine=New ElasticEngine()
		Self.engine.SetGravity(0.0,0.0)
		Self.engine.SetFriction(0.970)
		Self.ballList=Self.engine.ballList
		Self.arcList=New List<ArcWall>
		Self.pottedList= New List<Ball>
		Self.turnList= New List<Ball>
		tableStorage= New TableStorage()
		tableStorage.GetTable(0,Self.engine,Self.arcList)
		Self.tableImg=media.tableImg
		Self.arrowsImg=media.arrowsImg
		Self.ballImg=media.ballImg
		Self.railAnimation=New RailAnimation()
		Self.railAnimation.ShowStops(0)
		Self.Exiting=1
		Self.Setup16()
		Self.player=New Record()
		Self.player.SetName("Player")
		Self.blinkOn=0
	End
	
	Method SetupPVC:Void()
		Error("invalid Setup in Solo Play")
	End
	Method SetupPVP:Void()
		Error("invalid Setup in Solo Play")
	End
	Field endTime:Int=0
	Field time:Int=0
	Method InitTime:Void()
		Self.endTime=Millisecs()+180000
		Self.time=180000
	End
	Method SetupTimed:Void()
		Self.activePlayer= New Player("",Self.cue,Self.engine,media.ghostImg,media.ballImg,media.stickImg,media.rotatorImg,media.buttonImg,media.stripImg,media.frameTopImg,media.frameBotImg,media.topImg,media.botImg,media.lrImg,media.meterImg,media.stretchImg,media.sliderImg)
		Self.InitTime()
	End
	Method Reset:Void()
		For Local b:Ball = Eachin Self.pottedList
			Self.engine.AddBall(b)
			Self.pottedList.RemoveEach(b)
		End
		Self.turnList.Clear()
		Self.railAnimation.Reset()
		For Local b2:Ball = Eachin Self.ballList
			b2.Init(0.0,0.0)
			Local t_5:Int=b2.num
			If(t_5=1)
				b2.SetPosition(180.8,180.0)
			Elseif(t_5=2)
				b2.SetPosition(162.6,170.0)
			Elseif(t_5=3)
				b2.SetPosition(162.6,190.0)
			Elseif(t_5=4)
				b2.SetPosition(144.4,160.0)
			Elseif(t_5=5)
				b2.SetPosition(144.4,200.0)
			Elseif(t_5=6)
				b2.SetPosition(126.2,150.0)
			Elseif(t_5=7)
				b2.SetPosition(126.2,170.0)
			Elseif(t_5=8)
				b2.SetPosition(144.4,180.0)
			Elseif(t_5=9)
				b2.SetPosition(126.2,190.0)
			Elseif(t_5=10)
				b2.SetPosition(126.2,210.0)
			Elseif(t_5=11)
				b2.SetPosition(108.0,140.0)
			Elseif(t_5=12)
				b2.SetPosition(108.0,160.0)
			Elseif(t_5=13)
				b2.SetPosition(108.0,180.0)
			Elseif(t_5=14)
				b2.SetPosition(108.0,200.0)
			Elseif(t_5=15)
				b2.SetPosition(108.0,220.0)
			End
			b2.ResetAnimation()
		End
		Self.Exiting=1
	End
	Method InitGame:Void()
		Self.player.Reset()
		Self.activePlayer.ResetBalls()
		Self.Reset()
		Self.Exiting=1
		Self.state=12
		Self.cue.SetPosition(490.0,180.0)
		Self.InitTime()
	End
	Field timed:Int=0
	Field minutes:Int=0
	Field seconds:Int=0
	Field lastTime:Float=.0
	Field timeFrame:Float=.0
	Field blinkTime:Int=0
	Field blink:Int=0
	Field oldTime:Int=0
	Method RestoreCue:Void()
		Self.state=9
		Self.cue.Init(0.0,0.0)
		Self.cue.SetPosition(320.0,180.0)
		Self.turnList.RemoveEach(Self.cue)
		Self.pottedList.RemoveEach(Self.cue)
		Self.railAnimation.RemoveCueBall()
		Self.engine.AddBall(Self.cue)
	End
	Method ResolveTurn:Void()
		Self.state=3
		If(Self.turnList.IsEmpty()=False)
			For Local b:Ball = Eachin Self.turnList
				If(b.num<16)
					Self.activePlayer.AddBall(b)
				Else
					Self.RestoreCue()
					Self.player.UpdateBallSinRow(Self.scoreLevel)
					Self.scoreLevel=Self.minLevel
				End
			End
			Self.turnList.Clear()
		Else
			Self.scoreLevel=Self.minLevel
		End
		If(Self.activePlayer.CompletedAll()=True)
			Self.player.IncrementCompletedSets()
			Self.activePlayer.ResetBalls()
			Self.Reset()
		End
		Self.Exiting=0
	End
	Field down:Int=0
	Method Update:Int()
		If(Self.decrementer>0)
			Self.decrementer-=500
			Self.endTime-=500
		End
		If(Self.incrementer>0)
			Self.incrementer-=500
			Self.endTime+=500
			Self.timed+=500
			If(Self.timed>=2000)
				media.PlayBeep()
				Self.timed=0
			End
		End
		Self.time=(((Self.endTime-Millisecs())/1000))
		Self.minutes=((Self.time/60))
		Self.seconds=Self.time Mod 60
		Local t_SelfTime:Float=(Millisecs())
		Self.timeFrame=(t_SelfTime-Self.lastTime)/30.0
		Self.lastTime=t_SelfTime
		If(Self.time<=0)
			Self.player.UpdateBallSinRow(Self.scoreLevel)
			Self.state=6
			Self.blinkOn=0
		Else
			If(Self.time<=10)
				Self.blinkOn=1
				If(Millisecs()>=Self.blinkTime+300)
					Self.blink=(( Not ((Self.blink)<>0)))
					Self.blinkTime=Millisecs()
				End
				If(Self.time<Self.oldTime)
					media.PlayBeepB()
				End
				Self.oldTime=Self.time
			Else
				Self.oldTime=Self.time
				Self.blinkTime=Millisecs()
				Self.blinkOn=0
			End
		End
		Local done:Int=0
		Local t_6:Int=Self.state
		If(t_6=12)
			Local t_7:Int=inputName.Update()
			If(t_7=-1)
				Return 0
			Else
				If(t_7=0)
					Self.player.SetName(inputName.GetText())
					Self.state=1
				End
			End
		Else
			If(t_6=1)
				Self.state=2
				Self.activePlayer.SetButtonText("position")
				Self.activePlayer.Init()
			Elseif(t_6=2)
				If(Self.activePlayer.Positioning()=False)
					Self.state=3
					Self.activePlayer.SetButtonText("Shoot")
					Self.activePlayer.Init()
					Self.InitTime()
				End
			Elseif(t_6=3)
				If(Self.activePlayer.Aiming()=False)
					Self.state=4
				End
			Elseif(t_6=4)
				If(Self.activePlayer.ShootingAnimating()=False)
					Self.state=5
				End
			Elseif(t_6=5)
				Self.engine.Update(Self.timeFrame)
				Self.BallInHole()
				If(Self.engine.BallsMoving()=False)
					Self.ResolveTurn()
					Self.engine.ClearFirstCollision()
					Self.activePlayer.Init()
				End
			Elseif(t_6=9)
				Self.activePlayer.SetButtonText("Shoot")
				Self.activePlayer.Init()
				Self.state=3
			Elseif(t_6=6)
				If(mouse.ButtonInUse()<>0)
					Self.down=1
				End
				If(mouse.ButtonInUse()=0 And Self.down=1)
					Self.down=0
					done=1
				End
			Elseif(t_6=8)
			End
		End
		Self.railAnimation.Update(Self.timeFrame*3.0)
		Local t_:Int=(( Not ((done)<>0)))
		Return t_
	End
	Method Render:Void()
		DrawImage(media.railImg,5.0,360.0,0)
		Self.railAnimation.Render()
		graphics.SetColor(255.0,255.0,255.0)
		DrawImage(Self.tableImg,0.0,0.0,0)
		Self.engine.Render()
		Local t_8:Int=Self.state
		If(t_8=12)
			graphics.SetColor(255.0,255.0,255.0)
			inputName.Render()
		Else
			If(t_8=2)
				SetAlpha(.2)
				DrawRect(466.0,37.0,140.0,288.0)
				SetAlpha(.3)
				DrawImage(Self.arrowsImg,Self.cue.P.x,Self.cue.P.y,0)
				SetAlpha(1.0)
				Self.activePlayer.RenderButton()
			Else
				If(t_8=4 Or t_8=3)
					If(Self.decrementer>0)
						graphics.SetColor(255.0,100.0,0.0)
					Else
						graphics.SetColor(255.0,255.0,255.0)
					End
					Local sec:String=String(Self.seconds)
					If(sec.Length=1)
						sec="0"+sec
					End
					If((Self.blinkOn)<>0)
						If((Self.blink)<>0)
							Text.Draw("Time Left       "+String(Self.minutes)+":"+sec,400,370)
						End
					Else
						Text.Draw("Time Left       "+String(Self.minutes)+":"+sec,400,370)
					End
					graphics.SetColor(255.0,255.0,255.0)
					Text.Draw("Score           "+String(Self.player.score),400,400)
					Text.Draw("Multiplier 100 x"+String(Self.scoreLevel),400,430)
					Self.activePlayer.Render(0)
				Else
					If(t_8=5)
						If(Self.decrementer>0)
							graphics.SetColor(255.0,100.0,0.0)
						Else
							graphics.SetColor(255.0,255.0,255.0)
						End
						Local sec2:String=String(Self.seconds)
						If(sec2.Length=1)
							sec2="0"+sec2
						End
						If((Self.blinkOn)<>0)
							If((Self.blink)<>0)
								Text.Draw("Time Left       "+String(Self.minutes)+":"+sec2,400,370)
							End
						Else
							Text.Draw("Time Left       "+String(Self.minutes)+":"+sec2,400,370)
						End
						graphics.SetColor(255.0,255.0,255.0)
						Text.Draw("Score           "+String(Self.player.score),400,400)
						Text.Draw("Multiplier 100 x"+String(Self.scoreLevel),400,430)
					Else
						If(t_8=8)
						Else
							If(t_8=6)
								Local tx:Int=120
								Local ty:Int=100
								SetAlpha(.7)
								graphics.SetColor(55.0,0.0,255.0)
								DrawRect((tx-20),(ty-20),400.0,240.0)
								SetAlpha(1.0)
								graphics.SetColor(255.0,255.0,255.0)
								DrawText("Name                       "+Self.player.name,(tx),(ty+0),0.0,0.0)
								DrawText("Score                      "+String(Self.player.score),(tx),(ty+30),0.0,0.0)
								DrawText("completed Sets             "+String(Self.player.mostCompletedSets),(tx),(ty+60),0.0,0.0)
								DrawText("Most Balls In A Row        "+String(Self.player.mostBallSinRow),(tx),(ty+90),0.0,0.0)
								DrawText("Most Pocketed              "+String(Self.player.mostPocketed),(tx),(ty+120),0.0,0.0)
								DrawText(" Press to exit             ",(tx+100),(ty+170),0.0,0.0)
							End
						End
					End
				End
			End
		End
	End
End


Global scoreTableVsTime:ScoreTable
Class User
	Field ballList:List<Ball>
	Method New()
		Self.ballList=New List<Ball>
	End
	Field cue:Ball
	Field position:PVector2D
	Field ballImg:Image
	Field ghostImg:Image
	Field cueStick:CueStick
	Field name:String=""
	Global firstShot:Int
	Field completedSet:Int=0
	Field engine:ElasticEngine
	Field ghostBall:GhostBall
	Field control:Control
	Field button:Button2
	Method SetButtonText:Void(str:String)
		Return
	End
	Method Init:Void() Abstract

	Method Positioning:Bool() Abstract
	Method Aiming:Bool() Abstract

	Method ShootingAnimating:Bool() Abstract

	Field ballOwnerType:Int=0
	Method SetToSolids:Void()
		Self.ballOwnerType=2
	End
	Method SetToStripes:Void()
		Self.ballOwnerType=1
	End
	Method OwnsSolids:Bool()
		Local t_:Bool=Self.ballOwnerType=2
		Return t_
	End
	Method AddBall:Void(b:Ball)
		Self.ballList.AddLast(b)
	End
	Method OwnsStripes:Bool()
		Local t_:Bool=Self.ballOwnerType=1
		Return t_
	End
	Method CompletedSet:Bool()
		Local t_:Bool=Self.ballList.Count()=7
		Return t_
	End
	Method RenderButton:Void() Abstract

	Method Render:Void(state:Int)
		graphics.SetColor(0.0,0.0,0.0)
		Text.Draw(Self.name,544,371)
		graphics.SetColor(255.0,255.0,255.0)
		Text.Draw(Self.name,545,370)
		Local lowy:Float=370.0
		Local hiy:Float=371.0
		Local lowx:Float=400.0
		Local hix:Float=401.0
		Local t_1:Int=Self.ballOwnerType
		If(t_1=2)
			graphics.SetColor(0.0,0.0,0.0)
			Text.Draw("SOLIDS",((lowx)),((hiy)))
			graphics.SetColor(255.0,255.0,255.0)
			Text.Draw("SOLIDS",((hix)),((lowy)))
		Else
			If(t_1=1)
				graphics.SetColor(0.0,0.0,0.0)
				Text.Draw("STRIPES",((lowx)),((hiy)))
				graphics.SetColor(255.0,255.0,255.0)
				Text.Draw("STRIPES",((hix)),((lowy)))
			Else
				graphics.SetColor(0.0,0.0,0.0)
				Text.Draw("Game Is Open",((lowx)),((hiy)))
				graphics.SetColor(255.0,255.0,255.0)
				Text.Draw("Game Is Open",((hix)),((lowy)))
			End
		End
	End
	Method ResetBalls:Void()
		Self.ballList.Clear()
	End
	
	Method CompletedAll:Bool()
		Local t_:Bool=Self.ballList.Count()=15
		Return t_
	End
	
	Field angle:Float=.0
	Field oldAngle:Float=.0
End
Class Player Extends User
	Field oldTouch:Int=0
	Method New(name:String,cue:Ball,engine:ElasticEngine,t_ghostImg:Image,ballImg:Image,stickImg:Image,rotatorImg:Image,buttonImg:Image,stripImg:Image,frameTopImg:Image,frameBotImg:Image,topImg:Image,botImg:Image,lrImg:Image,meterImg:Image,stretchImg:Image,sliderImg:Image)
		Self.cue=cue
		Self.position=cue.P
		Self.ballImg=ballImg
		Self.ghostImg=t_ghostImg
		Self.cueStick=New CueStick(cue.P,cue.radius+1.0,stickImg,180.0)
		Self.name=name
		User.firstShot=1
		Self.completedSet=0
		Self.engine=engine
		Self.ghostBall=New GhostBall(cue.P,cue.radius,t_ghostImg,180.0,stripImg)
		Self.control=New Control(cue,5,420,.5,meterImg,stretchImg,sliderImg,40)
		Self.control.SetFrame(frameTopImg,frameBotImg,topImg,botImg,lrImg)
		Self.oldTouch=0
		Self.button=New Button2(buttonImg,360,400,"shoot",Null)
	End

	Method Init:Void()
		Self.ghostBall.dx=Cos((Self.cueStick.angle))
		Self.ghostBall.dy=Sin((Self.cueStick.angle))
		Self.cueStick.SetAngle(Self.cueStick.angle)
		Self.engine.CollisionDistance2Ghost(Self.ghostBall)
	End
	Field oldMouseDown:Int=0
	Field oldMouseX:Int=0
	Field oldMouseY:Int=0
	
	Method Positioning:Bool()
		Self.button.Update()
		If((Self.button.GetState())<>0)
			Local t_overlapping:Int=0
			For Local b:Ball = Eachin Self.engine.ballList
				If(b=Self.cue)
					Continue
				End
				Local vx:Float=Self.cue.P.x-b.P.x
				Local vy:Float=Self.cue.P.y-b.P.y
				If(vx*vx+vy*vy<=4.0*b.radius*b.radius)
					t_overlapping=1
				End
			End
			If(t_overlapping=0)
				Return False
			End
		End
		If((mouse.ButtonInUse())<>0)
			If((Self.oldMouseDown)<>0)
				Self.engine.CollisionDistance2Ghost(Self.ghostBall)
				Self.cue.P.x+=mouse.x-(Self.oldMouseX)
				Self.cue.P.y+=mouse.y-(Self.oldMouseY)
				If(Self.cue.P.x<476.0)
					Self.cue.P.x=476.0
				End
				If(Self.cue.P.x>596.0)
					Self.cue.P.x=596.0
				End
				If(Self.cue.P.y<47.0)
					Self.cue.P.y=47.0
				End
				If(Self.cue.P.y>315.0)
					Self.cue.P.y=315.0
				End
			End
		End
		Self.oldMouseDown=mouse.ButtonInUse()
		Self.oldMouseX=((mouse.x))
		Self.oldMouseY=((mouse.y))
		Return True
	End
	Method SetButtonText:Void(str:String)
		Self.button.SetText(str)
	End
	Method Aiming:Bool()
		If((Self.control.Update())<>0)
			Self.angle=Self.control.angle
			Self.cueStick.SetAngle(Self.angle)
			If(Self.control.Length<0.0)
				Self.cueStick.SetDistance(0.0)
			Else
				If(Self.control.Length>40.0)
					Self.cueStick.SetDistance(40.0)
				Else
					Self.cueStick.SetDistance(Self.control.Length)
				End
			End
			Self.ghostBall.dx=Cos((Self.angle))
			Self.ghostBall.dy=Sin((Self.angle))
			Self.engine.CollisionDistance2Ghost(Self.ghostBall)
			Self.oldAngle=Self.angle
		Else
			If(Self.control.Length>0.0)
				Self.cueStick.SetAnimation2()
				Self.control.Length=0.0
				Return False
			End
		End
		Return True
	End
	Method ShootingAnimating:Bool()
		If(Self.cueStick.Update()=0)
			Self.cue.Init(Self.cueStick.dx*40.0*Self.control.volume,Self.cueStick.dy*40.0*Self.control.volume)
			media.PlayShootCol()
			Return False
		End
		Return True
	End
	Method RenderButton:Void()
		Self.button.Render()
	End
	Method Render:Void(status:Int)
		Self.control.Render()
		If((status)<>0)
			Super.Render(1)
		End
		Self.ghostBall.Render()
		Self.cueStick.Render()
	End
End

Class CueStick
	Field position:PVector2D
	Field len:Float=.0
	Field image:Image
	Field offset:Float=.0
	Field angle:Float=.0
	Field dx:Float=.0
	Field dy:Float=.0
	Field offsetx:Float=.0
	Field offsety:Float=.0
	Method SetAngle:Void(ang:Float)
		If(ang<>Self.angle)
			Self.angle=ang
			Self.dx=Cos((Self.angle))
			Self.dy=Sin((Self.angle))
			Self.offsetx=-Self.dx*Self.len
			Self.offsety=-Self.dy*Self.len
		End
	End
	Method New(pos:PVector2D,t_offset:Float,image:Image,angle:Float)
		Self.position=pos
		Self.len=t_offset
		Self.image=image
		Self.offset=t_offset
		Self.SetAngle(angle)
	End

	Field distance:Float=.0
	Field animStep:Float=.0
	Field animx:Float=.0
	Field animy:Float=.0
	Method SetDistance:Void(d:Float)
		Self.distance=d
		Self.animStep=30.0
		Self.animx=-Self.dx*Self.distance
		Self.animy=-Self.dy*Self.distance
	End
	Field animAngle:Float=.0
	Field animDelay:Int=0
	Method SetAnimation2:Void()
		Self.animAngle=0.0
		Self.animDelay=Millisecs()+1
	End
	Method Update:Int()
		If(Self.animDelay<Millisecs())
			If(Self.animAngle>=90.0)
				Self.animx=0.0
				Self.animy=0.0
				Self.distance=0.0
				Self.animAngle=0.0
				Return 0
			Else
				Local Length:Float=Cos((Self.animAngle))*Self.distance
				Self.animx=-Self.dx*Length
				Self.animy=-Self.dy*Length
				If(Self.animAngle<90.0)
					Self.animAngle+=Self.animStep
				End
			End
			Self.animDelay=Millisecs()+1
		End
		Return 1
	End
	Method Render:Void()
		graphics.SetColor(255.0,255.0,255.0)
		Local x:Float=Self.position.x+Self.offsetx+Self.animx
		Local y:Float=Self.position.y+Self.offsety+Self.animy
		DrawImage(Self.image,x,y,-Self.angle,1.0,1.0,0)
	End
	Method SetAngleCpu:Void(ang:Float)
		If(ang<>Self.angle)
			Self.angle=ang
			Self.dx=Cos((Self.angle))
			Self.dy=Sin((Self.angle))
			Self.offsetx=-Self.dx*Self.len
			Self.offsety=-Self.dy*Self.len
		End
	End
	Method Init:Void(d:Float)
		Self.animStep=d/4.0
		Self.animx=0.0
		Self.animy=0.0
	End
	Field power:Float=.0
	Method UpdateCpu:Int()
		If(Self.animDelay<Millisecs())
			If(Self.animAngle>=90.0)
				Self.animx=0.0
				Self.animy=0.0
				Self.animAngle=0.0
				Return 0
			Else
				Local Length:Float=-Sin((Self.animAngle))*30.0
				Self.animx=Length*Self.dx
				Self.animy=Length*Self.dy
				If(Self.animAngle>90.0)
					Local pwr:Float=Self.power/4.0
					If(pwr<1.0)
						pwr=1.0
					End
					Self.animAngle+=Self.animStep*pwr
				Else
					Self.animAngle+=Self.animStep
				End
			End
			Self.animDelay=Millisecs()+1
		End
		Return 1
	End
End

Class Control
	Field x:Int=0
	Field y:Int=0
	Field width:Float=.0
	Field height:Float=.0
	Field meterImg:Image
	Field stretchImg:Image
	Field sliderImg:Image
	Field volume:Float=.0
	Field sliderx:Int=0
	Field framed:Int=0
	Field active:Int=0
	Field oldMouseDown:Int=0
	Field maxValue:Float=.0
	Field stp:Float=.0
	Field cue:Ball
	Method New(cue:Ball,x:Int,y:Int,volume:Float,meterImg:Image,stretchImg:Image,sliderImg:Image,maxValue:Int)
		Self.x=x
		Self.y=y
		Self.width=(meterImg.Width())
		Self.height=(meterImg.Height())
		Self.meterImg=meterImg
		Self.stretchImg=stretchImg
		Self.sliderImg=sliderImg
		Self.stretchImg=stretchImg
		If(volume>1.0)
			volume=1.0
		End
		If(volume<0.0)
			volume=0.0
		End
		Self.volume=volume
		Self.sliderx=((volume*Self.width))
		Self.framed=0
		Self.active=0
		Self.oldMouseDown=0
		Self.maxValue=(maxValue)
		Self.stp=Self.width/(maxValue)
		Self.cue=cue
	End

	Field topLRImg:Image
	Field botLRImg:Image
	Field midTopImg:Image
	Field midBotImg:Image
	Field midLRImg:Image
	Field tw:Float=.0
	Field th:Float=.0
	Method SetFrame:Void(tlrImg:Image,blrImg:Image,mtImg:Image,mbImg:Image,mlrImg:Image)
		Self.topLRImg=tlrImg
		Self.botLRImg=blrImg
		Self.midTopImg=mtImg
		Self.midBotImg=mbImg
		Self.midLRImg=mlrImg
		Self.tw=(tlrImg.Width())
		Self.th=(tlrImg.Height())
		Self.framed=1
	End
	Field x2:Float=.0
	Field vx:Float=.0
	Field y2:Float=.0
	Field vy:Float=.0
	Field dx:Float=.0
	Field dy:Float=.0
	Field Length:Float=.0
	Field activeVolume:Float=.0
	Field angle:Float=.0
	Method Update:Int()
		Local state:Int=1
		If((mouse.ButtonInUse())<>0)
			If((Self.oldMouseDown)<>0)
				Self.vx=mouse.x-Self.x2
				Self.vy=mouse.y-Self.y2
				Self.Length=Self.vx*-Self.dx+Self.vy*-Self.dy
				If(Self.Length>Self.maxValue)
					Self.volume=Self.maxValue*Self.stp/Self.width
				Else
					If(Self.Length<0.0)
						Self.volume=0.0
					Else
						Self.volume=Self.Length*Self.stp/Self.width
					End
				End
			Else
				Self.x2=mouse.x
				Self.y2=mouse.y
			End
		Else
			If((Self.oldMouseDown)<>0)
				Self.vx=mouse.x-Self.x2
				Self.vy=mouse.y-Self.y2
				Self.Length=Self.vx*-Self.dx+Self.vy*-Self.dy
				If(Self.Length>Self.maxValue And Self.Length>=0.0)
					Self.volume=Self.maxValue*Self.stp/Self.width
				Else
					If(Self.Length<0.0)
						Self.volume=0.0
					Else
						Self.volume=Self.Length*Self.stp/Self.width
					End
				End
				Self.oldMouseDown=mouse.ButtonInUse()
				Return 0
			Else
				Self.volume=Self.activeVolume
				Self.vx=mouse.x-Self.cue.P.x
				Self.vy=mouse.y-Self.cue.P.y
				Self.angle=(ATan2(Self.vy,Self.vx))
				Self.dx=Cos((Self.angle))
				Self.dy=Sin((Self.angle))
			End
		End
		Self.oldMouseDown=mouse.ButtonInUse()
		Self.sliderx=((Self.volume*Self.width))
		Return 1
	End
	Method Render:Void()
		If((Self.framed)<>0)
			Local px:Float=(Self.x)-Self.tw
			Local py:Float=(Self.y)-Self.th
			DrawImage(Self.topLRImg,px,py,0)
			DrawImage(Self.midTopImg,px+Self.tw,py,0.0,Self.width,1.0,0)
			DrawImage(Self.topLRImg,px+Self.width+Self.tw,py,1)
			DrawImage(Self.midLRImg,px,py+Self.th,0.0,1.0,Self.height,0)
			DrawImage(Self.midLRImg,px+Self.tw+Self.width,py+Self.th,0.0,1.0,Self.height,1)
			DrawImage(Self.botLRImg,px,py+Self.th+Self.height,0)
			DrawImage(Self.midBotImg,px+Self.tw,py+Self.th+Self.height,0.0,Self.width,1.0,0)
			DrawImage(Self.botLRImg,px+Self.tw+Self.width,py+Self.th+Self.height,1)
		End
		DrawImage(Self.meterImg,(Self.x),(Self.y),0)
		Local t_w:Float=(1.0-Self.volume)*Self.width
		DrawImage(Self.stretchImg,(Self.x+Self.sliderx),(Self.y),0.0,t_w,1.0,0)
		DrawImage(Self.sliderImg,(Self.x+Self.sliderx),(Self.y),0)
		Text.Draw("POWER",Self.x+50,Self.y+10)
	End
End
Class Cpu Extends User
	Field pocketList:List<ArcWall>
	Field activeBallList:List<Ball>
	Field aimWait:Int=0
	Field delay:Int=0
	Field inacuracy:Float=.0
	Method New(name:String,cue:Ball,engine:ElasticEngine,arcList:List<ArcWall>,stickImg:Image,ballImg:Image,inacuracy:Float)
		Self.cue=cue
		Self.position=cue.P
		Self.cueStick= New CueStick(cue.P,cue.radius+1.0,stickImg,180.0)
		Self.ballImg=ballImg
		Self.pocketList=arcList
		Self.activeBallList=engine.ballList
		Self.aimWait=100
		Self.delay=Millisecs()+Self.aimWait
		Self.inacuracy=inacuracy
		Self.name=name
		Self.engine=engine
	End

	Method Init:Void()
	End
	Method Positioning:Bool()
		Repeat
			Self.cue.P.x=Rnd(476.0,596.0)
			Self.cue.P.y=Rnd(47.0,315.0)
			Local t_overlapped:Int=0
			For Local b:Ball = Eachin Self.engine.ballList
				If(b=Self.cue)
					Continue
				End
				Local vx:Float=b.P.x-Self.cue.P.x
				Local vy:Float=b.P.y-Self.cue.P.y
				If(vx*vx+vy*vy<=4.0*b.radius*b.radius)
					t_overlapped=1
					Exit
				End
			End
			If(t_overlapped=0)
				Exit
			End
		Forever
		Self.cue.Init(0.0,0.0)
		Return False
	End
	Method Get8Ball:Ball()
		For Local b:Ball = Eachin Self.activeBallList
			If(b.num=8)
				Return b
			End
		End
		Return Null
	End
	Method PathToPocket:Bool(b1:Ball,dx:Float,dy:Float)
		For Local b2:Ball = Eachin Self.activeBallList
			If(b2=b1 Or b2=Self.cue)
				Continue
			End
			Local vx:Float=b2.P.x-b1.P.x
			Local vy:Float=b2.P.y-b1.P.y
			Local dp:Float=vx*dy-vy*dx
			If(Abs(dp)<b1.radius+b2.radius)
				Local dp2:Float=vx*dx+vy*dy
				If(dp2>0.0)
					Return False
				End
			End
		End
		Return True
	End
	Method PathToBall:Bool(b1:Ball,dx:Float,dy:Float,skipBall:Ball)
		Local vx:Float=skipBall.P.x-b1.P.x
		Local vy:Float=skipBall.P.y-b1.P.y
		Local len:Float=vx*dx+vy*dy
		For Local b3:Ball = Eachin Self.activeBallList
			If(b3=b1 Or b3=skipBall)
				Continue
			End
			Local vx2:Float=b3.P.x-b1.P.x
			Local vy2:Float=b3.P.y-b1.P.y
			Local dp:Float=vx2*dy-vy2*dx
			If(Abs(dp)<b1.radius+b3.radius)
				Local dp2:Float=vx2*dx+vy2*dy
				If(dp2>0.0 And dp2<Abs(len))
					Return False
				End
			End
		End
		Return True
	End
	Method FindBestPocket:ArcWall(ball:Ball)
		Local distance:Float=INVALID_DISTANCE
		Local pocket:ArcWall
		For Local arc:ArcWall = Eachin Self.pocketList
			Local dx1:Float=0.0
			Local dy1:Float=0.0
			Local vx1:Float=arc.target.x-ball.P.x
			Local vy1:Float=arc.target.y-ball.P.y
			Local vx2:Float=Self.cue.P.x-ball.P.x
			Local vy2:Float=Self.cue.P.y-ball.P.y
			Local dp:Float=vx1*vx2+vy1*vy2
			If(dp<0.0)
				Local d1:Float=Sqrt(vx1*vx1+vy1*vy1)
				If(d1>0.0)
					dx1=vx1/d1
					dy1=vy1/d1
				End
				If(d1=0.0 Or Self.PathToPocket(ball,dx1,dy1))
					Local px:Float=ball.P.x-dx1*(arc.radius+ball.radius)
					Local py:Float=ball.P.y-dy1*(arc.radius+ball.radius)
					vx1=px-Self.cue.P.x
					vy1=py-Self.cue.P.y
					d1=Sqrt(vx1*vx1+vy1*vy1)
					Local ang:Float=(ATan2(vy1,vx1))
					If(Self.PathToBall(Self.cue,Cos((ang)),Sin((ang)),ball))
						If(d1<distance)
							distance=d1
							Self.angle=ang
							pocket=arc
						End
					End
				End
			End
		End
		Return pocket
	End
	Method GetRndSolidBall:Ball()
		Local counter:Int=0
		For Local b:Ball = Eachin Self.activeBallList
			If(b.num<8)
				counter+=1
			Else
				Continue
			End
		End
		If counter
			If counter>1
				counter=((Rnd(1.0,(counter+1))))
			End
			Local n:Int=1
			For Local b2:Ball = Eachin Self.activeBallList
				If b2.num < 8
					If(n=counter)
						Return b2
				
					End
					n+=1
				Endif
			End
		End
		Return Null
	End
	Method GetRndStripedBall:Ball()
		Local counter:Int=0
		Local low:Int=0
		For Local b:Ball = Eachin Self.activeBallList
			If(b.num>=8 And b.num<16)
				counter+=1
			Else
				low+=1
			End
		End
		counter=(((low)+Rnd(1.0,(counter+1))))
		Local n:Int=1
		For Local b2:Ball = Eachin Self.activeBallList
			If(n=counter)
				Return b2
			End
			n+=1
		End
		Return Null
	End
	Method GetRndBall:Ball()
		Local counter:Int=Self.activeBallList.Count()
		counter=((Rnd(0.0,(counter-1))))
		Local n:Int=0
		For Local b:Ball = Eachin Self.activeBallList
			If(n=counter)
				Return b
			End
			n+=1
		End
		Return Null
	End
	Field power:Float=.0
	Method Aiming:Bool()
		Local vx:Float=.0
		Local vy:Float=.0
		If(Self.ballList.Count()=7)
			Local b:Ball=Self.Get8Ball()
			Local pocket:ArcWall=Self.FindBestPocket(b)
			If((pocket)<>Null)
				vx=b.P.x-pocket.target.x
				vy=b.P.y-pocket.target.y
				Local len:Float=Sqrt(vx*vx+vy*vy)
				Local px:Float=b.P.x+vx/len*(b.radius+Self.cue.radius)
				Local py:Float=b.P.y+vy/len*(b.radius+Self.cue.radius)
				vx=px-Self.cue.P.x
				vy=py-Self.cue.P.y
			Else
				vx=b.P.x-Self.cue.P.x
				vy=b.P.y-Self.cue.P.y
			End
		Else
			Local ball:Ball
			Local pocket2:ArcWall
			Local distance:Float=INVALID_DISTANCE
			For Local b2:Ball = Eachin Self.activeBallList
				If(Self.ballOwnerType=2 And b2.num>7)
					Continue
				End
				If(Self.ballOwnerType=1 And b2.num<9)
					Continue
				End
				If(b2.num=8 Or b2=Self.cue)
					Continue
				End
				Local pkt:ArcWall=Self.FindBestPocket(b2)
				If((pkt)<>Null)
					vx=pkt.target.x-b2.P.x
					vy=pkt.target.y-b2.P.y
					Local ln:Float=Sqrt(vx*vx+vy*vy)
					If(ln<distance)
						distance=ln
						pocket2=pkt
						ball=b2
					End
				End
			End
			If(distance<INVALID_DISTANCE)
				vx=ball.P.x-pocket2.target.x
				vy=ball.P.y-pocket2.target.y
				Self.angle=(ATan2(vy,vx))
				Local px2:Float=ball.P.x+Cos((Self.angle))*(Self.cue.radius+ball.radius)
				Local py2:Float=ball.P.y+Sin((Self.angle))*(Self.cue.radius+ball.radius)
				vx=px2-Self.cue.P.x
				vy=py2-Self.cue.P.y
			Else
				Local t_2:Int=Self.ballOwnerType
				If(t_2=2)
					ball=Self.GetRndSolidBall()
				Elseif(t_2=1)
					ball=Self.GetRndStripedBall()
				Else
					ball=Self.GetRndBall()
				End
				If ball
					vx=ball.P.x-Self.cue.P.x 
					vy=ball.P.y-Self.cue.P.y
				Else
					vx = Cos(cueStick.angle)
					vy = Sin(cueStick.angle)
				Endif
			End
		End
		Self.angle=(ATan2(vy,vx))
		Self.cueStick.SetAngleCpu(Self.angle)
		Self.power=Rnd(10.0,50.0)
		Self.cueStick.Init(Self.power)
		Return False
	End
	Method SetButtonText:Void(str:String)
	End
	Method ShootingAnimating:Bool()
		If(Self.cueStick.UpdateCpu()=0)
			Self.cue.Init(Self.cueStick.dx*Self.power,Self.cueStick.dy*Self.power)
			Return False
		End
		Return True
	End
	
	Method RenderButton:Void()
	End
	
	Method Render:Void(status:Int)
		If((status)<>0)
			Super.Render(1)
		End
		Self.cueStick.Render()
	End
End
