Strict

Import Mojo


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
				length = Sqrt(vx*vx+vy*vy)
				If length > 0
					dx = vx/length
					dy = vy/length
				Endif
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


Class game Extends App
	Field swipe:Swipe

	Method OnCreate:Int()
		swipe = New Swipe
		SetUpdateRate(30)
		Return 0
	End Method

	Method OnUpdate:Int()
		swipe.update()
	End Method

	Method OnRender:Int()
		Cls()
		DrawText(swipe.dx,10,10)
		DrawText(swipe.dy,10,30)
	End Method

End Class


Function Main:Int()
	New game
End Function
