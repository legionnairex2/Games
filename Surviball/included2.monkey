'*********************************************************
'				Global Definitions
'*********************************************************
Import Mojo
Import rollball
' Last iteration's tick value
Global gLastTick:Int
' Level start tick
Global levelStartTick:Int

' Collectibles
Global CollectibleList:List<Collectible> = New List<Collectible>
Global trapDoorList:List<TtrapDoor> = New List<TtrapDoor>
Global voltList:List<Volt> = New List<Volt>

Global gTiles:Image
Global starsImg:Image
Global sparkHImg:Image
Global sparkVImg:Image
Global ballImg:Image
Global squishHImg:Image
Global squishVImg:Image
Global spikeImg:Image

Global fon:MyFont
Global ball:Ball
Global music:String[]
Global score:Score
Global totalScore


Global chimeSnd:Sound
Global failSnd:Sound
Global electricSnd:Sound
Global popSnd:Sound
Global electrichannel:Int
Global channel:Int

'*********************************************************
'					Constants
'*********************************************************

' Screen pitch
Const CAMERAWIDTH:Int = 640
' Screen height
Const CAMERAHEIGHT:Int = 480
' Tile size (width And height)
Const TILESIZE:Int = 32

' How many seconds does the player have To solve the level
Const TIMELIMIT:Int = 10

' Physics iterations per second
Const PHYSICSFPS:Int =  100

' TILE references

'empty tile
Const  LEVEL_DROP:Int 			= 0
'goals
Const  LEVEL_END:Int 			= 1
Const  LEVEL_START:Int 		= 2
'floor walls
Const  LEVEL_WALL:Int 			= 3
'floor type
Const  LEVEL_SMOOTH:Int 		= 7
Const  LEVEL_ROUGH:Int 		= 8
Const  LEVEL_GROUND:Int 		= 9
'moving floor
Const  LEVEL_UP:Int 			= 10
Const  LEVEL_RIGHT:Int 		= 14
Const  LEVEL_DOWN:Int 			= 18
Const  LEVEL_LEFT:Int 			= 22
'floor curve out
Const  LEVEL_left_top:Int 		= 34
Const  LEVEL_right_top:Int 		= 35
Const  LEVEL_left_bottom:Int 	= 36
Const  LEVEL_right_bottom:Int 	= 37
'floor curve in
Const  LEVEL_RIGHT_top:Int 		= 38
Const  LEVEL_LEFT_top:Int 		= 39
Const  LEVEL_RIGHT_bottom:Int 	= 40
Const  LEVEL_LEFT_bottom:Int 	= 41
' tesla tower
Const  LEVEL_TESLA:Int 		= 43
'corner walls
Const  LEVEL_RIGHT_BOTTOM:Int 	= 70 
Const  LEVEL_LEFT_BOTTOM:Int 	= 71
Const  LEVEL_RIGHT_TOP:Int 		= 72
Const  LEVEL_LEFT_TOP:Int 		= 73

Const  LEVEL_TRAP_DOOR:Int 		= 26
Const  LEVEL_COLLECTIBLE:Int 	= 80
Const  LEVEL_SPARKH:Int 		= 81
Const  LEVEL_SPARKV:Int 		= 82
Const  LEVEL_HSMASHER:Int		= 60
Const  LEVEL_VSMASHER:Int		= 64
Const  LEVEL_SPIKE:Int			= 88

' Tile collision directions
Const  COLLIDE_N:Int  			= $01
Const  COLLIDE_NW:Int 			= $02
Const  COLLIDE_W:Int  			= $04
Const  COLLIDE_SW:Int 			= $08
Const  COLLIDE_S:Int  			= $10
Const  COLLIDE_SE:Int 			= $20
Const  COLLIDE_E:Int  			= $40
Const  COLLIDE_NE:Int 			= $80

' Game states
Const  STATE_NONE:Int			= 0
Const  STATE_ENTRY:Int 		= 1
Const  STATE_READY:Int 		= 2
Const  STATE_INGAME:Int 		= 3
Const  STATE_FALLOFF:Int 		= 4
Const  STATE_EXPLODE:Int 		= 5
Const  STATE_ENDLEVEL:Int 		= 6

'*********************************************************
		'vertex copy
'*********************************************************

Function memcpy:List<Tvertex>(destList:List<Tvertex>, sourceList:List<Tvertex>)
		For Local source:Tvertex = Eachin sourceList 
			Local dest:Tvertex = New Tvertex
			dest.x =source.x
			dest.y =source.y
			dest.z =source.z
			destList.AddLast(dest)
		Next
		Return destList
End Function 

Class Vortex
	Field cyl:Point[][]
	     
	Field slicex:Int[][]
	Field slicey:Int[][]
	Field mnv:Float
	Field mn:Int 
	Field gadd:Float
	Field rings:Int

	Method New()
		rings = 26
		cyl = New Point[ 17][]
		slicex = New Int[17][]
		slicey = New Int[17][]
		For Local i:Int = 0 Until 17
			cyl[i] = New Point[rings]
			slicex[i] = New Int[rings]
			slicey[i] = New Int[rings]
		Next
		Local d1:Float[17], d2:Float[17]
		For Local i:Int = 0 Until 17
			d1[i] = Cos((360.0/16.0)*i)
			d2[i] = Sin((360.0/16.0)*i)
		Next
		
	    For Local i:Int =0 To 16
			 cyl[i][0] = New Point
			 cyl[i][0].x = d1[i] * 2500
			 cyl[i][0].y = d2[i] * 2500
		Next
		Local ps:Float = rings
		For Local M:Int = 0 Until rings
	        For Local L:Int=0 To 16
				If cyl[L][M] = Null cyl[L][M] = New Point
				cyl[L][M].z = ps 
				If M>0 Then	
					cyl[L][M].x = cyl[L][0].x
					cyl[L][M].y = cyl[L][0].y
				Endif
	        Next
	        ps = ps - 1
		Next
	End Method
	
	Method Update:Void()
		gadd=gadd + 0.15
		Local YO:Float,XO:Float
		Local hw:Int = CAMERAWIDTH/2
		Local hh:Int = CAMERAHEIGHT/2
		For Local k:Int=0 To rings-1
			XO=CAMERAWIDTH *(Cos((((k+gadd)-mnv)*90)/9))
			YO=CAMERAHEIGHT*(Sin((((k+gadd)-mnv)*90)/8))
			For Local j:Int=0 To 16
				slicex[j][k] = (cyl[j][k].x+XO) / (cyl[j][k].z+mnv) + hw
				slicey[j][k] = (cyl[j][k].y+YO) / (cyl[j][k].z+mnv) + hh            
			Next
		Next
		mnv=mnv - 0.20
		If mnv<0.0 Then mnv=mnv+4.0
	End Method
	
	Method Render:Void()
		Local MD:Int = 0
		For Local k:Int= 1 To (rings -2)
			For Local j:Int= 0 To 15 Step 2
				If MD=0 Then
					'blue
					DrawQuad(slicex[j  ][k], slicey[j  ][k], slicex[j  ][k+1], slicey[j  ][k+1], slicex[j+1][k+1], slicey[j+1][k+1], slicex[j+1][k  ], slicey[j+1][k  ], k*4.0, k, k*12.0)
					DrawQuad(slicex[j+1][k], slicey[j+1][k], slicex[j+1][k+1], slicey[j+1][k+1], slicex[j+2][k+1], slicey[j+2][k+1], slicex[j+2][k  ], slicey[j+2][k  ], k*8.0, k, k     )
				Else
					'red
					DrawQuad(slicex[j  ][k], slicey[j  ][k], slicex[j+1][  k], slicey[j+1][k  ], slicex[j+1][k+1], slicey[j+1][k+1], slicex[j  ][k+1], slicey[j  ][k+1], k,k,k*8.0)					
					DrawQuad(slicex[j+1][k], slicey[j+1][k], slicex[j+2][  k], slicey[j+2][k  ], slicex[j+2][k+1], slicey[j+2][k+1], slicex[j+1][k+1], slicey[j+1][k+1], k*12.0,k,k)
				End If
			Next
			MD=1-MD
		Next
	
	End Method
	
	Method DrawQuad:Void(x1:Int, y1:Int, x2:Int, y2:Int, x3:Int, y3:Int,x4:Int,y4:Int, r:Int, g:Int, b:Int)
	    Local p:Float[8]
		p[0] = x1
		p[1] = y1
		p[2] = x2
		p[3] = y2
		p[4] = x3
		p[5] = y3
		p[6] = x4
		p[7] = y4
		SetColor r,g,b
		DrawPoly p
	End Method
	
End Class
'*********************************************************
'			Vertext Structure
'			for ball dots
'*********************************************************

Class Tvertex
	
	Field x:Float
	Field y:Float
	Field z:Float
	
	Function Create:Tvertex(x:Float,y:Float,z:Float)
		Local v:Tvertex = New Tvertex
		v.x = x
		v.y = y
		v.z = z
		Local length:Float = Sqrt(v.x * v.x +v.y * v.y + v.z * v.z)
		'makes it aprox. 1 unit from center of ball
		If (length <> 0)
			v.x /= length
			v.y /= length
			v.z /= length
		Endif
		Return v
	End Function
	
End Class

Class Point
	Field x:Float
	Field y:Float
	Field z:Float
End Class
'******************************************************
'
'			graphics functions
'
'******************************************************

Function drawcircle(x:Int, y:Int, r:Int, c:Int)
	SetColor (c Shr 16) & $FF, (c Shr 8) & $FF, c & $FF	
	DrawOval x-r,y-r,r*2,r*2
End Function

'**********************************************************
'		particle object
'**********************************************************
Class Particle
	Field x:Float
	Field y:Float
	Field dx:Float
	Field dy:Float
	Field speed:Float
	Field image:Image
	Field index:Int
	Field alpha:Float
	Field link:list.Node<Particle>
	
	Method New(x:Float,y:Float,angle:Float,speed:Float,image:Image=Null,index:Int = 0)
		x = x
		y = y
		dx = Cos(angle)*speed
		dy = Sin(angle)*speed
		Self.image = image
		index = index
	End Method
	
	Method init(x:Float,y:Float,ang:Float,speed:Float,indx=-1)
		Self.x = x
		Self.y = y
		If indx > -1
			Self.index = indx
		Endif
		Self.dx = Cos(ang)*speed
		Self.dy = Sin(ang)*speed
		Self.alpha = 0.50
	End Method
	
	Method update:Int()
		x += dx
		y += dy
		alpha -= .05
		If alpha <= 0
			Return False
		Endif
		Return True
	End Method
	
	Method display()
		If image = Null
			SetAlpha alpha
			SetColor 0,0,255
			DrawLine(camera.x+x-3,camera.y+y,camera.x+x+3,camera.y+y)
			SetColor 255,255,0
			DrawLine(camera.x+x,camera.y+y-3,camera.x+x,camera.y+y+3)
			SetAlpha 1.0
		Else
			SetAlpha alpha
			DrawImage image,camera.x+x-16,camera.y+y-16,index
		Endif
	End Method

	Method display1()
		If image = Null
			SetColor 0,0,255
			DrawLine(camera.x+x-3,camera.y+y,camera.x+x+3,camera.y+y)
			SetColor 255,255,0
			DrawLine(camera.x+x,camera.y+y-3,camera.x+x,camera.y+y+3)
		Else
			DrawImage image,x-16,y-16,index
		Endif
	End Method
	
End Class


'**********************************************************
'		Particle Store
'**********************************************************

Class TpartStore
	Field list:List<Particle>
	Field image:Image
	Field x:Float
	Field y:Float
	Field speed:Float
	Field angle:Float
	
	Function create:TpartStore(image:Image)
		Local b:TpartStore = New TpartStore
		b.list = New List<Particle>
		b.image = image
		b.x = 0
		b.y = 0
		b.speed = 0
		b.angle = 0
		b.fill(100)
		Return b
	End Function
	
	Method fill:Void(total:Int)
		For Local i:Int = 0 Until total
			list.AddLast(New Particle(x,y,angle,speed,image))
		Next
	End Method
	
	Method get:Particle()
		If Not list.IsEmpty()
			Return list.RemoveLast()
		Endif
		Return New Particle(x,y,angle,speed,image)
	End Method
	
	Method replace:Void(particle:Particle)
		list.AddLast(particle)
	End Method
	
End Class

Class Explosion
		Field x:Float
		Field y:Float
		Field list:List<Particle>
		Field count:Int
		Field angle:Int
		Field stp:Int
		Field maxParticles:Int
		Field store:TpartStore
		Field delay:Int

		Method New()
			list = New List<Particle>
			count= 0
			maxParticles = 38
			stp = 15 ' rotation in degrees
			store = TpartStore.create(ballImg)
			delay = 20 ' millisecos
		End Method
		
		Method init(x:Int,y:Int)
			Self.x = x
			Self.y = y
			Local i = 0
			For Local px:Int = 0 Until 6
				For Local py:Int = 0 Until 6
					angle = Rnd(360.0)
					Local p:Particle = store.get()
					p.init(x+px*4,y+py*4,angle,Rnd(2,4),i)
					p.alpha = 1.0
					p.link = list.AddLast(p)
					i += 1
				Next
			Next
		End Method
		
		Method update:Int()
			For Local p:Particle = Eachin list
				If p.update() = False
					 p.link.Remove()
					 store.replace(p)
				Endif
			Next
			If list.IsEmpty()
				Return False
			Endif
			Return True
		End Method
		
		Method display:Void()
			For Local p:Particle = Eachin list
				p.display()
			Next
			SetAlpha 1.0
		End Method

End Class

Class TtrapDoor
	Field x:Float
	Field y:Float
	Field image:Image
	Field firstFrame:Int
	Field lastFrame:Int
	Field index:Int
	Field delayTime:Int
	Field delay:Int
	Field active:Int
	Field open:Int
	
	Function create:TtrapDoor(x:Float,y:Float,image:Image,first:Int,last:Int,index:Int,delay:Int=80)
		Local t:TtrapDoor = New TtrapDoor
		t.x = x 
		t.y = y
		t.image = image
		t.firstFrame = first
		t.lastFrame = last
		t.index = index
		t.delay = delay
		t.active = False
		t.open = False
		Return t
	End Function
	
	Method update:Void()
		If open = False
			If active = True
				If index < lastFrame
					If Millisecs() > delayTime
						index += 1 
						If index = lastFrame
							open = True
							active = False
						Else
							delayTime = delay+Millisecs()
						Endif
					Endif
				Endif
			Endif
		Endif
	End Method

	Method dropped:Int()
		If (Sqrt((x+16 - ball.posx) * (x+16 - ball.posx) +(y+16 - ball.posy) * (y+16 - ball.posy)) < ball.RADIUS+4)
			If open = True
				Return True
			Else
				If active = False
					active = True
					delayTime = delay+Millisecs()
				Endif
			Endif
		Endif
		Return False
	End Method
	
	Method display()
		DrawImage(image,x+camera.x,y+camera.y,index)
	End Method
	
End Class

'**********************************************************

'			ball object: physics and graphics

'**********************************************************

Class Ball
	' Player's position
	Field posx:Float
	Field posy:Float
	
	' Player's motion vector
	Field movx:Float
	Field movy:Float
	
	' Player's start position
	Field startx:Float
	Field starty:Float
	
	' Player's roll vector
	Field rollx:Float
	Field rolly:Float
	
	' Player's ball's roll value
	Field gRoll:Float

	Field ballMoving:Int
	Field count:Int
	
	
	' Player's key status
	Field gKeyLeft:Int
	Field gKeyRight:Int
	Field gKeyUp:Int
	Field gKeyDown:Int
	Field mapWidth:Int
	Field mapHeight:Int
	
	' Original vertices
	Field gVtxList:List<Tvertex>

	' Transformed vertices
	Field gRVtxList:List<Tvertex>
	
	' Player's score
	Field score:Int

	' Particles
	Field partStore:TpartStore
	Field particleList:List<Particle>
	
	' Player's thrust value
	Const THRUST:Float = 0.1
	' Color of player's ball
	Const BALLCOLOR:Int = $003f9f
	' Color of player's ball's foreground dots
	Const BALLHICOLOR:Int = $ffffff
	' Color of player's ball's background dots
	Const BALLLOCOLOR:Int = $7f7fff
	' Number of vertices in the ball
	Const BALLVTXCOUNT:Int = 6
	' Radius of the player's ball
	Const RADIUS:Int = 12
	
	' Sliding tile thrust power
	Const SLIDEPOWER:Float = 0.04
	' Slowdown due To friction, etc.
	Const SLOWDOWN:Float = 0.99
	' Slowdown due To rough tile
	Const SLOWDOWNROUGH:Float = 0.95
	' Slowdown due To collision
	Const COLLISIONSLOWDOWN:Float = 0.9

	
	Method init()
		score = 0
	End Method

	Method reset()
		movx = 0
		movy = 0
		rollx = 0
		rolly = 0
		gRoll = 0
		
		gKeyLeft = 0
		gKeyRight = 0
		gKeyUp = 0
		gKeyDown = 0
	End Method

	Method New()
		gVtxList = New List<Tvertex>
		gRVtxList = New List<Tvertex>
		For Local i:Int = 0 Until BALLVTXCOUNT
			Local gVtx:Tvertex = Tvertex.Create(Rnd(32768) - 16384.0,Rnd(32768) - 16384.0,Rnd(32768) - 16384.0)
			gVtxList.AddLast(gVtx)
		Next
		memcpy(gRVtxList, gVtxList)
		mapWidth = level.levelWidth * TILESIZE
		mapHeight = level.levelHeight * TILESIZE
		particleList = New List<Particle>
		partStore = TpartStore.create(starsImg)
	End Method

	Method rotate_z(angle:Float)
	
		Local ca:Float = Cos(angle)
		Local sa:Float = Sin(angle)
		Local i:Int
		For Local gRVtx:Tvertex = Eachin gRVtxList
			Local x:Float = gRVtx.x * ca - gRVtx.y * sa
			Local y:Float = gRVtx.x * sa + gRVtx.y * ca
			gRVtx.x = x
			gRVtx.y = y
		Next
	
	End Method 
	
	Method rotate_y(angle:Float)
	
		Local ca:Float = Cos(angle)
		Local sa:Float = Sin(angle)
		For Local gRVtx:Tvertex = Eachin gRVtxList
			Local z:Float = gRVtx.z * ca - gRVtx.x * sa
			Local x:Float = gRVtx.z * sa + gRVtx.x * ca
			gRVtx.z = z
			gRVtx.x = x
		Next
	
	End Method
	
	Method rotate_x(angle:Float)
	
		Local ca:Float = Cos(angle)
		Local sa:Float = Sin(angle)
		Local i:Int
		For Local gRVtx:Tvertex = Eachin gRVtxList
			Local y:Float = gRVtx.y * ca - gRVtx.z * sa
			Local z:Float = gRVtx.y * sa + gRVtx.z * ca
			gRVtx.y = y
			gRVtx.z = z
		Next
		
	End Method
	
	Method ProcessInput:Void()
		#If TARGET = "android" Or TARGET = "ios"
			rollx += across*THRUST
			rolly += down*THRUST
		#Else
			If (gKeyLeft)  rollx -= THRUST
			If (gKeyRight) rollx += THRUST
			If (gKeyUp)    rolly -= THRUST
			If (gKeyDown)  rolly += THRUST
		#End			
	End Method
	
	Method AutoLeft:Void()
		'stepped on arrow left
		movx -= SLIDEPOWER
		rollx -= SLIDEPOWER	
	End Method

	Method AutoRight:Void()
		'stepped on arrow rigt
		movx += SLIDEPOWER
		rollx += SLIDEPOWER	
	End Method
	
	Method AutoUp:Void()
		'stepped on arrow up
		movy -= SLIDEPOWER
		rolly -= SLIDEPOWER
	End Method
	
	Method AutoDown:Void()
		'stepped on arrow down
		movy += SLIDEPOWER
		rolly += SLIDEPOWER	
	End Method
	
	Method MoveSmooth:Void()
		'stepped on smoot tile
		movx  = (movx * 63 + rollx) / 64
		movy  = (movy * 63 + rolly) / 64
		rollx = (movx + rollx * 63) / 64
		rolly = (movy + rolly * 63) / 64
	End Method
	
	Method MoveRough:Void()
		'stepped on roug tile
		movx *= SLOWDOWNROUGH
		movy *= SLOWDOWNROUGH
		movx = (movx + rollx) / 2
		movy = (movy + rolly) / 2
		rollx = (movx + rollx) / 2
		rolly = (movy + rolly) / 2      	
	End Method
	
	Method MoveNormal:Void()
		'stepped on normal tile
		movx *= SLOWDOWN
		movy *= SLOWDOWN
		movx = (movx * 7 + rollx) / 8
		movy = (movy * 7 + rolly) / 8
		rollx = (movx + rollx * 7) / 8
		rolly = (movy + rolly * 7) / 8
	End Method
		
	Method collide(game:Tgame)
		Local currenttile:Int = level.GetCurrentTile(posx,posy)
		Local tileType:Int = level.level[currenttile]
		ProcessInput()
		Select (tileType)                   
			Case LEVEL_DROP
				' player fell off
				If game.nextState <> STATE_FALLOFF
					PlaySound(failSnd,channel)
					channel = (channel+1) Mod 16
					score = 0			
					game.nextState = STATE_FALLOFF
				Endif
			Case LEVEL_END
				'completed level
				Local secondsleft:Int = level.levelTime - (gLastTick - levelStartTick) / 1000
				If (secondsleft < 0) secondsleft = 0
				score += 100 + secondsleft * 100
				PlaySound(chimeSnd,channel)
				channel = (channel+1) Mod 16
				totalScore += score
				score = 0
				game.nextState = STATE_ENDLEVEL
			Case LEVEL_LEFT
				AutoLeft()
			Case LEVEL_RIGHT
				AutoRight()
			Case LEVEL_UP
				AutoUp()
			Case LEVEL_DOWN
				AutoDown()
		End Select
				
		Select (tileType)
			Case LEVEL_SMOOTH
				MoveSmooth()
			Case LEVEL_ROUGH
				MoveRough()
			Default
				MoveNormal()
		End Select
		
		posx += movx
		posy += movy
		camera.move((CAMERAWIDTH / 2) - (posx + movx * 25),(CAMERAHEIGHT / 2) - (posy + movy * 25))
		gRoll += Sqrt(rollx * rollx + rolly * rolly)
		'find current tile
		currenttile = level.GetCurrentTile(posy,posy)
		Local xposintile:Float = posx Mod TILESIZE
		Local yposintile:Float = posy Mod TILESIZE
		Local collision:Int, normalx:Float, normaly:Float
		Local colFlags:Int= level.coins[currenttile]
		' Check collision with tile edges
		If (colFlags & COLLIDE_E And xposintile > (TILESIZE - RADIUS))
			normalx -= xposintile - (TILESIZE - RADIUS)
			collision = 1
		Endif
		If (colFlags & COLLIDE_W And xposintile < RADIUS)
			normalx += (RADIUS) - xposintile
			collision = 1
		Endif
		If (colFlags & COLLIDE_S And yposintile > (TILESIZE - RADIUS))
			normaly -= yposintile - (TILESIZE - RADIUS)
			collision = 1
		Endif
		If (colFlags & COLLIDE_N And yposintile < RADIUS)
			normaly += (RADIUS) - yposintile
			collision = 1
		Endif
		If (collision)
			posx += normalx
			posy += normaly
			' re-calculate the positions so that we don't collide with
			' corners unneccessarily after colliding with the walls.
			xposintile = posx Mod TILESIZE
			yposintile = posy Mod TILESIZE
		Endif
		Local nx:Int = xposintile-32
		Local ny:Int = yposintile-32
		Local px:Int = xposintile*xposintile
		Local py:Int = yposintile*yposintile
		Local r2:Int = RADIUS*RADIUS
		' Check collision with tile corners
		If (colFlags & COLLIDE_NE And ((nx*nx) + (py*py)) < (RADIUS * RADIUS))
		
			Local dist:Float = Sqrt((nx*nx) + py*py)
			If (dist > 0)
				normalx += (RADIUS - xposintile) / dist
				normalx += (RADIUS - yposintile) / dist
				collision = 1
			Endif
		Endif
		If (colFlags & COLLIDE_NW And (px + py) < r2)
			Local dist:Float = Sqrt(px + py)
			If (dist > 0)
				normalx += (RADIUS - xposintile) / dist
				normaly += (RADIUS - yposintile) / dist
				collision = 1
			Endif
		Endif
		If (colFlags & COLLIDE_SE And ((nx*nx) + (ny*ny)) < r2)
			Local dist:Float = Sqrt((nx*nx) +  (ny*ny))
			If (dist > 0)
				normalx += (RADIUS - xposintile) / dist
				normaly += (RADIUS - yposintile) / dist
				collision = 1
			Endif
		Endif
		If (colFlags & COLLIDE_SW And ((px*px) + (ny*ny)) < r2)
			Local dist:Float = Sqrt(px*px + ny*ny)
			If (dist > 0)
				normalx += (RADIUS - xposintile) / dist
				normaly += (RADIUS - yposintile) / dist
				collision = 1
			Endif
		Endif
		
		If (collision)
			posx += normalx
			posy += normaly
			' Normalize (i.e. make unit length) the collision normal
			Local lengt:Float = Sqrt(normalx*normalx + normaly*normaly)
			normalx /= lengt
			normaly /= lengt
			
			' Calculate dot product between the wall collision And motion vector
			Local dot:Float = movx * normalx + movy * normaly * 1.25
			Local nx:Float = dot * normalx
			Local ny:Float = dot * normaly
			' Adjust the motion vector based on the collision
			movx -= nx
			movy -= ny
			
			' Adjust the roll vector based on the collision
			rollx -= nx
			rolly -= ny
		Endif
		' Collision with the level borders
		If (posx > level.levelWidth * TILESIZE Or posx < 0 Or posy > level.levelHeight * TILESIZE Or posy < 0)
			If game.nextState <> STATE_FALLOFF
				PlaySound(failSnd,channel)
				channel = (channel+1) Mod 16
				score = 0
				game.nextState = STATE_FALLOFF
			Endif
		Endif
	
	End Method
	
	Method display(x:Int, y:Int, r:Int,roty:Float, rotz:Float)
	    x = x+posx
		y = y+posy

		Local i:Int,dotradius:Int
		If game.state <> game.STATE_EXPLODE
			dotradius = (r / (RADIUS / 2))
			drawcircle(x, y, r, BALLCOLOR)
			rotate_z(-rotz)
			rotate_y(roty)
			rotate_z(rotz)
			
			SetColor 255,255,255
			For Local p:Particle = Eachin particleList
				p.display()
			Next
			
			SetAlpha 1.0
	
			For Local v:Tvertex = Eachin gRVtxList
				If (v.z < 0)
					drawcircle(Int(v.x * (r - dotradius) + x),Int(v.y * (r - dotradius) + y), dotradius, BALLLOCOLOR)
				Endif
			Next
			For Local v:Tvertex = Eachin gRVtxList
				If (v.z >= 0)
					drawcircle(v.x * (r - dotradius) + x,v.y * (r - dotradius) + y,dotradius, BALLHICOLOR)
				Endif
			Next
		Endif
		For Local p:Particle = Eachin particleList
			If p.update() = False
				p.link.Remove()
				partStore.replace(p)
			Endif
		Next

		If game.state = game.STATE_INGAME
			If Abs(movx)>.6 Or Abs(movy)>.6
				For Local v:Tvertex = Eachin gRVtxList
					Local p:Particle = partStore.get()
					p.init(v.x*(r-dotradius)+posx,v.y*(r-dotradius)+posy,0,0,0)
					p.link = particleList.AddLast(p)
				Next 
			Endif
		Endif
		
	End Method

End Class

Class Level

	Field level:Int[]  
	Field coins:Int[]
	Field mazes:String[][]
	Field maze:String[]
	Field indx:Int
	
	Field levelName:String
	Field levelTime:Int
	
	Field levelWidth:Int
	Field levelHeight:Int
	
	Field currentLevel:Int
	
	Method New()
		  mazes = New String[10][]
		  mazes[0] = ["L######################R",
					"#______________________#",
					"#_S!!o!!_______________#",
					"#____!!o!!_____________#",
					"#____!!o!!_____________#",
					"#____!!o!!__##_________#",
					"#___!!o!!___##_________#",
					"#___!!o!!____pn________#",
					"#___!!o!!____rl________#",
					"#____!!o!!_____#_______#",
					"#______!!o!!________EE_#",
					"#________!!o!!____!oEE_#",
					"#__________!!o!o!o!!___#",
					"N######################P",
					"@6@ Intro - @"]
					
		  mazes[1] = ["L##############R",
					"#___#_____o_o__#",
					"#_S_#_EE_______#",
					"#___#_EE___o___#",
					"#___#________o_#",
					"#_o_########___#",
					"#___#......#___#",
					"#o__#......#__o#",
					"#___#......#___#",
					"#___########o__#",
					"#_o____________#",
					"#____o___o_____#",
					"N##############P",
					"@7@ Enter The Maze - @"]
					
		  mazes[2] = ["L###########################R",
					"#_____o__o__________________#",
					"#_S________o_______o___o____#",
					"#_____________o__o________o_#",
					"########################___o#",
					"#______o_____o______________#",
					"#_o___________o____o________#",
					"#____########################",
					"#___________o_____o_________#",
					"#____o______________________#",
					"########################____#",
					"#_______o__o_____________o__#",
					"#_EE__o_____________________#",
					"#_EE_________o____o_________#",
					"N###########################P",
					"@16@ Snake Path - @"]
					
		  mazes[3] = ["#vvvvvvvvvvvvvvvvvvvvvv",
					"#______o______________<",
					"#__S__________o_______<",
					"#__________________o__<",
					"#################_____<",
					"..>EEE___o<......>o___<",
					"..>EEE____<......>___o<",
					"..>_______########____<",
					"..>_______#________o_<.",
					"..>__o_#######>_____<..",
					"..>____<......>____<...",
					".>_____<........>o__<..",
					">______<.........>___<.",
					">_o____###########____<",
					">________o__________o_<",
					">________________o____<",
					">^^^^^^^^^^^^^^^^^^^^^^",
					"@12@ Help Please - @"]
					
		  mazes[4] =  ["##################",
					"#__________________",
					"#_S________________",
					"c__________________",
					"..............n_o__",
					"..............l____",
					"a__b.........a_____",
					"_EE_........._o____",
					"_EE_.........c___o_",
					"___o..........n____",
					"____r.........l____",
					"__o_______________o",
					"________o________o_",
					"^^^^^^^^^^^^^^^^^^^",
					"@8@ First Steps - @"]
					
		  mazes[5] = ["......^^^^^^^^........",
					"......___o____^.......",
					".....<________o>......",
					".....<__p..n___>......",
					"....<___....___>......",
					"....<_o_....___>......",
					"....<___...l___>......",
					"...<_o__...__S__>.....",
					"...<____..._______....",
					"..<_____r..###########",
					".<____________________",
					"<_o_______o___________",
					"<__________________o__",
					".================_____",
					".................n____",
					".................l____",
					"=================_____",
					"_EE_____o_____________",
					"_EE__________o_____<__",
					"vvvvvvvvvvvvvvvvvvvvvv",
					"@9@ SSSSSSS - @"]

		  mazes[6] = ["a_____o______________T___________b",
					"_S_________o_________t________===>",
					"vvvvvvvvvvvvvvvvvvvvvT________===>",
					"..............................===>",
					"a____________T________________===>",
					"<<___________t_______________===>>",
					"<<___________T_______________===>>",
					"<___>.............................",
					"<___>__________________________T__",
					"_______________________________t==",
					"c______________________________T==",
					"................................==",
					"a^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^___",
					"=EE===========================___",
					"__________________________________",
					"cvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvd",
					"@30@ In Shock - @"]
					
		  mazes[7] = ["^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^...^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^",
					"_S_.......__________u____w__k__...____________......___..._____________________________________..___",
					"___r.....l_____________________...____________......___..._____________________________________..___",
					"_____________p.............n___...___________.......___...___...............................___..___",
					"c___________d....a_b.......l___r.lXX.....n___r......___...___.____________________________..___..___",
					"................._____________________b..._________T___...___.____________________________..___..___",
					".................______________________..._________t___...___............._____........___..___..___",
					"a__________b.....c____________________d...c________T___..._____________________........___..________",
					"____________......................XX................___..._____________________........___..________",
					"___p....n___.....................l____...====__________...__........___..._____.....................",
					"___......___r...l_____________________...====__________...__...________...________....._____________",
					"___......_____________________________...TeT###########...__...________...________....._____________",
					"c_d......_____________________________...___#_____________==...________........___.....___..___..<X>",
					".........#############################...___#_____________==...___.............___.....___..___..<_>",
					"____________________________________________#___...............___.............___.....___..___..<_>",
					"____________________________________________#___..._______________........________________..___..<_>",
					"<_>#########################################T___..._______________........________________..___..<_>",
					"<_>.._______________________________________t===..._______..................................___..<_>",
					"<_>.._______________________________________T===.......__________.._____________T______________..<_>",
					"<______>...............................................__________.._____________t______________..<_>",
					"<______>..._____________________________________.......__________.._____________T______________..<_>",
					"________________________________________________...................____..........................<_>",
					"____..####################################__====............___________..........................<_>",
					"____..____o________________________________o====_________..._________________#_____....________..<X>",
					"____.._______________o______________________====_________TTTT________________#_____....___....___===",
					"____..___...................____..____...________________tttt________....____#____________....___===",
					"____..___...._____________..____..____...________________TTTT________....____#____________....___===",
					"____..___...._____________..____..____..._____....................___....____#############....______",
					"____..____________________..____..____...______________________...___....__________#________________",
					"____..__________............____..____...______________________...___....__________#________________",
					"____........................____..____.....................#XX#...___...........___#______._________",
					"____......................______..____.....................#XX#...._______......TeT#______.___..____",
					"___________________...._________.._________________________#XX#...._______......===_______.___..____",
					"___________________...._____.......____________________________........TXT......===_______.___..____",
					"___________..._____...._____......_____________________..............._______________......___..____",
					"___________..._____.......______.._____________________...._______________________________.___..____",
					"_____.......................__________....................._______________..........................",
					"_______________________________________________________...._______________________________TvvvEE____",
					"_______________________________________________________...._______________________________tvvvEE____",
					"_______________________________________________________...._______________________________T=========",
					"@90@ The Mother - @"]
					
		  mazes[8] = ["S_..o_________<<====________o_",
					"__..__________<<====__________",
					"__..__......................__",
					"==..__......................__",
					"==..__..o_____<<===_____o_..__",
					"==..==..______<<===_______..__",
					"==..==..__..............__..__",
					"==..==..__..............__..__",
					"vv..vv..==........oooo..__..__",
					"vv..vv..==........oEEo..__..__",
					"__..__..=======ooooooo..^^..^^",
					"__..__..=======ooooooo..^^..^^",
					"__..__..................==..==",
					"__..__..................==..==",
					"__..o______===>>__________..==",
					"__.._______===>>________o_..==",
					"vv..........................__",
					"vv..........................__",
					"===______=====>>____________o_",
					"o==______=====>>______________",
					"@30@ Painful Spiral - @"]
	End Method
		
	Method init()
	  level = []
	  coins = []
	  levelName = ""
	  currentLevel = 7
	End Method

	Method load()
		Local name:String
		Local i:Int = 0
		If currentLevel > 8 Then
			currentLevel = 0
		Endif
		maze = mazes[currentLevel]
		
		levelWidth = maze[0].Length()
	  
		levelHeight = maze.Length()-1
		level = New Int[levelWidth * (levelHeight+1)]
		coins = New Int[levelWidth * (levelHeight+1)]
		For Local y:Int = 0 Until levelHeight
			For Local x:Int = 0 Until levelWidth
				Local v:String = String.FromChar(maze[y][x])
				If (v[0] <>32)
					Local p:Int = y*levelWidth+x
					Select v
						Case "." 	level[p] = LEVEL_DROP
						Case "_" 	level[p] = LEVEL_GROUND
						Case "S"	level[p] = LEVEL_START
						Case "E"	level[p] = LEVEL_END
						Case "X"	level[p] = LEVEL_TRAP_DOOR
						Case "o"	level[p] = LEVEL_COLLECTIBLE
						Case ">"	level[p] = LEVEL_RIGHT
						Case "L"	level[p] = LEVEL_LEFT_TOP
						Case "R"	level[p] = LEVEL_RIGHT_TOP
						Case "N"	level[p] = LEVEL_LEFT_BOTTOM
						Case "P"	level[p] = LEVEL_RIGHT_BOTTOM
						Case "l"	level[p] = LEVEL_LEFT_top
						Case "n"	level[p] = LEVEL_LEFT_bottom
						Case "r"	level[p] = LEVEL_RIGHT_top
						Case "p"	level[p] = LEVEL_RIGHT_bottom						
						Case "<"	level[p] = LEVEL_LEFT
						Case "v"	level[p] = LEVEL_DOWN
						Case "^"	level[p] = LEVEL_UP
						Case "a"	level[p] = LEVEL_left_top
						Case "b"	level[p] = LEVEL_right_top
						Case "c"	level[p] = LEVEL_left_bottom
						Case "d" level[p] = LEVEL_right_bottom
						Case "#"	level[p] = LEVEL_WALL
						Case "!"	level[p] = LEVEL_ROUGH
						Case "="	level[p] = LEVEL_SMOOTH
						Case "T"	level[p] = LEVEL_TESLA
						Case "t"	level[p] = LEVEL_SPARKH
						Case "e" level[p] = LEVEL_SPARKV
						Case "u" level[p] = LEVEL_HSMASHER
						Case "w" level[p] = LEVEL_VSMASHER
						Case "k" level[p] = LEVEL_SPIKE
					End Select
				Endif
			Next
		Next
		levelName = ""

		Local ch:String
		i = 0
		ch = String.FromChar(Int(maze[levelHeight][i]))
		If ch ="@"			
			i += 1
			While (i< maze[levelHeight].Length())
				ch =String.FromChar( maze[levelHeight][i])
				If ch ="@"
					Exit
				Endif
				name += ch
				i += 1
			Wend
			levelTime = Int(name)
			name = ""
			i += 1
			While (i<maze[levelHeight].Length())
				ch =String.FromChar( maze[levelHeight][i])
				If ch ="@" Exit
				name+=ch
				i += 1
			Wend
		Endif
		Local lengt:Int = (name.Length)
		levelName = name
		For i = 0 Until levelWidth * levelHeight
			If level[i] = LEVEL_START
				ball.startx = Float((i Mod levelWidth) * TILESIZE + TILESIZE / 2)
				ball.starty = Float((i / levelWidth) * TILESIZE + TILESIZE / 2)
			Endif
			If level[i] = LEVEL_WALL Or level[i] = LEVEL_TESLA
				Local ypos:Int = i / levelWidth
				Local xpos:Int = i Mod levelWidth
				If (ypos > 0)
					If (xpos > 0) 
						 coins[i - levelWidth - 1] |= COLLIDE_SE
					End If
					coins[i - levelWidth] |= COLLIDE_S
					If (xpos < levelWidth - 1)
						coins[i - levelWidth + 1] |= COLLIDE_SW
					End If
				Endif
				If (xpos > 0)
					coins[i - 1] |= COLLIDE_E
				Endif
				If (xpos < levelWidth - 1)
					coins[i + 1] |= COLLIDE_W
				End If
				If (ypos < levelHeight - 1)
					If xpos > 0
						coins[i + levelWidth - 1] |= COLLIDE_NE
					End If
					coins[i + levelWidth] |= COLLIDE_N
					If (xpos < levelWidth - 1)
						coins[i + levelWidth + 1] |= COLLIDE_NW
					End If
				Endif
			Endif
		Next
		Local ns:String
		Collectible.gCollectibleCount = 0
		Collectible.Taken = 0
		CollectibleList.Clear()
		trapDoorList.Clear()
		voltList.Clear()
		For  i = 0 Until levelWidth * levelHeight
			If (level[i] = LEVEL_COLLECTIBLE)
				CollectibleList.AddLast( New Collectible(((i Mod levelWidth) * TILESIZE + TILESIZE / 2),
									   ((i / levelWidth) * TILESIZE + TILESIZE / 2)))
				Collectible.gCollectibleCount +=1
				level[i] = LEVEL_GROUND
			Elseif (level[i] = LEVEL_TRAP_DOOR)
				trapDoorList.AddLast(TtrapDoor.create(((i Mod levelWidth) * TILESIZE),
								  ((i / levelWidth) * TILESIZE),gTiles,26,29,26))
			Elseif (level[i] = LEVEL_SPARKV)
				voltList.AddLast(New Volt(((i Mod levelWidth)*TILESIZE),((i/levelWidth)*TILESIZE)+8,sparkVImg,0,3,50,3000,4))
				level[i] = LEVEL_GROUND
			Elseif (level[i] = LEVEL_SPARKH)
				voltList.AddLast(New Volt(((i Mod levelWidth)*TILESIZE+8),((i/levelWidth)*TILESIZE),sparkHImg,0,3,50,3000,4))			
				level[i] = LEVEL_GROUND
			Endif
		Next

	End Method

	Method GetCurrentTile:Int(px:Int,py:Int)
		Return (py / TILESIZE) * levelWidth + px / TILESIZE
	End Method


	Method display()
		Local x:Int
		Local y:Int
		Local p:Int = 0
		Local i:Int, j:Int,h:Int,k:Int
		indx = (indx+ 1) Mod 20
		For i = 0 Until levelHeight
			y = i*TILESIZE + camera.y
			If y < -32 Continue
			If y > DeviceHeight() Exit
			k = i * levelWidth
			For j = 0 Until levelWidth
				x = Int(j * TILESIZE + camera.x)
				If x < -32 Continue 
				If x > DeviceWidth() Exit 
				h = level[k+j]
				If (h <> 0)
					Local tile:Int = 0
					Select h
						Case LEVEL_TRAP_DOOR
							Continue
						Case LEVEL_UP,LEVEL_RIGHT,LEVEL_DOWN,LEVEL_LEFT,LEVEL_WALL,LEVEL_VSMASHER,LEVEL_HSMASHER,LEVEL_SPIKE
							tile = h + indx/5
						Default
							tile = h
					End Select
					DrawImage(gTiles,x,y, tile)
'					DrawText tile,x,y
				Endif				
			Next
		Next
	End Method

End Class

Class Tcamera
	' Camera position
	Field x:Float
	Field y:Float
	
	Function create:Tcamera()
		Local c:Tcamera = New Tcamera
		Return c
	End Function

	Method move(targetx:Float,targety:Float)
		x = (targetx + x * 19) / 20
		y = (targety + y * 19) / 20
	End Method
	
	Method reset()
		x = (CAMERAWIDTH / 2) - ball.posx
		y = (CAMERAHEIGHT / 2) - ball.posy	
	End Method

End Class

Class Collectible
	Field mX:Float
	Field mY:Float
	Field mColor:Int
	Field mRadius:Int
	Field mTaken:Int

	Const COLLECTIBLERADIUS:Int = 8
	Const COLLECTIBLECOLOR:Int = $ffff00
	Global gCollectibleCount:Int
	Global Taken:Int


	Method New(x:Float,y:Float)
		mX = x
		mY = y
		mColor = COLLECTIBLECOLOR
		mRadius = COLLECTIBLERADIUS
		mTaken = 0
	End Method
		
	Function collision()
		Local i:Int
		For Local v:Collectible = Eachin CollectibleList
			If v.mTaken = 0
				v.collided()
			Endif		
		Next
	End Function
	
	Method collided:Int()
		If (Sqrt((mX - ball.posx) * (mX - ball.posx) +(mY - ball.posy) * (mY - ball.posy)) <ball.RADIUS + mRadius)
			Taken += 1
			mTaken = 1
			ball.score += 10
		Endif
	End Method
	
	Method Display()
		If mTaken = 0
			drawcircle(mX + 2 + camera.x,mY + 2 + camera.y,mRadius,0)
			drawcircle(mX + camera.x,mY + camera.y,mRadius,mColor)
		Endif
	End Method

End Class

Class MyFont
	Field atlas:Image
	Field image:Image
	Field spacing:Int
	
	Method New(fn:String,w:Int,h:Int,spc:Int)
		atlas = LoadImage(fn)
		If atlas
			image = atlas.GrabImage(0,0,w,h,96)
		Else
			Error (fn+" file not found")
		Endif
		spacing = spc
	End Method
			
	Method drawText(text:String,x:Int,y:Int)
		Local adv:Int = 0
		For Local n:Int = 0 Until text.Length()
			Local i:Int = text[n]-32
			DrawImage image,x+adv,y,i
			adv += spacing
		Next
	End Method
	
End Class

Class Volt
	Field x:Float
	Field y:Float
	Field image:Image
	Field firstFrame:Int
	Field lastFrame:Int
	Field index:Int 
	Field delayTime:Int
	Field delay:Int
	Field active:Int
	Field pauseTime:Int
	Field pauseDelay:Int
	Field paused:Int
	Field maxCycles:Int
	Field cycle:Int
	
	Method New(x:Float, y:Float,image:Image,first:Int,last:Int,delay:Int,pauseDelay:Int,cycles:Int)
		Self.x = x
		Self.y = y
		Self.image = image
		Self.firstFrame = first
		Self.lastFrame = last
		Self.index = first
		Self.delay = delay
		Self.delayTime = Millisecs()+delay
		Self.pauseDelay = pauseDelay
		Self.paused = False
		Self.maxCycles = cycles
	End Method
	
	Method Update:Void()
		If paused = False
			If index < lastFrame
				If Millisecs() >= delayTime
					index += 1
					delayTime = Millisecs()+delay
				Endif
			Else
				If cycle < maxCycles
					index = 0
					cycle += 1
				Else
					paused = True
					pauseTime = Millisecs()+pauseDelay
				Endif	
			Endif
		Else
			If Millisecs() > pauseTime
				paused = False
				cycle = 0
				index = firstFrame
				delayTime = Millisecs()+delay
				If ChannelState(electrichannel) = 0
					PlaySound(electricSnd,electrichannel)
				Endif
			Endif
		Endif
	End Method
	
	Method collided:Int()
		If ball.posx > x-8 And ball.posx < (x+24) And ball.posy > (y-8) And ball.posy < (y+24)
			Return Not paused
		Endif
		Return False
	End Method
	
	Method Display()
		If paused = False DrawImage(image,x+camera.x,y+camera.y,index)
	End Method
	
End Class 

Class Score
	Field Total:Int
	Field coins:Int
	Field seconds:Int
	Field remaining:Int	
End Class

Function Hex:String(v:Int)
	Const hex:String = "0123456789ABCDEF"
	Local n:String
	For Local i = 0 Until 8
		n += String.FromChar(hex[(v Shr (28-(i*4))) & $F])
	Next
	Return n
End Function
