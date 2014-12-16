Strict
Import mojo
Import mochi
Import included
Import JPMod.GuiMod
Import JPMod.MouseMod
Import Gmenu
'Import levelClass

Global game:Tgame
Global level:Level
Global across:Float
Global down:Float
'Global gameState:GameState

Class TPoint
	Field x:Float
	Field y:Float
End Class

Class rollBall Extends App
	Field font:AngelFont

	Method OnCreate:Int()
		game = Tgame.Create()
		SetMusicVolume(1.0)
		SetUpdateRate(30)
		Return True
	End Method
	
	Method OnUpdate:Int()
		game.update()
		Return True
	End Method
	
	Method OnRender:Int()
		Cls()
		game.render()
		Return True
	End Method
	
End Class

Class Tgame
	Field nextState:Int
	Field state:Int
	Field startTick:Int
	Field foScale:Float
	Field eScale:Float
	Field fox:Float
	Field foy:Float
	Field tick:Float
	Field explosion:Explosion
	Field vortex:Vortex
	Field menu:Menu
	Field frame:GuiFrame
	Field secondsLeft:Float
	
	Global image:Image
	
	Method New()
		vortex = New Vortex
	End Method
	
	Method Reset:Void()
		level.Load()
		ball.reset()	
		ball.posx = ball.startx
		ball.posy = ball.starty
		camera.reset()
		gLastTick = Millisecs() 
		levelStartTick = Millisecs()

	End Method

	Function Create:Tgame()
		Local g:Tgame = New Tgame
		level = New Level()
		camera = Tcamera.create()
		CollectibleList.Clear()
		level.init()
		g.nextState = STATE_INMENU
		image = LoadImage("tiles2.png")
		gTiles = g.image.GrabImage(0,0,32,32,100)
		starsImg = g.image.GrabImage(0,128,32,32,8)
		If starsImg = Null Print "invalid image"
		sparkVImg = g.image.GrabImage(448,120,32,8,4)
		sparkHImg = g.image.GrabImage(608,96,8,32,4)
		squishHImg = g.image.GrabImage(0,96,32,32,4)
		squishVImg = g.image.GrabImage(128,96,32,32,4)
		spikeImg = g.image.GrabImage(256,128,32,32,4)
		ballImg = g.image.GrabImage(448,116,4,4,36)
		flameImg = g.image.GrabImage(480,128,16,16)
		flameImg.SetHandle(8,8)
		ballMainImg = g.image.GrabImage(570,562,24,24)
		ballMainImg.SetHandle(12,12)
		turretImg = g.image.GrabImage(0,608,32,32,3)
		turretImg.SetHandle(8,16)
		bulletImg = g.image.GrabImage(0,600,8,8)
		bulletImg.SetHandle(2,4)
		bulletStore = TpartStore.Create(bulletImg)
		g.explosion = New Explosion
		music = ["a1.mp3","a1.mp3","b1.mp3","b1.mp3","b1.mp3","c1.mp3","c1.mp3","c1.mp3","d1.mp3","d1.mp3",
		         "d1.mp3","d1.mp3","d1.mp3","e1.mp3","f1.mp3","f1.mp3","f1.mp3","g1.mp3","g1.mp3","i1.mp3"]
		failSnd = LoadSound("fail.mp3")
		popSnd = LoadSound("pop.mp3")
		If failSnd = Null Error"unable to load failSnd"
		chimeSnd = LoadSound("chime.mp3")
		electricSnd = LoadSound("electric2.mp3")
		coinSnd = LoadSound("coin2.mp3")
		electrichannel = 15
		score = New Score
		ball  = New Ball
		Local ft:Image = LoadImage("font.png",16,16,94)
		If ft = Null Error "Unable to load font.png"
		Text = New BitmapText(ft,94)
		ball.init()
		g.menu = New Menu(image,100,200)
		Collectible.image = gTiles
		SetAFont("casual")
'		SetBlend AlphaBlend
		g.frame = New GuiFrame(75,50,350,300,$ccccdf)
		Return g
	End Function
	
	Method changestate:Void()
	
		' Things that need To be done when leaving a state
	    If state = STATE_ENDLEVEL 
	        level.currentLevel +=1
			If level.currentLevel > 10
				nextState = STATE_ENDGAME
			Endif
	    End If
		If nextState = STATE_ENDLEVEL
			For Local b:Particle = Eachin bulletList
				b.link.Remove()
				bulletStore.replace(b)
			Next
		Endif
	
	    ' Switch state
	    state = nextState
	
	    ' Things that need To be done when entering a state
	    Select (state)
		    Case STATE_LEVELSTART
		        Reset()
				PlayMusic(music[level.currentLevel])
		    Case STATE_INGAME
		        gLastTick = Millisecs() 
		        levelStartTick = Millisecs() 
	    End Select
	    startTick = Millisecs()
	End Method

	Method update:Void()
		mouse.Update()
		If game.nextState <> game.state
			game.changestate()
		Endif
		' get the time in milliseconds
		tick = Millisecs()
		vortex.Update()
		Select state
			Case STATE_INMENU
				If menu.Update() = False
					game.nextState = STATE_GAMESTART
					score.totalPoints = 0
					score.gamePoints = 0 
				Endif
			Case STATE_GAMESTART
				If KeyHit(KEY_SPACE) Or KeyHit(KEY_ENTER)
					level.currentLevel = 0
					game.nextState = STATE_LEVELSTART
					score.lives = 10
				Endif
			Case STATE_ENDGAME,STATE_GAMELOST
				If KeyHit(KEY_SPACE) Or KeyHit(KEY_ENTER)
					game.nextState = STATE_INMENU
					StopMusic()
				Endif
			Case STATE_LEVELSTART
				If KeyHit(KEY_SPACE) Or KeyHit(KEY_ENTER)
					game.nextState = STATE_ENTRY
				Endif
			Case STATE_INGAME
				secondsLeft = level.levelTime - (gLastTick - levelStartTick) / 1000
				If (secondsLeft < 0) 
					secondsLeft = 0
					explosion.init(ball.posx,ball.posy)
					game.nextState = STATE_EXPLODE
					PlaySound(popSnd,channel)
					channel = (channel + 1) Mod 16
					score.lives -= 1
				Endif
				ball.ProcessInput(KeyDown(KEY_RIGHT)-KeyDown(KEY_LEFT),KeyDown(KEY_DOWN)-KeyDown(KEY_UP))
				While (gLastTick < tick)					
					nextState = ball.Update(nextState)
					Collectible.collision()
					gLastTick += 1500 / PHYSICSFPS
				Wend
				If nextState = STATE_ENDLEVEL
					score.secondsSpend = (gLastTick - levelStartTick) / 1000.0
					score.secondsRemaining = level.levelTime - score.secondsSpend
					If score.secondsRemaining < 0 score.secondsRemaining = 0
					score.bonus = Int(String(score.secondsRemaining * 100)[..5])
					score.coinPoints = Collectible.Taken * 50
					score.totalPoints = score.coinPoints + score.bonus
					score.gamePoints += score.totalPoints
				Endif
			Case STATE_FALLOFF
				foScale = (tick - startTick) / 1000.0
				If (foScale > 1) 
					foScale = 1
					If score.lives = 0
						nextState = STATE_GAMELOST
					Else
						nextState = STATE_LEVELSTART
						PlayMusic(music[level.currentLevel])
					Endif
				Endif
				foScale = 1.0 - foScale
				foScale = foScale * foScale
				
				fox = Int(CAMERAWIDTH - CAMERAWIDTH * ((CAMERAWIDTH / 2) - camera.x) / (level.levelWidth * TILESIZE))
				foy = Int(CAMERAHEIGHT - CAMERAHEIGHT * ((CAMERAHEIGHT / 2) - camera.y) / (level.levelHeight * TILESIZE))
			Case STATE_EXPLODE
				If explosion.list.IsEmpty() = False
					If explosion.update() = False
						If score.lives = 0
							nextState = STATE_GAMELOST
						Else
							nextState = STATE_LEVELSTART
							PlayMusic(music[level.currentLevel])
						Endif
					Endif
				Endif
			Case STATE_ENTRY
				eScale = (tick - startTick) / 1000.0
				If (eScale > 1) 
					eScale = 1
					nextState = STATE_READY
				Endif
				eScale = 1.0 - eScale
			Case STATE_ENDLEVEL
				If KeyHit(KEY_ENTER) Or KeyHit(KEY_SPACE)
				 	StopMusic()
					game.nextState = STATE_LEVELSTART
				Endif
		End Select
		If state<> STATE_INMENU And state <> STATE_LEVELSTART
		
			For Local f:FireStream = Eachin flameList
				f.Update()
			Next
			For Local t:Turret = Eachin turretList
				t.Update()
			Next
			
			For Local b:Particle = Eachin bulletList
				If b.Update() = False
					b.link.Remove()
					bulletStore.replace(b)
				Endif
			Next
			For Local t:TtrapDoor = Eachin trapDoorList
				If t.dropped() = False
					t.update()
					If t.dropped() = True
						PlaySound(failSnd,channel)
						channel = (channel+1) Mod 16
						game.nextState = STATE_FALLOFF
						score.lives -= 1
					Endif
				Endif
			Next
			If state <> STATE_EXPLODE
				For Local v:Volt = Eachin voltList
					If v.collided() = True
						explosion.init(ball.posx,ball.posy)
						game.nextState = STATE_EXPLODE
						PlaySound(popSnd,channel)
						channel = (channel + 1) Mod 16
						score.lives -= 1
					Endif
				Next
			Endif
			If state <> STATE_EXPLODE And state<> STATE_FALLOFF
				For Local f:FireStream = Eachin flameList
					If f.Collided() = True
						explosion.init(ball.posx,ball.posy)
						game.nextState = STATE_EXPLODE
						PlaySound(popSnd,channel)
						channel = (channel + 1) Mod 16
						score.lives -= 1
					Endif	
				Next
			Endif
			If state <> STATE_EXPLODE
				For Local b:Particle = Eachin bulletList
					If b.Collided() = True
						explosion.init(ball.posx,ball.posy)
						game.nextState = STATE_EXPLODE
						PlaySound(popSnd,channel)
						channel = (channel + 1) Mod 16
						score.lives -= 1
						Exit
					Endif
				Next
				If game.nextState = STATE_EXPLODE
					For Local b:Particle = Eachin bulletList
						b.link.Remove()
						bulletStore.replace(b)
					Next
				Endif
			Endif
			For Local v:Volt = Eachin voltList
				v.Update()
			Next

		Endif
		

	End Method
	
	
	Method collide:Void()
	
	End Method

	Method render:Void()
		vortex.Render()
		mojo.SetColor 255,255,255
		If (state = STATE_FALLOFF)
			ball.display((fox * (1 - foScale) + camera.x) * foScale,(foy * (1 - foScale) + camera.y * foScale),(ball.RADIUS * foScale),0, 0)
		Endif

		If state<> STATE_INMENU And state <> STATE_LEVELSTART And state <> STATE_GAMESTART And state <> STATE_ENDGAME
			level.display()
			For Local t:TtrapDoor = Eachin trapDoorList
				t.display()
			Next
	
			For Local c:Collectible  = Eachin CollectibleList
				c.Display()
			Next
			
			For Local v:Volt = Eachin voltList
				v.Display()
			Next
			For Local f:FireStream = Eachin flameList
				f.Render()
			Next
			
			For Local t:Turret = Eachin turretList
				t.Render()
			Next
			
		Endif
		

		' draw status strin
		Select state
			Case STATE_INMENU
				menu.Render()
				Scale 0.7,0.7
				mojo.SetColor 255,255,0
				RenderText("Music by Kevin MacLeod - incompetech.com",10,440)
			Default
				Select state
					Case STATE_GAMESTART
						frame.Render()
						mojo.SetColor 100,100,100
						RenderText(" INSTRUCTIONS",140,50)
						mojo.SetColor 50,50,255
						PushMatrix()
							Scale .5,.5
							RenderText("Use arrows to move ball in the direction desired.",160,200)
							RenderText("Reach destination before time expires to pass",160,250)
							RenderText("Level.",160,300)
							RenderText("Avoid obstacles and falling over.",160,350)
							RenderText("          GoodLuck!",250,500)
							mojo.SetColor 255,0,0
							RenderText("  Press SPACE or ENTER to start.",250,600)
						PopMatrix()
					Case STATE_INGAME
						ball.display(camera.x, camera.y,ball.RADIUS,ball.gRoll*3, ATan2(ball.rolly, ball.rollx))
						For Local b:Particle = Eachin bulletList
							b.Render()
						Next
						ball.gRoll = 0
						Scale .7,.7
						mojo.SetColor 255,255,0
						RenderText("Coins: "+Collectible.Taken,5,10)
						RenderText("Score: "+(score.gamePoints),350,10)
						RenderText("Time Left: " + secondsLeft,5,40)
						RenderText("Lives : "+ score.lives,5,70)
					Case STATE_ENDGAME
						frame.Render()
						RenderText("GAME WON",170,80)
						mojo.SetColor 0,0,255
						RenderText(score.totalPoints,200,160)
						PushMatrix()
							Scale .8,.8
							mojo.SetColor 180,0,0
							RenderText("FINAL SCORE!",220,300) 
						PopMatrix()
						PushMatrix()
							Scale .5,.5
							mojo.SetColor 200,0,200
							RenderText("Press SPACE Or ENTER To Continue",260,600)
					Case STATE_ENTRY
						PushMatrix()
						Scale .7,.7
						mojo.SetColor 255,255,0
						RenderText("SCORE: "+(score.gamePoints),450,10)
						PopMatrix()
						ball.display(camera.x, camera.y,ball.RADIUS,ball.gRoll*3, ATan2(ball.rolly, ball.rollx))
						ball.gRoll = 0
						Local pscale:Float = eScale * eScale
						ball.display(camera.x,camera.y,ball.RADIUS + pscale * 200,0.4 * eScale, eScale * PI)
						mojo.SetColor 255,255,0  
						RenderText("Get ready!",200,140) 
					Case STATE_READY
						PushMatrix()
						Scale .7,.7
						mojo.SetColor 255,255,0
						RenderText("SCORE: "+score.gamePoints,450,10)
						PopMatrix()
						ball.display(camera.x, camera.y,ball.RADIUS,ball.gRoll*3, ATan2(ball.rolly, ball.rollx))
						ball.gRoll = 0
						mojo.SetColor(0,255,0)
						RenderText("Go!",230,160) 
						If (tick - startTick > 500) nextState = STATE_INGAME
					Case STATE_FALLOFF
						mojo.SetColor 255,0,0
						RenderText("Fall off!",200,140)
					Case STATE_EXPLODE
						explosion.Render()
					Case STATE_LEVELSTART
						frame.Render()
						mojo.SetColor 100,100,100
						RenderText("Level Name",100,80)
						RenderText("Time Limit",100,160)
						PushMatrix()
							Scale .8,.8
							mojo.SetColor 200,0,0
							RenderText(level.levelName,150,150)
							RenderText(level.levelTime+" Seconds",150,260)
							mojo.SetColor 100,50,80
							RenderText("Lives: " + score.lives,120,320)
							mojo.SetColor 50,50,200
							RenderText("Pres Space or Return To Start.",100,400)
						PopMatrix()
					Case STATE_GAMELOST
						frame.Render()
						mojo.SetColor 180,0,0
						RenderText("GAME LOST", 170,80)
						mojo.SetColor 0,0,255
						RenderText(score.totalPoints,200,160)
						PushMatrix()
							Scale .8,.8
							mojo.SetColor 180,0,0
							RenderText("FINAL SCORE!",220,300) 
						PopMatrix()
						PushMatrix()
							Scale .5,.5
							mojo.SetColor 200,0,200
							RenderText("Press SPACE Or ENTER To Continue",260,600)
					Case STATE_ENDLEVEL
						PushMatrix()
						Scale .7,.7
						mojo.SetColor 255,255,0
						RenderText("SCORE: "+(score.gamePoints),450,10)
						PopMatrix()
						SetAlpha .9
						frame.Render()
						SetAlpha 1.0
						Local eventpos:Int = tick - startTick
						Local temp:String
						PushMatrix
						Scale .8,.8
						mojo.SetColor 255,255,0
						RenderText("Level Finished!",220,80)
						mojo.SetColor 0,0,255
						Scale .7,.8
						If (eventpos > 500)
							RenderText("Time Spent: "+String(score.secondsSpend)[..5]+" Seconds",190,180)
							If (eventpos > 1000)
								RenderText("Time Left: " + String(score.secondsRemaining)[..5] + " X 100",190,240)
								RenderText(" = " +  score.bonus+" Bonus",520,240)
								If (eventpos > 1500)
									RenderText("Coins: "+ Collectible.Taken +" X 50",190, 300)
									RenderText(" = "+ score.coinPoints+" Points",520, 300)
									If (eventpos > 2000)
										RenderText("______________________",190,330)
										mojo.SetColor 0,255,0
										RenderText("Level Total ",190,380)
										RenderText(" = " + score.totalPoints + " Points",520,380)
									
									Endif
								Endif
							Endif
						Endif
						Scale 1.0,1.0
						PopMatrix
						Scale .8,.8
						mojo.SetColor 150,50,50
						RenderText("Hit space/Enter for next level!",90,360) 
						Scale 1.0,1.0
				End Select
		End Select
	End Method

End Class

Function Main:Int()
	Local _mochiads_game_id:String = "18c0a4b9776ecceb"
	New rollBall
	Return True
End Function

