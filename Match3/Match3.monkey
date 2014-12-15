Strict
Import mojo
Import JPMod.VectorMod
Import JPMod.MouseMod
Import JPMod.StoreMod
Import JPMod.FontMod
Import JPMod.GuiMod

Global font128:AngelFont
Global font256:AngelFont
Global capsuleImg:Image
Global media:Media
Global stats:Stats

Function Main:Int()
	New Game
	Return 1
End Function

Class Asset<Tipo>

End class

Class Game Extends App

	Field match3:Match3
	Field menu:Menu
	Field credits:Credits
	
	Field options:Options
	Field atlas:Image
	Field backImg:Image
	
	Field state:Control
	Field nextState:Control
	Field asset:Asset<Stats>[]
	
	Method OnCreate:Int()
		
		stats = New Stats
		font128 = LoadAngelFont("casual128x128")
		font256 = LoadAngelFont("casual256x256")
		
		SetAngelFont(font256)

		atlas = LoadImage("valentine.png")
		If atlas = Null Error "unable to load atlas"
		
		media = New Media(atlas)
		backImg = LoadImage("back.jpg")

		capsuleImg = atlas.GrabImage(96,192,144,48)
		
		menu = New Menu(atlas)
		credits = New Credits(atlas)
		options = New Options(atlas)
		nextState = menu
		asset = New Asset<Stats>[5]
		asset[0] = New Asset<Stats>
		SetUpdateRate 30
		
		Return 1
		
	End Method
	
	Method OnUpdate:Int()
		mouse.Update()

		state = nextState
			
		state.Update()

		Select state
			Case menu
				Local c:Int = menu.GetState()
				Select c
					Case Control.PLAYGAME_STATE
						match3 = New Match3(atlas,10,25,10)
						nextState = match3
						stats.Set(0,0)
						media.PlayMusic()
						media.SetSoundOn()
					Case Control.CONTINUE_STATE
						If match3
							If match3.gameIsOver = False
								nextState = match3
								media.SetVolume(1)
								media.PlayMusic()
								stats.startTime = Millisecs() - match3.timeSpent
								match3.state = Match3.SELECTING
							Endif
						Endif
					Case Control.OPTIONS_STATE
						nextState = options
						menu.state = Control.MENU_STATE
						options.state = Control.OPTIONS_STATE
					Case Control.CREDITS_STATE
						nextState = credits
						menu.state = Control.MENU_STATE
						credits.state = Control.CREDITS_STATE
				End Select
			Case options
				Local c:Int = options.GetState()
				If c = Control.MENU_STATE
					nextState = menu
					options.state = Control.OPTIONS_STATE
				Endif
			Case credits
				Local c:Int= credits.GetState()
				
				If c = Control.MENU_STATE
					nextState = menu
					credits.state = Control.CREDITS_STATE
				Endif
			Case match3
				If match3.state = Match3.GAMEEXIT
					nextState = menu
					menu.state = Menu.NONE_STATE
					media.StopSong()
				End If
		End Select
		
		Return 1
		
	End Method
	
	Method OnRender:Int()
		
		Cls()
		
		DrawImage backImg,0,0
		
		
		state.Render()
		
		Return 1
	
	End Method
	
End Class

Class Control

	Field state:Int
	
	Field frameImg:Image

	Const PLAYGAME_STATE:Int = 1
	
	Const CONTINUE_STATE:Int = 2
	
	Const OPTIONS_STATE:Int = 3
	
	Const CREDITS_STATE:Int = 4
	
	Const MENU_STATE:Int = 5
	
	Const NONE_STATE:Int = 6
	
	Method Update:Void() Abstract
	
	Method Render:Void() Abstract
	
	Method DrawFrame:Void(x:Float,y:Float,width:Int,height:Int)
		SetAlpha .9
		DrawImage frameImg,x,y,0
		For Local i:Int = 1 Until (width-1)
			DrawImage frameImg,x+24*i,y,1
		Next
		DrawImage frameImg,x+(width-1)*24,y,2

		For Local j:Int = 1 Until (height-1)
			DrawImage frameImg,x,y+24*j,3
			DrawImage(frameImg,x+24,y+j*24,0,(width-2),1,4)
			DrawImage frameImg,x+(width-1)*24,y+24*j,5
		Next
		DrawImage frameImg, x,y+24*(height-1),6

		For Local x2:Int = 1 Until (width-1)
			DrawImage frameImg,x+x2*24,y+24*(height-1),7
		Next

		DrawImage frameImg, x+24*(width-1),y+24*(height-1),8
		SetAlpha 1.0
	End Method

End Class


Class Menu Extends Control
	
	Field pos:PVector2D
	
	Field playBtn:Button
	
	Field continueBtn:Button
	
	Field optionsBtn:Button
	
	Field creditsBtn:Button
	
	Field buttonImg:Image
	
	Field iconsImg:Image
	
	Field heartImg:Image
	
	Method New(atlas:Image)
		
		buttonImg = atlas.GrabImage(0,288,144,48,2)
		
		playBtn = New Button(font256,buttonImg,480,100,"Play")
		
		continueBtn = New Button(font256,buttonImg,480,200,"Continue")
		
		optionsBtn = New Button(font256,buttonImg,480,300,"Options")
		
		creditsBtn = New Button(font256,buttonImg,480,400,"Credits")
		
		iconsImg = atlas.GrabImage(0,0,48,48,21)
	
		frameImg = atlas.GrabImage(0,240,24,24,9)
		
		heartImg = atlas.GrabImage(0,366,164,145)

	End Method
	
	Method GetState:Int()
		Return state
	End Method
	
	Method Update:Void()
	
		playBtn.Update()
		continueBtn.Update()
		optionsBtn.Update()
		creditsBtn.Update()
		
		Select True
		
			Case playBtn.GetState()
			
				state = PLAYGAME_STATE
				
			Case continueBtn.GetState()
			
				state = CONTINUE_STATE
				
			Case optionsBtn.GetState()
			
				state = OPTIONS_STATE
			
			Case creditsBtn.GetState()
			
				state = CREDITS_STATE
			
			Default
				state = NONE_STATE
		End Select
				
	End Method
	
	Method Render:Void()
		DrawFrame(448,0,8,20)
		DrawFrame(50,50,15,15)
		mojo.SetColor 100,255,0
		font256.RenderText "MENU",500,50
		mojo.SetColor 50,200,200
		font256.RenderText("VALENTINE'S",120,80)
		mojo.SetColor 100,200,100
		font256.RenderText("MATCH 3",140,120)
		mojo.SetColor 255,255,255
		DrawImage heartImg,130,200,0
		
		playBtn.Render()
		continueBtn.Render()
		optionsBtn.Render()
		creditsBtn.Render()
		
	End Method

End Class

Class Particle

	Field pos:PVector2D
	Field D:PVector2D
	Field speed:Float
	Field alpha:Float
	Field stepDec:Float
	Field image:Image
	Field _pred:Particle
	Field _succ:Particle
	Field index:int
	
	Method New(img:Image,x:Float,y:Float,angle:Float,Speed:Float,stp:Float,index:Int=0)
		image = img
		pos = New PVector2D(x,y)
		D = New PVector2D(Cos(angle),Sin(angle))
		Self.speed = speed
		stepDec = stp
		Self.index = index
	End Method
	
	Method Set:Void(img:Image,x:Float,y:Float,angle:Float,speed:Float,stp:Float,index:Int=0)
		image = img
		pos = New PVector2D(x,y)
		D = New PVector2D(Cos(angle),Sin(angle))
		Self.speed = speed
		stepDec = stp
		alpha = 1.0
		Self.index = index
	End Method
	
	Method Update:Int()
		alpha -= stepDec
		If alpha <= 0 Return False
		pos.Add(D.x*speed,D.y*speed)
		Return True
	End Method
	
	Method Render:Void()
		SetAlpha alpha
		DrawImage image,pos.x,pos.y,index
	End Method
	
End Class


Class Tile
	Field on:Int
	Field value:Int
	Field state:Int
	Field pos:PVector2D
	Field oldPos:PVector2D
	Field D:PVector2D
	Field V:PVector2D
	Field speed:Float
	Field tileWidth:Int
	Field tileHeight:Int
	
	Const STATE_DEAD:Int = 0
	Const STATE_HIDDEN:Int = 1
	Const STATE_VISSIBLE:Int = 2
	Const STATE_DROPPING:Int = 3
	
	Method New()
		pos = New PVector2D
		oldPos = New PVector2D
		D = New PVector2D
		V = New PVector2D
	End Method		

	Method New(active:Int,value:Int,state:Int)
		pos = New PVector2D
		oldPos = New PVector2D
		D = New PVector2D
		V = New PVector2D
		Self.on = active
		Self.value = value
		Self.state = state
	End Method
	
	Method Init:Void(x:Float,y:Float,dx:Float,dy:Float,speed:Float,tileWidth:Float,tileHeight:Float)
		pos.Set(x,y)
		V.Set(0,0)
		D.Set(dx,dy)
		Self.Speed = speed
		Self.tileWidth = tileWidth
		Self.tileHeight = tileHeight 
	End Method
	
	Method Dropping:Int()
		V.Add(D.x*speed,D.y*speed)
		If V.Magnitude() >= tileHeight
			Return False
		Endif
		Return True
	End Method
	
End Class


Class Match3 Extends Control
	
	Field pos:PVector2D
	
	Field board:Tile[][]
	
	Field image:Image
	
	Field boardWidth:Int
	Field boardHeight:Int
	
	Field tilesAcross:Int
	Field tilesDown:Int
	
	Field midTilex:Int
	Field midTiley:Int
	
	Field exitBtn:Button
	Field nextBtn:Button
	
	Field removal:PVector2D[]
	
	Field animation:Tile[]
	
	Field index:Int
	
	Field tile1Index:Int

	Field tile2Index:Int
	
	Field animationCount:Int
	
	Field LevelIconCount:Int[]
	
	Field stages:Int[][][]
	
	Field level:Int
	
	Field particleImg:Image
	
	Field explosion:Explosion
	
	Field speed:Float
	
	Field bonusOut:BonusOut

	Field animating:Int	
	
	Field maze:Int[][]
	
	Field dragging:PVector2D
	
	Field inTile:PVector2D

	Field mouseTile:PVector2D

	Field mouseDrag:PVector2D
	
	Field buttonImg:Image

	Field d1:PVector2D
	Field d2:PVector2D
		
	Field tile1:PVector2D
	Field tile2:PVector2D
	
	Field v1:PVector2D
	Field v2:PVector2D

	Field time:Int
	Field delay:Int
	
	Field gameIsOver:Int
	
	Field timeSpent:Int
	
	Field fireworkTime:Int
	Field fireworkDelay:Int

	Field FIREWORKMAXDELAY:Int = 600
	
	Const TILE_WIDTH:Int = 48
	Const TILE_HEIGHT:Int = 48

	Const SELECTING:Int = 1
	Const SWAPPING:Int = 2
	Const REVERSING:Int = 3
	Const ANALYZING:Int = 4
	Const DROPPING:Int = 5
	Const ANIMATING:Int = 6
	Const PASSED:Int = 7
	Const FAILED:Int = 8
	Const PREPLAY:Int = 9
	Const GAMEWON:Int = 10

	Const GAMELOST:Int = 11
	
	Const GAMEEXIT:Int = 12
	

	Method New(atlas:Image,x:Int,y:Int,spd:Float)
		
		Self.pos = New PVector2D(x,y)
				
		explosion = New Explosion()
		
		LoadStages()
		
		level = 0
		
		maze = stages[level]
		
		InitStage(maze)
						
		speed = spd
		
		bonusOut = New BonusOut()
				
		stats.matches = 0
		
		animating = False
		
		image = atlas.GrabImage(0,0,TILE_WIDTH,TILE_HEIGHT,21)
		particleImg = atlas.GrabImage(49,192,16,16,3)
		buttonImg = atlas.GrabImage(0,336,100,32,2)
		frameImg = atlas.GrabImage(216,240,24,24,9)
		exitBtn = New Button(font128,buttonImg,480,400,"Exit")
		nextBtn = New Button(font128,buttonImg,180,300,"continue")
		mouseTile = New PVector2D
		mouseDrag = New PVector2D
				
		tile1 = New PVector2D
		tile2 = New PVector2D

		d1 = New PVector2D
		d2 = New PVector2D
		
		v1 = New PVector2D
		v2 = New PVector2D
		
		state = ANALYZING
		delay = 3000
		
	End Method
	
	Method LoadStages:Void()
		
		stages =   [[
					 [ 1, 1, 1, 1, 1, 1, 1, 1, 1],
					 [ 1, 1, 1, 1, 1, 1, 1, 1, 1],
					 [ 1, 1, 1, 1, 1, 1, 1, 1, 1],
					 [ 1, 1, 1, 1, 1, 1, 1, 1, 1],
					 [ 1, 1, 1, 1, 1, 1, 1, 1, 1],
					 [ 1, 1, 1, 1, 1, 1, 1, 1, 1],
					 [ 1, 1, 1, 1, 1, 1, 1, 1, 1],
					 [ 1, 1, 1, 1, 1, 1, 1, 1, 1],
					 [ 1, 1, 1, 1, 1, 1, 1, 1, 1]],
					 
					[[ 1, 1, 1, 0, 0, 0, 1, 1, 1],
					 [ 1, 1, 1, 1, 0, 1, 1, 1, 1],
					 [ 1, 1, 1, 1, 1, 1, 1, 1, 1],
					 [ 0, 1, 1, 1, 1, 1, 1, 1, 0],
					 [ 0, 0, 1, 1, 1, 1, 1, 0, 0],
					 [ 0, 1, 1, 1, 1, 1, 1, 1, 0],
					 [ 1, 1, 1, 1, 1, 1, 1, 1, 1],
					 [ 1, 1, 1, 1, 0, 1, 1, 1, 1],
					 [ 1, 1, 1, 0, 0, 0, 1, 1, 1]],
					 
					[[ 0, 0, 0, 0, 1, 0, 0, 0, 0],
					 [ 0, 0, 0, 1, 1, 1, 0, 0, 0],
					 [ 0, 0, 1, 1, 1, 1, 1, 0, 0],
					 [ 0, 0, 1, 1, 1, 1, 1, 0, 0],
					 [ 0, 1, 1, 1, 1, 1, 1, 1, 0],
					 [ 0, 1, 1, 1, 1, 1, 1, 1, 0],
					 [ 1, 1, 1, 1, 1, 1, 1, 1, 1],
					 [ 1, 1, 1, 1, 1, 1, 1, 1, 1],
					 [ 0, 0, 0, 1, 1, 1, 0, 0, 0]],
					 
					[[ 0, 0, 1, 1, 1, 1, 1, 0, 0],
					 [ 0, 1, 1, 1, 1, 1, 1, 1, 0],
					 [ 1, 1, 1, 1, 1, 1, 1, 1, 1],
					 [ 1, 1, 1, 1, 0, 1, 1, 1, 1],
					 [ 1, 1, 1, 0, 0, 0, 1, 1, 1],
					 [ 1, 1, 1, 1, 0, 1, 1, 1, 1],
					 [ 1, 1, 1, 1, 1, 1, 1, 1, 1],
					 [ 0, 1, 1, 1, 1, 1, 1, 1, 0],
					 [ 0, 0, 1, 1, 1, 1, 1, 0, 0]]]
					
	
	End Method
	
	
	Method InitStage:Void(maze:Int[][])
	
		board = New Tile[maze.Length()][]
		
		For Local j:Int = 0 Until board.Length()

			board[j] = New Tile[maze[j].Length]
			Local s:String
			
			For Local i:Int = 0 Until maze[j].Length()

				If maze[j][i] = True

					board[j][i] = New Tile(True,Rnd(stats.numberOfIcons),Tile.STATE_VISSIBLE)			

				Endif
				
			Next

		Next
	
		tilesAcross = maze[0].Length()
		tilesDown = maze.Length()

		removal = New PVector2D[tilesAcross*tilesDown]
		
		For Local i:Int = 0 Until removal.Length()
		
			removal[i] = New PVector2D
			
		Next
		
		animation = New Tile[tilesAcross*tilesDown]
		
		For Local i:Int = 0 Until animation.Length()
		
			animation[i] = New Tile
			
		Next
		
		boardWidth = tilesAcross * 	TILE_WIDTH
		boardHeight = tilesDown * TILE_HEIGHT
		
		midTilex = TILE_WIDTH/2.0 - 8
		midTiley = TILE_HEIGHT/2.0 - 8

		index = -1
		
		animationCount = -1
		gameIsOver = false
	End Method
	
	Method ResetCount:Void()
	
		count = -1
		
	End Method
	
	Method MouseInArea:Int()
	
		Return mouse.InArea(pos.x,pos.y,boardWidth-1,boardHeight-1)
		
	End Method
	
	Method InTile:Int(x:Int,y:Int)
	
		Return board[y][x] <> Null
		
	End Method
	
	Method Swap:Void(p1:PVector2D,p2:PVector2D)
			
			Local temp:Tile = board[p1.y][p1.x]
			
			board[p1.y][p1.x] = board[p2.y][p2.x]
			
			board[p2.y][p2.x] = temp
		
	End Method
	
	Method InitDrop:Void()
	
		If InDrop()
		
			state = ANIMATING
			
		Elseif Analyze() =True
		
			InitDrop()
			state = DROPPING
			
		Else
		
			state = SELECTING
			stats.AddBonusToScore()
			
		Endif
		
	End Method
	
	Method Hide:Void(p:PVector2D)
	
		board[p.y][p.x].state = Tile.STATE_HIDDEN
		
	End Method
	
	Method Show:Void(p:PVector2D)
	
		board[p.y][p.x].state = Tile.STATE_VISSIBLE
			
	End Method
	
	Method GetIndexValue:Int(p:PVector2D)
	
		Return board[p.y][p.x].value
		
	End Method
	
	Method Analyze:Int()
	
		Local foundMatch:Int = False

		For Local j:Int = 0 Until tilesDown
			Local first:Int = 0
			Local count:Int = 0
			Local value:Int
			For Local i:Int = 0 Until tilesAcross
				If board[j][i]
					If count = 0
						first = i
						count = 1
						value = board[j][i].value
					Elseif board[j][i].value = value
						count += 1
					Elseif count > 2
						For Local n:Int = first Until first+count
							index += 1
							removal[index].Set(n,j)
							Explode(n,j)
						Next
						media.PlayMatch()
						Local n:Int = first+count/2.0
						bonusOut.AddItem(stats.GetBonus(count),pos.x+n*TILE_WIDTH,pos.y+j*TILE_HEIGHT)
						foundMatch = True
						stats.AddBonus(count)					
						count = 0
						stats.matches += 1
					Else
						first = i
						count = 1
						value = board[j][i].value
					Endif
				Else
					If count > 2
						For Local n:Int = first Until first+count
							index += 1
							removal[index].Set(n,j)
							Explode(n,j)
						Next
						media.PlayMatch()
						Local n:Int = first+count/2.0
						bonusOut.AddItem(stats.GetBonus(count),pos.x+n*TILE_WIDTH,pos.y+j*TILE_HEIGHT)
						foundMatch = True
						stats.AddBonus(count)	
						stats.matches += 1				
					Endif
					first = 0
					count = 0
				Endif
			Next
			
			If count > 2
				For Local n:Int = first Until first+count
					index += 1
					removal[index].Set(n,j)
					Explode(n,j)
				Next
				media.PlayMatch()
				Local n:Int = first+count/2.0
				bonusOut.AddItem(stats.GetBonus(count),pos.x+n*TILE_WIDTH,pos.y+j*TILE_HEIGHT)
				foundMatch = True
				stats.AddBonus(count)
				count = 0
				stats.matches += 1
			Endif

		Next
		
		For Local i:Int = 0 Until tilesAcross
			
			Local first:Int = 0
			Local count:Int = 0
			Local value:Int
			
			For Local j:Int = 0 Until tilesDown
				
				If board[j][i]
					
					If count = 0
					
						count = 1
						first = j
						value = board[j][i].value
					
					Elseif board[j][i].value = value
					
						count += 1
					
					Elseif count > 2
					
						For Local n:Int = first Until first+count
					
							index += 1
							removal[index].Set(i,n)
							Explode(i,n)
					
						Next
						media.PlayMatch()
						Local n:Int = first+count/2.0
						bonusOut.AddItem(stats.GetBonus(count),pos.x+i*TILE_WIDTH,pos.y+n*TILE_HEIGHT)
						foundMatch = True
						stats.AddBonus(count)					
						count = 1
						first = j
						value = board[j][i].value
						stats.matches += 1
					Else
					
						count = 1
						first = j
						value = board[j][i].value
					
					Endif
					
				Else
				
					If count > 2
						
						For Local n:Int = first Until first+count
					
							index +=1
							removal[index].Set(i,n)
							Explode(i,n)
					
						Next
						
						media.PlayMatch()
						
						Local n:Int = first+count/2.0
						bonusOut.AddItem(stats.GetBonus(count),pos.x+i*TILE_WIDTH,pos.y+n*TILE_HEIGHT)
						stats.AddBonus(count)					
						foundMatch = True
						stats.matches += 1
						
					Endif
			
					first = 0
					count = 0
				
				Endif
			
				If foundMatch
				
					stats.AddBonus(count)
					
				Endif
				
			Next
			
			If count > 2
			
				For Local n:Int = first Until first+count
			
					index += 1
			
					removal[index].Set(i,n)
					Explode(i,n)
			
				Next
			
				media.PlayMatch()
				Local n:Int = first+count/2.0
				bonusOut.AddItem(stats.GetBonus(count),pos.x+i*TILE_WIDTH,pos.y+n*TILE_HEIGHT)
				foundMatch = True
				stats.AddBonus(count)
				count = 0
				stats.matches += 1
			Endif	
			

		Next
		
		If foundMatch
		
			For Local i:Int =  0 To index
			
				board[removal[i].y][removal[i].x].state = Tile.STATE_DEAD
			
			Next

		Endif
		
		index = -1
		
		
		Return foundMatch
		
	End Method
	
	Method Swapping:Int()
		v1.Add(d1)
		v2.Add(d2)
		If v2.Magnitude() >= TILE_WIDTH Or v2.Magnitude() >= TILE_HEIGHT
			Swap(tile1,tile2)
			Show(tile1)
			Show(tile2)
			Return False
		Endif
		Return True
	End Method
	
	Method Explode:Void(x:Float,y:Float)
	
		For Local i:Int = 0 Until 10
		
			Local p:Particle = explosion.GetParticle()
			
			Local n:Float= 3 
			
			p.Set(particleImg, pos.x+x*	TILE_WIDTH+midTilex, pos.y+y*TILE_HEIGHT+midTiley, Rnd(i*36),n,.03,2)
			
			explosion.AddParticle(p)
			
		Next
		
	End Method
	
	Method MakeFireWork:Void()
		
		Local x:Int = pos.x + TILE_WIDTH + Rnd(boardWidth-TILE_WIDTH*2)
		
		Local y:int = pos.y + TILE_HEIGHT + Rnd(boardHeight-TILE_HEIGHT*2)
		
		Local clr:Int = Rnd(3)
		Local ang:Int = 0
		For Local i:Int = 0 Until 10
		
			Local p:Particle = explosion.GetParticle()
			
			p.Set(particleImg, x, y, ang,3,.03,clr)
			
			explosion.AddParticle(p)
			ang = ang + 36
		
		Next
		
	End Method
	
	Method InDrop:Int()
		
		Local dropped:Int = False
		
		For Local i:Int = 0 Until tilesAcross
		
			For Local j:Int = (tilesDown - 1) To 0 Step -1
			
				If board[j][i]
				
					If j > 0
					
						If board[j][i].state = Tile.STATE_DEAD
							
							If board[j-1][i]
							
								If board[j-1][i].state = Tile.STATE_VISSIBLE
																		
									board[j][i].value = board[j-1][i].value
									
									board[j][i].state = Tile.STATE_HIDDEN
									
									board[j-1][i].state = Tile.STATE_DEAD
									
									AddAnimation(j,i)
									
									dropped = True
									
								Endif
								
							Else
							
								board[j][i].state = Tile.STATE_HIDDEN
								
								board[j][i].value = Rnd(stats.numberOfIcons)
								
								AddAnimation(j,i)
								
								dropped = True
							
							Endif
						
						Endif
					
					Else
						
						If board[j][i].state = Tile.STATE_DEAD
						
							board[j][i].value = Rnd(4)
							board[j][i].state = Tile.STATE_HIDDEN
							AddAnimation(j,i)
							dropped = True
							
						Endif
					Endif
				Endif
			Next
		Next
		
		Return dropped
			
	End Method
	
	Method InitSwap:Void()

		Hide(tile1)
		Hide(tile2)
		tile1Index = GetIndexValue(tile1)
		tile2Index = GetIndexValue(tile2)
		d1.Set(Sgn(tile2.x - tile1.x)*speed,Sgn(tile2.y - tile1.y)*speed)
		d2.Set(Sgn(tile1.x - tile2.x)*speed,Sgn(tile1.y - tile2.y)*speed)
		v1.Set(0,0)
		v2.Set(0,0)
		dragging= Null
		inTile = Null
		
	End Method
	
	Method AddAnimation:Void(j:Float,i:Float)
	
		animationCount += 1
		
		animation[animationCount].pos.Set(pos.x+i*TILE_WIDTH,pos.y+j*TILE_HEIGHT-TILE_HEIGHT)
		
		animation[animationCount].oldPos.Set(i,j)
		
		animation[animationCount].D.Set(0,1)
		
		animation[animationCount].V.Set(0,0)
		
		animation[animationCount].speed = speed
		animation[animationCount].tileHeight = TILE_HEIGHT
		
		animation[animationCount].value = board[j][i].value
				
	End Method
	
	Method Dropping:Int()
	
		Local processing:Int = True
		
		For Local i:Int = 0 To animationCount
		
			If animation[i].Dropping() = False
		
				processing = False
		
			Endif
		
		Next
		
		If processing = False
		
			For Local i:Int = 0 To animationCount
		
				board[animation[i].oldPos.y][animation[i].oldPos.x].state = Tile.STATE_VISSIBLE
		
			Next
		
			animationCount = -1
		
		Endif
		
		Return processing
	
	End Method
	
	Method Picking:Void()
		If animating = false
			If Not mouse.ButtonInUse() And dragging = Null
			
				inTile = Null
				dragging = Null
			
				If MouseInArea()
					
					mouseTile.Set(Int(mouse.x - pos.x)/TILE_WIDTH, Int(mouse.y - pos.y)/TILE_HEIGHT)
					
					If InTile(mouseTile.x,mouseTile.y)
					
						mouseTile.Set(mouseTile.x * TILE_WIDTH, mouseTile.y * TILE_HEIGHT)
						
						inTile = mouseTile
					
					Endif
				
				Endif
			
			Endif
			
			If inTile And mouse.ButtonInUse()
				dragging = Null
				
				If MouseInArea()
					
					mouseDrag.Set(Int(mouse.x - pos.x)/TILE_WIDTH, Int(mouse.y - pos.y)/TILE_HEIGHT)
					
					If InTile(mouseDrag.x,mouseDrag.y)
					
						mouseDrag.Set( mouseDrag.x * TILE_WIDTH, mouseDrag.y * TILE_HEIGHT)
						
						Local dx:Int = mouseDrag.x - inTile.x
						Local dy:Int = mouseDrag.y - inTile.y
						
						If (Abs(dx)<(TILE_WIDTH * 2) And Abs(dy)<(TILE_HEIGHT)) Or (Abs(dx)<(TILE_WIDTH) And Abs(dy)<(TILE_HEIGHT*2))
							
							dragging = mouseDrag
							
						Else
						
							mouseTile.Set(mouseDrag)
						
						Endif
					
					Endif
				
				Endif
			
			Endif
			
			If mouse.ButtonReleased()
				
				If dragging And inTile
					
					Local dx:Int = dragging.x - inTile.x
					Local dy:Int = dragging.y - inTile.y
					
					If Abs(dx) >= TILE_WIDTH Or Abs(dy) >= TILE_HEIGHT
						
						tile1.Set(inTile.x/TILE_WIDTH, inTile.y / TILE_HEIGHT)
						
						tile2.Set(dragging.x/TILE_WIDTH, dragging.y/TILE_HEIGHT)
						
						InitSwap()
						
						state = SWAPPING
						
						stats.ResetBonus()
						
					Endif
				
				Endif
			
			Endif
			
		Endif
	
	End Method
	
	Method Update:Void()
		stats.Update()
		Select state
			Case PREPLAY
				If Millisecs() > time+delay
					state = SELECTING
					stats.startTime = Millisecs()
				Endif
			Case SELECTING
			
				If stats.TimeExpired()
					If stats.PassedStage()
						state = PASSED
					Else
						state = FAILED
						gameIsOver = True
					Endif
				Else
					Picking()
				Endif
			Case SWAPPING
			
				If Swapping() = False
				
					state = ANALYZING
					
				Endif
				
			Case ANALYZING
			
				If Analyze() = True
				
					InitDrop()
					
					state = DROPPING
				
				Else
				
					InitSwap()
					
					state = REVERSING
					
				Endif
				
			Case REVERSING
			
				If Swapping() = False
				
					state = SELECTING
					
				Endif
				
			Case DROPPING
			
				If Dropping() = False
				
					InitDrop()
					
				Endif
				
			Case ANIMATING
			
				If Dropping() = False
				
					InitDrop()
					
				Endif
			Case PASSED
				nextBtn.Update()	
				If nextBtn.GetState() = True
					If stats.subLevel >= (stats.maxSubLevel-1)
						If stats.level >= (stats.maxLevel-1)
							state = GAMEWON
							fireworkTime = Millisecs()
						Else
							stats.level += 1
							stats.subLevel = 0
							InitStage(stages[stats.level])
							state = PREPLAY
							stats.matches = 0
							stats.numberOfIcons = stats.difficulty[stats.level]
							media.PlayLevelUp()
							time = Millisecs()
						Endif
					Else
						
						stats.subLevel += 1
						InitStage(stages[stats.level])
						state = PREPLAY
						stats.matches = 0
						time = Millisecs()
					Endif
				Endif
			Case FAILED
				gameIsOver =True
				
			Case GAMEWON
				If Millisecs() > fireworkTime + fireworkDelay
					MakeFireWork()
					fireworkDelay = 100 + Rnd(FIREWORKMAXDELAY)
					media.PlayPop()
					fireworkTime = Millisecs()
				Endif
		End Select
		
		explosion.Update()
		bonusOut.Update()
		exitBtn.Update()
		If exitBtn.GetState() = True
			state = GAMEEXIT
			If gameIsOver = False
				timeSpent = stats.spendTime
				media.SetVolume(0)
			Endif
				
		Endif
	End Method
	
	Method Render:Void()
	
		SetBlend AlphaBlend
		If state <> GAMEWON
			DrawFrame(448,0,8,20)
			SetAlpha .9
		
			For Local j:Int = 0 Until tilesDown
		
				For Local i:Int = 0 Until tilesAcross
		
					If board[j][i]
		
						DrawImage image,pos.x+i*TILE_WIDTH,pos.y+j*TILE_HEIGHT,19
		
					Endif
		
				Next
		
			Next
		
			SetAlpha 1.0
			
			For Local j:Int = 0 Until tilesDown
				
				For Local i:Int = 0 Until tilesAcross
					
					If board[j][i]
						
						If board[j][i].state = Tile.STATE_VISSIBLE
						
							DrawImage image,pos.x+i*TILE_WIDTH,pos.y+j*TILE_HEIGHT,board[j][i].value
						
						Endif
						
					Endif
					
				Next
				
			Next
			
			For Local i:Int = 0 To animationCount
	
				DrawImage image,animation[i].pos.x+animation[i].V.x,animation[i].pos.y+animation[i].V.y,animation[i].value
	
			Next
		Else
			DrawFrame(50,50,15,15)
			DrawFrame(448,0,8,20)
			font256.RenderText("GAME WON",140,100)
			mojo.SetColor(255,255,0)
			font256.RenderText("Final Score",140,200)
			mojo.SetColor(255,0,255)
			font256.RenderText(SetText(stats.score.total,8),160,250) 
		Endif
		SetAlpha 1.0
		Select state
			Case PREPLAY
				DrawFrame(50,50,15,15)
				mojo.SetColor(10,250,250)
				font256.RenderText("LEVEL:",150,100)
				font256.RenderText("STAGE:",150,150)
				mojo.SetColor(255,255,0)
				font256.RenderText(SetText(stats.level+1,2),260,100)
				font256.RenderText(SetText(stats.subLevel+1,2),260,150)
				font256.RenderText("Get Ready",140,220)
				Local t:Int = ((time+delay - Millisecs())/1000)
				font256.RenderText(":"+SetText(t,2),190,280)
			Case SELECTING
				If inTile
					DrawImage image,pos.x+mouseTile.x,pos.y+mouseTile.y,20
				Endif
				If dragging
					DrawImage image,pos.x+dragging.x,pos.y+dragging.y,20
				Endif
			Case ANALYZING

			Case SWAPPING,REVERSING
				DrawImage image,pos.x+tile2.x*TILE_WIDTH+v2.x,pos.y+tile2.y*TILE_HEIGHT+v2.y,tile2Index
				DrawImage image,pos.x+tile1.x*TILE_WIDTH+v1.x,pos.y+tile1.y*TILE_HEIGHT+v1.y,tile1Index
			Case PASSED
				DrawFrame(50,50,15,15)
				mojo.SetColor(10,250,250)
				font256.RenderText("LEVEL:",150,100)
				font256.RenderText("STAGE:",150,150)
				mojo.SetColor(255,255,0)
				font256.RenderText(SetText(stats.level+1,2),260,100)
				font256.RenderText(SetText(stats.subLevel+1,2),260,150)
				mojo.SetColor(255,180,100)
				font256.RenderText("PASSED",170,220)
				mojo.SetColor(255,255,255)
				nextBtn.Render()
			Case FAILED
				DrawFrame(50,50,15,15)
				mojo.SetColor(10,250,250)
				font256.RenderText("LEVEL:",150,100)
				font256.RenderText("STAGE:",150,150)
				mojo.SetColor(255,255,0)
				font256.RenderText(SetText(stats.level+1,2),260,100)
				font256.RenderText(SetText(stats.subLevel+1,2),260,150)
				mojo.SetColor(255,180,100)
				font256.RenderText("FAILED",170,220)
				mojo.SetColor(255,255,255)
			
		End Select
				
		explosion.Render()
		bonusOut.Render()
		SetAlpha 1.0
		stats.Render()
		exitBtn.Render()
	End Method
	
		
End Class


Class Score

	Field total:Int
	Field bonus:Int
	Field matches:Int
	
End Class
	
Class Explosion

	Field particleStore:Store<Particle>
	Field particle:Particle[1000]
	Field count:Int = -1
	
	Method New()
		particleStore = New Store<Particle>(1000)
	End Method
	
	Method AddParticle:Void(p:Particle)
		count += 1
		particle[count] = p
	End Method
	
	Method GetParticle:Particle()
	
		Return particleStore.GetItem()
	
	End Method
	
	Method Update:Void()
		
		Local i:Int = 0
		
		While i <= count
			If particle[i].Update() = False
				Local t:Particle = particle[count]
				particle[count] = particle[i]
				particle[i] = t
				particleStore.ReturnItem(particle[count])
				particle[count] = Null
				count -= 1
			Else
				i += 1
			Endif
		Wend
		
	End Method
	
	Method Render:Void()
		
		For Local i:Int = 0 To count 
			
			particle[i].Render()
		
		Next		
		
	End Method
	
End Class

Class Options Extends Control
	
	Field soundBtn:Button
	
	Field musicBtn:Button
	
	Field exitBtn:Button
	
	
	Method New(atlas:Image)
	
		Local btnImg:Image = atlas.GrabImage(0,288,144,48,2)
		
		soundBtn = New Button(font256,btnImg,480,150,"Snd ON")
		
		musicBtn = New Button(font256,btnImg,480,250,"Msc ON")
		
		exitBtn = New Button(font256,btnImg,480,350,"Menu")
		
		frameImg = atlas.GrabImage(0,240,24,24,9)

		state = OPTIONS_STATE
	
	End Method
	
	Method GetState:Int()
	
		Return state
		
	End Method
	
	Method Update:Void()
	
		soundBtn.Update()
		
		musicBtn.Update()
		
		exitBtn.Update()
		
		Local str:String[] = ["OFF","ON"]
		
		Select True
			Case soundBtn.GetState()
				media.soundState = 1-media.soundState
				Local snd:String = "Snd "+str[media.soundState]
				soundBtn.SetText(snd)
				media.SetSoundVol(media.soundState)
			Case musicBtn.GetState()
				media.musicState = 1 - media.musicState
				Local msc:String = "Msc "+str[media.musicState]
				musicBtn.SetText(msc)
				media.SetMusicVol(media.musicState)
			Case exitBtn.GetState()
				state = MENU_STATE
		End Select	
	End Method
	
	Method Render:Void()
		
		DrawFrame(448,0,8,20)
	
		mojo.SetColor 100,255,0
		
		font256.RenderText("OPTIONS",480,50)
		
		mojo.SetColor 255,255,255
		
		soundBtn.Render()
		
		musicBtn.Render()
		
		exitBtn.Render()
	
	End Method

End Class

Class Credits Extends Control
	Field exitBtn:Button
	Field buttonImg:Image
	
	Method New(atlas:Image)
		buttonImg = atlas.GrabImage(0,288,144,48,2)
		frameImg = atlas.GrabImage(0,240,24,24,9)
		exitBtn = New Button(font256,buttonImg,160,380,"Menu")
	End Method
	
	Method GetState:int()
	
		Return state
		
	End Method
	
	
	Method Update:Void()
	
		exitBtn.Update()
		
		If True = exitBtn.GetState()
		
			state = MENU_STATE
			
		Endif
		
	End Method
	
	
	Method Render:Void()
		SetAlpha .9
		
		DrawFrame(20,20,17,18)
		
		SetAlpha 1.0
		
'		mojo.SetColor(0,255,100)
		
		font256.RenderText("Credits",160,30)
		
'		mojo.SetColor(255,255,0)
		
		font128.RenderText("Graphic Icons by:",50,80)
		
		font128.RenderText("BackGround/Heart by:",50,125)
		
		font128.RenderText("Tune:",50,175)

		font128.RenderText("Code:",50,245)

		font128.RenderText("Programmed with:",50,305)

		mojo.SetColor(10,230,10)
		
		font128.RenderText("http://www.smashingmagazine.com/",50,100)
		
		font128.RenderText("http://www.graphicsfuel.com/",50,150)
				
		font128.RenderText("Clean Air by Kevin MacLeod",50,200)
		
		font128.RenderText("incompetech.com",50,220)
				
		font128.RenderText("Jesus Perez(Jesse)",50,275)
				
		font128.RenderText("Monkey - www.monkeycoder.co.nz",50,330)
		
		mojo.SetColor 255,255,255
		
		exitBtn.Render()
		
	End Method
	
	Method DrawFrame:Void(x:Float,y:Float,width:Int,height:Int)
		DrawImage frameImg,x,y,0
		For Local i:Int = 1 Until (width-1)
			DrawImage frameImg,x+24*i,y,1
		Next
		DrawImage frameImg,x+(width-1)*24,y,2

		For Local j:Int = 1 Until (height-1)
			DrawImage frameImg,x,y+24*j,3
			DrawImage(frameImg,x+24,y+j*24,0,(width-2),1,4)
			DrawImage frameImg,x+(width-1)*24,y+24*j,5
		Next
		DrawImage frameImg, x,y+24*(height-1),6

		For Local x2:Int = 1 Until (width-1)
			DrawImage frameImg,x+x2*24,y+24*(height-1),7
		Next

		DrawImage frameImg, x+24*(width-1),y+24*(height-1),8
		
	End Method

End Class


Class Media
	Field song:String
	
	Field soundState:Int
	Field musicState:Int
	
	Field matchSnd:Sound
	Field levelUpSnd:Sound
	Field crackerSnd:Sound

	Field totalChannels:Int
	
	Field channel:Int
	
	Field atlas:Image
	
	Method New(atlas:Image)
		Self.atlas = atlas
		totalChannels = 8
		song = "cleanair.mp3"
		levelUpSnd = LoadSound("levelup.mp3")
		If levelUpSnd = Null Error "unable to load levelup.mp3"
		matchSnd = LoadSound("woop.mp3")
		crackerSnd = LoadSound("pop.mp3")
		soundState = 1
		musicState = 1
	End Method
	
	Method PlayMusic:Void()
		'mojo.PlayMusic(song)
	End Method
		
	Method SetVolume:Void(v:Float)
		For Local c:Int = 0 Until totalChannels 
			SetChannelVolume(c,v)
		Next
		SetMusicVolume(v)
	End Method
	
	Method SetSoundVol:Void(v:Float)
		For Local c:Int = 0 Until totalChannels
			SetChannelVolume(c,v)
		Next
	End Method
	
	Method SetMusicVol:Void(v:Float)
		SetMusicVolume(v)
	End Method
	
	Method SetSoundOFF:Void()
		For Local c:Int = 0 Until totalChannels 
			SetChannelVolume(c,0)
		Next
	End Method
	
	Method SetSoundOn:Void()
		For Local c:Int = 0 Until totalChannels
			SetChannelVolume(c,1)
		Next
	End Method
	
	Method SetMusicOff:Void()
		SetMusicVol(0)
	End Method
	
	Method SetMusicOn:Void()
		SetMusicVolume(1)
	End Method

	Method StopSong:Void()
		StopMusic()
	End Method
	
	Method PlayMatch:Void()
		PlaySound(matchSnd,channel)
		NextChannel()
	End Method
	
	Method PlayLevelUp:Void()
		PlaySound(levelUpSnd,channel)
		NextChannel()
	End Method
	
	Method PlayPop:Void()
		PlaySound(crackerSnd,channel)
		NextChannel()
	End Method
	
	Method PlayCompleted:Void()
	
	End Method
	
	Method PlayDrop:Void()
		
	End Method
	
	
	Method NextChannel:Void()
		channel = (channel +1) Mod 8
	End Method
End Class


Class Expander
	Field pos:PVector2D
	
	Field V:PVector2D
	Field D:PVector2D
	
	Field alpha:Float
	Field alphaStep:Float
	
	Field done:Int
	
	Field red:Int
	Field green:Int
	Field blue:Int
	
	Field str:String

	Field _prev:Expander
	Field _next:Expander
	
	Method New()
	
		pos = New PVector2D
		
		V = New PVector2D
		D = New PVector2D
		
	End Method
	
	Method Done:Int()
	
		Return done
	
	End Method
	
	Method Set:Void(str:String,x:Float,y:Float,astp:Float,r:Int,g:Int,b:Int)
		
		Self.str = str
		Self.pos.Set(x,y)
		
		Self.alpha = 1.0
		
		Self.alphaStep = astp
		
		Self.red = r
		Self.green = g
		Self.blue = b
	End Method

	Method Update:Int()
	
		If alpha <= 0.0 Return False
		
		alpha -= alphaStep
		pos.y -= 2.0
		If alpha < 0.0 alpha = 0.0
		Return True
		
	End Method
	
	Method Render:Void()
		If alpha = 0 Return 
		mojo.SetColor red,green,blue
		SetAlpha alpha
		font256.RenderText(str,pos.x,pos.y)
	End Method
	
End Class	


Class BonusOut
	
	Field expander:Expander[]
	Field count:Int
	Field index:Int
	Method New()
		expander = New Expander[100]
		For Local i:int = 0 Until expander.Length()
			expander[i] = New Expander
		Next
		count = -1
	End Method
	
	Method AddItem:Void(text:String,x:Float,y:Float)

		count += 1
		expander[count].Set(text,x,y,.02,255,25,25)
			
	End Method
	
	Method Update:Void()
		Local i:Int = 0
		While i <= count
			If expander[i].Update() = False
				Local temp:Expander = expander[i]
				expander[i] = expander[count]
				expander[count] = temp
				count -= 1
			Endif
			i += 1
		Wend
	End Method
	
	Method Render:Void()
		Local i:Int = 0
		While i <= count
			expander[i].Render()
			i += 1
		Wend
		mojo.SetColor 255,255,255
	End Method
	
End Class	

Class Stats
	Field startTime:Int
	Field spendTime:Int
	Field remainingTime:int
	Field maxTime:Int
	Field matches:Int
		
	Field level:Int
	Field subLevel:Int
	
	Field maxLevel:int
	Field maxSubLevel:Int
	
	Field levelTimes:Int[]
	Field bonus:Int[]

	Field difficulty:Int[]

	Field matchesGoal:Int[]
	
	Field numberOfIcons:int
	
	Field score:Score
	
	Method New()
		
		levelTimes = [120000,110000,100000,90000,80000,70000]
		
		bonus = [0,0,0,50,100,200,400,800,1600,3000]

		difficulty = [5,6,7,7]
		
		matchesGoal = [100,100,100,100,100,100,100]
		
		maxSubLevel = 3
		maxLevel = 3
		
		numberOfIcons = 5
		
		score = New Score
	
	End Method
	
	Method Set:Void(level:Int,subLevel:Int)

		maxTime = levelTimes[subLevel]	
		startTime = Millisecs()

		spendTime = 0

		Self.maxTime = maxTime

		Self.remainingTime = maxTime - spendTime

		Self.level = level
		Self.subLevel = subLevel
		Self.matches = 0
		score.total = 0
		
	End Method
	
	Method TimeExpired:Int()
		Return spendTime > maxTime
	End Method
	
	Method Update:Void()

		spendTime = Millisecs() - startTime
		remainingTime = maxTime - spendTime
		If remainingTime < 0 
			remainingTime = 0
		Endif
	End Method
	
	Method AddBonus:Void(v:Int)
		score.bonus += bonus[v]
	End Method
	
	Method GetBonus:Int(v:Int)
		Return bonus[v]
	End Method
	
	Method ResetBonus:Void()
		score.bonus = 0
	End Method
	
	Method AddBonusToScore:Void()
		score.total += score.bonus
	End Method
	
	Method PassedStage:Int()
		Return GetGoalMatches() <= matches
	End Method
		
	Method GetDifficulty:Int()
		Return difficulty[level]
	End Method
	
	Method GetGoalMatches:Int()
		Return matchesGoal[subLevel]
	End Method
	
	Method GetScoreString:String()
		Return SetText(score.total,10)
	End Method
		
	Method GetBonusString:String()
		Return SetText(score.bonus,10)
	End Method
	
	Method GetTimeString:String()
		Local secs:Int = remainingTime/1000
		Local mins:Int = secs / 60
		Local hrs:Int = mins /60
		secs Mod= 60
		mins Mod= 60
		hrs Mod=60
		Return SetText(hrs,2)+":"+SetText(mins,2)+":"+SetText(secs,2)
	End Method
	
	
	Method Render:Void()
		mojo.SetColor 255,255,0
		font128.RenderText "SCORE",500,30
		font128.RenderText GetScoreString(),480,60
		font128.RenderText "BONUS",500,120
		font128.RenderText GetBonusString(),480,150
		font128.RenderText "TIME LEFT",480,200
		font128.RenderText GetTimeString(),480,230
		font128.RenderText "MATCHES",480,290
		font128.RenderText SetText(matches,3)+"/"+SetText(GetGoalMatches(),3),480,320
		mojo.SetColor 255,255,255
		
	End Method

End Class

Function SetText:String(val:String,count:Int)
	Local len:Int = count - val.Length()
	For Local i:Int = 0 Until len
		val = "0"+val
	Next
	Return val
End Function
