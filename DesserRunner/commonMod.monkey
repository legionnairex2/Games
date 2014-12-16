Function BoxCollided:Int (x1:Float,y1:Float,box1:HitBox,x2:Float,y2:Float,box2:HitBox)
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

Function TileImageHorizontally:Void(image:Image,x:Float,y:Float,width:Float)
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

Function TileImageVertically:Void(image:Image,x:Float,y:Float,Height:Float)
	Local h:Int = Height-1
	Local oy:Int = -h+1
	Local py:Int = y
	Local fy:Int = py - Int(py)
	Local ty:Int = Int(py) - ox

	If (ty >= 0)
		ty=ty Mod w + oy
	Else
		ty=h + ty Mod h + oy
	Endif
	
	Local hr:Int = 480
	Local iy:Int = ty
	
	While(iy < hr)
	   DrawImage(image,x,iy+fy)
	   iy=iy+h
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


