Strict
Import mojo
Import JPMod.MouseMod
Import JPMod.FontMod2
Import JPMod.VectorMod
Import JPMod.LinkListMod1
Import JPMod.StoreMod
Import JPMod.VirtualMod
Import JPMod.GuiMod


Function Main:Int()
	New Game
	Return True
End Function

Global currentTime:Int

Global activeStage:StageBase
Global nextStage:StageBase

Global introStage:Intro
Global menuStage:Menu
Global gameStage:GalVadors
Global optionsStage:Options
Global creditsStage:Credits
Global player:Player

Global enemyBulletList:LinkList<Bullet> = New LinkList<Bullet>
Global playerBulletList:LinkList<Bullet> = New LinkList<Bullet>
Global explosionList:LinkList<Explosion> = New LinkList<Explosion>
Global shipParticleList:LinkList<Particle> = New LinkList<Particle>
Global aparticleList:LinkList<ParticleA>
Global specialList:LinkList<Special>

Global bulletStore:Store<Bullet> = New Store<Bullet>(150)
Global explosionStore:Store<Explosion> = New Store<Explosion>(50)
Global particleStore:Store<Particle> = New Store<Particle>(50)
Global aparticleStore:Store<ParticleA>

Global media:Media

Global score:Int
Global hiScore:Int

Global mouseDown:Int

Global lapsedTime:Int
Global tistal:AngelFont
Global bfont:AngelFont

Class Game Extends App
	Field stars:Stars
	
	Method OnCreate:Int()
		media = New Media
		SetVirtualDisplay(DeviceWidth(),DeviceHeight()-50)
		introStage = New Intro
		activeStage = introStage
		nextStage = activeStage
		
		tistal= LoadAngelFont("tistal")
		bfont = LoadAngelFont("arbold128x128")
		aparticleList =New LinkList<ParticleA>
		aparticleStore = New Store<ParticleA>
		
'		SetAngelFont(tstl)
		stars = New Stars()
		Translate(0,100)
		SetUpdateRate 40
		Return True
	End Method
	
	Method OnUpdate:Int()
		mouse.Update()
		mouseDown = MouseDown()

		currentTime = Millisecs()
		
		If activeStage <> nextStage
			activeStage = nextStage
		Endif
		activeStage.Update()
		stars.Update()
		For Local e:Explosion = Eachin explosionList
		next
		Return True
	End Method
	
	Method OnRender:Int()
		UpdateVirtualDisplay()
		stars.Render()
		activeStage.Render()
		Return True
	End Method
	
End Class


Class StageBase
	
	Method Update:Void() Abstract
	Method Render:Void() Abstract
	
End Class


Class Intro Extends StageBase
	
	Field startTime:Int
	Field delayAmount:Int
	Field oldScape:Int
	Field image:Image
	
	Method New()
		image = media.alienImg
		Init()
	End Method
	
	Method Init:Void()
		startTime = currentTime
		delayAmount = 3000
	End Method
	
	Method Update:Void()
		Local scape:Int = KeyDown(KEY_ESCAPE)' Or MouseDown()
		If currentTime > startTime+delayAmount Or (oldScape And Not scape)
			If Not menuStage
				menuStage = New Menu
			Endif
			nextStage = menuStage
		Endif
		oldScape = scape
	End Method
	
	Method Render:Void()
		DrawImage image,70,100
		tistal.RenderText "  TIMED INVASION",140,230
	End Method
	
End Class
	
Class Menu Extends StageBase

	Field index:Int
	Field totalOptions:Int
	Field options:String[]
	Field hoverColor:Int
	Field defaultColor:Int
	Field clickColor:Int
	Field inactiveColor:Int
	Field currentColor:Int
	Field oldMouseDown:Int
	Field alienImg:Image
	
	Field introBtn:Button
	Field playBtn:Button

	Const cINTRO:Int = 0
	Const cPLAY:Int = 1
	Const cCONTINUE:Int = 2
	Const cSCORESTABLE:Int = 3
	Const cOPTIONS:Int = 4
	Const cCREDITS:Int = 5
	
	Method New()
		introBtn = New Button(bfont,media.buttonImg,180,180,"INTRO")
		playBtn = New Button(bfont,media.buttonImg,180,260,"PLAY")
	End Method
	
	Method Update:Void()
		
		introBtn.Update()
		playBtn.Update()
		Select True
			Case introBtn.GetState()
				nextStage = introStage
				introStage.Init()
			Case playBtn.GetState()
				gameStage = New GalVadors
				nextStage = gameStage
		End Select
	End Method
	
	Method Render:Void()
		DrawImage media.alienImg,70,100
		tistal.RenderText "MENU",190,50
		
		introBtn.Render()
		playBtn.Render()

		graphics.SetColor 255, 255,  0
		DrawText("Music by Kevin MacLeod - incompetech.com",100,350)
		graphics.SetColor 255,255,255
	End Method

End Class

Class GalVadors Extends StageBase
	Field oldScape:Int
	Field wave:Wave
	Field shipExplosionImg:Image
	Field explosionImg:Image
	Field gameTimer:Timer
	Field meteorList:LinkList<Meteor>
	Field passedLevel:Int
	Field trailImg:Image
	Field Level:Int
	Field ufo:Ufo
	
	Field continueBtn:Button

	Method New()
	
		

		player = New Player()

		wave = New Wave(0)

		meteorList = New LinkList<Meteor>
		
		For Local i:Int = 0 Until 10
			Local m:Meteor = New Meteor(Rnd(-16,656),Rnd(-16,494),Rnd(0,360),Rnd(1,5))
			meteorList.AddLast(m)
		Next
		
		gameTimer = New Timer(60000,10,10)
		
		ufo = New Ufo(-50,50)

		media.PlayTune()

		passedLevel = False

		specialList = New LinkList<Special>
		
		continueBtn = New Button(bfont,media.buttonImg,180,320,"Continue")
		
		score = 0
		Level = 0
	End Method
	
	Method Update:Void()

		If KeyDown(KEY_ESCAPE) Error""
		player.Update()
		UpdateBullets()
		wave.Update()
		If player.state <> player.DEAD
			ProcessCollisions()
		Endif

		ProcessExplosions()
		If player.state <> player.PASSEDLEVEL And player.state <> player.DEAD
			If KilledAll() = True
				If wave.level < 5
					passedLevel = True
					player.state = player.PASSEDLEVEL
				Else
					player.state = player.PASSEDGAME
				Endif
			Elseif gameTimer.Update() = False
				player.state = player.DEAD
			Endif
		Endif
		
		For Local p:ParticleA = Eachin aparticleList
			p.Update()
		Next
		
		For Local m:Meteor = Eachin meteorList
			m.Update()
		Next

		For Local s:Special = Eachin specialList
			If s.Update() = False
				s.Remove()
			Endif
		Next
		
		ufo.Update()
		Local key:Int = KeyDown(KEY_ESCAPE)

		If oldScape And Not key
			If GalVadors(nextStage) 
				StopMusic()
			Endif 
			nextStage = menuStage
		Endif
		
		oldScape = key
		
		If passedLevel = True
			continueBtn.Update()
			If continueBtn.GetState() And player.state <> player.PASSEDGAME
				
				wave.SetNextLevel()
				gameTimer.Reset()
				player.state = player.ACTIVE
				passedLevel = False
				ufo.Reset()
				enemyBulletList.Clear()
				playerBulletList.Clear()
				explosionList.Clear()
				shipParticleList.Clear
				aparticleList.Clear()
				specialList.Clear()
			Endif
		Endif
	End Method
			
	Method KilledAll:Int()
		Return wave.KilledAll()
	End Method
	
	Method UpdateBullets:Void()
		For Local b := Eachin playerBulletList
			b.Update()
		Next
		For Local b := Eachin enemyBulletList
			b.Update()
		Next
		
	End Method
	
	Method ProcessCollisions:Void()
		For Local s := Eachin specialList
			If player.Collided(s.pos.x,s.pos.y,s.hitBox)
				Select s.type
					Case Special.HEART
						If player.lifes < 5
							player.lifes  += 1
						Endif
					Case Special.SHIELD
						player.shieldTimer.Reset()
					Case Special.GUN
						player.bulletTimer.Reset()
				End Select
				media.WoopSnd()
				s.Remove()
			Endif
		Next
		
		For Local b := Eachin playerBulletList 
			wave.CollideBullet(b)
		Next

		If ufo.active = True
			For Local b := Eachin playerBulletList
				If ufo.Collided(b.pos.x,b.pos.y,b.hitBox)	
					Local e:= explosionStore.GetItem()
					e.Init(ufo.pos.x,ufo.pos.y,100)
					explosionList.AddLast(e)
					ufo.ReleaseSpecial(player)
					ufo.DeActivate()
					media.ExplodeSnd2()
					Exit
				Endif
			Next		
		Endif
		
		If player.state = player.ACTIVE
			If player.shielded = False
				If wave.CollidedPlayer(player)
					CreateShipExplosion(player.pos.x,player.pos.y)
					Local e := explosionStore.GetItem()
					e.Init(player.pos.x,player.pos.y,100)
					explosionList.AddLast(e)
					If player.lifes = 0
						player.state = player.DEAD
					Else
						player.state = player.SPAWNING
						player.SpawnReset()
					Endif
				Endif
			Endif
		Endif

		If player.state = player.ACTIVE
			If player.shieldTimer.Update() = false
				For Local b := Eachin enemyBulletList
					If player.Collided(b.pos.x,b.pos.y,b.hitBox)
						b.Remove()
						bulletStore.ReturnItem(b)
						CreateShipExplosion(player.pos.x,player.pos.y)
						Local e := explosionStore.GetItem()
						e.Init(player.pos.x,player.pos.y,100)
						explosionList.AddLast(e)
						player.state = player.SPAWNING
						media.ExplodeSnd2()
						player.SpawnReset()
					Endif
				Next
			Endif
		Endif

		Local dw:Float = DeviceWidth()
		Local dh:Float = DeviceHeight()
		
		For Local b:Bullet = Eachin playerBulletList
			If (b.pos.x < 0) Or (b.pos.y < 0) Or (b.pos.x > dw) Or (b.pos.y > dh)
				b.Remove()
				bulletStore.ReturnItem(b)
			Endif
		Next
		For Local b:Bullet = Eachin enemyBulletList
			If (b.pos.x < 0) Or (b.pos.y < 0) Or (b.pos.x > dw) Or (b.pos.y > dh)
				b.Remove()
				bulletStore.ReturnItem(b)
			Endif
		Next
	End Method
	
	Method ProcessExplosions:Void()
		For Local e := Eachin explosionList
			e.Update()
			If e.Done()
				e.Remove()
				explosionStore.ReturnItem(e)
			Endif
		Next
		For Local e := Eachin shipParticleList
			e.Update()
			If e.Done()
				e.Remove()
				particleStore.ReturnItem(e)
			Endif
		Next
	End Method
	
	Method Render:Void()

		graphics.SetColor 150,150,150
		For Local m:Meteor = Eachin meteorList
			m.Render()
		Next
		graphics.SetColor 255,255,255
		player.Render()
		wave.Render()

		SetBlend AdditiveBlend
		For Local p := Eachin aparticleList
			p.Render()
		Next
		SetAlpha 1.0
		
		For Local b := Eachin playerBulletList
			b.Render()
		Next
		
		For Local b := Eachin enemyBulletList
			b.Render()
		Next
		
		For Local ex := Eachin explosionList
			ex.Render()
		Next
		
		graphics.SetColor 255,255,255
		For Local pa := Eachin shipParticleList
			pa.Render()
		Next
		
		For Local s:Special = Eachin specialList
			s.Render()
		Next

		ufo.Render()
		
		gameTimer.Render()
		tistal.RenderText score,350,10
		graphics.SetColor 255,0,255
		Select player.state
			Case player.PASSEDLEVEL
				tistal.RenderText "   Level Completed!",100,180
				tistal.RenderText "   Final Score "+score,100,220
				continueBtn.Render()
				'tistal.RenderText "Press SPACE to CONTINUE.",50,300
			Case player.DEAD
				tistal.RenderText "  Game Over - You Lost!",100,180
				tistal.RenderText "    Final Score "+score,100,220
				tistal.RenderText "  Press 'ESC' to Exit.",100,300
			Case player.PASSEDGAME	
				tistal.RenderText "     Game WON",100,180
				tistal.RenderText "    Final Score "+score,100,220
				tistal.RenderText "Press 'ESC' to Exit.",100,300
				
		End Select
		graphics.SetColor 255,255,255
		If player.shielded = True
			DrawImage media.specialImg[Special.SHIELD],280,25
		Endif
		If player.fastRate = True
			DrawImage media.specialImg[Special.GUN],280,25
		Endif
		DrawText Int(AccelX()*10.0),10,600
	End Method 	

End Class

Class Options Extends StageBase
	Field oldScape:Int

	Method New()
		
	End Method
	
	Method Update:Void()
		Local key:Int = KeyDown(KEY_ESCAPE)
		If oldScape And Not key 
			nextStage = menuStage
		Endif
		oldScape = key
	End Method
	
	Method Render:Void()
		DrawText "This is the Options Stage",300,240
	End Method 	

End Class

Class Credits Extends StageBase

	Field oldScape:Int

	Method New()
	End Method
	
	Method Update:Void()
		Local key:Int = KeyDown(KEY_ESCAPE)
		If oldScape And Not key
			nextStage = menuStage
		Endif
		oldScape = key
	End Method
	
	Method Render:Void()
		DrawText "This is the credits Section",300,240
	End Method 	

End Class

Class ScoresTable Extends StageBase

	Field oldScape:Int
	

	Method New()
	
	End Method
	
	Method Update:Void()
		Local key:Int = KeyDown(KEY_ESCAPE)
		If oldScape And Not key
			nextStage = menuStage
		Endif
		oldScape = key
	End Method
	
	Method Render:Void()
		DrawText "This is the Scores Table Section",250,240
	End Method 	

End Class

Function Color:Void(c:Int)
	SetColor c Shr 16 & $FF,c Shr 8 & $FF, c & $FF
End Function

Class ScoreKeeper
	Field total:Int
End Class

'*******************************************************************************
Class HitBox
	Field min:PVector2D
	Field max:PVector2D
		
	Method New(minx:Float,miny:Float,maxx:Float,maxy:Float)
		Self.min = New PVector2D(minx, miny)
		Self.max = New PVector2D(maxx, maxy)
	End Method
	
	Method Set:Void(minx:Float,miny:Float,maxx:Float,maxy:Float)

		If min = Null min = New PVector2D
		If max = Null max = New PVector2D
		
		Self.min.Set(minx, miny)
		Self.max.Set(maxx, maxy)
	End Method
	
	Method Render:Void(x:Float,y:Float)
		DrawLine x+min.x,y+min.y,x+max.x,y+min.y
		DrawLine x+max.x,y+min.y,x+max.x,y+max.y
		DrawLine x+max.x,y+max.y,x+min.x,y+max.y
		DrawLine x+min.x,y+max.y,x+min.x,y+min.y
	End Method
	
End Class


Class Entity Extends Link
	Field parent:PVector2D
	Field mainv:PVector2D
	Field pos:PVector2D
	Field hitBox:HitBox
	Field startTime:Int
	Field frameDelay:Int
	Field totalFrames:Int
	Field angle:Float
	Field d:PVector2D
	Field state:Int

	Field image:Image
	Field value:Int

	Const IN_FORMATION:Int = 1
	Const ALIGNING_OUT:Int = 2
	Const LEAVING:Int = 3
	Const ATTACKING:Int = 4
	Const TURNING:Int = 5
	Const RETURNING:Int = 6 
	Const ALIGNING_IN:Int = 7
	Const SWEEPING:Int = 8

	Const ACTIVE:Int = 9
	Const SPAWNING:Int = 10
	Const DEAD:Int = 11
	Const PASSEDLEVEL:Int = 12
	Const PASSEDGAME:Int = 13
	
	Method Update:Void() Abstract
		
	Method Render:Void() Abstract
	
	Method UnRegister:Void() Abstract
	
	Method New()
		parent = New PVector2D
		mainv = New PVector2D
		pos = New PVector2D
		d = New PVector2D
	End Method
	
	Method Collided:Int(px:Float,py:Float,hb:HitBox)
		Local b2x1:Float,b2y1:Float,b2x2:Float,b2y2:Float
		Local b1x1:Float = px + hb.min.x
		Local b1y1:Float = py + hb.min.y
		Local b1x2:Float = px + hb.max.x
		Local b1y2:Float = py + hb.max.y
		Select state
			Case IN_FORMATION,ALIGNING_OUT,ALIGNING_IN
				b2x1 = parent.x + hitBox.min.x
				b2y1 = parent.y + hitBox.min.y
				b2x2 = parent.x + hitBox.max.x
				b2y2 = parent.y + hitBox.max.y
			Default
				b2x1 = pos.x + hitBox.min.x
				b2y1 = pos.y + hitBox.min.y
				b2x2 = pos.x + hitBox.max.x
				b2y2 = pos.y + hitBox.max.y
		End Select
		If b1x1 > b2x2 Return False
		If b1x2 < b2x1 Return False
		If b1y1 > b2y2 Return False
		If b1y2 < b2y1 Return False 	
		Return True
	End Method
	
	Method SetHitBox:Void(minx:Float,miny:Float,maxx:Float,maxy:Float)
		If hitBox= Null
			hitBox = New HitBox(minx,miny,maxx,maxy)
		Else
			hitBox.Set(minx, miny, maxx, maxy)
		Endif
	End Method
	
End Class

Class Player Extends Entity
	Field minx:Float
	Field maxx:Float
	Field direction:Int
	Field delay:Int
	Field StartTime:Int
	Field passedLevel:Int
	Field lifes:Int
	Field trailImg:Image
	
	Field shieldTimer:Timer
	Field bulletTimer:Timer
	
	Field bulletRateUp:Int
	Field fastRate:int
	Field shielded:Int
	
	Field decrementRate:int
	
	Field spawnTimer:Timer
	
	Field bulletImg:Image
		
	Const SPAWNDELAY:Int = 2000
	
	Method New()
		image = media.playerImg
		
		bulletImg = media.bulletImg 
		trailImg = media.trailImg
		delay = 350
		decrementRate = 200
		startTime = currentTime
		minx = image.HandleX()
		maxx =  DeviceWidth() -(image.Width() - image.HandleX())
		hitBox = New HitBox(6-image.HandleX(),4-image.HandleY(), image.Width() - image.HandleX()-6, image.Height() - image.HandleY())
		minx = image.HandleX()
		pos.Set(DeviceWidth() / 2,440) 'DeviceHeight() - 160)
		lifes = 3
		state = ACTIVE
		spawnTimer = New Timer(SPAWNDELAY,0,0)
		bulletTimer = New Timer(5000,0,0)
		shieldTimer = New Timer(5000,0,0)
		bulletTimer.Expire()
		shieldTimer.Expire()
		shielded = False
	End Method
	
	Method UnRegister:Void()
	
	End Method
	
	Method SpawnReset:Void()
		spawnTimer.Reset()
	End Method
	
	Method Update:Void()
		Local dt:Int = decrementRate
		If bulletTimer.Update() = False
			fastRate = False
			dt = 0
		Else
			fastRate = True
		Endif
		
		If shieldTimer.Update() = False
			shielded = False
		Else
			shielded = True
		Endif
		
		Select state
			Case ACTIVE
				direction = 0
				'If TouchDown(0) = True
					'Local l:Int = (TouchX() < (pos.x-2))
					'Local r:Int = (TouchX() > (pos.x+2))
					direction = AccelX()*50.0 'r - l
					'KeyDown(KEY_RIGHT) - KeyDown(KEY_LEFT)
				'Endif
				If (startTime+(delay-dt)) < currentTime
						Local b:Bullet = bulletStore.GetItem()
						b.Init(bulletImg,trailImg,pos.x,pos.y-12,0,-1,10)
						b.SetHitBox(-bulletImg.HandleX(),-bulletImg.HandleY(),bulletImg.Width() - bulletImg.HandleX(),bulletImg.Height() - bulletImg.HandleY())
						playerBulletList.AddLast(b)
						startTime = currentTime
						media.ShootSnd1()
				Endif
				pos.x += direction' * 5
				If pos.x < minx pos.x = minx
				If pos.x > maxx pos.x = maxx
			Case SPAWNING
				direction = AccelX()*50.0'= KeyDown(KEY_RIGHT) - KeyDown(KEY_LEFT)
				pos.x += direction '* 5
				If pos.x < minx pos.x = minx
				If pos.x > maxx pos.x = maxx
				If spawnTimer.Update() = False
					If lifes > 1
						state = ACTIVE
					Else
						state = DEAD
					Endif
					lifes -= 1
				Elseif lifes = 1
					lifes -= 1
					state = DEAD
				Endif
			Case DEAD
				
		End Select
		
	End Method
	
	Method Render:Void()
		Select state
			Case ACTIVE
				If shielded = False
					DrawImage image,pos.x,pos.y,1
				Else
					SetAlpha .8
					DrawImage image,pos.x,pos.y,0				
				Endif
			Case SPAWNING
				SetAlpha .6
				DrawImage image,pos.x,pos.y,0
		End Select
		SetAlpha 1.0
		For Local i:Int = 0 Until lifes
			DrawImage image,180+i*28,30,1
		Next
		'hitBox.Render(pos.x,pos.y)
	End Method
	
End Class
	
Class Gripper Extends Entity
	Field index:Int

	Method New()
		image = media.gripperImg
		image.SetHandle(12,12)
		pos.Set(100, 50)
		SetHitBox(-image.HandleX(),-image.HandleY(),image.Width()-image.HandleX(),image.Height() - image.HandleY())
		startTime = currentTime
		frameDelay = 500
		totalFrames = 2
		state = IN_FORMATION = True
		value = 200
	End Method

	Method Update:Void()
		If currentTime > startTime+frameDelay
			index = (index + 1) Mod totalFrames
			startTime = currentTime
		Endif
				
	End Method
	
	Method UnRegister:Void()
	
	End Method

	Method Render:Void()
		If state = IN_FORMATION
			DrawImage image,parent.x,parent.y,0,1.1,1.1,index
		Else
			DrawImage image,pos.x,pos.y,0,1.1,1.1,index
		Endif
	End Method

End Class

Class Lazer Extends Entity
	Method Update:Void()
	End Method
	
	Method UnRegister:Void()
	End Method
	
	Method Render:Void()
	End Method
End Class


Class Tesla Extends Entity
	Field p:PVector2D
	Field posx:Float
	Field posy:Float
	Field direction:Int
	Field dist:PVector2D
	Field index:Int
	
	Field shootTime:Int
	Field shootDelay:Int
	Field shootAngle:Float
	Field shootAngleStep:Float
	
	Field attackCount:Int
	Field bulletImg:Image
	
	Field length:Float
	Field speed:Float

	Global divingCount:Int
	Global attackDelay:Int
	Global attackTime:Int
	Global trailImg:Image
	

	Method New(firstAttackTime:Int,attackRate:int)
		image = media.teslaImg
		trailImg = media.trailImg
		bulletImg = media.bulletImg

		SetHitBox(-image.HandleX(),-image.HandleY(),image.Width()-image.HandleX(),image.Height() - image.HandleY())
		pos.Set(50,50)
		startTime = currentTime
		frameDelay = attackRate
		totalFrames = 2
		state = IN_FORMATION
		divingCount = 0
		attackDelay = 1000
		attackTime = currentTime+firstAttackTime
		shootDelay = 100
		value = 150
		dist = New PVector2D
		p = New PVector2D
	End Method

	Method Update:Void()
		If currentTime > startTime+frameDelay
			index = (index + 1) Mod totalFrames
			startTime = currentTime
		Endif
		Select state
			Case IN_FORMATION
				If divingCount < 2 And player.state = player.ACTIVE
					If attackTime+attackDelay < currentTime
						If Rnd(10) > 9.5
							pos.Set(parent)
							p.Set(pos.x,pos.y)
							state = LEAVING		
							posy = 250.0
							posx = Rnd(60,580)
							dist.Set( posx - pos.x, posy - pos.y)
							length = dist.Magnitude()
							Local ang:Float = dist.GetAngle()
							d.Set(Cos(ang), Sin(ang))
							dist.Set(0, 0)
							divingCount += 1
							attackTime = currentTime
							attackCount = 0
							speed = 3
						Endif
					Endif
				Endif						
			Case LEAVING
				dist.Add(d.x * speed,d.y * speed)
				Local len:Float = dist.Magnitude()
				If len < length
					pos.Set(p.x + dist.x, p.y + dist.y)
				Else
					pos.Set(p.x + d.x * length, p.y + d.y * length)
					p.Set(pos.x,pos.y)
					state = ATTACKING
					shootAngle = 45
					shootAngleStep = 12
					shootTime = currentTime
					attackCount = 0
					dist.Set(0,0)
				Endif
			
			Case ATTACKING
				If shootTime + shootDelay < currentTime
					If attackCount < 10
						Local tdx:Float = Cos(shootAngle)
						Local tdy:Float = Sin(shootAngle)
						Local b:Bullet = bulletStore.GetItem()
						b.Init(bulletImg,trailImg,pos.x+tdx*15.0,pos.y+tdy*15,tdx,tdy,5)
						enemyBulletList.AddLast(b)
						attackCount += 1
						shootAngle += shootAngleStep
						shootTime = currentTime
					Else
						state = RETURNING
					Endif
				Endif
			Case RETURNING
				dist.Set(parent.x - pos.x, parent.y - pos.y)
				Local targetAngle:Float = dist.GetAngle()
				pos.Add(Cos(targetAngle) * speed,Sin(targetAngle) * speed)
				angle = targetAngle
				If pos.y <= parent.y 
					pos.Set(parent)
					divingCount -= 1
					state = IN_FORMATION
				Endif			
		End Select
				
	End Method
	
	Method UnRegister:Void()
		If state <> IN_FORMATION
			divingCount -= 1
		Endif
	End Method

	Method Render:Void()
		If state = IN_FORMATION
			DrawImage image,parent.x,parent.y,0,1,1,index
		Else
			DrawImage image,pos.x,pos.y,0,1,1,index
		Endif
	End Method

End Class

Class Boxed Extends Entity
	Field index:Int
	Field posx:Float
	Field posy:Float
	Field vx:Float
	Field vy:Float
	Field speed:Float
	Field length:Float
	Field px:Float
	Field py:Float
	Field laserImg:Image
	Field gunImg:Image
	Field lazer:Lazer
	Field time:Int
	Field delay:Int
	Field shake:float
	
	Global divingCount:Int = 0
	Global attackDelay:Int
	Global attackTime:Int 

	Method New(firstAttackTime:Int,attackRate:int)
		image = media.boxedImg
		laserImg = media.lazerImg
		gunImg = media.gunbImg 

		SetHitBox(-image.HandleX(),-image.HandleY(),image.Width()-image.HandleX(),image.Height() - image.HandleY())
		state = IN_FORMATION
		attackDelay = attackRate
		attackTime = currentTime + firstAttackTime
		speed = 3
		lazer = New Lazer
		lazer.hitBox = New HitBox(-6,0,6,100)
		value = 100
		time = currentTime
		delay = 100
		index = 0
		shake = 0
	End Method

	Method Update:Void()
		Select state
			Case IN_FORMATION
				If divingCount < 2 And player.state = player.ACTIVE
					If attackTime+attackDelay < currentTime
						If Rnd(10) > 9.0
							pos.x = parent.x
							pos.y = parent.y
							px = pos.x
							py = pos.y
							state = LEAVING
							posy = 350.0
							posx = Rnd(60,580)
							vx = posx - pos.x
							vy = posy - pos.y
							length = Sqrt(vx*vx+vy*vy)
							Local ang:Float = ATan2(vy,vx)
							d.Set( Cos(ang),Sin(ang))
							vx = 0
							vy = 0
							divingCount += 1
							attackTime = currentTime
						Endif
					Endif
				Endif	
			Case LEAVING
				vx += d.x * speed
				vy += d.y * speed
				Local len:Float = Sqrt(vx*vx+vy*vy)
				If len < length
					pos.x = px + vx
					pos.y = py + vy
				Else
					pos.Set(px + d.x * length, py + d.y * length)
					px = pos.x
					py = pos.y
					state = SWEEPING
					If player.pos.x < px
						If pos.x > 120
							d.x = -1
						Else
							d.x = 1
						Endif
					Else
						If pos.x < 520
							d.x = 1
						Else
							d.x = -1
						Endif
					Endif
					d.y = 0
					length = 120.0
					vx = 0 
					vy = 0
					media.LaserSnd()
				Endif
			Case SWEEPING
				vx += d.x*speed
				Local len:Float = Sqrt(vx*vx+vy*vy)
				If len < length
					pos.Set(px + vx, py)
				Else
					pos.Set(px + d.x * length,py)
					state = RETURNING
				Endif	
			Case RETURNING
				vx = parent.x - pos.x
				vy = parent.y - pos.y
				Local targetAngle:Float = ATan2(vy,vx)
				pos.Add(Cos(targetAngle) * speed, Sin(targetAngle) * speed)
				angle = targetAngle
				If pos.y <= parent.y 
					pos.Set(parent.x, parent.y)
					divingCount -= 1
					state = IN_FORMATION
				Endif

		End Select
		If time + delay <Millisecs()
			index = (index + 1) Mod 3
			time = Millisecs()
		Endif
		shake = (shake - 3.0) Mod 360.0
	End Method
	
	Method lazerCollided:Int(p:Player)
		If state = SWEEPING
			lazer.x = x
			lazer.y = y
			Return lazer.collided(p)
		Endif
		Return False
	End Method
	
	Method UnRegister:Void()
		If state <> IN_FORMATION
			divingCount -= 1
		Endif
	End Method

	Method Render:Void()
		If state = IN_FORMATION
			DrawImage image,parent.x+3*Cos(shake),parent.y+1*Sin(shake),shake,1.3,1.3,index
		Else
			DrawImage image,pos.x,pos.y,shake,1.3,1.3,index
			If state = SWEEPING
				DrawImage gunImg,pos.x,pos.y,0,1.3,1.3
				DrawImage laserImg,pos.x,pos.y,0,1,100
			Endif
		Endif
	End Method


End Class	

Class Micron Extends Entity
	Field index:Int
	Field targetAngle:Float
	Field vx:Float
	Field vy:Float
	Field length:Float
	Field px:Float
	Field py:Float
	Field pivotx:Float
	Field pivoty:Float
	Field rotate:Float
	Field speed:Float
	Field direction:Int
	Field life:int
	Field bulletImg:Image
	Field trailImg:Image
	
	Const LEFT:Int = 1
	Const RIGHT:Int = 2
	
	Const TURN_RADIUS:Float = 40.0
	Const RTA:Float = PI/180.0
	Const STP:Float = 1.0/(RTA * 20)
	
	Global divingCount:Int = 0
	Global attackDelay:Int
	Global attackTime:Int
	Global shootTime:Int
	Global shootDelay:Int

	Method New(firstShotStart:Int,firstAttackStart:int)
		image = media.micronImg
		bulletImg = media.bulletImg
		trailImg  = media.trailImg
		SetHitBox(-image.HandleX(),-image.HandleY(),image.Width()-image.HandleX(),image.Height() - image.HandleY())
		pos.Set(50, 100)
		startTime = currentTime
		frameDelay = 100
		totalFrames = 4
		state = IN_FORMATION
		speed = 3
		
		attackDelay = 1000
		attackTime = currentTime + firstAttackStart 'first petential attack after 3 seconds
		
		shootDelay = 700
		shootTime = currentTime +  firstShotStart'first potential shot after two seconds.
		
		value = 50
		divingCount = 0
	End Method
	
	Method ShootAttempt:Void()
		If shootTime + shootDelay < currentTime
			If state = IN_FORMATION
				If Abs(parent.x - player.pos.x) < 6
					Local b:Bullet = bulletStore.GetItem()
					b.Init(bulletImg,trailImg,parent.x,parent.y,0,1,10)
					enemyBulletList.AddLast(b)
					shootTime = currentTime
				Else
					If Rnd(10) > 7
						Local b:Bullet = bulletStore.GetItem()
						b.Init(bulletImg,trailImg,parent.x,parent.y,0,1,10)
						enemyBulletList.AddLast(b)
						shootTime = currentTime
					Endif	
				Endif
			Elseif state = ATTACKING
				If Abs(pos.x - player.pos.x) < 2
					Local b:Bullet = bulletStore.GetItem()
					Local tdx:Float = Cos(angle)
					Local tdy:Float = Sin(angle)
					b.Init(bulletImg,trailImg,pos.x+tdx*10.0,pos.y+tdy*10.0,tdx,tdy,10)
					enemyBulletList.AddLast(b)
					shootTime = currentTime
				Elseif Rnd(10) > 9
						Local b:Bullet = bulletStore.GetItem()
						Local tdx:Float = Cos(angle)
						Local tdy:Float = Sin(angle)
						b.Init(bulletImg,trailImg,pos.x+tdx*10.0,pos.y+tdy*10.0,tdx,tdy,10)
						enemyBulletList.AddLast(b)
						shootTime = currentTime
				Endif
			Endif
		Endif
			 
	End Method

	Method Update:Void()
		Select state
			Case IN_FORMATION
				If currentTime > startTime+frameDelay
					index = (index + 1) Mod totalFrames
					startTime = currentTime
				Endif
				If divingCount < 4 And player.state = player.ACTIVE
					If attackTime+attackDelay < currentTime
						If Rnd(1000) > 900.0
							pos.Set(parent)
							state = ALIGNING_OUT
							divingCount += 1
							attackTime = currentTime
						Else
							
						Endif
					Else
						ShootAttempt()
					Endif
				Endif				
			Case ALIGNING_OUT
				angle = (angle + 360.0) Mod 360.0 
				vx = player.pos.x - parent.x
				vy = player.pos.y - parent.y
				px = parent.x
				py = parent.y
				length = Sqrt(vx*vx+vy*vy)
				targetAngle = (ATan2(vy,vx)+360.0) Mod 360.0		
				Local difference:Float = Abs(targetAngle-angle)
				'turn toward target				
				If targetAngle < angle				
					If difference > 180.0 
						angle += 5
					Elseif difference < 180.0
						angle -= 5 
					Endif
				Elseif targetAngle > angle
					If difference > 180.0
						angle -= 5 
					Elseif difference < 180.0
						angle += 5
					Endif
				Endif
				'If found stop turning
				
				If difference < 5
					angle = targetAngle
					d.Set(Cos(angle), Sin(angle))
					vx = 0
					vy = 0
					pos.x = parent.x
					pos.y = parent.y
					state = ATTACKING
				Endif
			Case ATTACKING
				vx += d.x * speed
				vy += d.y * speed
				Local len:Float = Sqrt(vx*vx+vy*vy)
				If len >= length
					pos.x = px + vx
					pos.y = py + vy
					state = TURNING
					If player.pos.x < pos.x
						pivotx = pos.x - d.y * TURN_RADIUS
						pivoty = pos.y + d.x * TURN_RADIUS
						rotate = angle - 90
						direction = RIGHT
					Else
						pivotx = pos.x + d.y * TURN_RADIUS
						pivoty = pos.y - d.x * TURN_RADIUS
						rotate = angle + 90
						direction = LEFT
					Endif
				Else
					pos.Set(px + vx, py + vy)
					ShootAttempt()
				Endif
				
			Case TURNING
				If direction = RIGHT
					angle += STP * 2 
					rotate += STP * 2
					pos.x = pivotx + Cos(rotate) * TURN_RADIUS
					pos.y = pivoty + Sin(rotate) * TURN_RADIUS
					If rotate >= 180 state = RETURNING
				Else 
					angle -= STP * 2
					rotate -= STP * 2
					pos.x = pivotx + Cos(rotate) * TURN_RADIUS
					pos.y = pivoty + Sin(rotate) * TURN_RADIUS
					If rotate <= 0 state = RETURNING
				Endif
			Case RETURNING
				vx = parent.x - pos.x
				vy = parent.y - pos.y
				targetAngle = ATan2(vy,vx)
				pos.Add(Cos(targetAngle) * speed,Sin(targetAngle) * speed)
				angle = targetAngle
				If pos.y <= parent.y 
					pos.Set(parent.x, parent.y)
					targetAngle = 270.0
					state = ALIGNING_IN
				Endif

			Case ALIGNING_IN
				angle = (angle + 360.0) Mod 360.0
				Local difference:Float  = Abs(targetAngle - angle)
				If angle < targetAngle
					If difference < 180.0
						angle += 5
					Else
						angle -= 5
					Endif
				Elseif angle > targetAngle
					If difference < 180.0
						angle -= 5.0
					Else
						angle += 5.0
					Endif
				Endif
				
				If difference < 5
					divingCount -= 1
					angle = targetAngle
					state = IN_FORMATION
				Endif
					
			
		End Select
	End Method
	
	Method UnRegister:Void()
		If state <> IN_FORMATION
			divingCount -= 1
		Endif
	End Method
	

	Method Render:Void()
		Select state
			Case IN_FORMATION
				DrawImage image,parent.x,parent.y,0,1.5,1.5,index
			Case ALIGNING_OUT
				DrawImage image,parent.x,parent.y,-angle-90,1.5,1.5,index
			Case ALIGNING_IN
				DrawImage image,parent.x,parent.y,-angle-90,1.5,1.5,index
			Case TURNING
				If direction = RIGHT
					DrawImage image,pos.x,pos.y,-angle-90,1.5,1.5,2			
				Else
					DrawImage image,pos.x,pos.y,-angle-90,1.5,1.5,2
				Endif
			Default
				DrawImage image,pos.x,pos.y,-angle-90,1.5,1.5,2
		End Select
	End Method

End Class

Class Ufo Extends Entity
	Field frame:Float
	Field speed:Float
	Field dir:Float
	Field delay:Int
	Field stage:Int
	Field active:Int
	Field time:Int
	Field lifes:Int
	Field gunImg:Image
	Field heartImg:Image
	Field shieldImg:Image
	Field specialImg:Image[3]
	Field released:Int
	Field nstate:int
	
	Const STARTLEFT:Int = 1
	Const STARTRIGHT:Int = 2
	Const LEFT:Int = - 1
	Const RIGHT:Int = 1
	
	
	Method New(x:Float,y:Float)
		Self.image = media.ufoImg
	
		Self.specialImg[Special.HEART] = media.heartImg
		Self.specialImg[Special.GUN] = media.gunImg
		Self.specialImg[Special.SHIELD] = media.shieldImg

		SetHitBox(-image.HandleX()+2,-image.HandleY()+4,image.Width()-(image.HandleX()+4),image.Height()-(image.HandleY()))
		pos = New PVector2D(x,y)
		speed = 1.5
		dir = 1
		active = False
		delay = 5000+Rnd(10000)
		active = False
		time = Millisecs()
		lifes = 3
	End Method
	
	Method Update:Void()
		If lifes > 0
			If active = True
				frame = (frame + .2) Mod 4
				If nstate = STARTLEFT
					If pos.x > 680
						active = False
						time = currentTime
						lifes -= 1
					Else
						pos.x += dir * speed
					Endif
				Elseif pos.x  < -40
					dir = -dir
					active = False
					time = currentTime
					lifes -= 1
				Else
					pos.x += dir * speed
				Endif
			Else
				If time + delay < currentTime
					If Rnd(2) < 1
						nstate = STARTLEFT
						dir = 1
						pos.x = -40
					Else
						nstate = STARTRIGHT
						dir = -1
						pos.x = 680
					Endif
					active = True	
				Endif
			End If
			
		Endif 
	End Method
	
	Method DeActivate:Void()
		pos.x = -40
		active = False
		delay = 5000+Rnd(10000)
		time = currentTime
		lifes -= 1
	End Method
	
	Method Reset:Void()
		pos.x = -40
		active = False
		delay = 500+Rnd(10000)
		time = currentTime
		lifes = 3 		
	End Method
	
	Method ReleaseSpecial:Void(p:Player)
		Local type:Int
		Local n:Float = Rnd(3.0)
		If n < 1.0 
			If p.lifes < 5
				type = Special.HEART
			Else
				type = Special.SHIELD
			Endif
		Elseif n < 2.0 
			type = Special.SHIELD
		Else
			 type = Special.GUN
		Endif
		Local s:Special = New Special(pos.x,pos.y,2,type)
		specialList.AddLast(s)
	
	End Method
	
	Method UnRegister:Void()
	
	End Method
	
	Method Render:Void()
		If active = True
			DrawImage image,pos.x,pos.y,frame
			'hitBox.Render(pos.x,pos.y)
		Endif
	End Method
End Class

Class Special Extends Link
	Field pos:PVector2D
	Field D:PVector2D
	Field speed:Float
	Field type:Int
	Field active:Int
	Field timer:Timer
	Field done:Int
	Field image:Image
	Field g:Float
	
	Const HEART:Int = 0
	Const GUN:Int = 1
	Const SHIELD:Int = 2
	
	Global hitBox:HitBox = New HitBox
	
	Method New(x:Float,y:Float,speed:Float,type:Float)
		Self.image = media.specialImg[type]
		pos = New PVector2D(x,y)
		D = New PVector2D(0,1)
		Self.speed = -speed
		active = True
		Self.type = type
		timer = New Timer(1000,0,0)
		g = .2
		done = False
		SetHitBox()
	End Method
		
	Method SetHitBox:Void()
		hitBox.Set(-image.HandleX(),-image.HandleY(),image.Width() - image.HandleX(),image.Height() - image.HandleY())
	End Method
	
	Method Update:Int()
		If done = False
			If active = True
				pos.Add(D.x*speed,D.y*speed)
				speed += g
				If pos.y > 430
					pos.y = 430
					active = False
					timer.Reset()
				Endif
			Else
				If timer.Update() = False
					done = True
				Endif
			Endif
		Endif
		Return Not done
	End Method
	
	Method UnRegister:Void()
	
	End Method
	
	Method Render:Void()
		DrawImage image,pos.x,pos.y
'		hitBox.Render(pos.x,pos.y)
	End Method
	
End Class

Class Level

	Method Update:Void() Abstract
	Method Render:Void() Abstract	

End Class

Class Wave Extends Level
	
	Field grid:Entity[][]
	Field rows:Int
	Field columns:Int
	Field state:Int
	Field angle:Float
	Field direction:Float
	Field speed:Float
	Field cx:Float
	Field cy:Float
	Field explosionImg:Image
	Field trailImg:Image
	Field level:int
	
	Const EXPANDING:Int = 1
	Const MOVING:Int = 2
	
	
	Method New(level:Int = 0)
		rows = 9
		columns = 4
		Self.explosionImg = media.explosionImg
		trailImg = media.trailImg
		grid = New Entity[columns][]
		InitLevel(level)
		speed = 1.2
		Self.level = level
	End Method
	
	Method InitLevel:Void(lvl:Int)
		cx = 240 
		cy = 50
		state = MOVING
		Local sx:Float = 100
		Local sy:Float = 65
		lvl = 4
		Local spx:Float = 35
		Select lvl 
			Case 0
				Local spy:float = 40
				For Local i:Int =  0 Until columns
					grid[i] = New Entity[rows]
					For Local j:Int = 0 Until rows
						grid[i][j] = New Micron(2000,60000)
						grid[i][j].parent.Set(sx + j * spx, sy + i * spy)
						grid[i][j].mainv.x = grid[i][j].parent.x-cx
						grid[i][j].mainv.y = grid[i][j].parent.y-cy
					Next
				Next
			Case 1
				sy = 100
				For Local i:Int =  0 Until columns
					grid[i] = New Entity[rows]
					Local spy:float = 50
					For Local j:Int = 0 Until rows
						If i < 2
							grid[i][j] = New Boxed(30000,1000)
							grid[i][j].parent.Set(sx + j * spx, sy + i * spy)
						Else
							grid[i][j] = New Micron(1000,60000)
							grid[i][j].parent.Set(sx + j * spx, sy + i * spy)
						Endif
						grid[i][j].mainv.x = grid[i][j].parent.x-cx
						grid[i][j].mainv.y = grid[i][j].parent.y-cy
					Next
				Next
			Case 2
				Local spy:Float = 35
				For Local i:Int =  0 Until columns
					grid[i] = New Entity[rows]
					For Local j:Int = 0 Until rows
						If (i Mod 2) = 0
							grid[i][j] = New Boxed(15000,1000)
							grid[i][j].parent.Set(sx + j * spx, sy + i * spy)
						Else
							grid[i][j] = New Micron(1000,60000)
							grid[i][j].parent.Set(sx + j * spx, sy + i * spy)
						Endif
						grid[i][j].mainv.x = grid[i][j].parent.x-cx
						grid[i][j].mainv.y = grid[i][j].parent.y-cy
					Next
				Next
			Case 3
				sy = 100
				For Local i:Int =  0 Until columns
					grid[i] = New Entity[rows]
					Local spy:Float = 40
					For Local j:Int = 0 Until rows
						If i < 1
							grid[i][j] = New Tesla(45000,2000)
							grid[i][j].parent.Set(sx + j * spx, sy + i * spy)
						Elseif i < 2
							grid[i][j] = New Boxed(30000,1000)
							grid[i][j].parent.Set(sx + j * spx, sy + i * spy)
						Else
							grid[i][j] = New Micron(1000,60000)
							grid[i][j].parent.Set(sx + j * spx, sy + i * spy)
						Endif
						grid[i][j].mainv.x = grid[i][j].parent.x-cx
						grid[i][j].mainv.y = grid[i][j].parent.y-cy
					Next
				Next
			Case 4
			
				For Local i:Int =  0 Until columns
					grid[i] = New Entity[rows]
					Local spy:Float = 40
					For Local j:Int = 0 Until rows
						If i = 0
							grid[i][j] = New Gripper()
							grid[i][j].parent.Set(sx + j * spx, sy + i * spy)
						Elseif i = 1
							grid[i][j] = New Tesla(30000,2000)
							grid[i][j].parent.Set(sx + j * spx, sy + i * spy)
						Elseif i = 2
							grid[i][j] = New Boxed(20000,1000)
							grid[i][j].parent.Set(sx + j * spx, sy + i * spy)
						Else
							grid[i][j] = New Micron(1000,30000)
							grid[i][j].parent.Set(sx + j * spx, sy + i * spy	)
						Endif
						grid[i][j].mainv.x = grid[i][j].parent.x-cx
						grid[i][j].mainv.y = grid[i][j].parent.y-cy
					Next
				Next
		End Select
	
	
	End Method
	
	Method SetNextLevel:Void()
		level +=  1
		angle = 0
		InitLevel(level)
	End method
	
	Method CollideBullet:Void(b:Bullet)
		For Local i:Int = 0 Until columns
			For Local j:Int = 0 Until rows
				If grid[i][j]
						Local o:Entity = grid[i][j]
						If o.Collided(b.pos.x,b.pos.y,b.hitBox)
							b.Remove()
							bulletStore.ReturnItem(b)
							Local e := explosionStore.GetItem()
							If o.state = Entity.IN_FORMATION Or o.state = Entity.ALIGNING_OUT Or o.state = Entity.ALIGNING_IN
								e.Init(o.parent.x,o.parent.y,40)
							Else
								e.Init(o.pos.x,o.pos.y,40)
							Endif
							explosionList.AddLast(e)
							o.UnRegister()
							If o.state = o.IN_FORMATION
								score += o.value
							Else
								score += o.value + 200
							Endif
							media.ExplodeSnd2()
							grid[i][j] = Null
							Return
						Endif
					Else
							
				Endif
			Next
		Next	
	End Method
	
	Method KilledAll:Int()
		For Local i:Int = 0 Until columns
			For Local j:Int = 0 Until rows
				If grid[i][j] Return False
			Next
		Next
		Return True
	End Method
	
	Method CollidedPlayer:Int(p:Player)
		For Local i:Int = 0 Until columns
			For Local j:Int = 0 Until rows
				If grid[i][j]
					Local o:Entity = grid[i][j]
					If Micron(o) <> Null
						If o.Collided(p.pos.x,p.pos.y,p.hitBox)
							Local e := explosionStore.GetItem()
							If o.state = Entity.IN_FORMATION Or o.state = Entity.ALIGNING_OUT Or o.state = Entity.ALIGNING_IN
								e.Init(o.parent.x,o.parent.y)
							Else
								e.Init(o.pos.x,o.pos.y)
							Endif
							explosionList.AddLast(e)
							o.UnRegister()
							grid[i][j] = Null
							media.ExplodeSnd2()
							score += o.value
							Return True
						Endif
					Elseif o.state = o.SWEEPING
						Local b := Boxed(o)
						If b 
							If p.Collided(b.pos.x,b.pos.y,b.lazer.hitBox)
								media.ExplodeSnd2()
								Return True
							Endif
						Endif
					Endif	
				Endif
			Next
		Next	
		Return False
	End Method
	
	Method Update:Void()
		Local len:Float = Sin(angle/2.0)*.3 + 1.0
		For Local i:Int = 0 Until columns
			For Local j:Int = 0 Until rows
				If grid[i][j]
					If state = MOVING
						grid[i][j].parent.x += Cos(angle)*speed
					Else
						grid[i][j].parent.Set(cx+grid[i][j].mainv.x * len,cy+grid[i][j].mainv.y * len)
					Endif
					grid[i][j].Update()	
				Endif
			Next
		Next
		angle += 1 'speed
		If angle > 360.0
			If state = MOVING
				state = EXPANDING
			Else
				state = MOVING
			Endif
			angle Mod= 360.0
		Endif
		
	End Method
	
	Method Render:Void()
		For Local i:Int = 0 Until columns
			For Local j:Int = 0 Until rows
				If grid[i][j]
					grid[i][j].Render()
				Endif
			Next
		Next
	End Method
	
End Class
	
Class Bullet Extends Entity
	Field vx:Float
	Field vy:Float
	Field speed:Float
	Field trailImg:Image
	Field node:list.Node<Bullet>
	Field time:Int
	Field delay:Int
	
	Method New(image:Image,trail:Image,x:Float,y:Float,dx:Float,dy:Float,speed:Float)
		Init(image,trail,x,y,dx,dy,speed)
	End Method
	
	Method Init:Void(image:Image,trail:Image,x:Float,y:Float,dx:Float,dy:Float,speed:Float)
		Self.image = image
		Self.pos.Set(x,y)
		Self.d.Set(dx, dy)
		Self.speed = speed
		Self.vx = dx * speed
		Self.vy = dy * speed
		Self.trailImg = trail
		Self.SetHitBox(3-image.HandleX(),3-image.HandleY(),image.Width() - image.HandleX(),image.Height() - image.HandleY())
		Self.time = Millisecs()
		Self.delay = 60
	End Method
	
	Method Update:Void()
		pos.Add(vx,vy)
		If delay+time < Millisecs()
			Local ap:ParticleA = aparticleStore.GetItem()
			ap.Set(pos.x,pos.y,speed/5.0,ATan2(d.y,d.x),trailImg,2)
			aparticleList.AddLast(ap)
			time = Millisecs()
		Endif
		
	End Method
	
	Method NextBullet:Bullet()
		Return Bullet(NextLink())
	End Method
	
	Method UnRegister:Void()
	
	End Method
	
	Method Render:Void()
		DrawImage image,pos.x,pos.y,0,1.5,1.5
		'hitBox.Render(pos.x,pos.y)
	End Method

End Class

Class BulletStore
	Field list:List<Bullet>
	
	Method New(count:Int)
		list = New List<Bullet>
		Fill(count)
	End Method
	
	Method Fill:Void(total:Int)
		For Local i:Int = 0 Until total
			list.AddLast(New Bullet())
		Next
	End Method
	
	Method Get:Bullet()
		If Not list.IsEmpty()
			Return list.RemoveLast()
		Endif
		Return New Bullet()
	End Method
	
	Method Replace:Void(bullet:Bullet)
		bullet.Delete()
		list.AddLast(bullet)
	End Method
	
End Class


Class Explosion Extends Entity
	
	Field delay:Int
	Field node:list.Node<Explosion>
	Field frame:Int
	
	Method New(x:Float,y:Float,frameDelay:Int=50)
		Init(x,y,frameDelay)
	End Method
	
	Method Init:Void(x:Float,y:Float,frameDelay:Int=50)
		Self.pos.Set(x,y)
		Self.image = media.explosionImg
		Self.delay = frameDelay
		Self.frame = 0
		Self.totalFrames = image.Frames() - 1
		Self.startTime = currentTime
	End Method
	
	Method NextExplosion:Explosion()
		Return Explosion(NextLink())
	End method
		
	Method Update:Void()
		If startTime+delay < currentTime
			If frame < totalFrames
				frame += 1
				startTime = currentTime
			Endif
		Endif
	End Method
	
	Method Done:Int()
		If frame = totalFrames
			If startTime+delay < currentTime
				Return True
			Endif
		Endif
		Return False
	End Method
	
	Method UnRegister:Void()
	
	End Method
	
	Method Render:Void()
		DrawImage image,pos.x,pos.y,0,2.0,2.0,frame
	End Method
	
End Class

Class ExplosionStore
	Field list:List<Explosion>
	
	Method New(count:Int)
		list = New List<Explosion>
		Fill(count)
	End Method
	
	Method Fill:Void(total:Int)
		For Local i:Int = 0 Until total
			list.AddLast(New Explosion())
		Next
	End Method
	
	Method Get:Explosion()
		If Not list.IsEmpty()
			Return list.RemoveLast()
		Endif
		Return New Explosion()
	End Method
	
	Method Replace:Void(explosion:Explosion)
		explosion.Delete()
		list.AddLast(explosion)
	End Method
	
End Class


Class Particle Extends Entity
	
	Field speed:Float
	Field angleRot:Float
	Field alpha:Float
	Field alphaDec:Float
	Field frame:Int
	Field node:list.Node<Particle>
	
	Method Init:Void(image:Image,x:Float,y:Float,rotate:Float,dx:Float,dy:Float,speed:Float,alphaDec:Float,frame:Int = 0)
		Self.image = image
		Self.pos.Set(x,y)
		Self.d.Set(dx, dy)
		Self.angleRot = rotate
		Self.angle = 0
		Self.speed = speed
		Self.alphaDec = alphaDec
		Self.alpha = 1.0
		Self.frame = frame
	End Method	
	
	Method Done:Int()
		Return alpha <= 0
	End Method
	
	Method NextParticle:Particle()
		Return Particle(NextLink())
	End Method
	
	Method Update:Void()
		angle += angleRot
		alpha -= alphaDec 
		pos.Add(d.x * speed,d.y * speed) 
	End Method

	Method Delete:Void()
		node.Remove()
	End Method
	
	Method UnRegister:Void()
	End Method
	
	Method Render:Void()
		SetAlpha alpha
		DrawImage image,pos.x,pos.y,angle,1,1,frame
		SetAlpha 1.0
	End Method

End Class

Function CreateShipExplosion:Void(x:Float,y:Float)
	For Local py:Float = 0 Until 6
		For Local px:Float = 0 Until 6
			Local p:Particle = particleStore.GetItem()
			Local ang:Float = Rnd(0,360)
			p.Init(media.shipExplosionImg,x-12 + px*4,y-12 + py*4,ang,Cos(ang),Sin(ang),Rnd(1,5),.01,py*6+px)
			shipParticleList.AddLast(p)
		Next
	Next
End Function

Class Media

	Field atlas:Image
	Field bulletImg:Image
	Field ExplosionImg:Image
	Field playerImg:Image
	Field gripperImg:Image
	Field lazerImg:Image
	Field teslaImg:Image
	Field boxedImg:Image
	Field micronImg:Image
	Field ufoImg:Image
	Field specialImg:Image[3]
	Field starsImg:Image
	Field alienImg:Image
	Field backGroundImg:Image
	Field trailImg:Image
	Field shipExplosionImg:Image
	Field explosionImg:Image
	Field meteorImg:Image
	Field gunbImg:Image
	Field heartImg:Image
	Field gunImg:Image
	Field shieldImg:Image
	Field woopSnd:Sound
	Field buttonImg:Image
	
	Field shoot1:Sound
	Field explode1:Sound
	Field shoot2:Sound
	Field explode2:Sound
	Field explode3:Sound
	Field shoot3:Sound
	Field laser:Sound
	Field music:String

	Field channel:Int

	Method New()
		atlas = LoadImage("aliens.png")
		LoadImages()
		LoadSounds()		
	End Method
	
	Method LoadImages:Void()
		alienImg = atlas.GrabImage(0,195,370,317)
		backGroundImg = LoadImage("background.png")
		starsImg = atlas.GrabImage(192,16,16,16,8)
		trailImg = atlas.GrabImage(192,0,16,16,8)
		trailImg.SetHandle(8,8)
		
		shipExplosionImg = atlas.GrabImage(0,64,4,4,36)
		shipExplosionImg.SetHandle(2,2)

		explosionImg = atlas.GrabImage(0,88,24,24,8)
		explosionImg.SetHandle(12,12)

		meteorImg = atlas.GrabImage(0,120,24,24,16)
		meteorImg.SetHandle(12,12)
		
		ufoImg = atlas.GrabImage(0,144,40,20,4)
		ufoImg.SetHandle(20,9)
		
		gripperImg = atlas.GrabImage(0,0,24,24,2)
		
		teslaImg = atlas.GrabImage(48,0,24,24,2)
		teslaImg.SetHandle(12,12)
		
		bulletImg = atlas.GrabImage(152,56,8,8)
		bulletImg.SetHandle(4,4)

		micronImg = atlas.GrabImage(0,48,16,16,4)
		micronImg.SetHandle(8,8)

		boxedImg = atlas.GrabImage(96,24,24,24,3)
		boxedImg.SetHandle(12,12)
		
		lazerImg = atlas.GrabImage(152,48,16,1)
		lazerImg.SetHandle(9,0)
		
		gunbImg = atlas.GrabImage(152,53,16,3)
		gunbImg.SetHandle(9,3)
		
		playerImg = atlas.GrabImage(144,0,24,24,2)
		playerImg.SetHandle(12,12)
		
		buttonImg = atlas.GrabImage(176,144,144,48,2)
		buttonImg.SetHandle(0,0)

		specialImg[0] = atlas.GrabImage(195,88,18,18)
		specialImg[1] = atlas.GrabImage(213,88,28,18)
		specialImg[2] = atlas.GrabImage(249,88,18,18)
		
	End Method
	
	Method LoadSounds:Void()
		shoot1 = LoadSound("shoota.mp3")
		shoot2 = LoadSound("hita.mp3")
		shoot3 = LoadSound("fireball.mp3")
		explode1 = LoadSound("hit.mp3")
		explode2 = LoadSound("explosion.mp3")
		explode3 = LoadSound("bomb0.mp3")
		laser = LoadSound("laser.mp3")
		woopSnd = LoadSound("woop.mp3")
		music = "kickshock.mp3"
		PlaySound shoot2,0	
	End Method

	Method ShootSnd1:Void()
		PlaySound(shoot1,channel)
		channel = (channel+1) Mod 15
	End Method
	
	Method ShootSnd2:Void()
		PlaySound(shoot2,channel)
		channel = (channel+1) Mod 15
	End Method
	
	Method ShootSnd3:Void()
		PlaySound(shoot2,channel)
		channel = (channel+1) Mod 15
	End Method

	Method ExplodeSnd1:Void()
		PlaySound(explode1,channel)
		channel = (channel + 1) Mod 15
	End Method
	
	Method ExplodeSnd2:Void()
		PlaySound(explode2,channel)
		channel = (channel+1) Mod 15
	End Method
	
	Method ExplodeSnd3:Void()
		PlaySound(explode3,channel)
		channel = (channel+1) Mod 15
	End Method
	

	Method LaserSnd:Void()
		PlaySound(laser,channel)
		channel = (channel+1) Mod 15
	End Method
	
	Method WoopSnd:Void()
		PlaySound(woopSnd,channel)
		channel = (channel+1) Mod 15
	End Method
			
	Method PlayTune:Void()
		PlayMusic(music,0)
	End Method
	
	
End Class

Class Meteor Extends Entity
	Field speed:Float
	Field index:Float
	Field frameCount:Int
	Field frameTime:Int
	

	Method New(x:Float,y:Float,angle:Float,speed:Float)
		Self.image = media.meteorImg
		Self.pos.Set(x,y)
		Self.d.Set(Cos(angle),Sin(angle))
		Self.speed = speed
		Self.frameDelay = 100
		Self.frameTime = currentTime
		Self.frameCount = image.Frames()
	End Method
	
	Method UnRegister:Void()
	End Method

	Method Update:Void()
		pos.Add(d.x * speed,d.y * speed)
		If pos.x > 656 And d.x > 0 pos.x = -16
		If pos.x < -16 And d.x < 0 pos.x = 656
		If pos.y > 496 And d.y > 0 pos.y = -16
		If pos.y < -16 And d.y < 0 pos.y = 496
		
		If frameTime + frameDelay < currentTime
			index = (index + 1) Mod frameCount
			frameTime = currentTime
		Endif
	End Method
	
	Method Render:Void()
		DrawImage image,pos.x,pos.y,0,1.5,1.5,index
	End Method
	
End Class


Class ParticleA Extends Link
	Field pos:PVector2D
	Field V:PVector2D
	Field D:PVector2D
	Field G:PVector2D
	Field Speed:Float
	Field image:Image
	Field frame:Int
	Field alpha:Float
	
	Method New()
		pos = New PVector2D
		D = New PVector2D
		V = New PVector2D
		G = New PVector2D
	End Method
		
	Method New(x:Int,y:Int,speed:Float,dir:Float,image:Image,frame:Int = 0, gx:Float = 0, gy:Float = 0)
		Self.image = image
		Self.frame = frame
		pos = New PVector2D(x,y)
		D = New PVector2D(Cos(dir),Sin(dir))
		V = New PVector2D(D).Multiply(speed)
		G = New PVector2D(gx,gy)
	End Method
	
	Method Set:ParticleA(x:Int,y:Int,speed:Float,dir:Float,image:Image,frame:Int = 0, gx:Float = 0, gy:Float = 0,alpha:Float = 1)
		Self.image = image
		Self.frame = frame
		Self.alpha = alpha
		pos.Set(x,y)
		D.Set(Cos(dir),Sin(dir))
		V.Set(D).Multiply(speed)
		G.Set(gx,gy)
		Return Self
	End Method
	
	Method GetNext:ParticleA()
		Return ParticleA(NextLink())
	End Method
	
	Method Previous:Particle()
		Return Particle(PrevLink())
	End Method
		
	Method Update:Void()
		pos.Add(V.Add(G))
		alpha -= .02
		If alpha <= 0
			Remove()
			aparticleStore.ReturnItem(Self)
		Endif
	End Method
	
	Method Render:Void()
		mojo.SetAlpha(alpha)
		DrawImage image, pos.x, pos.y,0,2,2,frame
	End Method
	
End Class


Class Stars
	Field stars:PVector2D[TOTALSTARS]
	Field starsImg:Image
	Field starsIdx:Int[TOTALSTARS]
	Field starsAlp:Float[TOTALSTARS]
	
	Const TOTALSTARS:Int = 150
	
	Method New()
		starsImg = media.starsImg
		For Local i:int = 0 Until TOTALSTARS
			stars[i] = New PVector2D(Rnd(640),Rnd(480))
			starsIdx[i] = Rnd(7)
			starsAlp[i] = Rnd()	
		Next
	
	End Method
	
	Method Update:Void()
		For Local i:Int = 0 Until TOTALSTARS
			starsAlp[i] -= .005
			If starsAlp[i] < 0
				starsAlp[i] = 1.0
			Endif 
		Next
	End Method
		
	
	Method Render:Void()
		SetBlend AdditiveBlend
		For Local i:Int = 0 Until TOTALSTARS
			SetAlpha starsAlp[i]
			DrawImage starsImg,stars[i].x,stars[i].y,starsIdx[i]
		Next
		SetBlend AlphaBlend
		SetAlpha 1.0
	End Method
End Class

Class Timer
	Field x:Float
	Field y:Float
	Field startTime:Int
	Field duration:Int
	Field timeRemaining:Int
	Field lapsedTime:Int
	
	Const SECOND:Int = 1000
	
	Method New(duration:Int,x:Float,y:Float)
		startTime = currentTime
		Self.duration = duration
		lapsedTime = currentTime - startTime
		timeRemaining = ((duration - lapsedTime)/SECOND)
	End Method
	
	Method Reset:Void()
		startTime = currentTime
		lapsedTime = currentTime - startTime
		timeRemaining = ((duration - lapsedTime)/SECOND)	
	End Method
	
	Method Expire:Void()
		startTime = currentTime - (duration+duration)
		Update()
	End Method
	
	Method Update:Int()
		lapsedTime = currentTime - startTime
		timeRemaining = ((duration - lapsedTime)/SECOND)
		If timeRemaining < 0 
			timeRemaining = 0
			Return False
		Endif
		Return True
	End Method

	Method Render:Void()
		graphics.SetColor 0,255,0
		tistal.RenderText timeRemaining+"s Left",x,y

	End Method
	
End Class
