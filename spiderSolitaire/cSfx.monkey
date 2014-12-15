Import mojo
Global SFX:Sfx
Class Sfx

	Field cardSnd:Sound
	Field btnSnd:Sound
	
	Field channel:Int
	
	Field volum:Int
	
	Const lastChannel:Int  = 16
	Const ON:Int = 1
	Const OFF:Int = 0
	
	Method New()
		cardSnd = LoadSound("shuffle2.mp3")
		If cardSnd = Null Error "unable to load shuffle2.mp3"
		btnSnd = LoadSound("Rico.mp3")
		If btnSnd = Null Error "unable to load rico.mp3"
		volum = 1.0
	End Method
	
	Method volume:Void(b:Bool)
		volum = b
	End Method
	
	Method PlayBtn:Void()
		Local chnl:Int = GetChannel()
		SetChannelVolume(chnl,volum)
		PlaySound(btnSnd,chnl)
	End Method
	
	
	Method PlayCard:Void()
		Local chnl:Int = GetChannel()
		SetChannelVolume(chnl,volum)
		PlaySound(cardSnd,chnl)
	End Method
	
	Method GetChannel:Int()
		channel = (channel + 1) Mod lastChannel
		Return channel
	End Method
	

End Class