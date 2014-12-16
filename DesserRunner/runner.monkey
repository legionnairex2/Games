
'Parallax Scrolling Demo
'Author Jesus Perez
Strict

Import mojo

Function Main:Int()
	New Game
	Return True
End Function

Global list:List <TileRow>
Global bombStore:List <Bomb>

Global background:Image
Global background1:Image
Global background2:Image
Global background3:Image
Global background4:Image
Global background5:Image
Global background7:Image
    
Global clouds1:Image
Global cloud2:Image
Global cloud3:Image
Global cloud4:Image
       
Global beastImg:Image
Global dogImg:Image
Global beeImg:Image
Global catImg:Image
Global teraImg:Image
Global flyImg:Image
Global bombImg:Image
Global snakeImg:Image
    
Global showBox:Int = False

Global bopSound:Sound
Global expSound:Sound
Global tuneSound:Sound
Global ouchSound:Sound
Global channel:int
        
Global walkRight:Int[] =[0,6]
Global crouchRightDown:Int[] = [6,2]
Global crouchRightUp:Int[] = [7,2]
Global framed:Int[] = [9,3]

Global itMoving:Int[] = [0,6]
Global itMove2:Int[] = [0,7]
  
Global fps:Int
Global fpsTemp:Int
Global lastTime:Int
Global time:Int

Function collided:Int (x1:Float,y1:Float,box1:HitBox,x2:Float,y2:Float,box2:HitBox)
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

Class Color
	Field red:Int
	Field green:Int
	Field blue:Int
	
	Method New(red:Int,green:Int,blue:Int)
		Self.red = red
		Self.green = green
		Self.blue = blue
	End Method
	
	Method set:Void()
		SetColor(red,green,blue)
	End Method
End Class

Class Button
	Field x:Int
	Field y:Int
	Field tx:Int
	Field ty:Int
	Field text:String
	Field width:Int
	Field height:Int
	Field freeColor:Color
	Field overColor:Color
	Field selectedColor:Color
	Field currentColor:Color
	
	Method New(x:Int,y:Int,width:Int,height:Int,text:String,tx:Int,ty:Int)
		Self.x = x
		Self.y = y
		Self.width = width
		Self.height = height
		Self.text = text
		Self.tx = tx
		Self.ty = ty
		freeColor = New Color(50,50,150)
		overColor = New Color(50,150,150)
		selectedColor =  New Color(150,50,50)
		currentColor = freeColor
	End Method
	
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

Class Enquire

	Field x:Int
	Field y:Int
	Field width:Int
	Field height:Int
	Field text:String
	Field tx:Int
	Field ty:Int
	Field color:Color
	Field yesBtn:Button
	Field active:Int
	
	Method New(x:Int,y:Int,text:String)
		Self.x = x
		Self.y = y
		Self.width = 300
		Self.height = 120
		Self.tx = 90
		Self.ty = 10
		Self.text = text
		Self.color = New Color(100,200,100)
		self.yesBtn = New Button(x+100,y+30,80,40,"Yes",25,13)
	End method
	
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
		SetColor 255,255,255
	End Method
	
End Class


Class Notify

	Field x:Int
	Field y:Int
	Field width:Int
	Field height:Int
	Field text:String
	Field tx:Int
	Field ty:Int
	Field color:Color
	Field active:Int
	
	Method New(x:Int,y:Int,text:String,tx:Int,ty:Int,width:Int,height:Int,red:Int,green:Int,blue:int)
		Self.x = x
		Self.y = y
		Self.width = width
		Self.height = height
		Self.tx = tx
		Self.ty = ty
		Self.text = text
		Self.color = New Color(red,green,blue)
	End Method
	
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
		SetColor 255,255,255
		DrawLine(x,y,x+width,y)
		DrawLine(x,y,x,y+height)
		SetColor 0,0,0
		DrawLine(x,y+height,x+width,y+height)
		DrawLine(x+width,y,x+width,y+height)
		DrawText text,x+tx,y+ty
		DrawText "Dessert Runner",x+170,y+60
		DrawText "Press SPACE To Jump Over Obstacles",x+40,y+210
		DrawText "               Music",x+10,y+235
		DrawText "Movement Proposition - By Kevin MacLeod",x+10,y+260
		DrawText "          incompetech.com",x+10,y+280
		SetAlpha(1.0)
		SetColor 255,255,255
	End Method
	
End Class

Class LifeGage
	Field x:Int
	Field y:Int
	Field life:Int
	Field width:Int
	Field height:Int
	Field rate:Int
	
	Method New(x:Int,y:Int,height:Int,life:Int)
		Self.x = x
		Self.y = y
		Self.rate = 20
		Self.height = height
		Self.width = life * self.rate
		Self.life = life
	End Method
	
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
    
Class Bomb
	Field x:Float
	Field y:Float
	Field speedy:Float
	Field image:Image
	
	Field HitBox:HitBox
	
	Method New(image:Image,x:Float,y:Float,speed:Float)
		Self.x = x
		Self.y = y
		Self.HitBox = New HitBox
		Self.HitBox.offx = 3
		Self.HitBox.offy = 3
		Self.HitBox.width = 14
		Self.HitBox.height = 14
		Self.speedy = speed
		self.image = image
	End Method
	
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
				HitBox.draw(x,y)
			Endif
		Endif
	End Method
End Class

Class BombStore
	Field list:List<Bomb>
	Field image:Image
	Field x:Float
	Field y:Float
	Field speed:Float
	
	Function create:BombStore(image:Image)
		Local b:BombStore = New BombStore
		b.list = New List<Bomb>
		b.image = image
		b.x = 0
		b.y = 0
		b.speed = 0
		b.fill(10)
		Return b
	End Function
	
	Method fill:Void(total:Int)
		For Local i:Int = 0 Until total
			list.AddLast(New Bomb(image,x,y,speed))
		Next
	End Method
	
	Method get:Bomb()
		If Not list.IsEmpty()
			Return list.RemoveLast()
		Endif
		Return New Bomb(image,x,y,speed)
		
	End Method
	
	Method replace:Void(bomb:Bomb)
		list.AddLast(bomb)
	End Method
End Class

Class Impact
	Field x:Float
	Field y:Float
	Field animation:Sprite
	
	Method New(x:Float,y:Float,image:Image,spr:Int[],wait:Float,count:Float,frame:Float)
		Self.x = x
		Self.y = y
		Self.animation = New Sprite(image,spr,wait,count,frame)
	End method

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

Class ImpactStore
    Field list:List <Impact>
	Field image:Image
	Field spr:Int[]
	Field frame:Int
	Field rate:Int
	Field wait:Int
	Field count:Int
	Field x:Float
	Field y:Float
	
	Method New(image:Image,spr:Int[],wait:Float,count:Float,frame:Float)
		Self.list = New List <Impact>
		Self.image = image
		Self.spr = spr
		Self.wait = wait
		Self.count = count
		Self.frame = frame
		Self.x = 0
		Self.y = 0
	End method
	
	Method fill:Void(total:Int)
		For Local i:Int = 0 Until total
			list.AddLast(New Impact(x,y,image,spr,wait,count,frame))
		Next
	End Method
	
	Method get:Impact()
		If Not list.IsEmpty()
			Return list.RemoveLast()
		Endif
		Return New Impact(x,y,image,spr,wait,count,frame)
	End Method
	
	Method replace:Void(impact:Impact)
		list.AddLast(impact)
	End Method
End Class

Class Sprite
	Field name:string
	Field spr:Int[]
	Field wait:Int
	Field frame:Int
	Field count:Int
	Field rate:Int
	Field image:Image
	
    Method New(image:Image,spr:Int[],wait:Float,count:Float,frame:Float)
		Self.spr = spr
		Self.wait = wait
		Self.frame = frame
		Self.count = count
		Self.rate = Millisecs()+wait
		Self.image = image
	End Method
	
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
    
Class Entity
	Field x:Float
	Field y:Float
	Field speedx:Float
	Field seq:Int[]
	
	Field HitBox:HitBox
	
	Method New()
		HitBox = New HitBox
	End Method
	
	Method update:Void(dx:Float) Abstract
	Method display:Void(scale:Float = 1.0) Abstract
	Method reset:Void() Abstract
	
End Class

Class Tleft Extends Entity
	
	Field moveL:Sprite
	
	Function create:Tleft(image:Image,move:Int[],x:Float,y:Float,speed:Float,delay:Int,hitOx:Float,hitOy:Float,hitWidth:Float,hitHeight:Float)
		Local d:Tleft = New Tleft
		d.x = x
		d.y = y
		d.HitBox.offx = hitOx
		d.HitBox.offy = hitOy
		d.HitBox.width = hitOx+hitWidth
		d.HitBox.height = hitOy+hitHeight
		d.speedx = speed
		d.moveL = New Sprite(image,move,delay,6,0)
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
			HitBox.draw(x,y)
		Endif
	End Method
		
End Class 

Class Tright Extends Entity
	
	Field moveR:Sprite
	
	Function create:Tright(image:Image,move:Int[],x:Float,y:Float,speed:Float,delay:Int,hitOx:Float,hitOy:Float,hitWidth:Float,hitHeight:Float)
		Local d:Tright = New Tright
		d.x = x
		d.y = y
		d.HitBox.offx = hitOx
		d.HitBox.offy = hitOy
		d.HitBox.width = hitOx+hitWidth
		d.HitBox.height = hitOy+hitHeight
		d.speedx = speed
		d.moveR = New Sprite(image,move,delay,6,0)
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
			HitBox.draw(x,y)
		Endif
	End Method
	
End Class 

Class HitBox
	Field offx:Float
	Field offy:Float
	Field width:Float
	Field height:Float
	
	Method New(offx:Float,offy:Float,width:Float,height:Float)
		Self.offx = offx
		Self.offy = offy
		Self.width = width
		Self.height = height
	End Method
	
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
	
	Field HitBox:HitBox
	
	Field boxWalking:HitBox
	Field boxDucking:HitBox
	Field boxJumping:HitBox
	
	Field walkR:Sprite
	Field standR:Sprite
	Field crouchDR:Sprite
	Field crouchUR:Sprite
	Field knealedR:Sprite
	Field jumpR:Sprite
	Field animation:Sprite

	Const MOVEL:Int = -1
	Const MOVER:Int =  1
	Const MOVED:Int =  1
	Const MOVEJ:Int = -1
	
	Method New()
		boxWalking = New HitBox
		boxDucking = New HitBox
		boxJumping = New HitBox
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
		
		p.HitBox = p.boxWalking
		
		p.walkR = New Sprite(beastImg,walkRight,75,6,0)
		p.walkR.name = "walkR"
		p.standR = New Sprite(beastImg,framed,75,1,0)
		p.standR.name = "StandR"
		p.crouchDR = New Sprite(beastImg,crouchRightDown,50,2,0)
		p.crouchDR.name = "crouchDR"
		p.crouchUR = New Sprite(beastImg,crouchRightUp,50,2,0)
		p.crouchUR.name = "crouchUR"
		p.knealedR = New Sprite(beastImg,framed,50,1,1)
		p.knealedR.name = "knealedR"
		p.jumpR = New Sprite(beastImg,framed,50,1,2)
		p.jumpR.name = "jumpR"
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
			Case standR
				if (diry = MOVED)
					animation = crouchDR
					animation.reset()
					dirx = 0
				Elseif (diry = MOVEJ)
					animation = jumpR
					HitBox = boxJumping
					animation.reset()
					jump = True
					speedy = 1.0
				Elseif (dirx = MOVER)
					animation = walkR
					animation.reset()
				Endif
			Case walkR
				if diry = MOVED
					animation = crouchDR
					animation.reset()
					dirx = 0
				Else If (diry = MOVEJ)
					animation = jumpR
					HitBox = boxJumping
					animation.reset()
					jump = True
					speedy = 1.0
				ElseIf (dirx = MOVER)
					animation.update()
				Else
					animation = standR
				Endif
			Case crouchDR
				If animation.update()
					animation = knealedR
					HitBox = boxDucking
					animation.reset()
				Endif
				dirx = 0
			Case knealedR
				If (diry <> MOVED)
					animation = crouchUR
					animation.reset()
				Endif
				dirx = 0
			Case crouchUR
				If animation.update()
					animation = standR
					HitBox = boxWalking
					animation.reset()
				Endif
				dirx = 0
				
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
						HitBox = boxWalking
						animation.reset()
					Else
						animation = standR
						HitBox = boxWalking
						animation.reset()
					Endif
					speedy = 0
					y = posy
				Endif
				
		End Select
		Return dirx
	End Method
	
	Method display:Void()
		animation.display(x,y)
		SetColor 255,255,255
		If showBox
			HitBox.draw(x,y)
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
	
	Method New(x:Float,y:Float,speed:Float,image:Image)
		Self.x = x
		Self.y = y
		Self.vw = 640
		Self.vh = 480
		Self.width = image.Width()
		Self.speed = speed
		Self.image = image
	End method
		
	Method update:Void(dirx:Float)
		x = (x+speed*dirx) Mod width
	End Method

	Method display:Void()
		TileImageAcross(image,x,y,width)
	End Method
End Class

Class BackGround 
	Method New()
		list.AddLast(New TileRow(0,0,0.0,background1))
		list.AddLast(New TileRow(0,200,-2.0,background7))
		list.AddLast(New TileRow(0,200,-3.0,background2))
		list.AddLast(New TileRow(0,420,-4.0,background3))
		list.AddLast(New TileRow(0,430,-6.0,background4))
		list.AddLast(New TileRow(0,450,-10.0,background5))
		list.AddLast(New TileRow(0,140,-2.0,cloud4))
		list.AddLast(New TileRow(0,100,-4.0,cloud3))
		list.AddLast(New TileRow(0, 60,-6.0,cloud2))
		list.AddLast(New TileRow(0,  0,-8.0,clouds1))
	End Method
	
	Method update:Void(dirx:Float)
		For Local row:TileRow = Eachin list
			row.update(dirx)
		Next
	End Method
End Class

Class Game Extends App
	Field background:BackGround
	Field lastItem:TileRow
    	Field player:Tplayer
	Field dog:Tleft
	Field fly:Tleft
	Field bee:Tleft
	Field cat:Tright
	Field tera:Tleft
	Field snake:Tleft
	
	Field bombList:List <Bomb>
	Field enemyList:List <Entity>
	Field impactList:List <Impact>
	
	Field impactStore:ImpactStore
	Field bombStore:BombStore
	
	Field hitCount:Int
	Field lifeGage:LifeGage
	Field enquire:Enquire
	Field firstGame:Int
	Field playing:Int
	Field counter:Int
	Field secs:float
	Field impactImg:Image
	Field mTime:Int
	Field delay:Int
	Field notify:Notify

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
				PlayMusic "proposition.mp3"
				playing = True
			Endif
		Else
			dirx = 1
			diry = -TouchDown()
			If diry dirx = 0
			dirx = player.update(dirx,diry,action)
		    
			For Local e:Entity = Eachin enemyList
				e.update(dirx)
				If collided(player.x,player.y,player.HitBox,e.x,e.y,e.HitBox)
					e.x = 800
					hitCount += 1
					PlaySound(ouchSound,channel)
					channel = (channel+1) Mod 15
					lifeGage.decrease(1)
				Endif
			Next
			
			For Local i:Impact = Eachin impactList
				If i.update(dirx) = True
					impactList.Remove(i)
				Endif
			Next
			
			For Local b:Bomb = Eachin bombList
				If collided(player.x,player.y,player.HitBox,b.x,b.y,b.HitBox)
					hitCount += 1
					lifeGage.decrease(1)
					bombList.Remove(b)
					bombStore.replace(b)
					Local i:Impact = impactStore.get()
					i.init(b.x-20,b.y-20)
					impactList.AddLast(i)
					PlaySound(expSound,channel)
					channel = (channel+1) Mod 15
					PlaySound(ouchSound,channel)
					channel = (channel+1) Mod 15
				Elseif b.update(dirx) = False
					bombList.Remove(b)
					bombStore.replace(b)
					Local i:Impact = impactStore.get()
					i.init(b.x-20,b.y-20)
					impactList.AddLast(i)
					PlaySound(expSound,channel)
					channel = (channel+1) Mod 15
				Endif
			Next
			If (mTime+delay)< Millisecs()
				Local n:Int = Int(Rnd(0,30))
				If n = 15
					Local b:Bomb = bombStore.get()
					b.init(tera.x+16,tera.y+16,8.0)
					bombList.AddLast(b)
					PlaySound(bopSound,channel)
					channel = (channel+1) Mod 15
					mTime = Millisecs()
				Endif
			Endif
		Endif
	    background.update(dirx)
		If lifeGage.life = 0
			StopMusic()
			playing = False
		Endif
		Return True
	End Method
	
	Method reset:Void()
		For Local e:Entity = Eachin enemyList
			e.reset()
		Next
		For Local b:Bomb = Eachin bombList
			bombList.Remove(b)
			bombStore.replace(b)
		Next
		For Local i:Impact = Eachin impactList
			impactList.Remove(i)
			impactStore.replace(i)
		Next
		counter = Millisecs()
	End Method
	
	Method OnRender:Int()
		
		For Local item:TileRow = Eachin list
			item.display()
			If(item = lastItem)
			
				If playing = False
					notify.display()
					enquire.display()
					If secs > 0
						DrawText("score "+Int(secs),240,215)
					Endif
				Else
					player.display()
					For Local e:Entity = Eachin enemyList
						e.display()
					Next
					For Local b:Bomb = Eachin bombList
						b.display()
					Next
					For Local i:Impact = Eachin impactList
						i.display()
					Next
					secs = (Millisecs() - counter)
				Endif
			
			Endif
		Next
		SetColor 0,255,0
		DrawText("seconds: "+Int(secs/1000),30,5)
		DrawText("Life",480,5)
		SetColor 255,255,255
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
		bombList = New List <Bomb>
		enemyList = New List <Entity>
		impactList = New List <Impact>
		hitCount = 0
		
		beastImg = LoadImage("sobsprite4.png",12)
		background1 = LoadImage("sky.png")
		background2 = LoadImage("mountains.png")
		background3 = LoadImage("soil1.png")
		background4 = LoadImage("soil2.png")
		background5 = LoadImage("soil3.png")
		background7 = LoadImage("mountains2.png")
		clouds1 = LoadImage("cloud1.png")
		cloud2 = LoadImage("cloud2.png")
		cloud3 = LoadImage("cloud3.png")
		cloud4 = LoadImage("cloud4.png")
		dogImg = LoadImage("runingdog.png",6)
		catImg = LoadImage("cat.png",6)
		teraImg = LoadImage("tera.png",6)
		beeImg = LoadImage("bee.png",6)
		bombImg = LoadImage("bomb.png")
		impactImg = LoadImage("impact.png",6)
		SetFont(LoadImage("burnt.png",12,16,96))
		
		bopSound = LoadSound("explode.mp3")
		expSound = LoadSound("don.mp3")
		ouchSound = LoadSound("ouch.mp3")
		
		
		background = New BackGround()
		
		For Local thisItem:TileRow = Eachin list
			lastItem= thisItem
		Next

		player = Tplayer.create(300,360)
		
		dog = Tleft.create(dogImg,itMoving,640,413,3,100,6,10,15,12)
		cat = Tright.create(catImg,itMoving,640,412,8,100,10,5,30,16)
		tera = Tleft.create(teraImg,itMoving,640,150,2,100,10,15,40,15)
		bee = Tleft.create(beeImg,itMoving,740,380,3.5,25,8,17,23,11)
		enemyList.AddLast(dog)
		enemyList.AddLast(cat)
		enemyList.AddLast(tera)
		enemyList.AddLast(bee)
		
		impactStore = New ImpactStore(impactImg,itMoving,50,6,0)
		impactStore.fill(10)
		
		bombStore = BombStore.create(bombImg)
		bombStore.fill(10)
		
		lifeGage = new LifeGage(530,5,16,5)
		SetUpdateRate(30)
		enquire = New Enquire(180,130,"Play Game?")
		notify = New Notify(90,50," Welcome To The Summer Games",50,20,500,300,80,200,180)
		firstGame = True
		playing = False
		mTime = Millisecs()
		delay = 200
		Return True
	
	End Method
	
End Class


