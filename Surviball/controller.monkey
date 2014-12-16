Strict

Import Mojo

Class Stick
	Field offx:Float
	Field offy:Float
	Field x:Float
	Field y:Float
	Field vx:Float
	Field vy:Float
	Field length:Float
	Field active:Int
	Field oldActive:Int
	Field deadZone:Float
	Field maxR:Float
	Field image:Image
	
	Function create:Stick(offx:Int,offy:Int,deadZone:Float,maxShift:Float,stickImg:Image)
		Local s := New Stick
		s.offx = offx
		s.offy = offy
		s.x = 0
		s.y = 0
		s.deadZone = deadZone
		s.maxR = maxShift
		s.active = False
		s.oldActive = False
		s.image = stickImg
		s.image.SetHandle(31,31)
		Return s
	End Function

	Method update:Void()
		x=0
		y=0
		vx = 0
		vy = 0
		length = 0
		If TouchDown(0)
			vx = TouchX(0) - offx
			vy = TouchY(0) - offy
			length = Sqrt(vx*vx+vy*vy)
			If oldActive = True
				active = True
				If length < deadZone
				Elseif length > maxR
					Local dx:Float = vx/length
					Local dy:Float = vy/length
					length = maxR
					x = dx*length
					y = dy*length
				Else
					x = vx
					y = vy
				Endif	
			Elseif length < deadZone
				active = True
			Else
				active = False
			Endif
		Else
			active = False
		Endif
		oldActive = active
	End Method

	Method getdx:Int()
		If length > 0
			Local l1:Float = length/5*2
			If( x >  l1) Return  1
			If( x < -l1) Return -1
		Endif
		Return 0 
	End Method
	
	Method getdy:Int()
		If length > 0
			Local l1:Float = length/5*2
			If(y > l1) Return  1
			If(y < -l1) Return -1
		Endif
		Return 0
	End Method
	
 	Method display:Void()
		Local px:Float = offx + x
		Local py:Float = offy + y
		DrawImage image,px,py
	End Method
	
End Class

Class Controller
	Field x:Float
	Field y:Float
	
	Field vx:Float
	Field vy:Float
	
	Field deadZone:Float
	Field maxR:Float
		
	Field stick:Stick
	Field image:Image

	Function create:Controller(x:Int,y:Int,maxr:Float,deadZone:Int,baseImg:Image,stickImg:Image)
		Local c := New Controller
		c.x = x
		c.y = y
		c.image = baseImg
		c.image.SetHandle(31,31)
		c.stick = Stick.create(x,y,deadZone,maxr,stickImg)
		Return c
	End Function
	
	Method update:Void()
		stick.update()
	End Method

	Method getdx:Int()
		Return stick.getdx() 
	End Method
	
	Method getdy:Int()
		Return stick.getdy()
	End Method
	

	Method display:Void()
		SetAlpha .5
		DrawImage image,x,y
		stick.display()
		SetAlpha 1.0
	End Method

End Class

Class Swipe
	Field active:Int
	Field oldActive:Int
	Field vx:Float
	Field vy:Float
	Field oldx:Float
	Field oldy:Float
	Field length:Float
	Field dx:Float
	Field dy:Float
	Field x:Float
	Field y:Float
	Field nx:Float
	Field ny:Float
	
	Method New()
		oldActive = False
	End Method

	Method update:Void()
		active = False
		vx = 0
		vy = 0
		dx = 0
		dy = 0
		length = 0
		If TouchDown(0)
			If oldActive = True
				x = TouchX(0)
				y = TouchY(0)
				vx = x - oldx
				vy = y - oldy
				nx = oldx
				ny = oldy
				angle = ATan2(vy,vx)
				dx = Cos(angle)
				dy = Sin(angle)
				If dx > .5 dx = 1 Else dx = 0
				If dy > .5 dy = 1 Else dy = 0
				active = True
			Else
				x = TouchX(0)
				y = TouchY(0)
				active = True
			Endif
		Endif
		oldx = x
		oldy = y
		oldActive = active
	End Method

	Method isTouching:Int()
		Return active
	End Method
	
	Method getDX:Float()
		Return dx
	End Method

	Method getDY:Float()
		Return dy
	End Method

End Class
