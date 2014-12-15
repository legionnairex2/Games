Strict
Import mojo
Import cBuffer
Import JPMod.GUIMod
Import cSfx

Const CLOVERS:Int = 0
Const HEARTS:Int = 1
Const SPADES:Int = 2
Const DIAMONDS:Int = 3
 
Const ACE:Int = 0
Const TWO:Int = 1
Const THREE:Int = 2
Const FOUR:Int = 3
Const FIVE:Int = 4
Const SIX:Int = 5
Const SEVEN:Int =6
Const EIGHT:Int = 7
Const NINE:Int = 8
Const TEN:Int = 9
Const JACK:Int = 10
Const QUEEN:Int = 11
Const KING:Int = 12

Const HIDDEN_Y_SPACING:Int = 10
Const HIDDEN_X_SPACING:Int = 15

Const VISSIBLE_X_SPACING:Int = 5
Const VISSIBLE_Y_SPACING:Int = 20


Const CARD_WIDTH:Int  = 79
Const CARD_HEIGHT:Int = 123

Const CARD_SPEED:Float = 20.0

Const SCALE:Float = .30
Const TOTALCARDS:Int = 104
Const TOTAL_SLOTS:Int = 10
Const SUIT_TOTAL:Int = 13
Const DECK_TOTAL:Int = 52
Const CARDS_PER_SUIT:Int = 19

'card's face
Const FRONT:Int = 1
Const BACK:Int = 2

Global fc:String[] = ["","FRONT","BACK"]
Global cardMoves:Int = 0
'cards style
Const CLASSIC:Int = 0
Const COMIC:Int = 1
Const NATURE:Int = 2

'card back image
Const BACK1:Int = 0
Const BACK2:Int = 1
Const BACK3:Int = 2
Const BACK4:Int = 3
Const BACK5:Int = 4
Const BACK6:Int = 5
Const BACK7:Int = 6
Const BACK8:Int = 7

'card Display style
Const HORIZONTAL:Int = 1
Const VERTICAL:Int = 2

Const INACTIVE:Int = 0
Const FREED:Int = 1
Const IN_USE:Int = 2

'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/ 
'							SPIDER SOLITAIRE REMAKE
'			10/8/2010																
'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/

'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/ 
'
'			CardForm
'			a class for loading graphics
'
'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/

class CardForm
	Field _image:Image
	Field _FrontStyle:Int
	Field _backStyle:Int
	Field _width:Int
	Field _height:Int
	Field _cardclass:String[]
	Field _cardName:String[]
	Field _viewWidth:Float
	Field _viewHeight:Float
	Field _scalex:Float
	Field _scaley:Float
	
	Const WIDTH:Int = 250
	Const HEIGHT:Int= 360
	
	Method New(w:float,h:float)
		_image = LoadImage("carddeckjp.png",WIDTH,HEIGHT,55)
		_FrontStyle = CLASSIC
		_backStyle = BACK1
		_width = WIDTH
		_height = HEIGHT
		_cardclass = ["Clover","Heart","Spade"	,"Diamond"]
		_cardName = ["Ace","two","Three","Four","Five","Six","Seven","Eight","Nine","Ten",
				   "Jack","Queen","King","Joker"]
		_scalex = WIDTH/w
		_scaley = HEIGHT/h
		_viewWidth = WIDTH * _scalex
		_viewHeight = HEIGHT * _scaley
	End Method

	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/
	'
	'			SetFrontStyle is used the set the Front face of the cards
	'			three different Styles: CLASSIC, COMMIC, NATURE
	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/

	Method SetFrontStyle:void(style:Int)
		_FrontStyle = style
	End Method
		
	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/ 
	'
	'			GetFrontStyle used to Get the current cards Front style
	'			returns one of the three styles previously mentioned.
	'																	 
	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/

	
	Method GetFrontStyle:Int(style:Int)
		Return _FrontStyle
	End Method

	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/ 
	'
	'			setScale sets the cards image scale
	'			set image width and height to as spcefied size 1,1 is actual size 
	'
	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/

	
	Method SetScale:void(xs:Float, ys:Float)
		_viewWidth = WIDTH * xs
		_viewHeight = HEIGHT *ys
		_scalex = xs
		_scaley = ys
	End Method
	
	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/ 
	'
	'			SetBackStyle is used to set the image for  the back of the cards
	'			class range between 0 and 7 inclusive
	'
	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/
	

	Method SetBackStyle:Void(style:Int)
		_backStyle = style
	End Method
	
	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/ 
	'
	'			GetBackStyle returns the current style of the cartds
	'			will return style between 0 and 7 inclusive 
	'
	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/
	
	Method GetBackStyle:Int(style:Int)
		Return _backStyle
	End Method
	
	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/ 
	'
	'			DrawFontFace used to Display the Front of a specific card 
	'			x,y is the position of the image to be Drawn
	'			cardPos is the number of the image to Draw  a number between 0 and 12 inclusive 0 being Ace and 12 being King
	'
	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/
	
	Method DrawFrontFace:Void(x:Int,y:Int,cardPos:Int,suit:Int)
		Local i:Int = suit * 13
		If cardPos > TEN
			i += _FrontStyle * 3 + cardPos
		Else
			i+= cardPos
		EndIf
		DrawImage _image, x, y,0,_scalex,_scaley, i
	End Method
	
	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/ 
	'
	'			Draws the back image of the card in the current style
	'			see SetBackStyle for more info. 
	'
	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/

	Method DrawBackFace:Void(x:Int,y:Int)
		Local i:Int = 52 + _backStyle
		DrawImage _image, x, y, 0, _scalex, _scaley, i
	End Method 
	
	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/ 
	'
	'			Draws a white outline the current cards scale 
	'
	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/

	Method DrawOutline:Void(x:Int, y:Int)
		graphics.SetColor 255,255,255
		DrawLine x,y,x+_viewWidth-1,y
		DrawLine x,y+_viewHeight-1,x+_viewWidth-1,y+_viewHeight-1
		DrawLine x,y,x,y+_viewHeight-1
		DrawLine x+_viewWidth-1,y,x+_viewWidth-1,y+_viewHeight-1
	End Method

End class

'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/ 
'
'			TCardForm instantiated for global use 
'
'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/

Global cardForm:CardForm

'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/ 
'
'			TPosition is the class communly used to keep track and position all classs in view
'
'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/

class Position

	Field x:Int
	Field y:Int	
End class

'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/ 
'
'			TCard is used to create a single card  
'
'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/

class Card
	Field position:Position
	Field suit:Int
	Field number:Int
	Field face:Int
	Field link:TLink

	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/ 
	'
	'			used to create an instance of  TCard
	'
	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/

	Method New(cardPos:Int, suit:Int, face:Int = BACK)
		Self.position = New Position
		Self.number = cardPos
		Self.face = face
		Self.suit = suit
	End Method
	
	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/ 
	'
	'			setFace is used to set the face of the card for Display purpose
	'			it can be Front toDisplay the Front of the card
	'			or BACK to Display the back of the card
	'
	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/

	Method SetFace:Void(f:Int)
		face = f
	End Method 	

	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/ 
	'
	'			SeTPosition is used to actually Display the position of the card
	'
	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/

	Method SeTPosition:Void(x:Int, y:Int)
		position.x = x
		position.y = y
	End Method

	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/ 
	'
	'			GeTPosition returns the actual position of the playing cards.
	'
	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/
	
	Method GetXPosition:Int()
		Return  position.x
	End Method

	Method GetYPosition:Int()
		Return position.y
	End Method

	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/ 
	'
	'			Display the card with preset conditions.
	'
	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/
	
	Method Draw:Void()
		If face = FRONT 
			cardForm.DrawFrontFace(position.x,position.y,number,suit)
		Else				
			cardForm.DrawBackFace(position.x,position.y)
		EndIf
	End Method	
	
End class

'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/ 
'
'			TSpacing is used to set the spacing for the Front of the back of the card
'
'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/

class Spacing
	Field Frontx:Int
	Field Fronty:Int
	Field backx:Int
	Field backy:Int
End class

'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/ 
'
'			Tsuit is used to create a suit class set of cards
'
'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/

Class Suit
	Field position:Position
	Field Spacing:Spacing
	Field cards:Card[SUIT_TOTAL]
	Field suitClass:Int
	
	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/ 
	'
	'			Create creates an instance of  a suit class
	'			Suit classs are CLUBS, DIAMONDS,SPADES,HEARTS
	' 
	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/

	Method New(suitClass:Int)
		Self.position = New Position
		Self.Spacing = New Spacing
		Self.suitClass = suitClass
		For Local i:Int = 0 Until SUIT_TOTAL
			Self.cards[i] = New Card(i,suitClass,FRONT)				
		Next
	End Method

	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/ 
	'
	'			SeTPosition  of the suit in screen.
	'
	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/
	
	Method SeTPosition:void(x:Int,y:Int)
		position.x = x
		position.y = y
	End Method
	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/ 
	'
	'			Returns the position of the suit in the screen
	'
	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/

	
	Method GetXPosition:Int()
		Return position.x
	End Method

	Method GetYPosition:Int()
		Return position.y
	End Method

	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/ 
	'
	'			Set spacing per card face is Front, BACK 
	'
	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/
	
	Method SeTSpacing:Void(x:Int,y:Int,face:Int)
		If face = Front
			spacing.Frontx = x
			spacing.Fronty = y
		Else
			spacing.backX = x
			spacing.backy = y
		Endif
		x = position.x
		y = position.y
		For Local i:Int = KING To ACE Step -1 
			cards[i].SeTPosition(x,y)
			If cards[i].face = Front
				x+=spacing.Frontx
				y+=spacing.Fronty
			Else
				x+=spacing.backx
				y+=spacing.backy
			EndIf
		Next
	End Method

	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/ 
	'
	'			Get all cards in the suit
	'
	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/
	
	Method GetCards:Card[]()
		Local c:Card[SUIT_TOTAL]
		Local i:Int = 0
		For Local tc:Card = EachIn cards
			c[i] =  tc
			i += 1
		Next
		Return c
	End Method
	
	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/ 
	'
	'			Display the suit in ascending or descending order  1 ascendign  0 descending
	'
	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/
	

	Method Display:Void()

		For Local i:Int = KING To ACE Step -1 
			cards[i].Draw()
		Next

	End Method	
End class

'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/ 
'
'			a collection of 4 suits one each class CLUBS, DIAMONS, HEARTS and SPADES
'
'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/

class Deck
	Field position:Position
	Field Spacing:Position
	Field suits:Suit[4]
	
	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/ 
	'
	'			Used to create a deck of cards.
	'
	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/
	Method New()
	
		suits[CLOVERS]  =New Suit(CLOVERS)
		suits[HEARTS]   =New Suit(HEARTS)
		suits[SPADES]   =New Suit(SPADES)
		suits[DIAMONDS] =New Suit(DIAMONDS)
		position = New Position
		Spacing = New Position
		
	End Method
	
	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/ 
	'
	'			Returns one of  the specified suits CLUBS, DIAMONDS, HEARTS, SPADES
	'
	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/

	Method GetSuit:Tsuit(suit:Int)
		Return suits[suit]
	End Method

	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/ 
	'
	'			Returns the complete deck of cards in a single array
	'
	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/
	
	Method GetCards:Card[]()
		Local c:Card[DECK_TOTAL]
		Local i:Int = 0
		For Local tc:Card = EachIn suits[0].GetCards()
			c[i] = tc
			i += 1
		Next
		For Local tc:Card = Eachin suits[1].GetCards()
			c[i] = tc
			i += 1
		Next
		For Local tc:Card = Eachin suits[2].GetCards()
			c[i] = tc
			i += 1
		Next
		For Local tc:Card = EachIn suits[3].GetCards()
			c[i] = tc
			i += 1
		Next
		Return c
	End Method

	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/ 
	'
	'			Sets the position of the deck of cards for Display purpose.
	'
	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/
	
	Method SeTPosition:Void(x:Int,y:Int)
		position.x = x
		position.y = y
	End Method
	
	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/ 
	'
	'			sets the spacing of each card  applicable to all  for Display purpose
	'
	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/

	Method SeTSpacing:void(x:Int,y:Int)
		spacing.x = x
		spacing.y = y
	End Method

	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/ 
	'
	'			the whole deck of cards in a single long strip(spacing previously set.
	'
	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/

	Method Display:Void()
		Local x:Int = position.x
		Local y:Int = position.y
		For Local i:Int = 0 Until suits.length
			suits[i].SeTSpacing(50,10,Front)
			suits[i].SeTPosition(x,y)
			suits[i].Display()
			x += spacing.x
			y += spacing.y
		Next
	End Method
End class

'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/ 
'
'			temporay storage to allow acces to a collection of cards.
'
'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/


class Supply
	Field position:Position
	Field spacing:Spacing
	Field cards:Card[104]
	Field count:Int
	
	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/ 
	'
	'			Initialization of required Variables.
	'
	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/
	
	Method New()
		position = New Position
		spacing = New Spacing
		count = 0
	End Method
	
	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/ 
	'
	'		Add a card or cards to the supply.
	'
	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/

	Method AddCards:Void(cards:Card[])
		For Local c:Card = EachIn cards
			Self.cards[count] = c
			count += 1
		Next
	End Method
	
	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/ 
	'
	'			Get the number of cards currently stored with in.
	'
	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/

	Method TotalCards:Int()
		Return count
	End Method
	
	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/ 
	'
	'			Extract a single card from card collection.
	'
	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/

	Method ExtractCard:Card[]()
		local c:Card[]
		If count = 0 Return c
		Local card:Card[1]
		count -=1
		card[0] = cards[count]
		Return card
	End Method
	
	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/ 
	'
	'			Shuffle a number of cards
	'			n is the number of times to Shuffle the number of cards currently stored.
	'
	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/

	Method Shuffle:Void(n:Int)
		For Local t:Int = 0 Until n
			For Local i:Int = 0 Until count
				Local i2:Int = Rnd(count) - 1
				Local i1:Int = Rnd(count) - 1
				Local temp:Card = cards[i1]
				cards[i1] = cards[i2]
				cards[i2] = temp
			Next
		Next
	End Method
	
	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/ 
	'
	'			SeTPosition is used to set the location where to Display the cards from within this object.
	'
	'
	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/

	Method SeTPosition:Void(x:Int,y:Int)
		position.x = x
		position.y = y
	End Method
	
	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/ 
	'
	'			used to set direction and spacing distance for each card for Displaying with in this object
	'			mainly used fo testing purpose.
	'
	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/

	Method SeTSpacing:Void(x:Int,y:Int,face:Int)
		If face = Front
			spacing.Frontx = x
			spacing.Fronty = y
		Else
			spacing.backx = x
			spacing.backy = y
		EndIf
	End Method
	
	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/ 
	'
	'			Display - used for Displaying the current total cards in The Tstorage 
	'			class Object. Mainly used for testing purpose.
	'
	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/
	
	Method Display:Void()
		Local x:Int = position.x
		Local y:Int = position.y
		Local a:Int
		Local d:Int
		
		If cards[0].face = FRONT
			a = spacing.Frontx
			d = spacing.Fronty
		Else
			a = spacing.backx
			d = spacing.backy
		EndIf
		
		If  a = 0 And d = 0
			Local i:Int = count-1
			cards[i].SeTPosition(x,y)
			cards[i].Draw()
		Else
			For Local i:Int = 0 Until count
				cards[i].SeTPosition(x,y)
				If cards[i].face = FRONT
					x += spacing.Frontx
					y += spacing.Fronty
				Else
					x += spacing.backx
					y += spacing.backy
				EndIf
				cards[i].SeTPosition(x,y)
				cards[i].Draw()
			Next
		EndIf
	End Method
	 
End class

'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/ 
'
'		Tdealer used to deal cards to dealer area.
'
'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/

class Dealer

	Field position:Position
	Field spacing:Spacing
	Field stacks:Supply[]
	Field cardsInSet:Int[]
	Field cards:Card[]
	Field stackCount:Int
	
	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/ 
	'
	'			Creates an instance of  a Tdealer class
	'			Suit classs are CLUBS, DIAMONDS,SPADES,HEARTS
	'
	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/

	Method new(x:Int,y:Int, decks:Int=1, stacks:Int=1,cardsEach:Int=52)
		Self.position = New Position
		Self.spacing = New Spacing
		Local deck:Deck[decks]
		Self.position.x = x
		Self.position.y = y
		For Local i:Int = 0 Until decks
			deck[i] = New Deck()
		Next
		
		Local supply:Supply = New Supply
		For Local n:Int= 0 Until decks
			supply.AddCards(deck[n].GetCards())
		Next
		Self.stackCount =  stacks
		Self.stacks = New Supply[Self.stackCount]
		For Local i:Int = 0 Until Self.stackCount
			Self.stacks[i] = New Supply
		Next
		
		Self.spacing.backx = -10
		Self.spacing.backy = 0
		
		supply.Shuffle(300)
		
		Local i:Int = 0
		Local c:Int = 1		
		Local card:Card[] = supply.ExtractCard()
		While card.Length() > 0
			card[0].SeTPosition(x,y)
			card[0].SetFace(BACK)			
			Self.stacks[i].AddCards(card)
			If c = cardsEach
				i+=1
				x += Self.spacing.backx
				y += Self.spacing.backy
				c = 0
			EndIf
			c += 1
			card = supply.ExtractCard()
		Wend
	End Method
	
	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/ 
	'
	'			MouseInSet - this is used to see if the mouse in the area of the dealer 
	'																			
	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/
	
	Method MouseInSet:Int()
		If stackCount > 0
			If mouse.x > stacks[0].position.x + cardForm._viewWidth Return False
			If mouse.x < stacks[stackCount-1].position.x Return False
			If mouse.y < stacks[0].position.y Return False
			If mouse.y > stacks[0].position.y + cardForm._viewHeight Return False
			Return True
		EndIf
		Return False
	End Method

	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/ 
	'
	'			SeTPosition - set the position of the dealer card set for Display purpose.
	'
	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/		
	
	Method SeTPosition:Void(x:Int, y:Int)
		position.x = x
		position.y = y
	End Method

	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/ 
	'
	'			SeTSpacing  - used setting the spacing for the each vissible set of cards
	'			negative numbers will Display upwards and/or to the left  positive numbers will Display downwards and/or to the ritht
	'
	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/

	Method SeTSpacing:void(x:Int,y:Int)
		spacing.backx = x
		spacing.backy = y
	End Method
	
	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/ 
	'
	'			DealCard - exract a single card 
	'
	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/

	Method DealCard:TCard[]()
		Local card:TCard[] = stacks[stackCount-1].ExtractCard()
		If card = Null
			stackCount -= 1
			If stackCount = 0 Return Null
			card = DealCard()
		ElseIf stacks[stackCount-1].TotalCards() = 0
			stackCount -= 1 
		Endif
		Return card
	End Method

	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/ 
	'
	'			GetASet - etracts a group of cards assigned by the 
	'			Suit classs are CLUBS, DIAMONDS,SPADES,HEARTS
	'
	'\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/

	Method GetASet:Supply()
		If stackCount > 0
			stackCount -= 1
			Local stack:Supply = stacks[stackCount]
			Return stack
		EndIf
		Return Null
	End Method
		
	Method AddASet:void(set:Supply)
		Local x:Int = position.x + spacing.backx*stackCount
		Local y:Int = position.y + spacing.backy*stackCount
		set.SeTPosition(x,y)
		For Local i:Int = 0 Until set.count
			set.cards[i].SeTPosition(x,y)
		Next
		stacks[stackCount] = set
		stackCount += 1
	End Method
	
	Method GetNextX:Int()
		Return position.x + stackCount * spacing.backx
	End Method
	
	Method GetNextY:Int()
		Return position.y	
	End Method
	
	Method Display:void()
		Local x:Int = position.x
		Local y:Int = position.y
		For Local i:Int = 0 Until stackCount
			stacks[i].SeTPosition(x,y)
			stacks[i].Display()
			x += spacing.backx
			y += spacing.backy
		Next
	End Method
	
End class

class Dump
	Field position:Position
	Field spacing:Spacing
	Field cards:Card[104]
	Field count:Int
	
	Method New(x:Int,y:Int)
		Self.position= New Position
		Self.spacing = New Spacing
		Self.count = 0
		Self.position.x = x
		Self.position.y = y
		Self.spacing.Frontx = 15
		Self.spacing.Fronty = 0
	End Method
	
	Method GetNextX:Int()
		If count = 0
			Return position.x
		Else
			Return cards[count-1].position.x + spacing.Frontx
		EndIf
	End Method
	
	Method GetNextY:Int()
		If count = 0
			Return position.y
		Else
			Return cards[count-1].position.y + spacing.Fronty
		EndIf
	End Method

	Method AddCard:Void(card:Card[])
		For Local c:Card = EachIn card
			Self.cards[count] =  c
			count += 1
		Next
		If count = 0 Return 
		Local x:Int = position.x
		Local y:Int = position.y
		For Local i:Int = 0 Until count
			If (i Mod 13) = 0 And i > 0
				cards[i].SeTPosition(x,y)
				x += spacing.Frontx
				y += spacing.Fronty
			Else
				cards[i].SeTPosition(x,y)
			EndIf
		Next
	End Method
	
	Method GetCount:Int()
		Return count
	End Method
	
	Method GetASet:Supply()
		If count = 0 Return Null
		Local c:Card[13]
		For Local i:Int = 0 Until 13
			count -= 1 
			c[12-i] =  cards[count]
		Next
		Local supply:Supply = New Supply
		supply.AddCards(c)
		Return supply
	End Method
	
	Method Display:Void()
		If count = 0 Return  
		For Local i:Int = -1 Until count Step 13
			If i>= 0 Then cards[i].Draw()
		Next
		If count
			cards[count-1].Draw()
		EndIf
	End Method
	
End class
	
class Stack
	Field position:Position
	Field spacing:Spacing
	Field cards:Card[TOTALCARDS]
	Field count:Int
	
	Method New(x:Int,y:Int)
		Self.position = New Position
		Self.spacing = New Spacing
		Self.count = 0
		Self.position.x = x
		Self.position.y = y

	End Method
	
	Method ContainCards:Int()
		Return count > 0
	End Method
	
	Method PeekFrontCardValue:Int()
		Return cards[count-1].number
	End Method
	
	Method PeekFrontCardSuit:Int()
		Return cards[count-1].suit
	End Method
	
	Method PeekFrontCardIndex:Int()
			Return count-1
	End Method
	
	Method PeekCardValue:Int(index:Int)
		Return cards[index].number
	End Method
	
	Method PeekCardSuit:Int(index:Int)
		Return cards[index].suit
	End Method
	
	Method SeTSpacing:void(x:Int,y:Int,face:Int)
		If face = FRONT
			spacing.Frontx = x
			spacing.Fronty = y
		Else
			spacing.backx = x
			spacing.backy = y
		EndIf
	End Method
	
	Method GetXSpacing:Int(face:Int)
		If face = FRONT
			Return spacing.Frontx
		EndIf
		Return spacing.backx
	End Method
	
	Method GetYSpacing:Int(face:Int)
		If face = FRONT
			Return spacing.Fronty
		EndIf
		Return spacing.backy
	End Method
	
	Method FrontCardFaceUp:void()
		If count
			cards[count-1].face = FRONT
		EndIf
	End Method
	
	Method FrontCardFaceDown:void()
		If count
			cards[count-1].face = BACK
		EndIf
	End Method
	
	Method ExtractFrontCard:Card[]()
		Local c:Card[]
		If count = 0 Return c
		Local card:Card[1]
		count -= 1
		card[0] = cards[count]
		Return card
	End Method
	
	Method GetCardOnPoint:Int(mx:Int,my:Int)
		Local x:Int,y:Int
		For Local i:Int = (count-1) To 0 Step -1
			x = cards[i].GetXPosition()
			y = cards[i].GetYPosition()
			If mx < x Continue
			If my < y Continue
			If mx > x+cardForm._viewWidth Continue 
			If my > y+cardForm._viewHeight Continue
			Return i
		Next
		x = position.x
		y = position.y
		If mx < x Return -1
		If my < y Return -1
		If mx > x+cardForm._viewWidth Return -1 
		If my > y+cardForm._viewHeight Return -1
		
		Return -2
	End Method
	
	Method GetNextX:Int()
		If count = 0
			Return position.x
		Else
			Local x:Int = cards[count-1].GetXPosition()
			If cards[count-1].face = FRONT
				Return x + spacing.Frontx
			Else
				Return x + spacing.backx
			EndIf
		EndIf
	End Method
	
	Method GetNextY:Int()
		If count = 0
			Return position.y
		Else
			Local y:Int = cards[count-1].GetYPosition()
			If cards[count-1].face = FRONT
				Return y + spacing.Fronty
			Else
				Return y + spacing.backy
			EndIf
		EndIf
	End Method
	
	Method GetLasTPositionX:Int()
		If count = 0
			Return position.x
		EndIf
		Return cards[count-1].GetXPosition()
	End Method
	
	Method GetLasTPositionY:Int()
		If count = 0
			Return position.y
		EndIf
		Return cards[count-1].GetYPosition()
	End Method
	
	Method ValidCardRules:Int(index:Int)
		If index = count-1 And cards[index].face = FRONT Then Return True

		Local suit:Int = cards[index].suit
		Local number:Int = cards[index].number
		For Local i:Int = index+1 Until  count
			If cards[i].face = BACK Then Return False
			If cards[i].suit <> suit Then  Return False
			If cards[i].number <> (number-1) Then Return False
			suit = cards[i].suit
			number -= 1
		Next
		Return True
	End Method
		
	Method CompleteSuit:Int()
		If count < 13 Return False
		Local suit:Int,number:Int
		For Local index:Int = ACE To KING
			Local card:Card = cards[(count -1) - index]
			If index = 0 
				If card.number = ACE
					suit = card.suit
					number = ACE
				Else
					Return False
				EndIf
			ElseIf card.suit = suit
				If card.face = BACK Return False
				number = number + 1
				If card.number <> number
					Return False
				EndIf
			Else
				Return False
			EndIf
		Next
		Return True
		
	End Method
	
	Method IsEmpty:Int()
		Return count = 0
	End Method		
	
	Method ExtractFromIndex:Card[](index:Int)
		If  index=-1 Then index = 0
		Local n:Int =  (count-index)
		Local c:Card[n]
		For Local i:Int = 0 Until n
			c[i] = cards[index+i]
		Next
		count = index
		Return c
	End Method
	
	Method IndexPreviousCardFace:Int(index:Int)
		If  index=-1 Then index = 0
		If index > 0
			Return cards[index-1].face
		EndIf
		Return 0
	End Method

	Method AddToEnd:void(card:Card[])
		
		For Local c:Card = EachIn card 
			cards[count] = c
			count += 1
		Next
		Local x:Int = position.x
		Local y:Int = position.y
		For Local i:Int = 0 Until count
			cards[i].SeTPosition(x,y)
			If cards[i].face = FRONT
				x += spacing.Frontx
				y += spacing.Fronty 
			Else
				x += spacing.backx
				y += spacing.backy
			EndIf
		Next
	End Method
	
	Method Display:Void()
		If  count = 0
			cardForm.DrawOutline(position.x,position.y)
		Else
			For Local i:Int = 0 Until count
				cards[i].Draw()
			Next
		EndIf
	End Method
		
End class

class PlayField

	Field stacks:Stack[]
	Field positiony:Int
	Field spacingx:Int
	Field width:Int
	Field height:Int
	
	Method New(width:Int, height:Int,y:Int)
		Self.width = width
		Self.height = height
		Self.positiony = y
	End Method
	
	Method SeTSpacing:void(W:Int, y:Int)
		Spacingx = w
		positiony = y
	End Method
	
	Method CreateStacks:Void(n:Int)
		stacks = New Stack[n]
		spacingx = (width - (cardForm._viewWidth * n)) /(n+1)
		Local x:Int = spacingx
		Local y:Int = positiony
		For Local i:Int = 0 Until stacks.Length()
			stacks[i] =New Stack(x,y)
			x += spacingx + cardForm._viewWidth
		Next
	End Method
	
	Method EmptyStacks:Int()
		For Local stack:Stack = EachIn stacks
			If stack.IsEmpty() Return True
		Next
		Return False	
	End Method
	
	Method StackValidCardRules:Int(stackNo:Int,cardPos:Int)
		Return stacks[stackNo].ValidCardRules(cardPos)
	End Method
	
	Method IndexPreviousCardFace:Int(stackNo:Int,cardPos:Int)
		Return stacks[stackNo].IndexPreviousCardFace(cardPos)
	End Method
	
	Method GetCards:Card[](stackNo:Int,cardPos:Int)
		Return stacks[stackNo].ExtractFromIndex(cardPos)
	End Method
	
	Method StackExtractFrontCard:Card[](stackNo:Int)
		Return stacks[stackNo].ExtractFrontCard()
	End Method
	
	Method StackCompleteSuit:Int(stackIndex:Int)
		Return stacks[stackIndex].CompleteSuit()
	End Method
		
	Method StackFaceFrontCard:void(stackNo:Int)
		stacks[stackNo].FrontCardFaceUp()
	End Method
	
	Method StackSetFrontFace:void(stackNo:Int,face:Int)
		If face = FRONT
			stacks[stackNo].FrontCardFaceUp()
		ElseIf face = BACK
			stacks[stackNo].FrontCardFaceDown()
		EndIf
	End Method
	
	Method GetMouseStackNumber:Int()
		Local stackNo:Int
		If mouse.y < positiony  Return -1
		stackNo = mouse.x/(spacingx + cardForm._viewWidth)
		Local r:Int = mouse.x Mod (spacingx+cardForm._viewWidth)
		If stackNo >= stacks.Length() Return -1
		If r <= spacingx Return -1
		Return stackNo
	End Method

	Method GetMouseCardIndex:Int(stackNo:Int)
		Return stacks[stackNo].GetCardOnPoint(mouse.x,mouse.y)
	End Method
		
	Method GetStackNextX:Int(stackIndex:Int)
		Return stacks[stackIndex].GetNextX()
	End Method
	
	Method GetStackNextY:Int(stackIndex:Int)
		Return stacks[stackIndex].GetNextY()
	End Method
	
	Method GetStackLasTPositionX:Int(stackIndex:Int)
		Return stacks[stackIndex].GetLasTPositionX()
	End Method
	
	Method GetStackLasTPositionY:Int(stackIndex:Int)
		Return stacks[stackIndex].GetLasTPositionY()
	End Method
	
	Method StackSeTSpacing:void(x:Int,y:Int,face:Int)
		For Local stack:Stack = EachIn stacks
			stack.SeTSpacing(x,y,face)
		Next
	End Method
	
	Method StackGetCardspacingX:Int(face:Int, stackIndex:Int)
		Return stacks[stackIndex].GetXSpacing(face)
	End Method 

	Method StackGetCardspacingY:Int(face:Int, stackIndex:Int)
		Return stacks[stackIndex].GetYSpacing(face)
	End Method 

	Method AddCardsToStack:void(card:Card[],StackIndex:Int)
		stacks[StackIndex].AddToEnd(card)
	End Method
			
	Method MouseInStack:Int(x:Int,y:Int,StackIndex:Int)
		If stackIndex > 9 Return False
		Local w:Int = cardForm._width
		Local h:Int = cardForm._height
		Local tx:Int,ty:Int
		tx = stacks[stackIndex].GetLasTPositionX()
		ty = stacks[stackIndex].GetLasTPositionY()
		If x < stacks[stackIndex].position.x Return False
		If x > stacks[stackIndex].position.x+w Return False
		If y < positiony Return False
		If y > ty+h Return False
		Return True
	End Method
	
	Method StackContainCards:Int(stackIndex:Int)
		Return stacks[stackIndex].ContainCards()
	End Method

	Method StackPeekFrontCardNumber:Int(stackIndex:Int)
		Return stacks[stackIndex].PeekFrontCardValue()
	End Method

	Method StackPeekFrontCardSuit:Int(stackIndex:Int)
		Return stacks[stackIndex].PeekFrontCardSuit()
	End Method

	Method StackPeekFrontCardIndex:Int(stackIndex:Int)
		Return stacks[stackIndex].PeekFrontCardIndex()
	End Method
	
	Method Display:void()
		Local x:Int = spacingx
		Local y:Int = positiony
		For Local stack:Stack = EachIn stacks
			stack.Display()
		Next
	End Method
		
End class



Const DRAGGING:Int = 1
Const RETURNING:Int = 2
Const FREE:Int = 3

class MouseStack
	Field oldStackIndex:Int
	Field oldFace:Int
	Field cardShift:Position
	Field spacing:Spacing
	Field cards:Card[104]
	Field state:Int
	Field count:Int
	
	Method New()
		Self.cardShift = New Position
		Self.spacing = New Spacing
		Self.count = 0
	End Method
	
	Method IsActive:Int()
		Return count > 0
	End Method
	
	Method AddCards:void(card:Card[],oldStack:Int,oldFace:Int)  'oldface =  Front,BACK, 
		For Local c:Card = EachIn card
			Self.cards[count] = c
			count += 1
		Next
		'Self.cards += card
		Self.oldStackIndex = oldStack
		Self.oldFace = oldFace
		SetOffset(card[0].position.x,card[0].position.y)
	
	End Method

	Method SeTCardSpacing:void(x:Int,y:Int,face:Int)
		If face = FRONT
			spacing.Frontx = x
			spacing.Fronty = y
		Else
			spacing.backx = x
			spacing.backy = y
		EndIf
	End Method
	
	Method PeekFirsTCardNumber:Int()
		Return cards[0].number
	End Method
		
	Method PeekFirsTCardSuit:Int()
		Return cards[0].suit
	End Method
		
	Method ContainCards:Int()
		Return count > 0
	End Method
		
	Method ExtractAllCards:Card[]()
		Local c:Card[count]
		For Local i:Int = 0 Until count
			c[i] = Self.cards[i]
		Next
		count = 0
		oldFace = Self.oldFace
		'cards = Null
		Return c
	End Method
	
	Method GetOldStackIndex:Int()
		Return Self.oldStackIndex
	End Method
	
	Method GetOldFace:Int()
		Return Self.oldFace
	End Method
	
	Method SetOffset:void(x:Int,y:Int)
		cardShift.x = mouse.x - x
		cardShift.y = mouse.y - y
	End Method
	
	Method Display:void()
		Local px:Int = mouse.x - cardShift.x
		Local py:Int = mouse.y - cardShift.y
		Local n:Int = 0
		For Local i:Int = 0 Until count
			cards[i].SeTPosition(px,py)
			If cards[i].face = FRONT
				px += spacing.Frontx
				py += spacing.Fronty
			Else
				px += spacing.backx
				py += spacing.backx
			EndIf
			cards[i].Draw()
		Next 

	End Method
	
End class	

class AnimatedCard
	Field card:Card[]
	Field slotIndex:Int
	Field spacing:Spacing
	Field source:Position
	Field x:Float
	Field y:Float
	Field dx:Float
	Field dy:Float
	Field speed:Float
	Field distance:Float
	
	Method new(card:Card[],destinationx:Float,destinationy:Float,speed:Float,slotIndex:Int)
		Self.spacing = New Spacing
		Self.source = New Position
		Self.card = card
		Self.source.x = card[0].GetXPosition()
		Self.source.y = card[0].GetYPosition()
		
		Self.x = Self.source.x
		Self.y = Self.source.y
		Local lx:Float = destinationx - Self.x
		Local ly:Float = destinationy - Self.y
		Local angle:Float = ATan2(ly,lx)
		Self.dx = Cos(angle)
		Self.dy = Sin(angle)
		Self.distance = Sqrt(lx*lx+ly*ly)
		Self.slotIndex = slotIndex
		Self.spacing.Frontx = 0
		Self.spacing.Fronty = 15
		Self.speed = speed
	End Method
	
	Method SeTSpacing:void(x:Int,y:Int)
		spacing.Frontx = x
		spacing.Fronty = y
	End Method

	Method GetCard:Card[]()
		Return Self.card
	End Method
	
	Method GetSlotIndex:Int()
		Return Self.slotIndex
	End Method
	
	Method Update:Int()
		x += dx*speed
		y += dy*speed
		Local td:Float = Sqrt((x-source.x)*(x-source.x) + (y-source.y)*(y-source.y))
		If td >= distance Return False
		card[0].SeTPosition(x,y)
		Return True
	End Method
	
	Method Display:void()
		Local n:Int = 0
		For Local c:Card = EachIn card
			c.SeTPosition(x,y+spacing.Fronty*n)
			c.Draw()
			n += 1
		Next
	End Method

End class

class Animation
	Field inList:List<AnimatedCard>
	Field activeList:List<AnimatedCard>
	Field outList:List<AnimatedCard>
	Field startTime:Float
	Field wait:Float
	Field working:Int
	
	Method New()
		Self.inList = New List<AnimatedCard>
		Self.outList = New List<AnimatedCard>
		Self.activeList = New List<AnimatedCard>
		Self.startTime = Millisecs()
		Self.wait = 50
		Self.working = True
	End Method
	
	Method AddAnimation:void(anim:AnimatedCard)
		inList.AddFirst(anim)
		working = True	
	End Method
	
	Method ExtractAnimation:AnimatedCard()
		If outList.IsEmpty() Return Null
		SFX.PlayCard()
		Return AnimatedCard(outList.RemoveLast())
	End Method
	
	Method Update:Int()
		If working
			Local time:Float = Millisecs() - startTime
			
			If time > wait
				If inList.IsEmpty() = False
					SFX.PlayCard()
					activeList.AddLast((inList.RemoveLast()))
				EndIf
				startTime = Millisecs()
			EndIf
			For Local c:AnimatedCard = EachIn activeList
				If c.Update() = False
					activeList.RemoveEach(c)
					outList.AddFirst(c)
				EndIf
			Next	
		EndIf
		
		If activeList.IsEmpty() And inList.IsEmpty() working = False
		Return working
	
	End Method
	
	Method IsDone:Int()
		Return working=False
	End Method
	
	Method Display:void()
		For Local animate:AnimatedCard = EachIn inList
			animate.Display()
		Next
		
		For Local animate:AnimatedCard = Eachin activeList
			animate.Display()
		Next
	End Method

End Class

Class Game

		Field dealing:Int
		Field dumping:Int
		Field count:Int
		Field enableUndo:Int
		Field disableUndo:Int
		Field RedoingUndoing:Int
		Field Undealing:Int
		Field Undumping:Int
		Field playField:PlayField
		Field dealer:Dealer
		Field mouseStack:MouseStack
		Field animation:Animation
		Field dump:Dump
		Field buffer:Buffer
		Field tempSupply:Supply
		Field group:BufferGroup
		Field rel:BufferGroup
		
		Method New()
			dealer = New Dealer(700,10,2,11,10)
			playField = New PlayField(DeviceWidth(),600,120)
			mouseStack = New MouseStack()
			mouseStack.SeTCardSpacing(0,20,FRONT)
			mouseStack.SeTCardSpacing(0,10,BACK)
			'cardForm.SetFrontStyle(NATURE)
			cardForm.SetScale(.3,.3)
			playField.CreateStacks(10)
			playField.StackSeTSpacing(0,20,FRONT)
			playField.StackSeTSpacing(0,10,BACK)
			animation = New Animation()
			dump = New Dump(10,10)
			buffer = New Buffer
			disableUndo = True
			enableUndo = False
			dumping = False
			dealing = False
			Undealing = False
			cardMoves = 0
		End Method
	
		Method DealingCards:void()
			Local slotIndex:Int,card:Card[]		
			If animation.Update() = True '
				Local animated:AnimatedCard = animation.ExtractAnimation()
				While animated
					card = animated.GetCard()
					slotIndex = animated.GetSlotIndex()
					playField.AddCardsToStack(card,slotIndex)
					animated = animation.ExtractAnimation()
				Wend
			Else
				Local animated:AnimatedCard = animation.ExtractAnimation()
				While animated
				 	Local slotIndex:Int
					card = animated.GetCard()
					slotIndex = animated.GetSlotIndex()
					playField.AddCardsToStack(card,slotIndex)
					animated = animation.ExtractAnimation()						
				Wend
				dealing = False
			EndIf	
		End Method
		
		Method DumpingCards:Void()
				Local slotIndex:Int, card:Card[]
				If animation.Update() = True
					Local animated:AnimatedCard = animation.ExtractAnimation()
					While animated
						Local slotIndex:Int
						card = animated.GetCard()
						slotIndex = animated.GetSlotIndex()
						dump.AddCard(card)
						animated = animation.ExtractAnimation()
					Wend
				Else
					Local animated:AnimatedCard = animation.ExtractAnimation()
					While animated
						Local slotIndex:Int
						card = animated.GetCard()
						slotIndex = animated.GetSlotIndex()
						dump.AddCard(card)
						animated = animation.ExtractAnimation()
					Wend
					dumping = False				
				EndIf
		End Method
		
		Method DealFaceDown:void()
			Local x:Int,y:Int
			Local index:Int
			' Get a set of cards to send to playfield
			Local supply:Supply = dealer.GetASet() 
			If supply ' if there were cards available process				
				'grab one card at a time from collected set of cards
				Local card:Card[] = supply.ExtractCard()

				index = 0
				While card
					SFX.PlayCard()
					card[0].SetFace(BACK)
					x = playField.GetStackNextX(index)
					y = playField.GetStackNextY(index)
					Local animated:AnimatedCard = New AnimatedCard(card,x,y,CARD_SPEED,index)
					animation.AddAnimation(animated)
					card = supply.ExtractCard()
					dealing = True
					index += 1
				Wend
				count += 1
			EndIf
		End Method

		Method DealFaceUp:void()
			Local x:Int
			Local y:Int
			Local index:Int 
			Local supply:Supply = dealer.GetASet()
			If supply				
				Local card:Card[] = supply.ExtractCard()	
				index = 0
				While card
					card[0].SetFace(FRONT)
					x = playField.GetStackNextX(index)
					y = playField.GetStackNextY(index)
					Local animated:AnimatedCard = New AnimatedCard(card,x,y,CARD_SPEED,index)
					animation.AddAnimation(animated)
					card = supply.ExtractCard()
					dealing = True
					index += 1
				Wend
				count += 1
			EndIf
		End Method

		Method GetCards:void()
			Local stackNo:Int
			Local cardPos:Int
			Local oldStackFrontCardFace:Int
			Local number2:Int
			stackNo = playField.GetMouseStackNumber()
			cardPos = -1
			If stackNo <> -1
				cardPos = playField.GetMouseCardIndex(stackNo)
			EndIf
			If cardPos <> -1
				If cardPos >= 0 Then
					If playField.StackValidCardRules(stackNo,cardPos)
						oldStackFrontCardFace = playField.IndexPreviousCardFace(stackNo,cardPos)
						Local card:Card[] = playField.GetCards(stackNo,cardPos)
						If card
							mouseStack.AddCards(card,stackNo,oldStackFrontCardFace)
						EndIf
					EndIf
				EndIf
			ElseIf dealer.MouseInSet()
				DistributeCards()
			EndIf
		
		End Method
		
		Method DistributeCards:void()
			Local x:Int, y:Int
			Local column:Int
			Local row:Int
			Local cardPos:Int
			Local suit:Int
			If Not playField.EmptyStacks()
				Local supply:Supply = dealer.GetASet()
				If supply
					Local card:Card[] = supply.ExtractCard()
					column = 0
					group = New BufferGroup()
					While card
						cardPos = playField.StackPeekFrontCardNumber(column)
						suit = playField.StackPeekFrontCardSuit(column)
						row = playField.StackPeekFrontCardIndex(column)
						AddStep(row,column,-1,suit)
						card[0].SetFace(FRONT)
						x = playField.GetStackNextX(column)
						y = playField.GetStackNextY(column)
						Local animated:AnimatedCard = New AnimatedCard(card,x,y,CARD_SPEED,column)
						animation.AddAnimation(animated)
						card = supply.ExtractCard()
						dealing = True
						column += 1
					Wend
					PostSteps()
					count += 1
				EndIf
			Else
				'notify that there is an empty stack not able to deal the set
			EndIf							
		
		End Method
		
		Method PositionCards:void(stackNo:Int,state:Int)
			Local number:Int
			Local number2:Int
			Local suit:Int
			Local index:Int
			Local oldFace:Int
			Local x:Int,y:Int
			Local oldStackNo:Int
			Local card:Card[]
			If mouseStack.ContainCards()
				number = mouseStack.PeekFirsTCardNumber() ' Get the card number of the back(last) card and the stack number it came from
				suit = mouseStack.PeekFirsTCardSuit() ' Get the card number of the back(last) card and the stack number it came from
			Endif
			Local tn:Int = playField.StackContainCards(stackNo) ' Get the card number of the Front(first) card in the stack and the card suit. 
			If tn 
				number2 = playField.StackPeekFrontCardNumber(stackNo) ' Get the card number of the Front card(first) in the stack and the card suit. 
				suit = playField.StackPeekFrontCardSuit(stackNo) ' Get the card number of the Front card(first) in the stack and the card suit. 
				index = playField.StackPeekFrontCardIndex(stackNo) ' Get the card number of the Front card(first) in the stack and the card suit. 
			EndIf
			If number+1 = number2 ' if  the value of the card in the stack is one less than  the card  being placed next to it, process.
				SFX.PlayCard()
				card = mouseStack.ExtractAllCards() ' remove all cards from mouse stack
				oldStackNo = mouseStack.GetOldStackIndex()
				oldFace = mouseStack.GetOldFace()
				InitSteps(index+1, stackNo, oldStackNo, oldFace)
				playField.AddCardsToStack(card,stackNo)
				If oldStackNo <> stackNo 
					cardMoves += 1
				Endif
				If stackNo <> oldStackNo
					playField.StackFaceFrontCard(oldStackNo)
				EndIf
				If playField.StackCompleteSuit(stackNo)
					card = playField.StackExtractFrontCard(stackNo)
					AddStep(index,stackNo,-2,oldFace) 'dont need index and oldFace
					PostSteps()
					Repeat 
						x  = dump.GetNextX()
						y  = dump.GetNextY()
						Local animated:AnimatedCard = New AnimatedCard(card,x,y,CARD_SPEED,stackNo)
						animation.AddAnimation(animated)
						If card[0].number = KING Exit
						card = playField.StackExtractFrontCard(stackNo)
					Forever
					playField.StackFaceFrontCard(oldStackNo)
					dumping = True
				EndIf	
			ElseIf tn = 0
				card = mouseStack.ExtractAllCards() ' remove all cards from mouse stack
				oldStackNo = mouseStack.GetOldStackIndex()
				oldFace = mouseStack.GetOldFace()
				InitSteps(index, stackNo, oldStackNo, oldFace)
				playField.AddCardsToStack(card,stackNo)
				If oldStackNo <> stackNo
					cardMoves += 1
				Endif
				If stackNo <> oldStackNo
					playField.StackFaceFrontCard(oldStackNo)
				EndIf
			Else
				card = mouseStack.ExtractAllCards()
				stackNo = mouseStack.GetOldStackIndex()
				oldFace = mouseStack.GetOldFace()
				If card
					x = playField.GetStackNextX(stackNo)
					y = playField.GetStackNextY(stackNo)
					Local animated:AnimatedCard = New AnimatedCard(card,x,y,CARD_SPEED,stackNo)
					If card.Length()  > 1 Then animated.SeTSpacing(0,20)
					animation.AddAnimation(animated)
					dealing = True
				EndIf
			EndIf
			PostSteps()
		End Method
	
		Method Undump:Void()
			Local slotIndex:Int,card:Card[]
			Local x:Int,y:Int
			Local sx:Int,sy:Int	
			If animation.Update() = True '
				Local animated:AnimatedCard = animation.ExtractAnimation()
				While animated
					card = animated.GetCard()
					slotIndex = animated.GetSlotIndex()
					playField.AddCardsToStack(card,slotIndex)
					animated = animation.ExtractAnimation()
				Wend
			Else
				Local animated:AnimatedCard = animation.ExtractAnimation()
				While animated
				 	Local slotIndex:Int
					card = animated.GetCard()
					slotIndex = animated.GetSlotIndex()
					playField.AddCardsToStack(card,slotIndex)
					animated = animation.ExtractAnimation()						
				Wend

				Local stp:BufferStep = rel.Extract()
				If stp = Null
					Undumping = False
					Return
				EndIf
				playField.StackSetFrontFace(stp.oldStack,stp.oldFace)
				card = playField.GetCards(stp.currentStack,stp.currentIndex)
				x = playField.GetStackNextX(stp.oldStack)
				y = playField.GetStackNextY(stp.oldStack)
				animated = New AnimatedCard(card,x,y,CARD_SPEED,stp.oldStack)
				animation.AddAnimation(animated)
				cardMoves += 1
			EndIf	
				
		End Method		

		Method Undo:Void()
			If animation.IsDone() And mouseStack.ContainCards() = False
			
				Local x:Int,y:Int
				rel = BufferGroup(buffer.Undo())
				If rel = Null Return
				Local stp:BufferStep = rel.Extract()
				If stp = Null Return
				If stp.oldStack >= 0 And stp.oldStack < 10
					playField.StackSetFrontFace(stp.oldStack,stp.oldFace)
					Local card:Card[] = playField.GetCards(stp.currentStack,stp.currentIndex)
					x = playField.GetStackNextX(stp.oldStack)
					y = playField.GetStackNextY(stp.oldStack)
					Local animated:AnimatedCard = New AnimatedCard(card,x,y,CARD_SPEED,stp.oldStack)
					animation.AddAnimation(animated)
					RedoingUndoing = True
				ElseIf stp.oldStack = -1
					Local card:Card[] = playField.StackExtractFrontCard(stp.currentStack)
					x = dealer.GetNextX()
					y = dealer.GetNextY()
					While card
						Local animated:AnimatedCard =New  AnimatedCard(card,x,y,CARD_SPEED,stp.oldStack)
						animation.AddAnimation(animated)
						stp = rel.Extract()
						Local c:Card[]
						card = c
						If stp Then card = playField.StackExtractFrontCard(stp.currentStack)
					Wend
					tempSupply = New Supply
					Undealing = True
	
				ElseIf stp.oldStack = -2
					Local tempSupply:Supply = dump.GetASet()
					If tempSupply
						x = playField.GetStackNextX(stp.currentStack)
						y = playField.GetStackNextY(stp.currentStack)
						Local sx:Int,sy:Int
						sx = playField.StackGetCardspacingX(FRONT,stp.currentStack)
						sy = playField.StackGetCardspacingY(FRONT,stp.currentStack)
						Local card:Card[] = tempSupply.ExtractCard()
						While card
							card[0].SetFace(FRONT)
							Local animated:AnimatedCard = New AnimatedCard(card,x,y,CARD_SPEED,stp.currentStack)
							animation.AddAnimation(animated)
							card = tempSupply.ExtractCard()
							y += sy
						Wend
						Undumping = True
					EndIf
				EndIf
				
				If buffer.UndoIsEmpty()
					disableUndo = True
				Endif
				
			Endif
			
		End Method
		
		Method Redo:void()
		
		End Method
		
		Method InitSteps:Void(index:Int,stackNo:Int,oldStackNo:Int,oldFace:Int)
			group = New BufferGroup( New BufferStep(stackNo,index,oldStackNo,oldFace))
		End Method
		
		Method AddStep:void(index:Int,stackNo:Int,oldStackNo:Int,oldFace:Int)
			group.AddStep(New BufferStep(stackNo,index,oldStackNo,oldFace))
		End Method
		
		Method PostSteps:Void()
			If group Then buffer.Save(group)
			group=Null
		End Method
		
		Method Undeal:Void()
			Local card:Card[],slotIndex:Int
			If animation.Update() = True
				Local animated:AnimatedCard = animation.ExtractAnimation()
				While animated
					card = animated.GetCard()
					slotIndex = animated.GetSlotIndex()
					card[0].face = BACK
					tempSupply.AddCards(card)
					animated = animation.ExtractAnimation()
				Wend
			Else
				Local animated:AnimatedCard = animation.ExtractAnimation()
				While animated
				 	Local slotIndex:Int
					card = animated.GetCard()
					slotIndex = animated.GetSlotIndex()
					card[0].face = BACK
					tempSupply.AddCards(card)
					animated = animation.ExtractAnimation()						
				Wend
				dealer.AddASet(tempSupply)
				tempSupply = Null
				Undealing = False
			EndIf
		End Method
		
		Method RedoUndo:void()
			Local slotIndex:Int,card:Card[]		
			If animation.Update() = True '
				Local animated:AnimatedCard = animation.ExtractAnimation()
				While animated
					card = animated.GetCard()
					slotIndex = animated.GetSlotIndex()
					playField.AddCardsToStack(card,slotIndex)
					animated = animation.ExtractAnimation()
				Wend
			Else
				Local animated:AnimatedCard = animation.ExtractAnimation()
				While animated
				 	Local slotIndex:Int
					card = animated.GetCard()
					slotIndex = animated.GetSlotIndex()
					playField.AddCardsToStack(card,slotIndex)
					animated = animation.ExtractAnimation()						
				Wend
				cardMoves += 1
				Local stp:BufferStep = rel.Extract()
				If stp
					Local x:Int,y:Int
					playField.StackSetFrontFace(stp.oldStack,stp.oldFace)
					Local card:Card[] = playField.GetCards(stp.currentStack,stp.currentIndex)
					x = playField.GetStackNextX(stp.oldStack)
					y = playField.GetStackNextY(stp.oldStack)
					Local animated:AnimatedCard = New AnimatedCard(card,x,y,CARD_SPEED,stp.oldStack)
					animation.AddAnimation(animated)
				Else	
					If buffer.UndoIsEmpty()
						disableUndo = True
					EndIf
					RedoingUndoing = False
				Endif
			Endif
		End Method

		Method Update:Void()
			Local card:Card[]
			Local index:Int
			Local x:Int,y:Int
			Local stackNo:Int
			Local cardPos:Int
			Local OldStackNo:Int
			Local oldFace:Int
			
			If RedoingUndoing = True
				RedoUndo()
			Elseif dealing = True 'auto moving  cards from dealer to playfield stacks & from mouse to playfield stacks
				DealingCards()
			Elseif Undealing
				Undeal()
			Elseif dumping = True 'auto moving complete suits from playfield to dump Area.
				DumpingCards()
			Elseif Undumping
				Undump()	
'-------------------------determines how many sets to pre-deal fase down ---------------				
			Elseif count < 4'prepare playe field with 4 x 10 cards set face down.
				DealFaceDown()
'-------------------------next set pre-deals fase up -----------------------------------
			Elseif count < 5 'set number 4 10 card face up
				DealFaceUp()
			Elseif mouse.ButtonActivated()
				GetCards()
			Elseif mouse.ButtonReleased()
				If mouseStack.IsActive()
					cardPos = -1
					stackNo = playField.GetMouseStackNumber()
					If stackNo <> -1
						cardPos = playField.GetMouseCardIndex(stackNo)
					Endif
					If cardPos <> -1
						PositionCards(stackNo,cardPos)
					Else
						card = mouseStack.ExtractAllCards()
						stackNo = mouseStack.GetOldStackIndex()
						oldFace = mouseStack.GetOldFace()
						x = playField.GetStackNextX(stackNo)
						y = playField.GetStackNextY(stackNo)
						Local animated:AnimatedCard = New AnimatedCard(card,x,y,CARD_SPEED,stackNo)
						animation.AddAnimation(animated)
						dealing = True
					EndIf
				EndIf
			EndIf
	End Method
	
	Method IsOver:Int()
		Return dump.GetCount() = 104
	End Method
	
	Method Display:Void()
		
		playField.Display()
		dealer.Display()
		dump.Display()
		If mouseStack.IsActive() Then mouseStack.Display()
		animation.Display()
		RenderText "Moves "+cardMoves,620 ,560
		
	End Method
End Class
