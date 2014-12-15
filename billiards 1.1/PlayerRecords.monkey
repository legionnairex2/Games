Strict
Import JPMod.GuiMod
Import JPMod.FileSystemMod

Class ScoreTable
	Field fileName:String=""
	Field recordList:RecordList
	Field frame:FrameAnimation
	Field fileHandler:FileSystem
	Field stream:FileStream
	Field down:Int=0
	Method New(fileName:String)
		Self.fileName=fileName
		Self.recordList=New RecordList()
		Self.frame=New FrameAnimation(media,50,20,DeviceWidth()-100,DeviceHeight()-40,2,40)
		Self.fileHandler= New FileSystem()
		If(Self.fileHandler.FileExists(fileName))
			Self.stream=Self.fileHandler.ReadFile(fileName)
			Repeat
				Local name:String=Self.stream.ReadString()
				If((name).Length<>0)
					Local record:Record=New Record()
					record.name=name
					record.score=Self.stream.ReadInt()
					record.mostBallSinRow=Self.stream.ReadInt()
					record.mostPocketed=Self.stream.ReadInt()
					record.mostCompletedSets=Self.stream.ReadInt()
					Self.recordList.AddLast(record)
				Else
					Exit
				End
			Forever
		End
		Self.down=0
	End

	Field ready:Int=0
	Method InitFrame:Void()
		Self.frame.Init()
		Self.ready=0
	End
	Method SetRecord:Void(record:Record)
		Self.recordList.AddLast(record.GetCopy())
		Self.recordList.Sort(0)
		While(Self.recordList.Count()>50)
			Self.recordList.RemoveLast()
		End
	End
	Method SaveTable:Void()
		Self.stream=Self.fileHandler.WriteFile(Self.fileName)
		For Local record:Record = Eachin Self.recordList
			Self.stream.WriteString(record.name)
			Self.stream.WriteInt(record.score)
			Self.stream.WriteInt(record.mostBallSinRow)
			Self.stream.WriteInt(record.mostPocketed)
			Self.stream.WriteInt(record.mostCompletedSets)
		End
		Self.fileHandler.SaveAll()
	End
	Method Update:Bool()
		Local done:Int=0
		If(Self.ready=0)
			If(Self.frame.Update()=0)
				Self.ready=1
			End
		Else
			If((mouse.ButtonInUse())<>0)
				Self.down=1
			End
			If(mouse.ButtonInUse()=0 And Self.down=1)
				Self.down=0
				done=1
			End
		End
		Local t_:Bool= Not ((done)<>0)
		Return t_
	End
	Method Render:Void()
		Self.frame.Render()
		If(Self.ready=1)
			Local x:Float=80.0
			Local y:Float=130.0
			Local n:Float=0.0
			If( Not Self.recordList.IsEmpty())
				Text.Draw("                 TOP 10                        ",100,30)
				Text.Draw("  Name        score   Sets continuos pocketed  ",100,80)
				Text.Draw("========================",80,100)
				For Local record:Record  = Eachin Self.recordList
					record.Render(x,y+n*20.0)
					n=n+1.0
					If(n>10.0)
						Exit
					End
				End
			Else
				Text.Draw("Recored List is Empty",200,250)
			End
			Text.Draw("               Press To Exit",80,400)
		End
	End
End
Class RecordList Extends List<Record>

	Method Compare:Int(lhs:Record,rhs:Record)
		If(lhs.score<rhs.score)
			Return -1
		End
		If(lhs.score>rhs.score)
			Return 1
		End
		If(lhs.mostCompletedSets<rhs.mostCompletedSets)
			Return -1
		End
		If(lhs.mostCompletedSets>rhs.mostCompletedSets)
			Return 1
		End
		If(lhs.mostBallSinRow<rhs.mostBallSinRow)
			Return -1
		End
		If(lhs.mostBallSinRow>rhs.mostBallSinRow)
			Return 1
		End
		If(lhs.mostPocketed<rhs.mostPocketed)
			Return -1
		End
		Local t_:Int=((lhs.mostPocketed>rhs.mostPocketed))
		Return t_
	End
End

Class Record
	Field name:String=""
	Method SetName:Void(str:String)
		Self.name=str
	End
	Field score:Int=0
	Field mostBallSinRow:Int=0
	Field mostPocketed:Int=0
	Field mostCompletedSets:Int=0
	Method GetCopy:Record()
		Local record:Record=New Record()
		record.name=Self.name
		record.score=Self.score
		record.mostBallSinRow=Self.mostBallSinRow
		record.mostPocketed=Self.mostPocketed
		record.mostCompletedSets=Self.mostCompletedSets
		Return record
	End
	Method Render:Void(x:Float,y:Float)
		graphics.SetColor(255.0,255.0,255.0)
		Text.Draw(Self.name,((x)),((y)))
		Text.Draw(String(Self.score),((x+160.0)),((y)))
		Text.Draw(String(Self.mostCompletedSets),((x+240.0)),((y)))
		Text.Draw(String(Self.mostBallSinRow),((x+330.0)),((y)))
		Text.Draw(String(Self.mostPocketed),((x+420.0)),((y)))
	End
	Method IncrementPocketed:Void()
		Self.mostPocketed+=1
	End
	Method Reset:Void()
		Self.score=0
		Self.mostBallSinRow=0
		Self.mostPocketed=0
		Self.mostCompletedSets=0
	End
	Method UpdateBallSinRow:Void(ballSinRow:Int)
		If(ballSinRow>Self.mostBallSinRow)
			Self.mostBallSinRow=ballSinRow
		End
	End
	Method IncrementCompletedSets:Void()
		Self.mostCompletedSets+=1
	End
End

