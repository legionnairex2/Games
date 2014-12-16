Strict
Import Mojo
Import JPMod.GuiMod

Class Menu
	Field x:Float
	Field y:Float
	Field backImg:Image
	Field button:Button2
	
	Method New(imgAtlas:Image,x:Float,y:Float)
		Self.x = x
		Self.y = y
		Self.backImg = imgAtlas.GrabImage(0,160,500,400)
		Self.button = New Button2(imgAtlas.GrabImage(0,560,283,34,2),x,y,"")
	End Method
	
	Method Update:Int()
		button.Update()
		Return Not button.GetState()
	End Method
	
	Method Render:Void()
		DrawImage backImg,0,0
		button.Render()
	End Method
	
End Class
	
		
	