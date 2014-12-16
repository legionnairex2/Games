'Shadow Of The Beast
'Parallax Scrolling Demo
'Author Jesus Perez
Strict

Import Mojo

	Function Main:Int()
		New Game
		Return True
	End Function

    Global list:List <TileRow>
    Global bombStore:List <Tbomb>

    Global background:Image
    Global background1:Image
    Global background2:Image
    Global background3:Image
    Global background4:Image
    Global background5:Image
    Global background6:Image
    
    Global clouds1:Image
    Global cloud2:Image
    Global cloud3:Image
    Global cloud4:Image
    Global tree:Image
    
    Global beastImg:Image
    Global dogImg:Image
    Global beeImg:Image
    Global catImg:Image
    Global teraImg:Image
    Global flyImg:Image
    Global bombImg:Image
    Global snakeImg:Image
    Global showBox:Int = TRUE 'False

	Global bopSound:Sound
	Global expSound:Sound
        
	Global walkRight:Int[] =[0,6]
	Global walkLeft:Int[]  = [6,6]
	Global turnLeft:Int[] = [12,4]
	Global turnRight:Int[] = [16,4]
	Global punchRightOut:Int[] = [20,3]
	Global punchRightIn:Int[] = [23,2]
	Global punchRight:Int[] = [22,1]
	Global punchLeftOut:Int[] = [25,3]
	Global punchLeftIn:Int[] = [28,2]
	Global punchLeft:Int[] = [27,1]
	Global crouchRightDown:Int[] = [30,2]
	Global crouchRightUp:Int[] = [31,2]
	Global crouchLeftDown:Int[] = [33,2]
	Global crouchLeftUp:Int[] = [34,2]
	Global framed:Int[] = [36,12]
	Global walkRightGun:Int[] = [48,6]
	Global walkLeftGun:Int[] = [54,6]
	Global turnLeftGun:Int[] = [60,4]
	Global turnRightGun:Int[] = [64,4]
	Global nealRightPunchOut:Int[]  = [68,2]
	Global nealRightPunchIn:Int[] = [69,2]
	Global nealLeftPunchOut:Int[] = [71,2]
	Global nealLeftPunchIn:Int[] = [72,2]
	Global standingGunRight:Int[] = [74,2]
	Global knealingDowngunLeft:Int[] = [76,2]
	
	Global itMoving:Int[] = [0,6]
	Global itMove2:Int[] = [0,7]
	
	Global fps:Int
	Global fpsTemp:Int
	Global lastTime:Int
	Global time:Int
	
	Function collided:Int (x1:Float,y1:Float,box1:ThitBox,x2:Float,y2:Float,box2:ThitBox)
		Local b1x1:Float = x1 + box1.offx
		Local b1y1:Float = y1 + box1.offy
		Local b1x2:Float = x1 + box1.width
		Local b1y2:Float = y1 + box1.height
		Local b2x1:Float = x2 + box2.offx
		Local b2y1:Float = y2 + box2.offy
		Local b2x2:Float = x2 + box2.width
		Local b2y2:Float = y2 + box2.height
		If b1x1 > b2x2 Return False
		If b1x2 < b2x1 Return False
		If b1y1 > b2y2 Return False
		If b1y2 < b2y1 Return False 	
		Return True
	End Function
	
	Function TileImageAcross:Void(image:Image,x:Float,y:Float,width:Float)
		Local w:Int = width-1
		Local ox:Int = -w+1
		Local px:Int = x
		Local fx:Int = px - Int(px)
		Local tx:Int = Int(px) - ox

		If (tx >= 0)
			tx=tx Mod w + ox
		Else
			tx=w + tx Mod w + ox
		Endif
		Local vr:Int = 640
		Local ix:Int = tx
		While(ix < vr)
		   DrawImage(image,ix+fx,y)
		   ix=ix+w
		Wend
	End Function
	
	Class Tcolor
		Field red:Int
		Field green:Int
		Field blue:Int
		
		Function create:Tcolor(red:Int,green:Int,blue:Int)
			Local c:Tcolor = New Tcolor
			c.red = red
			c.green = green
			c.blue = blue
			Return c
		End Function
		
		Method set:Void()
			SetColor(red,green,blue)
		End Method
	End Class
	
	Class Tbutton
		Field x:Int
		Field y:Int
		Field tx:Int
		Field ty:Int
		Field text:String
		Field width:Int
		Field height:Int
		Field freeColor:Tcolor
		Field overColor:Tcolor
		Field selectedColor:Tcolor
		Field currentColor:Tcolor
		
		Method New()
			freeColor = Tcolor.create(50,50,150)
			overColor = Tcolor.create(50,150,150)
			selectedColor =  Tcolor.create(150,50,50)
		End Method
		
		Function create:Tbutton(x:Int,y:Int,width:Int,height:Int,text:String,tx:Int,ty:Int)
			Local b:Tbutton = New Tbutton
			b.x = x
			b.y = y
			b.width = width
			b.height = height
			b.text = text
			b.tx = tx
			b.ty = ty
			b.currentColor = b.freeColor
			Return b
		End Function
		
		Method activated:Int()
			Return (currentColor = selectedColor)
		End Method
		
		Method update:Void()
			Local mx:Int = MouseX()
			Local my:Int = MouseY()
			Local b1:Int = MouseDown(MOUSE_LEFT)
			If mx < x Or mx > (x+width) Or my < y Or my > (y+height)
				currentColor = freeColor
			Elseif b1
				currentColor = selectedColor
			Else
				currentColor = overColor
			Endif
		End Method
		
		Method display:Void()
			currentColor.set()
			DrawRect(x,y,width,height)
			Select currentColor
				Case freeColor,overColor
					SetColor 255,255,255
					DrawLine x,y,x+width,y
					DrawLine x,y,x,y+height
					SetColor 0,0,0
					DrawLine x+width,y,x+width,y+height
					DrawLine x,y+height,x+width,y+height
					DrawText text,x+tx,y+ty
				Case selectedColor
					SetColor 0,0,0
					DrawLine x,y,x+width,y
					DrawLine x,y,x,y+height
					SetColor 255,255,255
					DrawLine x+width,y,x+width,y+height
					DrawLine x,y+height,x+width,y+height
					DrawText text,x+tx-1,y+ty-1
			End Select
			
					
		End Method
		
	End Class
	
	Class Tenquire
	
		Field x:Int
		Field y:Int
		Field width:Int
		Field height:Int
		Field text:String
		Field tx:Int
		Field ty:Int
		Field color:Tcolor
		Field yesBtn:Tbutton
		Field active:Int
		
		Function create:Tenquire(x:Int,y:Int,text:String)
			Local e:Tenquire = New Tenquire
			e.x = x
			e.y = y
			e.width = 300
			e.height = 100
			e.tx = 50
			e.ty = 20
			e.text = text
			e.color = Tcolor.create(100,200,100)
			e.yesBtn = Tbutton.create(x+120,y+60,60,20,"Yes",15,3)
			Return e
		End Function
		
		Method activated:Int()
			Return active
		End Method
		
		Method update:Void()
			yesBtn.update()
			active = yesBtn.activated()
		End Method
	
		Method display:Void()
			SetAlpha(.7)
			color.set()
			DrawRect(x,y,width,height)
			yesBtn.display()
			SetColor 255,255,255
			DrawLine(x,y,x+width,y)
			DrawLine(x,y,x,y+height)
			SetColor 0,0,0
			DrawLine(x,y+height,x+width,y+height)
			DrawLine(x+width,y,x+width,y+height)
			DrawText text,x+tx,y+ty
			SetAlpha(1.0)
		End Method
		
	End Class
	
	Class TlifeGage
		Field x:Int
		Field y:Int
		Field life:Int
		Field width:Int
		Field height:Int
		Field rate:Int
		
		Function create:TlifeGage(x:Int,y:Int,height:Int,life:Int)
			Local g:TlifeGage = New TlifeGage
			g.x = x
			g.y = y
			g.rate = 20
			g.height = height
			g.width = life * g.rate
			g.life = life
			Return g
		End Function
		
		Method getLife:Int()
			Return life
		End Method
		Method decrease:Void(n:Int)
			life -= n
			If life < 0 life = 0
		End Method
		
		Method display:Void()
			SetColor 150,50,0
			DrawRect x,y,life*rate,height
			DrawLine x,y,x+width,y
			DrawLine x+width,y,x+width,y+height
			DrawLine x+width,y+height,x,y+height
			DrawLine x,y+height,x,y
		End Method
		
	End Class
    
	Class Tbomb
		Field x:Float
		Field y:Float
		Field speedy:Float
		Field image:Image
		
		Field hitBox:ThitBox
		
		Method New()
			hitBox = New ThitBox
		End Method
		
		Function create:Tbomb(image:Image,x:Float,y:Float,speed:Float)
			Local b:Tbomb = New Tbomb
			b.x = x
			b.y = y
			
			b.hitBox.offx = 3
			b.hitBox.offy = 3
			b.hitBox.width = 14
			b.hitBox.height = 14
			
			b.speedy = speed
			b.image = image
			Return b
		End Function
		
		Method init:Void(x:Float,y:Float,speed:Float)
			Self.x = x
			Self.y = y			
			Self.speedy = speed
		End Method
		
		Method update:Int(dx:Float)
			x -= dx*3
			y += speedy
			If y > 420
				Return False
			Endif
			Return True
		End Method
		
		Method display:Void()
			If x > -30 And x < 640
				DrawImage(image,x,y)
				If showBox
					hitBox.draw(x,y)
				Endif
			Endif
		End Method
	End Class
	
	Class TbombStore
		Field list:List<Tbomb>
		Field image:Image
		Field x:Float
		Field y:Float
		Field speed:Float
		
		Function create:TbombStore(image:Image)
			Local b:TbombStore = New TbombStore
			b.list = New List<Tbomb>
			b.image = image
			b.x = 0
			b.y = 0
			b.speed = 0
			b.fill(10)
			Return b
		End Function
		
		Method fill:Void(total:Int)
			For Local i:Int = 0 Until total
				list.AddLast(Tbomb.create(image,x,y,speed))
			Next
		End Method
		
		Method get:Tbomb()
			If Not list.IsEmpty()
				Return list.RemoveLast()
			Endif
			Return Tbomb.create(image,x,y,speed)
			
		End Method
		
		Method replace:Void(bomb:Tbomb)
			list.AddLast(bomb)
		End Method
	End Class
	
	Class Timpact
		Field x:Float
		Field y:Float
		Field animation:Tsprite
		
		Function create:Timpact(x:Float,y:Float,image:Image,spr:Int[],wait:Float,count:Float,frame:Float)
			Local i:Timpact = New Timpact
			i.x = x
			i.y = y
			i.animation = Tsprite.create(image,spr,wait,count,frame)
			Return i
		End Function
	
		Method init:Void(x:Float,y:Float)
			Self.x = x
			Self.y = y
			Self.animation.reset()
		End Method

		Method update:Int(dx:Float)
			x -= dx*3.0
			Local i:Int = animation.update()
			Return i
		End Method
		
		Method display:Void()
			animation.display(x,y)
		End Method
			
	End Class
	
	Class TimpactStore
    		Field list:List <Timpact>
		Field image:Image
		Field spr:Int[]
		Field frame:Int
		Field rate:Int
		Field wait:Int
		Field count:Int
		Field x:Float
		Field y:Float
		
		Function create:TimpactStore(image:Image,spr:Int[],wait:Float,count:Float,frame:Float)
			Local i:TimpactStore = New TimpactStore
			i.list = New List <Timpact>
			i.image = image
			i.spr = spr
			i.wait = wait
			i.count = count
			i.frame = frame
			i.x = 0
			i.y = 0
			Return i
		End Function
		
		Method fill:Void(total:Int)
			For Local i:Int = 0 Until total
				list.AddLast(Timpact.create(x,y,image,spr,wait,count,frame))
			Next
		End Method
		
		Method get:Timpact()
			If Not list.IsEmpty()
				Return list.RemoveLast()
			Endif
			Return Timpact.create(x,y,image,spr,wait,count,frame)
		End Method
		
		Method replace:Void(impact:Timpact)
			list.AddLast(impact)
		End Method
	End Class
	
	Class Tsprite
		Field spr:Int[]
		Field wait:Int
		Field frame:Int
		Field count:Int
		Field rate:Int
		Field image:Image
		
    		Function create:Tsprite(image:Image,spr:Int[],wait:Float,count:Float,frame:Float)
			Local s:Tsprite = New Tsprite
			s.spr = spr
			s.wait = wait
			s.frame = frame
			s.count = count
			s.rate = Millisecs()+wait
			s.image = image
			Return s
		End Function
		
         Method reset:Void()
            If count > 1
                frame = 0
                rate = Millisecs() + wait
            Endif
        End Method
            
        Method update:Int()
            If (count > 1)
                If (Millisecs() > rate)
                    frame = (frame + 1) Mod count
                    rate = Millisecs() + wait
                    If (frame=0)
					Return True
				  Endif
                Endif
            Endif
		   Return False
        End Method
        
        Method display:Void(x:Float,y:Float,scale:Float=1.5)
            PushMatrix()
		   Scale(scale, scale)
            DrawImage(image,x/scale,y/scale,(spr[0]+frame))
            Scale(1.0, 1.0)
		   PopMatrix()
        End Method
    End Class
    
	Class Tentity
		Field x:Float
		Field y:Float
		Field speedx:Float
		Field seq:Int[]
		
		Field hitBox:ThitBox
		
		Method New()
			hitBox = New ThitBox
		End Method
		
		Method update:Void(dx:Float) Abstract
		Method display:Void(scale:Float = 1.0) Abstract
		Method reset:Void() Abstract
		
	End Class
	
	Class Tleft Extends Tentity
		
		Field moveL:Tsprite
		
		Function create:Tleft(image:Image,move:Int[],x:Float,y:Float,speed:Float,delay:Int,hitOx:Float,hitOy:Float,hitWidth:Float,hitHeight:Float)
			Local d:Tleft = New Tleft
			d.x = x
			d.y = y
			d.hitBox.offx = hitOx
			d.hitBox.offy = hitOy
			d.hitBox.width = hitOx+hitWidth
			d.hitBox.height = hitOy+hitHeight
			d.speedx = speed
			d.moveL = Tsprite.create(image,move,delay,6,0)
			Return d
		End Function
		
		Method update:Void(dx:Float)
			x = x - (speedx + dx*3.0)
			If x < -40
				reset()
			Endif
			moveL.update()			
		End Method
		
		Method reset:Void()
			x = 800
			speedx = 1+Rnd(1,5) 
		End Method
		
		Method display:Void(scale:Float=1.0)
			moveL.display(x,y,scale)
			SetColor 255,255,255
			If showBox
				hitBox.draw(x,y)
			Endif
		End Method
		
		
	End Class 

	Class Tright Extends Tentity
		
		Field moveR:Tsprite
		
		Function create:Tright(image:Image,move:Int[],x:Float,y:Float,speed:Float,delay:Int,hitOx:Float,hitOy:Float,hitWidth:Float,hitHeight:Float)
			Local d:Tright = New Tright
			d.x = x
			d.y = y
			d.hitBox.offx = hitOx
			d.hitBox.offy = hitOy
			d.hitBox.width = hitOx+hitWidth
			d.hitBox.height = hitOy+hitHeight
			d.speedx = speed
			d.moveR = Tsprite.create(image,move,delay,6,0)
			Return d
		End Function
		
		Method update:Void(dx:Float)
			x += speedx - dx*3.0
			If x > 640
				reset()
			Endif
			moveR.update()			
		End Method
		
		Method reset:Void()
			x = -300
			speedx = 2.0+Rnd(1.0,4.0)
		End Method
		
		Method display:Void(scale:Float=1.0)
			moveR.display(x,y,scale)
			SetColor 255,255,255
			If showBox
				hitBox.draw(x,y)
			Endif
		End Method
		
	End Class 

	Class ThitBox
		Field offx:Float
		Field offy:Float
		Field width:Float
		Field height:Float
		
		Method draw:Void(x:Float,y:Float)
			DrawLine(x+offx,y+offy,x+width,y+offy)
			DrawLine(x+width,y+offy,x+width,y+height)
			DrawLine(x+width,y+height,x+offx,y+height)
			DrawLine(x+offx,y+height,x+offx,y+offy)
		End Method

	End Class

    Class Tplayer

		Field x:Float
		Field y:Float
		Field fixedx:Float
		Field fixedy:Float
		Field posy:Float
		Field speedy:Float
		Field jump:Int
		Field punch:Int
		
		Field hitBox:ThitBox
		
		Field boxWalking:ThitBox
		Field boxDucking:ThitBox
		Field boxJumping:ThitBox
		
		Field walkL:Tsprite
		Field walkR:Tsprite
		Field turnL:Tsprite
		Field turnR:Tsprite
		Field standL:Tsprite
		Field standR:Tsprite
		Field punchRO:Tsprite
		Field punchRI:Tsprite
		Field punchLO:Tsprite
		Field punchLI:Tsprite
		Field punchR:Tsprite
		Field punchL:Tsprite
		Field crouchDR:Tsprite
		Field crouchUR:Tsprite
		Field crouchDL:Tsprite
		Field crouchUL:Tsprite
		Field knealedL:Tsprite
		Field knealedR:Tsprite
		Field knealPunchRO:Tsprite
		Field knealPunchRI:Tsprite
		Field knealPunchLO:Tsprite
		Field knealPunchLI:Tsprite
		Field knealPunchR:Tsprite
		Field knealPunchL:Tsprite
		Field jumpR:Tsprite
		Field jumpL:Tsprite		
		Field animation:Tsprite

		Const MOVEL:Int = -1
		Const MOVER:Int =  1
		Const MOVED:Int =  1
		Const MOVEJ:Int = -1
		
		Method New()
			boxWalking = New ThitBox
			boxDucking = New ThitBox
			boxJumping = New ThitBox
		End Method
        
		Function create:Tplayer(x:Float,y:Float)
			Local p:Tplayer = New Tplayer
			p.x = x
			p.y = y
			p.fixedx = x
			p.fixedy = y
			p.posy = y
			p.speedy = 0
			p.jump = 0
			
			p.boxWalking.offx = 33
			p.boxWalking.offy = 16
			p.boxWalking.width = 20+33
			p.boxWalking.height = 54+16
			
			p.boxDucking.offx = 33
			p.boxDucking.offy = 30
			p.boxDucking.width = 20+33
			p.boxDucking.height = 40+30
			
			p.boxJumping.offx = 35
			p.boxJumping.offy = 22
			p.boxJumping.width = 20+35
			p.boxJumping.height = 48+22
			
			p.hitBox = p.boxWalking
			
			p.walkL = Tsprite.create(beastImg,walkLeft,100,6,0)
			p.walkR = Tsprite.create(beastImg,walkRight,100,6,0)
			p.turnL = Tsprite.create(beastImg,turnLeft,50,4,0)
			p.turnR = Tsprite.create(beastImg,turnRight,50,4,0)
			p.standL = Tsprite.create(beastImg,framed,100,1,1)
			p.standR = Tsprite.create(beastImg,framed,100,1,0)
			p.punchRO = Tsprite.create(beastImg,punchRightOut,50,3,0)
			p.punchRI = Tsprite.create(beastImg,punchRightIn,50,2,0)
			p.punchLO = Tsprite.create(beastImg,punchLeftOut,50,3,0)
			p.punchLI = Tsprite.create(beastImg,punchLeftIn,50,2,0)
			p.punchR = Tsprite.create(beastImg,punchRight,50,1,0)
			p.punchL = Tsprite.create(beastImg,punchLeft,50,1,0)
			p.crouchDR = Tsprite.create(beastImg,crouchRightDown,50,2,0)
			p.crouchUR = Tsprite.create(beastImg,crouchRightUp,50,2,0)
			p.crouchDL = Tsprite.create(beastImg,crouchLeftDown,50,2,0)
			p.crouchUL = Tsprite.create(beastImg,crouchLeftUp,50,2,0)
			p.knealedL = Tsprite.create(beastImg,framed,50,1,3)
			p.knealedR = Tsprite.create(beastImg,framed,50,1,2)
			p.knealPunchRO = Tsprite.create(beastImg,nealRightPunchOut,50,2,0)
			p.knealPunchRI = Tsprite.create(beastImg,nealRightPunchIn,50,2,0)
			p.knealPunchLO = Tsprite.create(beastImg,nealLeftPunchOut,50,2,0)
			p.knealPunchLI = Tsprite.create(beastImg,nealLeftPunchIn,50,2,0)
			p.knealPunchR = Tsprite.create(beastImg,framed,50,1,6)
			p.knealPunchL = Tsprite.create(beastImg,framed,50,1,7)
			p.jumpR = Tsprite.create(beastImg,framed,50,1,4)
			p.jumpL = Tsprite.create(beastImg,framed,51,1,5)		
			p.animation = p.standR
			Return p
		End Function
		
		Method reset:Void()
			animation = standR
			x = fixedx
			y = fixedy
			speedy = 0
		End Method
				
		Method update:Float(dirx:Float,diry:Float,action:Float)
		    Select animation
				Case standL
				    If action
				        animation = punchLO
				        animation.reset()
				        punch = True
				        dirx = 0
					Elseif (diry = MOVED)
						animation = crouchDL
						animation.reset()
						dirx = 0
					Elseif (diry = MOVEJ)
						animation = jumpL
						hitBox = boxJumping
						animation.reset()
						jump = True
						speedy = 1.0
					Elseif(dirx = MOVER)
						animation = turnR
						animation.reset()
						dirx = 0
					Else If(dirx = MOVEL)
						animation = walkL
						animation.reset()
					Endif
				Case standR
					If (action)
						animation = punchRO
						animation.reset()
						punch = True
						dirx = 0
					Elseif (diry = MOVED)
						animation = crouchDR
						animation.reset()
						dirx = 0
					Elseif (diry = MOVEJ)
						animation = jumpR
						hitBox = boxJumping
						animation.reset()
						jump = True
						speedy = 1.0
					Elseif (dirx = MOVEL)
						animation = turnL
						dirx = 0
					Else If (dirx = MOVER)
						animation = walkR
						animation.reset()
					Endif
				Case turnL
					If (animation.update())
						If (dirx = MOVER)
							animation = turnR
							animation.reset()
							dirx = 0
						Elseif (dirx = MOVEL)
							animation = walkL
							animation.reset()
						Else
							animation = standL
						Endif
					Else
						dirx = 0
					Endif
				Case turnR
					If animation.update()
						If (dirx = MOVEL)
							animation = turnL
							animation.reset()
							dirx = 0
						Elseif (dirx = MOVER)
							animation = walkR
							animation.reset()
						Else
							animation = standR
						Endif
					Else
						dirx = 0
					Endif
				Case walkL
					If action
						animation = punchLO
						animation.reset()
						punch = True
						dirx = 0
					Elseif (diry = MOVED)
						animation = crouchDL
						animation.reset()
						dirx = 0
					Elseif (diry = MOVEJ)
						animation = jumpL
						hitBox = boxJumping
						animation.reset()
						jump = True
						speedy = 1.0
					Elseif (dirx = MOVER)
						animation = turnR
						animation.reset()
						dirx = 0
					Elseif (dirx = MOVEL)
						animation.update()
					Else
						animation = standL
					Endif
				Case walkR
					If action
						animation = punchRO
						animation.reset()
						punch = True
						dirx = 0
					Elseif diry = MOVED
						animation = crouchDR
						animation.reset()
						dirx = 0
					Else If (diry = MOVEJ)
						animation = jumpR
						hitBox = boxJumping
						animation.reset()
						jump = True
						speedy = 1.0
					Else If (dirx = MOVEL)
						animation = turnL
						animation.reset()
						dirx = 0
					Else If (dirx = MOVER)
						animation.update()
					Else
						animation = standR
					Endif
				Case punchRO
					If (animation.update())
						animation = punchR
						animation.reset()
					Endif
					dirx = 0
					
				Case punchLO
					If (animation.update())
						animation = punchL
						animation.reset()
					Endif
					dirx = 0
					
				Case punchR
					If (action = 0)
						animation = punchRI
						animation.reset()
						If (punch)
							'test collision here
							punch = False
						Endif
					Endif
					dirx = 0
					
				Case punchL
					If (action = 0)
						animation = punchLI
						animation.reset()
						If (punch)
							'test collision here
							punch = False
						Endif 
					Endif
					dirx = 0
				Case punchRI
					If animation.update()
						If (action)
							animation = punchRO
							animation.reset()
							dirx = 0
						Else If (dirx = MOVEL)
							animation = turnL
							animation.reset()
							dirx = 0
						Else If (dirx = MOVER)
							animation = walkR
							animation.reset()
						Else
							animation = standR
						Endif
					Else
						dirx = 0
					Endif
				Case punchLI
					If animation.update()
						If (action)
							animation = punchLO
							animation.reset()
							dirx = 0
						Else If (dirx = MOVER)
							animation = turnR
							animation.reset()
							dirx = 0
						Else If (dirx = MOVEL)
							animation = walkL
							animation.reset()
						Else
							animation = standL
						Endif
					Else
						dirx = 0
					Endif
				Case crouchDR
					If animation.update()
						animation = knealedR
						hitBox = boxDucking
						animation.reset()
					Endif
					dirx = 0
				Case crouchDL
					If (animation.update())
						animation = knealedL
						hitBox = boxDucking
						animation.reset()
					Endif
					dirx = 0
				Case knealedR
					If action
						animation = knealPunchRO
						animation.reset()
						punch = True
					
					Else If (diry <> MOVED)
						animation = crouchUR
						animation.reset()
					Endif
					dirx = 0
				Case knealedL
					If (action)
						animation = knealPunchLO
						animation.reset()
					Elseif (diry <> MOVED)
						animation = crouchUL 
						animation.reset()
					Endif
					dirx = 0
				Case crouchUR
					If animation.update()
						animation = standR
						hitBox = boxWalking
						animation.reset()
					Endif
					dirx = 0
					
				Case crouchUL
					If animation.update()
						animation = standL
						hitBox = boxWalking
						animation.reset()
					Endif
					dirx = 0
					
				Case knealPunchRO
					If animation.update()
						animation = knealPunchR
						animation.reset()
					Endif
					dirx = 0
					
				Case knealPunchLO
					If animation.update() 
						animation = knealPunchL
						animation.reset()
					Endif
					dirx = 0
					
				Case knealPunchR
					If (action)
						If (punch) 
							'process collision
							punch = False
						Endif
					Else
						animation = knealPunchRI
						animation.reset()
					Endif
					dirx = 0
				Case knealPunchL
					If (Not action)
						If (punch)
							'process fist collision goes here
							punch = False
						Endif
						animation = knealPunchLI
						animation.reset()
					Endif
					dirx = 0
				Case knealPunchRI
					If animation.update()
						animation = knealedR
						animation.reset()
					Endif
					dirx = 0
				Case knealPunchLI
					If (animation.update())
						animation = knealedL
						animation.reset()
					Endif
					dirx = 0
				Case jumpL
					If (jump)
						If (diry = MOVEJ)
							speedy += 1.5
							If (speedy > 9)
								speedy = 9
								jump = False
							Endif
						Else
							jump = False
						Endif
					Else
						speedy -= 0.6
					Endif
					y -= speedy
					If (y>posy)
						If (dirx = MOVEL)
							animation = walkL
							hitBox = boxWalking
							animation.reset()
						Else If (dirx = MOVER)
							animation = walkR
							animation.reset()
						Else
							animation = standL
							hitBox = boxWalking
							animation.reset()
						Endif
						speedy = 0
						y = posy
					Elseif (dirx = MOVER)
						animation = jumpR
						animation.reset()
					Endif	
				Case jumpR
					If (jump)
						If (diry = MOVEJ)
							speedy += 1.5
							If (speedy>9) 
								speedy = 9
								jump = False
							Endif
						Else
							jump = False
						Endif
					Else
						speedy -= 0.6
					Endif
					y -= speedy
					If (y >= posy)
						If (dirx = MOVER)
							animation = walkR
							hitBox = boxWalking
							animation.reset()
						Else If (dirx = MOVEL)
							animation = walkL
							animation.reset()
						Else
							animation = standR
							hitBox = boxWalking
							animation.reset()
						Endif
						speedy = 0
						y = posy
					Else If (dirx = MOVEL)
						animation = jumpL
						hitBox = boxJumping
						animation.reset()
					Endif
					
			End Select
			Return dirx
		End Method
		
		Method display:Void()
			animation.display(x,y)
			SetColor 255,255,255
			If showBox
				hitBox.draw(x,y)
			Endif
		End Method
	End Class
	
	Class TileRow
		Field x:Float
		Field y:Float
		Field vw:Float
		Field vh:Float
		Field width:Float
		Field speed:Float
		Field image:Image
		
		Function create:TileRow(x:Float,y:Float,speed:Float,image:Image)
			Local t:TileRow = New TileRow
			t.x = x
			t.y = y
			t.vw = 640
			t.vh = 480
			t.width = image.Width()
			t.speed = speed
			t.image = image
			Return t
		End Function
			
		Method update:Void(dirx:Float)
			x = (x+speed*dirx) Mod width
		End Method
	
		Method display:Void()
			TileImageAcross(image,x,y,width)
		End Method
	End Class

	Class TbackGround 
		Function create:TbackGround()
			Local b:TbackGround = New TbackGround		
			list.AddLast(TileRow.create(0,0,0.0,background1))
			list.AddLast(TileRow.create(0,200,-1.5,background2))
			list.AddLast(TileRow.create(0,420,-2.0,background3))
			list.AddLast(TileRow.create(0,430,-3.0,background4))
			list.AddLast(TileRow.create(0,450,-5.0,background5))
			list.AddLast(TileRow.create(0,140,-1.0,cloud4))
			list.AddLast(TileRow.create(0,100,-2.0,cloud3))
			list.AddLast(TileRow.create(0, 60,-3.0,cloud2))
			list.AddLast(TileRow.create(0,  0,-4.0,clouds1))
			list.AddLast(TileRow.create(200,180,-3,tree))
			list.AddLast(TileRow.create(0,440,-6.0,background6))
			Return b
		End Function
		
		Method update:Void(dirx:Float)
			For Local row:TileRow = Eachin list
				row.update(dirx)
			Next
		End Method
	End Class
	
	Class Game Extends App
		Field background:TbackGround
		Field lastItem:TileRow
    		Field player:Tplayer
		Field dog:Tleft
		Field fly:Tleft
		Field bee:Tleft
		Field cat:Tright
		Field tera:Tleft
		Field snake:Tleft
		
		Field bombList:List <Tbomb>
		Field enemyList:List <Tentity>
		Field impactList:List <Timpact>
		
		Field impactStore:TimpactStore
		Field bombStore:TbombStore
		
		Field hitCount:Int
		Field lifeGage:TlifeGage
		Field enquire:Tenquire
		Field firstGame:Int
		Field playing:Int
		Field counter:Int
		Field secs:Int
		Field impactImg:Image

		Method OnUpdate:Int()
			Local dirx:Float
			Local diry:Float
			Local action:Float
			
			If playing = False
				enquire.update()
				If enquire.activated() = True
					If firstGame = True
						firstGame = False
						enquire.text = "Game Over, Play again?"
						enquire.tx = 30
						counter = Millisecs()
					Else
						enquire.update()
						lifeGage.life = 5
						reset()
						player.reset()
					Endif
					playing = True
				Endif
			Else
				dirx = KeyDown(KEY_RIGHT) - KeyDown(KEY_LEFT)
				diry = KeyDown(KEY_DOWN) - KeyDown(KEY_UP)
				action = KeyDown(KEY_Z)
				dirx = player.update(dirx,diry,action)
			    
				For Local e:Tentity = Eachin enemyList
					e.update(dirx)
					If collided(player.x,player.y,player.hitBox,e.x,e.y,e.hitBox)
						e.x = 800
						hitCount += 1
						lifeGage.decrease(1)
					Endif
				Next
				
				For Local i:Timpact = Eachin impactList
					If i.update(dirx) = True
						impactList.Remove(i)
					Endif
				Next
				
				For Local b:Tbomb = Eachin bombList
					If collided(player.x,player.y,player.hitBox,b.x,b.y,b.hitBox)
						hitCount += 1
						lifeGage.decrease(1)
						bombList.Remove(b)
						bombStore.replace(b)
					Elseif b.update(dirx) = False
						bombList.Remove(b)
						bombStore.replace(b)
						Local i:Timpact = impactStore.get()
						i.init(b.x-20,b.y-20)
						impactList.AddLast(i)
						PlaySound(expSound)
					Endif
				Next
				
				Local n:Int = Int(Rnd(0,30))
				If n = 15
					Local b:Tbomb = bombStore.get()
					b.init(tera.x+16,tera.y+16,8.0)
					bombList.AddLast(b)
					PlaySound(bopSound)
				Endif
			Endif
		    background.update(dirx)
			If lifeGage.life = 0
				playing = False
			Endif
			Return True
		End Method
		
		Method reset:Void()
			For Local e:Tentity = Eachin enemyList
				e.reset()
			Next
			For Local b:Tbomb = Eachin bombList
				bombList.Remove(b)
				bombStore.replace(b)
			Next
			For Local i:Timpact = Eachin impactList
				impactList.Remove(i)
				impactStore.replace(i)
			Next
			counter = Millisecs()
		End Method
		
		Method OnRender:Int()
			
			For Local item:TileRow = Eachin list
				If(item = lastItem)
				
					If playing = False
						enquire.display()
					Else
						player.display()
						For Local e:Tentity = Eachin enemyList
							e.display()
						Next
						For Local b:Tbomb = Eachin bombList
							b.display()
						Next
						For Local i:Timpact = Eachin impactList
							i.display()
						Next
						secs = (Millisecs() - counter)/1000
					Endif
					DrawText("seconds:"+secs,480,30)
				
				Endif
				item.display()
			Next
			
			DrawText("FPS: " + fps+",  Controlls: x,Arrows", 5, 5)
			DrawText("Life",480,5)
			lifeGage.display()
			time = Millisecs()
			fpsTemp += 1
			If(time > lastTime + 1000)
				fps			= fpsTemp
				fpsTemp		= 0
				lastTime	= time
			Endif
			Return True
		End Method
   	    
		Method OnCreate:Int()
			list = New List <TileRow>
			bombList = New List <Tbomb>
			enemyList = New List <Tentity>
			impactList = New List <Timpact>
			hitCount = 0
			
			beastImg = LoadImage("sobsprite.png",78)
			background1 = LoadImage("sky.png")
			background2 = LoadImage("mountains.png")
			background3 = LoadImage("soil1.png")
			background4 = LoadImage("soil2.png")
			background5 = LoadImage("soil3.png")
			background6 = LoadImage("barrier.png")
			clouds1 = LoadImage("cloud1.png")
			cloud2 = LoadImage("cloud2.png")
			cloud3 = LoadImage("cloud3.png")
			cloud4 = LoadImage("cloud4.png")
			tree = LoadImage("scrolltree.png")
			dogImg = LoadImage("runingdog.png",6)
			catImg = LoadImage("cat.png",6)
			teraImg = LoadImage("tera.png",6)
			beeImg = LoadImage("bee.png",6)
			bombImg = LoadImage("bomb.png")
			impactImg = LoadImage("impact.png",6)
			SetFont(LoadImage("burnt.png",12,16,96))
			
			bopSound = LoadSound("explode.mp3")
			expSound = LoadSound("don.mp3")
			
			background = TbackGround.create()
			
			For Local thisItem:TileRow = Eachin list
				lastItem= thisItem
			Next

			player = Tplayer.create(300,360)
			
			dog = Tleft.create(dogImg,itMoving,640,413,3,100,6,10,15,12)
			cat = Tright.create(catImg,itMoving,640,412,3,100,10,5,30,16)
			tera = Tleft.create(teraImg,itMoving,640,150,2,100,10,15,40,15)
			bee = Tleft.create(beeImg,itMoving,740,350,3.5,25,8,17,23,11)
			enemyList.AddLast(dog)
			enemyList.AddLast(cat)
			enemyList.AddLast(tera)
			enemyList.AddLast(bee)
			
			impactStore = TimpactStore.create(impactImg,itMoving,50,6,0)
			impactStore.fill(10)
			
			bombStore = TbombStore.create(bombImg)
			bombStore.fill(10)
			
			lifeGage = TlifeGage.create(530,5,16,5)
			SetUpdateRate(30)
			enquire = Tenquire.create(150,150,"Play Game?")
			firstGame = True
			playing = False
			Return True
		
		End Method
		
End Class