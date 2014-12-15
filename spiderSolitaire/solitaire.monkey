'
' 
Strict

Import mojo

Import JPMod.GuiMod
Import cCardForm
Import cBuffer
Import cSfx

Function Main:Int()
	New Solitaire
	Return 1
End Function


Class Solitaire Extends App
	Field game:Game
	Field undoButton:Button
	Field playButton:Button
	Field exitButton:Button
	Field enquiry:Enquiry
	Field img:Image
	Field font:AngelFont
	Field atlas:Image
	Field playTime:GameTimer
	Field gameTime:GameTimer	
	Field state:Int
	Field nextState:Int
	Field seed:Int
	Field backImg:Image
	
	Const GAMESTATE			:Int = 1
	Const INITSTATE			:Int = 2
	Const MENUSTATE			:Int = 3
	Const WONSTATE			:Int = 4
	Const ENQUIRINGSTATE	:Int = 5
	
	Method OnCreate:Int()
		SFX = New Sfx
		
		atlas = LoadImage("buttons.png")
		
		font = LoadAngelFont("chalk")
		SetAngelFont(font)
		cardForm = New CardForm(80,100)
		img = atlas.GrabImage(0,62,120,62,2)
		
		undoButton = New Button(font,img,450,30,"UNDO")
		exitButton = New Button(font,img,300,30,"EXIT")
		playButton = New Button(font,atlas.GrabImage(0,0,190,62,2),330,360,"PLAY")
		
		enquiry = New Enquiry(font,"Exit Game?",250,100,380,130)
		
		state = MENUSTATE
		nextState = MENUSTATE
		
		gameTime = New GameTimer(10,560)
		SetUpdateRate 60
		
		Local s:String = LoadState()
		Seed = Int(s)
		seed = Rnd(10000)
		SaveState(String(seed))
		backImg = LoadImage("spider.jpg")
		Return 1
	End Method
	
	Method OnUpdate:Int()
		
		mouse.Update()
		
		state = nextState
		gameTime.Update()
		Select state
			Case INITSTATE
				Seed = seed
				game = New Game
				nextState = GAMESTATE
				playTime = New GameTimer(10,560)
			Case GAMESTATE
				undoButton.Update()	
				exitButton.Update()
				If KeyHit(KEY_Z) Or undoButton.GetState() game.Undo() 
				game.Update()
				If game.IsOver()
					nextState = WONSTATE
				Endif
				If exitButton.GetState() = True
					nextState = ENQUIRINGSTATE
				Endif
				playTime.Update()
			Case ENQUIRINGSTATE
				enquiry.Update()
				If enquiry.IsOK()
					nextState = MENUSTATE
					SFX.PlayBtn()
				Elseif enquiry.IsCanceled()
					nextState = GAMESTATE
				Elseif enquiry.IsRestart()
					nextState = INITSTATE
					Seed = seed
				Endif
				playTime.Update()				
			Case MENUSTATE
				playButton.Update()
				If playButton.GetState() = True
					SFX.PlayBtn()
					nextState = INITSTATE
					seed = Rnd(10000)
				Endif
			Case WONSTATE
				
		End Select
		Return 1
	End Method
		
	Method OnRender:Int()

		Cls(50,100,50)
		Select state
			Case INITSTATE
			Case MENUSTATE
				DrawImage backImg,0,0
				playButton.Render()
				gameTime.Render()
			Case GAMESTATE
				undoButton.Render()
				exitButton.Render()			
				game.Display()
				playTime.Render()
			Case WONSTATE
				RenderText("WONGAME",300,350)
				game.Display()
			Case ENQUIRINGSTATE
				game.Display()
				enquiry.Render()
				playTime.Render()
		End Select
		Return 1
	End Method
	
End Class


Class GameTimer
	Field x:Int
	Field y:Int
	Field time:Int
	Field secs:Int
	Field mins:Int
	Field hours:Int
	Field startTime:Int
	Field EndTime:Int
	
	Method New(x:Int,y:Int)
		Self.x = x
		Self.y = y
		Init()
	End Method
	
	
	Method Init:Void()
		startTime = Millisecs()
		time = 0
	
	End Method
	
	Method Update:Void()
		time = Millisecs() - startTime
		secs = time / 1000
		mins = secs / 60
		hours = mins / 60
		secs Mod= 60
		mins Mod= 60
		hours  Mod= 24
		
	End Method
	
	
	Method Render:Void()
		Local s:String = secs
		Local m:String = mins
		Local h:String = hours
		If s.Length = 1 s = "0"+s
		If m.Length = 1 m = "0"+m
		If h.Length = 1 h = "0"+h
		RenderText(h+":"+m+":"+s,x,y)
	End Method
	 
End Class
	
