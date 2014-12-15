Strict

Class BufferGroup
	Field list:List<BufferStep>
	
	Method New(stp:BufferStep=Null)
		Self.list = New List<BufferStep>
		If stp Then Self.list.AddLast(stp)
	End Method
	
	Method AddStep:Void(stp:BufferStep)
		list.AddLast(stp)
	End Method
	
	Method Extract:BufferStep()
		If list.IsEmpty() Return Null
		Return list.RemoveLast()
	End Method
	
	Method isEmpty:Int()
		Return List.IsEmpty()
	End Method
End Class

Class BufferStep
	Field currentStack:Int
	Field currentIndex:Int
	Field oldStack:Int
	Field oldFace:Int
	
	Method New(currentStack:Int,currentIndex:Int,oldStack:Int,oldFace:Int)
		Self.currentStack = currentStack 
		Self.currentIndex = currentIndex
		Self.oldStack = oldStack 
		Self.oldFace = oldFace
	End Method
	
End Class

Class Buffer

	Field	undoList:List<BufferGroup>
	Field	redoList:List<BufferGroup>
	
	Method New()
		undoList = New List<BufferGroup>
		redoList = New List<BufferGroup>
	End Method
	
	Method Save:Void(obj:BufferGroup)
		undoList.AddLast(obj)
		redoList.Clear()
	End Method
	
	Method GetCount:Int()
		Return undoList.count()
	End Method
	
	Method UndoIsEmpty:Int()
		Return undoList.IsEmpty()
	End Method
	
	Method IsRedoEmpty:Int()
		Return redoList.IsEmpty()
	End Method
	
	Method Redo:BufferGroup()
		If redoList.isEmpty() Return Null
		Local obj:bufferGroup = redoList.removelast()
		undoList.addlast(obj)
		Return obj 
	End Method

	Method Undo:BufferGroup()
		If undoList.IsEmpty() Return Null
 		Local obj:BufferGroup = undoList.RemoveLast()
		redoList.AddLast(obj)
		Return obj
	End Method
	
	Method Clear:Void()
		undoList.clear()
	End Method 
End Class


#rem
Class BufferGroup
	Field list:List<BufferStep>
	
	Method New(stp:BufferStep=Null)
		list = New List<BufferStep>
		If stp Then list.AddLast(stp)
	End Method
	
	Method AddStep:void(stp:BufferStep)
		If stp list.AddLast(stp)
	End Method
	
	Method Extract:BufferStep()
		If list.IsEmpty() Return Null
		Return list.RemoveLast()
	End Method
	
	Method IsEmpty:Int()
		Return List.IsEmpty()
	End Method
End Class

Class BufferStep
	Field currentStack:Int
	Field currentIndex:Int
	Field oldStack:Int
	Field oldFace:Int
	
	Method New(currentStack:Int,currentIndex:Int,OldStack:Int,oldFace:Int)
		Self.currentStack = currentStack 
		Self.currentIndex = currentIndex
		Self.oldStack = oldStack 
		Self.oldFace = oldFace
	End Method
	
End Class

Class Buffer

	Field	undoList:List<BufferGroup>
	Field	redoList:List<BufferGroup>
	
	Method New()
		undoList = New List<BufferGroup>
		redoList = New List<BufferGroup>
	End Method
	
	Method Save:Void(bg:BufferGroup)
		undoList.AddLast(bg)
		redoList.Clear()
	End Method
	
	Method GetCount:Int()
		Return undoList.Count()
	End Method
	
	Method UndoIsEmpty:Int()
		Return undoList.IsEmpty()
	End Method
	
	Method IsRedoEmpty:Int()
		Return redoList.IsEmpty()
	End Method
	
	Method Redo:BufferGroup()
		If redoList.IsEmpty() Return Null
		Local bg:BufferGroup = redoList.RemoveLast()
		undoList.AddLast(bg)
		Return bg
	End Method

	Method Undo:BufferGroup()
		
		If undoList.IsEmpty() Return Null
 		Local bg:BufferGroup = undoList.RemoveLast()
		redoList.AddLast(bg)
		Return bg
	End Method
	
	Method Clear:Void()
		undoList.clear()
	End Method 
End Class
#end