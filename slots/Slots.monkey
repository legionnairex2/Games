Strict

Import mojo
Import JPMod.FontMod
Import JPMod.MouseMod


Function Main:Int()
	New Game
	Return True
End Function

Global player:Player

Global state:Casino
Global nextState:Casino

Global upBtn:Button
Global downBtn:Button
Global oneBtn:Button
Global maxBtn:Button
Global leaveBtn:Button
Global spinBtn:Button
Global slotsImg:Image
Global cityImg:Image
Global font1:AngelFont
Global font2:AngelFont
Global slot:Slot
Global school:School
Global menu:Menu
Global spindleSnd:Sound
Global spinSnd:Sound
Global win2Snd:Sound
Global win3Snd:Sound



Class Game Extends App
	Field blackJack:BlackJack
	Field fruitAtlas:Image
	Field slotAtlas:Image
		
	Method OnCreate:Int()
		font1 = LoadAngelFont("export")
		font2 = LoadAngelFont("alpha")
		SetAngelFont(font1)
		fruitAtlas = LoadImage("slotpieces.png")
		slotAtlas = LoadImage("slotmachine.png")
		slotsImg = LoadImage("slots.jpg")
		cityImg = LoadImage("city.png")
		slot    = New Slot(fruitAtlas,slotAtlas,50,80)
		school = New School
		menu 	= New Menu
		upBtn   = New Button(53, 353,slotAtlas.GrabImage(0,  377,96,48,2))
		downBtn = New Button(53, 402,slotAtlas.GrabImage(0,  425,96,48,2))
		oneBtn  = New Button(149,353,slotAtlas.GrabImage(192,473,96,48,2))
		maxBtn  = New Button(149,402,slotAtlas.GrabImage(192,377,96,48,2))
		spinBtn = New Button(245,402,slotAtlas.GrabImage(0,  473,96,48,2))
		leaveBtn= New Button(500, 10,slotAtlas.GrabImage(192,425,96,48,2))
		player  = New Player(5000,50)
		state = menu
		nextState = menu
		spindleSnd = LoadSound("79.mp3")
		spinSnd = LoadSound("spin.mp3")
		win2Snd = LoadSound("93.mp3")
		win3Snd = LoadSound("96a.mp3")
		SetUpdateRate 60
		Return True
	End Method
	
	
	Method OnUpdate:Int()
		If state <> nextState
			Seed = Millisecs()
			state = nextState
		Endif
		mouse.Update()
		leaveBtn.Update()
		state.Update()
		Return True
	End Method
	
	Method OnRender:Int()
		Cls
		state.Render()
		Return True
	End Method
	
End Class


'**********************************************
'			casino abstract for casino
'**********************************************


Class Casino
	Field name:string
	Method Update	:Void() Abstract
	Method Render	:Void() Abstract
	Method Init		:Void() Abstract
End Class

'**********************************************************
'				slots
'**********************************************************

Class Slot Extends Casino

	Field x:Float
	Field y:Float

	Field backImg:Image
	Field slotImg:Image
	
	Field spindle:Spindle[3]
	
	Field oldy:Float
	Field done:Int

	Field coinSnd:Sound
	Field coinChannel:Int

	Method New(fruitAtlas:Image,slotAtlas:Image,x:Int,y:Int)
		Self.x = x
		Self.y = y
		backImg = fruitAtlas.GrabImage(0,32*12,32,96,2)
		slotImg = slotAtlas.GrabImage(0,0,slotAtlas.Width(),376)
		spindle = New Spindle[3]
		spindle[0] = New Spindle(x +  199, y + 55, fruitAtlas,8)
		spindle[0].channel = 2
		spindle[1] = New Spindle(x + 242, y + 55, fruitAtlas,8)
		spindle[1].channel = 3
		spindle[2] = New Spindle(x + 283, y + 55, fruitAtlas,8)
		spindle[2].channel = 4
		done = True
		name = "SLOT"
		coinSnd = LoadSound("pickupcoin.mp3")
		coinChannel  = 1
	End Method	
	
	Method Init:Void()
	
	End Method
	
	Method Update:Void()
		If player.money > 0
			If done = True
	
				upBtn.Update()
				downBtn.Update()
				oneBtn.Update()
				maxBtn.Update()
				spinBtn.Update()
				If player.money < player.bet
					player.bet = player.money
				Endif
				If leaveBtn.Activated()
					nextState = menu
				Endif
				If player.money>=player.bet
					If spinBtn.Activated()
						PlaySound spinSnd,1
						done = False
						player.money -= player.bet
						spindle[0].Init(1)
						spindle[1].Init(2)
						spindle[2].Init(3)
					Elseif upBtn.Activated()
						If player.money > player.bet
							If player.bet < player.maxBet
								player.bet += 1
								PlaySound(coinSnd,coinChannel)
							Endif
						Endif
					Elseif downBtn.Activated()
						If player.bet > 1
							player.bet -= 1
							PlaySound(coinSnd,coinChannel)
						Endif
					Elseif maxBtn.Activated()
						If player.money >= player.maxBet
							player.bet = player.maxBet
							PlaySound(coinSnd,coinChannel)
						Else
							player.bet = player.money
							PlaySound(coinSnd,coinChannel)
						Endif
					Elseif oneBtn.Activated()
						If player.money >= 1
							player.bet = 1
							PlaySound(coinSnd,coinChannel)
						Endif
					Endif
				Endif
				
			Else
				spindle[0].Update()
				spindle[1].Update()
				spindle[2].Update()
				If spindle[0].IsDone() And spindle[1].IsDone() And spindle[2].IsDone()
					done = True
					If 	spindle[0].GetIndex() = spindle[1].GetIndex() And 
						spindle[1].GetIndex() = spindle[2].GetIndex() Then
						Select spindle[0].GetIndex()
							
							Case Spindle.STRAWBERRY
								player.money += player.bet * 100
							Case Spindle.CHERRIES
								player.money += player.bet * 95
							Case Spindle.PINEAPPLE
								player.money += player.bet * 90
							Case Spindle.APPLE
								player.money += player.bet * 85
							Case Spindle.LEMON
								player.money += player.bet * 80
							Case Spindle.BAR
								player.money += player.bet * 75
							Case Spindle.BANANA
								player.money += player.bet * 70
							Case Spindle.ORANGE
								player.money += player.bet * 65
							Case Spindle.STAR
								player.money += player.bet * 60
							Case Spindle.PEAR
								player.money += player.bet * 55
							Case Spindle.GRAPE
								player.money += player.bet * 50
							Case Spindle.BELL
								player.money += player.bet * 45
						End Select
						PlaySound win3Snd,1
					Elseif 	spindle[0].GetIndex() = spindle[1].GetIndex()Then
							
						Select spindle[0].GetIndex()	
							Case Spindle.STRAWBERRY
								player.money += player.bet * 5
							Case Spindle.CHERRIES
								player.money += player.bet * 5
							Case Spindle.PINEAPPLE
								player.money += player.bet * 5
							Case Spindle.APPLE
								player.money += player.bet * 5
							Case Spindle.LEMON
								player.money += player.bet * 5
							Case Spindle.BAR
								player.money += player.bet * 5
							Case Spindle.BANANA
								player.money += player.bet * 2
							Case Spindle.ORANGE
								player.money += player.bet * 2
							Case Spindle.STAR
								player.money += player.bet * 2
							Case Spindle.PEAR
								player.money += player.bet * 2
							Case Spindle.GRAPE
								player.money += player.bet * 2
							Case Spindle.BELL
								player.money += player.bet * 2
						End Select
						PlaySound win2Snd,6
							
					Elseif 	spindle[1].GetIndex() = spindle[2].GetIndex()Then
							
						Select spindle[1].GetIndex()	
							Case Spindle.STRAWBERRY
								player.money += player.bet * 5
							Case Spindle.CHERRIES
								player.money += player.bet * 5
							Case Spindle.PINEAPPLE
								player.money += player.bet * 5
							Case Spindle.APPLE
								player.money += player.bet * 5
							Case Spindle.LEMON
								player.money += player.bet * 5
							Case Spindle.BAR
								player.money += player.bet * 5
							Case Spindle.BANANA
								player.money += player.bet * 2
							Case Spindle.ORANGE
								player.money += player.bet * 2
							Case Spindle.STAR
								player.money += player.bet * 2
							Case Spindle.PEAR
								player.money += player.bet * 2
							Case Spindle.GRAPE
								player.money += player.bet * 2
							Case Spindle.BELL
								player.money += player.bet * 2
						End Select
						PlaySound win2Snd,6
							
					Elseif 	spindle[0].GetIndex() = spindle[2].GetIndex()Then
							
						Select spindle[0].GetIndex()	
							Case Spindle.STRAWBERRY
								player.money += player.bet * 5
							Case Spindle.CHERRIES
								player.money += player.bet * 5
							Case Spindle.PINEAPPLE
								player.money += player.bet * 5
							Case Spindle.APPLE
								player.money += player.bet * 5
							Case Spindle.LEMON
								player.money += player.bet * 5
							Case Spindle.BAR
								player.money += player.bet * 5
							Case Spindle.BANANA
								player.money += player.bet * 2
							Case Spindle.ORANGE
								player.money += player.bet * 2
							Case Spindle.STAR
								player.money += player.bet * 2
							Case Spindle.PEAR
								player.money += player.bet * 2
							Case Spindle.GRAPE
								player.money += player.bet * 2
							Case Spindle.BELL
								player.money += player.bet * 2
						End Select
						PlaySound win2Snd,6							
					Endif
				Endif	
					
			Endif
		Else
			'process to end game.
			' as a result of loosing all of the money. 
		Endif
	End Method

	Method Render:Void()
		DrawImage slotsImg,0,0
		spindle[0].Render()
		spindle[1].Render()
		spindle[2].Render()
		DrawImage slotImg,x,y
		SetColor 200,200,0
		RenderText "Funds $"+player.money,x+220,y+275
		RenderText "Bet $"+player.bet, x+330,y+320
		SetColor 255,255,255
		upBtn.Render()
		downBtn.Render()
		oneBtn.Render()
		maxBtn.Render()
		spinBtn.Render()
		leaveBtn.Render()
	End Method
	
End Class

Class Spindle
	Field x:int
	Field y:Int
	Field image:Image
	Field backImg:Image
	Field sprites:Sprite[]
	Field py:Int
	Field oldpy:Int
	Field speed:Int
	Field done:Int
	Field counter:Int
	Field channel:int
	
	Field i1:Int,i2:Int,i3:Int,i4:Int
	
	Global itemName:String[] = ["StrawBerry","Cherries","Pineapple","Apple","Lemon","Bar",
							  	"Banana","Orange","Star","Pear","Grapes","Bell"]
	
	Const STRAWBERRY	:Int = 0
	Const CHERRIES		:Int = 1
	Const PINEAPPLE		:Int = 2
	Const APPLE			:Int = 3
	Const LEMON			:Int = 4
	Const BAR			:Int = 5
	Const BANANA		:Int = 6
	Const ORANGE		:Int = 7
	Const STAR			:Int = 8
	Const PEAR			:Int = 9
	Const GRAPE			:Int = 10
	Const BELL			:Int = 11
	
	Method New(x1:Int,y1:Int,atlas:Image,speed:Int)
		Self.x = x1
		Self.y = y1
		Self.speed = speed
		sprites = New Sprite[12]
		For Local i:Int = 0 Until 12
			sprites[i] = New Sprite(atlas,0,32*i,32,32,y+32,y+126,i)
		Next
		
		For Local n:Int = 0 Until 255
			Local f:Int = Rnd(0,12)
			Local l:Int = Rnd(0,12)
			Local t:Sprite = sprites[f]
			sprites[f] = sprites[l]
			sprites[l] = t
		Next
		backImg = atlas.GrabImage(0,32*12,32,96,2)
		i1 = -0
		i2 = -1
		i3 = -2
		i4 = -3
		py =  0
		done = True
	End Method
	
	Method Init:Void(c:Int)
		counter = 24+12*c + Rnd(0,12)
		done = false
	End Method
	
	Method IsDone:Int()
		Return done
	End Method
	
	Method Update:Void()
		If done = False
			py = (py + speed) Mod 32
			If oldpy > py
				i1 = (i1 - 1) Mod 12
				i2 = (i2 - 1) Mod 12
				i3 = (i3 - 1) Mod 12
				i4 = (i4 - 1) Mod 12
				counter -=1
				If counter <= 0
					done = True
					PlaySound(spindleSnd,channel)
				endif
			Endif
			oldpy = py
		Endif
	End Method
	
	Method GetIndex:Int()
		Return sprites[Abs(i3)].index
	End method
	
	Method Render:Void()
		DrawImage backImg,x,y+32,0
		sprites[Abs(i1)].Render x,y +00 +py
		sprites[Abs(i2)].Render x,y +32 +py
		sprites[Abs(i3)].Render x,y +64 +py
		sprites[Abs(i4)].Render x,y +96 +py
		DrawImage backImg,x,y+32,1
	End Method
		
End Class


Class Sprite
	Field img:Image
	Field atlas:Image
	Field width:Int
	Field height:Int
	
	Field miny:Int
	Field maxy:Int
	
	Field index:int
	
	Method New(atlas:Image,x:Int,y:Int,width:Int,height:Int,miny:Int,maxy:Int,index:int)
		Self.atlas = atlas
		Self.img = atlas.GrabImage(x,y,32,1,height)
		Self.width = width
		Self.height = height
		Self.miny = miny
		Self.maxy = maxy
		Self.index = index
	End Method
	
	Method Render:Void(x:Float,y:Float)
		For Local j:Int = 0 Until height
			If (j+y) > maxy Exit
			If (j+y) < miny Continue
			DrawImage img,x,y+j,j
		Next
	End Method
	
End Class

'******************************************************
'			player
'******************************************************

Class Player
	Field money:Int
	Field bet:Int
	Field maxBet:Int
	
	Method New(money:Int,maxBet:Int)
		Self.money = money
		Self.bet = 1
		Self.maxBet = maxBet
	End Method
	
	
	Method Update:Void()
	
	End Method
	
	
	Method Render:Void()
	
	End Method
	
End Class


Class Button
	Field x:Float
	Field y:Float
	Field width:Int
	Field height:Int
	Field image:Image
	Field oldState:Int
	Field thisState:Int
	Field focus:Int
	Field pressed:int
	Field activated:int
	
	
	Method New(x:Float,y:Float,image:Image)
		Self.x = x
		Self.y = y
		Self.width =image.Width()
		Self.height=image.Height()
		Self.image = image
		Self.activated = False
	End Method
	
	Method Update:Void()
		activated = False
		focus = MouseInArea()
		If focus
			If mouse.ButtonActivated()
				pressed = True
			Elseif pressed
				If mouse.ButtonReleased()
					activated = True
					pressed = False
				Endif
			Endif
		Elseif mouse.ButtonReleased()
			If thisState = False
				pressed = False
			Endif
		Endif		
		oldState = thisState
	End Method
	
	Method Activated:Int()
		Return activated
	End Method
	
	Method MouseInArea:Int()
		Local mx:Float = mouse.x
		Local my:Float = mouse.y
		If mx <= x Return False
		If mx >= x + width Return False
		If my <= y Return False
		If my >= y + height Return False
		Return True
	End Method
	
	
	Method Render:Void()
		DrawImage image,x,y,focus
	End Method
	
End Class


Class Menu Extends Casino
	Field x:Float
	Field y:Float
	Field width:Int
	Field height:Int
	
	Field px:Int
	Field py:Int
	
	Method New()
		name = "menu"
	End Method
	
	Method Init:Void()
	
	End method
	
	Method Update:Void()
		If mouse.ButtonActivated()
			If mouse.InArea(100,75,420,100)
				nextState = school
			Elseif mouse.InArea(100,200,420,100)
				nextState = slot
			Endif
		endif
	
	End Method
	
	Method Render:Void()
	
		DrawImage cityImg,0,0
		SetAngelFont(font1)
		SetColor 50,100,50
		RenderText "EASY MONEY",180,20
		Rect(100,75)
		schoolText(100,75)
		Rect(100,200)
		slotText(100,200)
	End Method
	
	
	Method Rect:Void(px:Int,py:Int)
		SetAlpha .50
		SetColor 100,50,100
		DrawRect px,py,420,100
		SetColor 250,250,0
		DrawLine px,py,px+420,py
		DrawLine px,py,px,py+100
		SetColor 0,0,0
		DrawLine px,py+100,px+420,py+100
		DrawLine px+420,py,px+420,py+100
		SetColor 200,200,200
		SetAlpha .25
		DrawRect px+2,py+2,416,50
		SetAlpha 1.0
		
	End Method
	
	Method schoolText:Void(px:Int,py:Int)
		SetAngelFont(font2)
		SetColor 200,200,0
		RenderText("This Genius is Going to school",160,90)
		RenderText("and learn the ropes of life.",160,120)
		RenderText("I'll be rich soon...",160,150)
		
	End Method
	
	Method slotText:Void(px:Int,py:Int)
		SetAngelFont(font2)
		SetColor 0,200,0
		RenderText("No way I am too cool for School.",160,210)
		RenderText("I am playing Slots and I will be",160,240)
		RenderText("Rich before class Is out today.",160,270)
	End Method

	

End Class


Class School extends Casino



	Method New()
		name = "School"
	End Method
	
	
	Method Update:Void()
		If leaveBtn.Activated()
			nextState = menu
		Endif
	
	End Method
	
	Method Init:Void()
	
	End Method
	
	Method Render:Void()
		leaveBtn.Render()
	
		RenderText "This is the school for Genius",50,50
		RenderText "For homework solve the theory of relativity.",50,80
		RenderText "Good night",50,100
		
	End Method


End Class