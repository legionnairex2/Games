
//${CONFIG_BEGIN}
CFG_BINARY_FILES="*.bin|*.dat";
CFG_BRL_GAMETARGET_IMPLEMENTED="1";
CFG_BRL_THREAD_IMPLEMENTED="1";
CFG_CONFIG="debug";
CFG_HOST="macos";
CFG_HTML5_WEBAUDIO_ENABLED="1";
CFG_IMAGE_FILES="*.png|*.jpg";
CFG_LANG="js";
CFG_MOJO_AUTO_SUSPEND_ENABLED="1";
CFG_MOJO_DRIVER_IMPLEMENTED="1";
CFG_MUSIC_FILES="*.wav|*.ogg|*.mp3|*.m4a";
CFG_OPENGL_GLES20_ENABLED="0";
CFG_SAFEMODE="0";
CFG_SOUND_FILES="*.wav|*.ogg|*.mp3|*.m4a";
CFG_TARGET="html5";
CFG_TEXT_FILES="*.txt|*.xml|*.json";
//${CONFIG_END}

//${METADATA_BEGIN}
var META_DATA="[mojo_font.png];type=image/png;width=864;height=13;\n[button.png];type=image/png;width=380;height=124;\n[frame.png];type=image/png;width=128;height=128;\n[buttons.png];type=image/png;width=380;height=124;\n[carddeck2.png];type=image/png;width=782;height=495;\n[carddeckjp.png];type=image/png;width=3250;height=1800;\n[chalk.png];type=image/png;width=1024;height=64;\n[spider.jpg];type=image/jpg;width=800;height=700;\n";
//${METADATA_END}

//${TRANSCODE_BEGIN}

// Javascript Monkey runtime.
//
// Placed into the public domain 24/02/2011.
// No warranty implied; use at your own risk.

//***** JavaScript Runtime *****

var D2R=0.017453292519943295;
var R2D=57.29577951308232;

var err_info="";
var err_stack=[];

var dbg_index=0;

function push_err(){
	err_stack.push( err_info );
}

function pop_err(){
	err_info=err_stack.pop();
}

function stackTrace(){
	if( !err_info.length ) return "";
	var str=err_info+"\n";
	for( var i=err_stack.length-1;i>0;--i ){
		str+=err_stack[i]+"\n";
	}
	return str;
}

function print( str ){
	var cons=document.getElementById( "GameConsole" );
	if( cons ){
		cons.value+=str+"\n";
		cons.scrollTop=cons.scrollHeight-cons.clientHeight;
	}else if( window.console!=undefined ){
		window.console.log( str );
	}
	return 0;
}

function alertError( err ){
	if( typeof(err)=="string" && err=="" ) return;
	alert( "Monkey Runtime Error : "+err.toString()+"\n\n"+stackTrace() );
}

function error( err ){
	throw err;
}

function debugLog( str ){
	if( window.console!=undefined ) window.console.log( str );
}

function debugStop(){
	debugger;	//	error( "STOP" );
}

function dbg_object( obj ){
	if( obj ) return obj;
	error( "Null object access" );
}

function dbg_charCodeAt( str,index ){
	if( index<0 || index>=str.length ) error( "Character index out of range" );
	return str.charCodeAt( index );
}

function dbg_array( arr,index ){
	if( index<0 || index>=arr.length ) error( "Array index out of range" );
	dbg_index=index;
	return arr;
}

function new_bool_array( len ){
	var arr=Array( len );
	for( var i=0;i<len;++i ) arr[i]=false;
	return arr;
}

function new_number_array( len ){
	var arr=Array( len );
	for( var i=0;i<len;++i ) arr[i]=0;
	return arr;
}

function new_string_array( len ){
	var arr=Array( len );
	for( var i=0;i<len;++i ) arr[i]='';
	return arr;
}

function new_array_array( len ){
	var arr=Array( len );
	for( var i=0;i<len;++i ) arr[i]=[];
	return arr;
}

function new_object_array( len ){
	var arr=Array( len );
	for( var i=0;i<len;++i ) arr[i]=null;
	return arr;
}

function resize_bool_array( arr,len ){
	var i=arr.length;
	arr=arr.slice(0,len);
	if( len<=i ) return arr;
	arr.length=len;
	while( i<len ) arr[i++]=false;
	return arr;
}

function resize_number_array( arr,len ){
	var i=arr.length;
	arr=arr.slice(0,len);
	if( len<=i ) return arr;
	arr.length=len;
	while( i<len ) arr[i++]=0;
	return arr;
}

function resize_string_array( arr,len ){
	var i=arr.length;
	arr=arr.slice(0,len);
	if( len<=i ) return arr;
	arr.length=len;
	while( i<len ) arr[i++]="";
	return arr;
}

function resize_array_array( arr,len ){
	var i=arr.length;
	arr=arr.slice(0,len);
	if( len<=i ) return arr;
	arr.length=len;
	while( i<len ) arr[i++]=[];
	return arr;
}

function resize_object_array( arr,len ){
	var i=arr.length;
	arr=arr.slice(0,len);
	if( len<=i ) return arr;
	arr.length=len;
	while( i<len ) arr[i++]=null;
	return arr;
}

function string_compare( lhs,rhs ){
	var n=Math.min( lhs.length,rhs.length ),i,t;
	for( i=0;i<n;++i ){
		t=lhs.charCodeAt(i)-rhs.charCodeAt(i);
		if( t ) return t;
	}
	return lhs.length-rhs.length;
}

function string_replace( str,find,rep ){	//no unregex replace all?!?
	var i=0;
	for(;;){
		i=str.indexOf( find,i );
		if( i==-1 ) return str;
		str=str.substring( 0,i )+rep+str.substring( i+find.length );
		i+=rep.length;
	}
}

function string_trim( str ){
	var i=0,i2=str.length;
	while( i<i2 && str.charCodeAt(i)<=32 ) i+=1;
	while( i2>i && str.charCodeAt(i2-1)<=32 ) i2-=1;
	return str.slice( i,i2 );
}

function string_startswith( str,substr ){
	return substr.length<=str.length && str.slice(0,substr.length)==substr;
}

function string_endswith( str,substr ){
	return substr.length<=str.length && str.slice(str.length-substr.length,str.length)==substr;
}

function string_tochars( str ){
	var arr=new Array( str.length );
	for( var i=0;i<str.length;++i ) arr[i]=str.charCodeAt(i);
	return arr;
}

function string_fromchars( chars ){
	var str="",i;
	for( i=0;i<chars.length;++i ){
		str+=String.fromCharCode( chars[i] );
	}
	return str;
}

function object_downcast( obj,clas ){
	if( obj instanceof clas ) return obj;
	return null;
}

function object_implements( obj,iface ){
	if( obj && obj.implments && obj.implments[iface] ) return obj;
	return null;
}

function extend_class( clas ){
	var tmp=function(){};
	tmp.prototype=clas.prototype;
	return new tmp;
}

function ThrowableObject(){
}

ThrowableObject.prototype.toString=function(){ 
	return "Uncaught Monkey Exception"; 
}


function BBGameEvent(){}
BBGameEvent.KeyDown=1;
BBGameEvent.KeyUp=2;
BBGameEvent.KeyChar=3;
BBGameEvent.MouseDown=4;
BBGameEvent.MouseUp=5;
BBGameEvent.MouseMove=6;
BBGameEvent.TouchDown=7;
BBGameEvent.TouchUp=8;
BBGameEvent.TouchMove=9;
BBGameEvent.MotionAccel=10;

function BBGameDelegate(){}
BBGameDelegate.prototype.StartGame=function(){}
BBGameDelegate.prototype.SuspendGame=function(){}
BBGameDelegate.prototype.ResumeGame=function(){}
BBGameDelegate.prototype.UpdateGame=function(){}
BBGameDelegate.prototype.RenderGame=function(){}
BBGameDelegate.prototype.KeyEvent=function( ev,data ){}
BBGameDelegate.prototype.MouseEvent=function( ev,data,x,y ){}
BBGameDelegate.prototype.TouchEvent=function( ev,data,x,y ){}
BBGameDelegate.prototype.MotionEvent=function( ev,data,x,y,z ){}
BBGameDelegate.prototype.DiscardGraphics=function(){}

function BBDisplayMode( width,height ){
	this.width=width;
	this.height=height;
}

function BBGame(){
	BBGame._game=this;
	this._delegate=null;
	this._keyboardEnabled=false;
	this._updateRate=0;
	this._started=false;
	this._suspended=false;
	this._debugExs=(CFG_CONFIG=="debug");
	this._startms=Date.now();
}

BBGame.Game=function(){
	return BBGame._game;
}

BBGame.prototype.SetDelegate=function( delegate ){
	this._delegate=delegate;
}

BBGame.prototype.Delegate=function(){
	return this._delegate;
}

BBGame.prototype.SetUpdateRate=function( updateRate ){
	this._updateRate=updateRate;
}

BBGame.prototype.SetKeyboardEnabled=function( keyboardEnabled ){
	this._keyboardEnabled=keyboardEnabled;
}

BBGame.prototype.Started=function(){
	return this._started;
}

BBGame.prototype.Suspended=function(){
	return this._suspended;
}

BBGame.prototype.Millisecs=function(){
	return Date.now()-this._startms;
}

BBGame.prototype.GetDate=function( date ){
	var n=date.length;
	if( n>0 ){
		var t=new Date();
		date[0]=t.getFullYear();
		if( n>1 ){
			date[1]=t.getMonth()+1;
			if( n>2 ){
				date[2]=t.getDate();
				if( n>3 ){
					date[3]=t.getHours();
					if( n>4 ){
						date[4]=t.getMinutes();
						if( n>5 ){
							date[5]=t.getSeconds();
							if( n>6 ){
								date[6]=t.getMilliseconds();
							}
						}
					}
				}
			}
		}
	}
}

BBGame.prototype.SaveState=function( state ){
	localStorage.setItem( "monkeystate@"+document.URL,state );	//key can't start with dot in Chrome!
	return 1;
}

BBGame.prototype.LoadState=function(){
	var state=localStorage.getItem( "monkeystate@"+document.URL );
	if( state ) return state;
	return "";
}

BBGame.prototype.LoadString=function( path ){

	var xhr=new XMLHttpRequest();
	xhr.open( "GET",this.PathToUrl( path ),false );
	
	xhr.send( null );
	
	if( xhr.status==200 || xhr.status==0 ) return xhr.responseText;
	
	return "";
}

BBGame.prototype.PollJoystick=function( port,joyx,joyy,joyz,buttons ){
	return false;
}

BBGame.prototype.OpenUrl=function( url ){
	window.location=url;
}

BBGame.prototype.SetMouseVisible=function( visible ){
	if( visible ){
		this._canvas.style.cursor='default';	
	}else{
		this._canvas.style.cursor="url('data:image/cur;base64,AAACAAEAICAAAAAAAACoEAAAFgAAACgAAAAgAAAAQAAAAAEAIAAAAAAAgBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA55ZXBgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAOeWVxAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADnllcGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9////////////////////+////////f/////////8%3D'), auto";
	}
}

BBGame.prototype.GetDeviceWidth=function(){
	return 0;
}

BBGame.prototype.GetDeviceHeight=function(){
	return 0;
}

BBGame.prototype.SetDeviceWindow=function( width,height,flags ){
}

BBGame.prototype.GetDisplayModes=function(){
	return new Array();
}

BBGame.prototype.GetDesktopMode=function(){
	return null;
}

BBGame.prototype.SetSwapInterval=function( interval ){
}

BBGame.prototype.PathToFilePath=function( path ){
	return "";
}

//***** js Game *****

BBGame.prototype.PathToUrl=function( path ){
	return path;
}

BBGame.prototype.LoadData=function( path ){

	var xhr=new XMLHttpRequest();
	xhr.open( "GET",this.PathToUrl( path ),false );

	if( xhr.overrideMimeType ) xhr.overrideMimeType( "text/plain; charset=x-user-defined" );

	xhr.send( null );
	if( xhr.status!=200 && xhr.status!=0 ) return null;

	var r=xhr.responseText;
	var buf=new ArrayBuffer( r.length );
	var bytes=new Int8Array( buf );
	for( var i=0;i<r.length;++i ){
		bytes[i]=r.charCodeAt( i );
	}
	return buf;
}

//***** INTERNAL ******

BBGame.prototype.Die=function( ex ){

	this._delegate=new BBGameDelegate();
	
	if( !ex.toString() ){
		return;
	}
	
	if( this._debugExs ){
		print( "Monkey Runtime Error : "+ex.toString() );
		print( stackTrace() );
	}
	
	throw ex;
}

BBGame.prototype.StartGame=function(){

	if( this._started ) return;
	this._started=true;
	
	if( this._debugExs ){
		try{
			this._delegate.StartGame();
		}catch( ex ){
			this.Die( ex );
		}
	}else{
		this._delegate.StartGame();
	}
}

BBGame.prototype.SuspendGame=function(){

	if( !this._started || this._suspended ) return;
	this._suspended=true;
	
	if( this._debugExs ){
		try{
			this._delegate.SuspendGame();
		}catch( ex ){
			this.Die( ex );
		}
	}else{
		this._delegate.SuspendGame();
	}
}

BBGame.prototype.ResumeGame=function(){

	if( !this._started || !this._suspended ) return;
	this._suspended=false;
	
	if( this._debugExs ){
		try{
			this._delegate.ResumeGame();
		}catch( ex ){
			this.Die( ex );
		}
	}else{
		this._delegate.ResumeGame();
	}
}

BBGame.prototype.UpdateGame=function(){

	if( !this._started || this._suspended ) return;

	if( this._debugExs ){
		try{
			this._delegate.UpdateGame();
		}catch( ex ){
			this.Die( ex );
		}	
	}else{
		this._delegate.UpdateGame();
	}
}

BBGame.prototype.RenderGame=function(){

	if( !this._started ) return;
	
	if( this._debugExs ){
		try{
			this._delegate.RenderGame();
		}catch( ex ){
			this.Die( ex );
		}	
	}else{
		this._delegate.RenderGame();
	}
}

BBGame.prototype.KeyEvent=function( ev,data ){

	if( !this._started ) return;
	
	if( this._debugExs ){
		try{
			this._delegate.KeyEvent( ev,data );
		}catch( ex ){
			this.Die( ex );
		}
	}else{
		this._delegate.KeyEvent( ev,data );
	}
}

BBGame.prototype.MouseEvent=function( ev,data,x,y ){

	if( !this._started ) return;
	
	if( this._debugExs ){
		try{
			this._delegate.MouseEvent( ev,data,x,y );
		}catch( ex ){
			this.Die( ex );
		}
	}else{
		this._delegate.MouseEvent( ev,data,x,y );
	}
}

BBGame.prototype.TouchEvent=function( ev,data,x,y ){

	if( !this._started ) return;
	
	if( this._debugExs ){
		try{
			this._delegate.TouchEvent( ev,data,x,y );
		}catch( ex ){
			this.Die( ex );
		}
	}else{
		this._delegate.TouchEvent( ev,data,x,y );
	}
}

BBGame.prototype.MotionEvent=function( ev,data,x,y,z ){

	if( !this._started ) return;
	
	if( this._debugExs ){
		try{
			this._delegate.MotionEvent( ev,data,x,y,z );
		}catch( ex ){
			this.Die( ex );
		}
	}else{
		this._delegate.MotionEvent( ev,data,x,y,z );
	}
}

BBGame.prototype.DiscardGraphics=function(){

	if( !this._started ) return;
	
	if( this._debugExs ){
		try{
			this._delegate.DiscardGraphics();
		}catch( ex ){
			this.Die( ex );
		}
	}else{
		this._delegate.DiscardGraphics();
	}
}


function BBHtml5Game( canvas ){
	BBGame.call( this );
	BBHtml5Game._game=this;
	this._canvas=canvas;
	this._loading=0;
	this._timerSeq=0;
	this._gl=null;
	if( CFG_OPENGL_GLES20_ENABLED=="1" ){
		this._gl=this._canvas.getContext( "webgl" );
		if( !this._gl ) this._gl=this._canvas.getContext( "experimental-webgl" );
		if( !this._gl ) this.Die( "Can't create WebGL" );
		gl=this._gl;
	}
}

BBHtml5Game.prototype=extend_class( BBGame );

BBHtml5Game.Html5Game=function(){
	return BBHtml5Game._game;
}

BBHtml5Game.prototype.ValidateUpdateTimer=function(){

	++this._timerSeq;
	if( this._suspended ) return;
	
	var game=this;
	var seq=game._timerSeq;
	
	var maxUpdates=4;
	var updateRate=this._updateRate;
	
	if( !updateRate ){

		var reqAnimFrame=(window.requestAnimationFrame || window.webkitRequestAnimationFrame || window.mozRequestAnimationFrame || window.oRequestAnimationFrame || window.msRequestAnimationFrame);
	
		if( reqAnimFrame ){
			function animate(){
				if( seq!=game._timerSeq ) return;
	
				game.UpdateGame();
				if( seq!=game._timerSeq ) return;
	
				reqAnimFrame( animate );
				game.RenderGame();
			}
			reqAnimFrame( animate );
			return;
		}
		
		maxUpdates=1;
		updateRate=60;
	}
	
	var updatePeriod=1000.0/updateRate;
	var nextUpdate=0;

	function timeElapsed(){
		if( seq!=game._timerSeq ) return;
		
		if( !nextUpdate ) nextUpdate=Date.now();
		
		for( var i=0;i<maxUpdates;++i ){
		
			game.UpdateGame();
			if( seq!=game._timerSeq ) return;
			
			nextUpdate+=updatePeriod;
			var delay=nextUpdate-Date.now();
			
			if( delay>0 ){
				setTimeout( timeElapsed,delay );
				game.RenderGame();
				return;
			}
		}
		nextUpdate=0;
		setTimeout( timeElapsed,0 );
		game.RenderGame();
	}

	setTimeout( timeElapsed,0 );
}

//***** BBGame methods *****

BBHtml5Game.prototype.SetUpdateRate=function( updateRate ){

	BBGame.prototype.SetUpdateRate.call( this,updateRate );
	
	this.ValidateUpdateTimer();
}

BBHtml5Game.prototype.GetMetaData=function( path,key ){
	if( path.indexOf( "monkey://data/" )!=0 ) return "";
	path=path.slice(14);

	var i=META_DATA.indexOf( "["+path+"]" );
	if( i==-1 ) return "";
	i+=path.length+2;

	var e=META_DATA.indexOf( "\n",i );
	if( e==-1 ) e=META_DATA.length;

	i=META_DATA.indexOf( ";"+key+"=",i )
	if( i==-1 || i>=e ) return "";
	i+=key.length+2;

	e=META_DATA.indexOf( ";",i );
	if( e==-1 ) return "";

	return META_DATA.slice( i,e );
}

BBHtml5Game.prototype.PathToUrl=function( path ){
	if( path.indexOf( "monkey:" )!=0 ){
		return path;
	}else if( path.indexOf( "monkey://data/" )==0 ) {
		return "data/"+path.slice( 14 );
	}
	return "";
}

BBHtml5Game.prototype.GetLoading=function(){
	return this._loading;
}

BBHtml5Game.prototype.IncLoading=function(){
	++this._loading;
	return this._loading;
}

BBHtml5Game.prototype.DecLoading=function(){
	--this._loading;
	return this._loading;
}

BBHtml5Game.prototype.GetCanvas=function(){
	return this._canvas;
}

BBHtml5Game.prototype.GetWebGL=function(){
	return this._gl;
}

BBHtml5Game.prototype.GetDeviceWidth=function(){
	return this._canvas.width;
}

BBHtml5Game.prototype.GetDeviceHeight=function(){
	return this._canvas.height;
}

//***** INTERNAL *****

BBHtml5Game.prototype.UpdateGame=function(){

	if( !this._loading ) BBGame.prototype.UpdateGame.call( this );
}

BBHtml5Game.prototype.SuspendGame=function(){

	BBGame.prototype.SuspendGame.call( this );
	
	BBGame.prototype.RenderGame.call( this );
	
	this.ValidateUpdateTimer();
}

BBHtml5Game.prototype.ResumeGame=function(){

	BBGame.prototype.ResumeGame.call( this );
	
	this.ValidateUpdateTimer();
}

BBHtml5Game.prototype.Run=function(){

	var game=this;
	var canvas=game._canvas;
	
	var xscale=1;
	var yscale=1;
	
	var touchIds=new Array( 32 );
	for( i=0;i<32;++i ) touchIds[i]=-1;
	
	function eatEvent( e ){
		if( e.stopPropagation ){
			e.stopPropagation();
			e.preventDefault();
		}else{
			e.cancelBubble=true;
			e.returnValue=false;
		}
	}
	
	function keyToChar( key ){
		switch( key ){
		case 8:case 9:case 13:case 27:case 32:return key;
		case 33:case 34:case 35:case 36:case 37:case 38:case 39:case 40:case 45:return key|0x10000;
		case 46:return 127;
		}
		return 0;
	}
	
	function mouseX( e ){
		var x=e.clientX+document.body.scrollLeft;
		var c=canvas;
		while( c ){
			x-=c.offsetLeft;
			c=c.offsetParent;
		}
		return x*xscale;
	}
	
	function mouseY( e ){
		var y=e.clientY+document.body.scrollTop;
		var c=canvas;
		while( c ){
			y-=c.offsetTop;
			c=c.offsetParent;
		}
		return y*yscale;
	}

	function touchX( touch ){
		var x=touch.pageX;
		var c=canvas;
		while( c ){
			x-=c.offsetLeft;
			c=c.offsetParent;
		}
		return x;
	}			
	
	function touchY( touch ){
		var y=touch.pageY;
		var c=canvas;
		while( c ){
			y-=c.offsetTop;
			c=c.offsetParent;
		}
		return y;
	}
	
	canvas.onkeydown=function( e ){
		game.KeyEvent( BBGameEvent.KeyDown,e.keyCode );
		var chr=keyToChar( e.keyCode );
		if( chr ) game.KeyEvent( BBGameEvent.KeyChar,chr );
		if( e.keyCode<48 || (e.keyCode>111 && e.keyCode<122) ) eatEvent( e );
	}

	canvas.onkeyup=function( e ){
		game.KeyEvent( BBGameEvent.KeyUp,e.keyCode );
	}

	canvas.onkeypress=function( e ){
		if( e.charCode ){
			game.KeyEvent( BBGameEvent.KeyChar,e.charCode );
		}else if( e.which ){
			game.KeyEvent( BBGameEvent.KeyChar,e.which );
		}
	}

	canvas.onmousedown=function( e ){
		switch( e.button ){
		case 0:game.MouseEvent( BBGameEvent.MouseDown,0,mouseX(e),mouseY(e) );break;
		case 1:game.MouseEvent( BBGameEvent.MouseDown,2,mouseX(e),mouseY(e) );break;
		case 2:game.MouseEvent( BBGameEvent.MouseDown,1,mouseX(e),mouseY(e) );break;
		}
		eatEvent( e );
	}
	
	canvas.onmouseup=function( e ){
		switch( e.button ){
		case 0:game.MouseEvent( BBGameEvent.MouseUp,0,mouseX(e),mouseY(e) );break;
		case 1:game.MouseEvent( BBGameEvent.MouseUp,2,mouseX(e),mouseY(e) );break;
		case 2:game.MouseEvent( BBGameEvent.MouseUp,1,mouseX(e),mouseY(e) );break;
		}
		eatEvent( e );
	}
	
	canvas.onmousemove=function( e ){
		game.MouseEvent( BBGameEvent.MouseMove,-1,mouseX(e),mouseY(e) );
		eatEvent( e );
	}

	canvas.onmouseout=function( e ){
		game.MouseEvent( BBGameEvent.MouseUp,0,mouseX(e),mouseY(e) );
		game.MouseEvent( BBGameEvent.MouseUp,1,mouseX(e),mouseY(e) );
		game.MouseEvent( BBGameEvent.MouseUp,2,mouseX(e),mouseY(e) );
		eatEvent( e );
	}
	
	canvas.onclick=function( e ){
		if( game.Suspended() ){
			canvas.focus();
		}
		eatEvent( e );
		return;
	}
	
	canvas.oncontextmenu=function( e ){
		return false;
	}
	
	canvas.ontouchstart=function( e ){
		if( game.Suspended() ){
			canvas.focus();
		}
		for( var i=0;i<e.changedTouches.length;++i ){
			var touch=e.changedTouches[i];
			for( var j=0;j<32;++j ){
				if( touchIds[j]!=-1 ) continue;
				touchIds[j]=touch.identifier;
				game.TouchEvent( BBGameEvent.TouchDown,j,touchX(touch),touchY(touch) );
				break;
			}
		}
		eatEvent( e );
	}
	
	canvas.ontouchmove=function( e ){
		for( var i=0;i<e.changedTouches.length;++i ){
			var touch=e.changedTouches[i];
			for( var j=0;j<32;++j ){
				if( touchIds[j]!=touch.identifier ) continue;
				game.TouchEvent( BBGameEvent.TouchMove,j,touchX(touch),touchY(touch) );
				break;
			}
		}
		eatEvent( e );
	}
	
	canvas.ontouchend=function( e ){
		for( var i=0;i<e.changedTouches.length;++i ){
			var touch=e.changedTouches[i];
			for( var j=0;j<32;++j ){
				if( touchIds[j]!=touch.identifier ) continue;
				touchIds[j]=-1;
				game.TouchEvent( BBGameEvent.TouchUp,j,touchX(touch),touchY(touch) );
				break;
			}
		}
		eatEvent( e );
	}
	
	window.ondevicemotion=function( e ){
		var tx=e.accelerationIncludingGravity.x/9.81;
		var ty=e.accelerationIncludingGravity.y/9.81;
		var tz=e.accelerationIncludingGravity.z/9.81;
		var x,y;
		switch( window.orientation ){
		case   0:x=+tx;y=-ty;break;
		case 180:x=-tx;y=+ty;break;
		case  90:x=-ty;y=-tx;break;
		case -90:x=+ty;y=+tx;break;
		}
		game.MotionEvent( BBGameEvent.MotionAccel,0,x,y,tz );
		eatEvent( e );
	}

	canvas.onfocus=function( e ){
		if( CFG_MOJO_AUTO_SUSPEND_ENABLED=="1" ){
			game.ResumeGame();
		}
	}
	
	canvas.onblur=function( e ){
		for( var i=0;i<256;++i ) game.KeyEvent( BBGameEvent.KeyUp,i );
		if( CFG_MOJO_AUTO_SUSPEND_ENABLED=="1" ){
			game.SuspendGame();
		}
	}
	
	canvas.updateSize=function(){
		xscale=canvas.width/canvas.clientWidth;
		yscale=canvas.height/canvas.clientHeight;
		game.RenderGame();
	}
	
	canvas.updateSize();
	
	canvas.focus();
	
	game.StartGame();

	game.RenderGame();
}


function BBMonkeyGame( canvas ){
	BBHtml5Game.call( this,canvas );
}

BBMonkeyGame.prototype=extend_class( BBHtml5Game );

BBMonkeyGame.Main=function( canvas ){

	var game=new BBMonkeyGame( canvas );

	try{

		bbInit();
		bbMain();

	}catch( ex ){
	
		game.Die( ex );
		return;
	}

	if( !game.Delegate() ) return;
	
	game.Run();
}


// HTML5 mojo runtime.
//
// Copyright 2011 Mark Sibly, all rights reserved.
// No warranty implied; use at your own risk.

// ***** gxtkGraphics class *****

function gxtkGraphics(){
	this.game=BBHtml5Game.Html5Game();
	this.canvas=this.game.GetCanvas()
	this.width=this.canvas.width;
	this.height=this.canvas.height;
	this.gl=null;
	this.gc=this.canvas.getContext( '2d' );
	this.tmpCanvas=null;
	this.r=255;
	this.b=255;
	this.g=255;
	this.white=true;
	this.color="rgb(255,255,255)"
	this.alpha=1;
	this.blend="source-over";
	this.ix=1;this.iy=0;
	this.jx=0;this.jy=1;
	this.tx=0;this.ty=0;
	this.tformed=false;
	this.scissorX=0;
	this.scissorY=0;
	this.scissorWidth=0;
	this.scissorHeight=0;
	this.clipped=false;
}

gxtkGraphics.prototype.BeginRender=function(){
	this.width=this.canvas.width;
	this.height=this.canvas.height;
	if( !this.gc ) return 0;
	this.gc.save();
	if( this.game.GetLoading() ) return 2;
	return 1;
}

gxtkGraphics.prototype.EndRender=function(){
	if( this.gc ) this.gc.restore();
}

gxtkGraphics.prototype.Width=function(){
	return this.width;
}

gxtkGraphics.prototype.Height=function(){
	return this.height;
}

gxtkGraphics.prototype.LoadSurface=function( path ){
	var game=this.game;

	var ty=game.GetMetaData( path,"type" );
	if( ty.indexOf( "image/" )!=0 ) return null;
	
	game.IncLoading();

	var image=new Image();
	image.onload=function(){ game.DecLoading(); }
	image.onerror=function(){ game.DecLoading(); }
	image.meta_width=parseInt( game.GetMetaData( path,"width" ) );
	image.meta_height=parseInt( game.GetMetaData( path,"height" ) );
	image.src=game.PathToUrl( path );

	return new gxtkSurface( image,this );
}

gxtkGraphics.prototype.CreateSurface=function( width,height ){
	var canvas=document.createElement( 'canvas' );
	
	canvas.width=width;
	canvas.height=height;
	canvas.meta_width=width;
	canvas.meta_height=height;
	canvas.complete=true;
	
	var surface=new gxtkSurface( canvas,this );
	
	surface.gc=canvas.getContext( '2d' );
	
	return surface;
}

gxtkGraphics.prototype.SetAlpha=function( alpha ){
	this.alpha=alpha;
	this.gc.globalAlpha=alpha;
}

gxtkGraphics.prototype.SetColor=function( r,g,b ){
	this.r=r;
	this.g=g;
	this.b=b;
	this.white=(r==255 && g==255 && b==255);
	this.color="rgb("+(r|0)+","+(g|0)+","+(b|0)+")";
	this.gc.fillStyle=this.color;
	this.gc.strokeStyle=this.color;
}

gxtkGraphics.prototype.SetBlend=function( blend ){
	switch( blend ){
	case 1:
		this.blend="lighter";
		break;
	default:
		this.blend="source-over";
	}
	this.gc.globalCompositeOperation=this.blend;
}

gxtkGraphics.prototype.SetScissor=function( x,y,w,h ){
	this.scissorX=x;
	this.scissorY=y;
	this.scissorWidth=w;
	this.scissorHeight=h;
	this.clipped=(x!=0 || y!=0 || w!=this.canvas.width || h!=this.canvas.height);
	this.gc.restore();
	this.gc.save();
	if( this.clipped ){
		this.gc.beginPath();
		this.gc.rect( x,y,w,h );
		this.gc.clip();
		this.gc.closePath();
	}
	this.gc.fillStyle=this.color;
	this.gc.strokeStyle=this.color;	
	this.gc.globalAlpha=this.alpha;	
	this.gc.globalCompositeOperation=this.blend;
	if( this.tformed ) this.gc.setTransform( this.ix,this.iy,this.jx,this.jy,this.tx,this.ty );
}

gxtkGraphics.prototype.SetMatrix=function( ix,iy,jx,jy,tx,ty ){
	this.ix=ix;this.iy=iy;
	this.jx=jx;this.jy=jy;
	this.tx=tx;this.ty=ty;
	this.gc.setTransform( ix,iy,jx,jy,tx,ty );
	this.tformed=(ix!=1 || iy!=0 || jx!=0 || jy!=1 || tx!=0 || ty!=0);
}

gxtkGraphics.prototype.Cls=function( r,g,b ){
	if( this.tformed ) this.gc.setTransform( 1,0,0,1,0,0 );
	this.gc.fillStyle="rgb("+(r|0)+","+(g|0)+","+(b|0)+")";
	this.gc.globalAlpha=1;
	this.gc.globalCompositeOperation="source-over";
	this.gc.fillRect( 0,0,this.canvas.width,this.canvas.height );
	this.gc.fillStyle=this.color;
	this.gc.globalAlpha=this.alpha;
	this.gc.globalCompositeOperation=this.blend;
	if( this.tformed ) this.gc.setTransform( this.ix,this.iy,this.jx,this.jy,this.tx,this.ty );
}

gxtkGraphics.prototype.DrawPoint=function( x,y ){
	if( this.tformed ){
		var px=x;
		x=px * this.ix + y * this.jx + this.tx;
		y=px * this.iy + y * this.jy + this.ty;
		this.gc.setTransform( 1,0,0,1,0,0 );
		this.gc.fillRect( x,y,1,1 );
		this.gc.setTransform( this.ix,this.iy,this.jx,this.jy,this.tx,this.ty );
	}else{
		this.gc.fillRect( x,y,1,1 );
	}
}

gxtkGraphics.prototype.DrawRect=function( x,y,w,h ){
	if( w<0 ){ x+=w;w=-w; }
	if( h<0 ){ y+=h;h=-h; }
	if( w<=0 || h<=0 ) return;
	//
	this.gc.fillRect( x,y,w,h );
}

gxtkGraphics.prototype.DrawLine=function( x1,y1,x2,y2 ){
	if( this.tformed ){
		var x1_t=x1 * this.ix + y1 * this.jx + this.tx;
		var y1_t=x1 * this.iy + y1 * this.jy + this.ty;
		var x2_t=x2 * this.ix + y2 * this.jx + this.tx;
		var y2_t=x2 * this.iy + y2 * this.jy + this.ty;
		this.gc.setTransform( 1,0,0,1,0,0 );
	  	this.gc.beginPath();
	  	this.gc.moveTo( x1_t,y1_t );
	  	this.gc.lineTo( x2_t,y2_t );
	  	this.gc.stroke();
	  	this.gc.closePath();
		this.gc.setTransform( this.ix,this.iy,this.jx,this.jy,this.tx,this.ty );
	}else{
	  	this.gc.beginPath();
	  	this.gc.moveTo( x1,y1 );
	  	this.gc.lineTo( x2,y2 );
	  	this.gc.stroke();
	  	this.gc.closePath();
	}
}

gxtkGraphics.prototype.DrawOval=function( x,y,w,h ){
	if( w<0 ){ x+=w;w=-w; }
	if( h<0 ){ y+=h;h=-h; }
	if( w<=0 || h<=0 ) return;
	//
  	var w2=w/2,h2=h/2;
	this.gc.save();
	this.gc.translate( x+w2,y+h2 );
	this.gc.scale( w2,h2 );
  	this.gc.beginPath();
	this.gc.arc( 0,0,1,0,Math.PI*2,false );
	this.gc.fill();
  	this.gc.closePath();
	this.gc.restore();
}

gxtkGraphics.prototype.DrawPoly=function( verts ){
	if( verts.length<2 ) return;
	this.gc.beginPath();
	this.gc.moveTo( verts[0],verts[1] );
	for( var i=2;i<verts.length;i+=2 ){
		this.gc.lineTo( verts[i],verts[i+1] );
	}
	this.gc.fill();
	this.gc.closePath();
}

gxtkGraphics.prototype.DrawPoly2=function( verts,surface,srx,srcy ){
	if( verts.length<4 ) return;
	this.gc.beginPath();
	this.gc.moveTo( verts[0],verts[1] );
	for( var i=4;i<verts.length;i+=4 ){
		this.gc.lineTo( verts[i],verts[i+1] );
	}
	this.gc.fill();
	this.gc.closePath();
}

gxtkGraphics.prototype.DrawSurface=function( surface,x,y ){
	if( !surface.image.complete ) return;
	
	if( this.white ){
		this.gc.drawImage( surface.image,x,y );
		return;
	}
	
	this.DrawImageTinted( surface.image,x,y,0,0,surface.swidth,surface.sheight );
}

gxtkGraphics.prototype.DrawSurface2=function( surface,x,y,srcx,srcy,srcw,srch ){
	if( !surface.image.complete ) return;

	if( srcw<0 ){ srcx+=srcw;srcw=-srcw; }
	if( srch<0 ){ srcy+=srch;srch=-srch; }
	if( srcw<=0 || srch<=0 ) return;

	if( this.white ){
		this.gc.drawImage( surface.image,srcx,srcy,srcw,srch,x,y,srcw,srch );
		return;
	}
	
	this.DrawImageTinted( surface.image,x,y,srcx,srcy,srcw,srch  );
}

gxtkGraphics.prototype.DrawImageTinted=function( image,dx,dy,sx,sy,sw,sh ){

	if( !this.tmpCanvas ){
		this.tmpCanvas=document.createElement( "canvas" );
	}

	if( sw>this.tmpCanvas.width || sh>this.tmpCanvas.height ){
		this.tmpCanvas.width=Math.max( sw,this.tmpCanvas.width );
		this.tmpCanvas.height=Math.max( sh,this.tmpCanvas.height );
	}
	
	var tmpGC=this.tmpCanvas.getContext( "2d" );
	tmpGC.globalCompositeOperation="copy";
	
	tmpGC.drawImage( image,sx,sy,sw,sh,0,0,sw,sh );
	
	var imgData=tmpGC.getImageData( 0,0,sw,sh );
	
	var p=imgData.data,sz=sw*sh*4,i;
	
	for( i=0;i<sz;i+=4 ){
		p[i]=p[i]*this.r/255;
		p[i+1]=p[i+1]*this.g/255;
		p[i+2]=p[i+2]*this.b/255;
	}
	
	tmpGC.putImageData( imgData,0,0 );
	
	this.gc.drawImage( this.tmpCanvas,0,0,sw,sh,dx,dy,sw,sh );
}

gxtkGraphics.prototype.ReadPixels=function( pixels,x,y,width,height,offset,pitch ){

	var imgData=this.gc.getImageData( x,y,width,height );
	
	var p=imgData.data,i=0,j=offset,px,py;
	
	for( py=0;py<height;++py ){
		for( px=0;px<width;++px ){
			pixels[j++]=(p[i+3]<<24)|(p[i]<<16)|(p[i+1]<<8)|p[i+2];
			i+=4;
		}
		j+=pitch-width;
	}
}

gxtkGraphics.prototype.WritePixels2=function( surface,pixels,x,y,width,height,offset,pitch ){

	if( !surface.gc ){
		if( !surface.image.complete ) return;
		var canvas=document.createElement( "canvas" );
		canvas.width=surface.swidth;
		canvas.height=surface.sheight;
		surface.gc=canvas.getContext( "2d" );
		surface.gc.globalCompositeOperation="copy";
		surface.gc.drawImage( surface.image,0,0 );
		surface.image=canvas;
	}

	var imgData=surface.gc.createImageData( width,height );

	var p=imgData.data,i=0,j=offset,px,py,argb;
	
	for( py=0;py<height;++py ){
		for( px=0;px<width;++px ){
			argb=pixels[j++];
			p[i]=(argb>>16) & 0xff;
			p[i+1]=(argb>>8) & 0xff;
			p[i+2]=argb & 0xff;
			p[i+3]=(argb>>24) & 0xff;
			i+=4;
		}
		j+=pitch-width;
	}
	
	surface.gc.putImageData( imgData,x,y );
}

// ***** gxtkSurface class *****

function gxtkSurface( image,graphics ){
	this.image=image;
	this.graphics=graphics;
	this.swidth=image.meta_width;
	this.sheight=image.meta_height;
}

// ***** GXTK API *****

gxtkSurface.prototype.Discard=function(){
	if( this.image ){
		this.image=null;
	}
}

gxtkSurface.prototype.Width=function(){
	return this.swidth;
}

gxtkSurface.prototype.Height=function(){
	return this.sheight;
}

gxtkSurface.prototype.Loaded=function(){
	return this.image.complete;
}

gxtkSurface.prototype.OnUnsafeLoadComplete=function(){
}

if( CFG_HTML5_WEBAUDIO_ENABLED=="1" && (window.AudioContext || window.webkitAudioContext) ){

//print( "Using WebAudio!" );

// ***** WebAudio *****

var wa=null;

// ***** WebAudio gxtkSample *****

var gxtkSample=function(){
	this.waBuffer=null;
	this.state=0;
}

gxtkSample.prototype.Load=function( path ){
	if( this.state ) return false;

	var req=new XMLHttpRequest();
	
	req.open( "get",BBGame.Game().PathToUrl( path ),true );
	req.responseType="arraybuffer";
	
	var abuf=this;
	
	req.onload=function(){
		wa.decodeAudioData( req.response,function( buffer ){
			//success!
			abuf.waBuffer=buffer;
			abuf.state=1;
		},function(){
			abuf.state=-1;
		} );
	}
	
	req.onerror=function(){
		abuf.state=-1;
	}
	
	req.send();
	
	this.state=2;
			
	return true;
}

gxtkSample.prototype.Discard=function(){
}

// ***** WebAudio gxtkChannel *****

var gxtkChannel=function(){
	this.buffer=null;
	this.flags=0;
	this.volume=1;
	this.pan=0;
	this.rate=1;
	this.waSource=null;
	this.waPan=wa.create
	this.waGain=wa.createGain();
	this.waGain.connect( wa.destination );
	this.waPanner=wa.createPanner();
	this.waPanner.rolloffFactor=0;
	this.waPanner.connect( this.waGain );
	this.startTime=0;
	this.offset=0;
	this.state=0;
}

// ***** WebAudio gxtkAudio *****

var gxtkAudio=function(){

	if( !wa ){
		window.AudioContext=window.AudioContext || window.webkitAudioContext;
		wa=new AudioContext();
	}
	
	this.okay=true;
	this.music=null;
	this.musicState=0;
	this.musicVolume=1;
	this.channels=new Array();
	for( var i=0;i<32;++i ){
		this.channels[i]=new gxtkChannel();
	}
}

gxtkAudio.prototype.Suspend=function(){
	if( this.MusicState()==1 ) this.music.pause();
	for( var i=0;i<32;++i ){
		var chan=this.channels[i];
		if( chan.state!=1 ) continue;
		this.PauseChannel( i );
		chan.state=5;
	}
}

gxtkAudio.prototype.Resume=function(){
	if( this.MusicState()==1 ) this.music.play();
	for( var i=0;i<32;++i ){
		var chan=this.channels[i];
		if( chan.state!=5 ) continue;
		chan.state=2;
		this.ResumeChannel( i );
	}
}

gxtkAudio.prototype.LoadSample=function( path ){

	var sample=new gxtkSample();
	if( !sample.Load( BBHtml5Game.Html5Game().PathToUrl( path ) ) ) return null;
	
	return sample;
}

gxtkAudio.prototype.PlaySample=function( buffer,channel,flags ){

	if( buffer.state!=1 ) return;

	var chan=this.channels[channel];
	
	if( chan.state ){
		chan.waSource.onended=null
		chan.waSource.stop( 0 );
	}
	
	chan.buffer=buffer;
	chan.flags=flags;

	chan.waSource=wa.createBufferSource();
	chan.waSource.buffer=buffer.waBuffer;
	chan.waSource.playbackRate.value=chan.rate;
	chan.waSource.loop=(flags&1)!=0;
	chan.waSource.connect( chan.waPanner );
	
	chan.waSource.onended=function( e ){
		chan.waSource=null;
		chan.state=0;
	}

	chan.offset=0;	
	chan.startTime=wa.currentTime;
	chan.waSource.start( 0 );

	chan.state=1;
}

gxtkAudio.prototype.StopChannel=function( channel ){

	var chan=this.channels[channel];
	if( !chan.state ) return;
	
	if( chan.state==1 ){
		chan.waSource.onended=null;
		chan.waSource.stop( 0 );
		chan.waSource=null;
	}

	chan.state=0;
}

gxtkAudio.prototype.PauseChannel=function( channel ){

	var chan=this.channels[channel];
	if( chan.state!=1 ) return;
	
	chan.offset=(chan.offset+(wa.currentTime-chan.startTime)*chan.rate)%chan.buffer.waBuffer.duration;
	
	chan.waSource.onended=null;
	chan.waSource.stop( 0 );
	chan.waSource=null;
	
	chan.state=2;
}

gxtkAudio.prototype.ResumeChannel=function( channel ){

	var chan=this.channels[channel];
	if( chan.state!=2 ) return;
	
	chan.waSource=wa.createBufferSource();
	chan.waSource.buffer=chan.buffer.waBuffer;
	chan.waSource.playbackRate.value=chan.rate;
	chan.waSource.loop=(chan.flags&1)!=0;
	chan.waSource.connect( chan.waPanner );
	
	chan.waSource.onended=function( e ){
		chan.waSource=null;
		chan.state=0;
	}
	
	chan.startTime=wa.currentTime;
	chan.waSource.start( 0,chan.offset );

	chan.state=1;
}

gxtkAudio.prototype.ChannelState=function( channel ){
	return this.channels[channel].state & 3;
}

gxtkAudio.prototype.SetVolume=function( channel,volume ){
	var chan=this.channels[channel];

	chan.volume=volume;
	
	chan.waGain.gain.value=volume;
}

gxtkAudio.prototype.SetPan=function( channel,pan ){
	var chan=this.channels[channel];

	chan.pan=pan;
	
	var sin=Math.sin( pan*3.14159265359/2 );
	var cos=Math.cos( pan*3.14159265359/2 );
	
	chan.waPanner.setPosition( sin,0,-cos );
}

gxtkAudio.prototype.SetRate=function( channel,rate ){

	var chan=this.channels[channel];

	if( chan.state==1 ){
		//update offset for pause/resume
		var time=wa.currentTime;
		chan.offset=(chan.offset+(time-chan.startTime)*chan.rate)%chan.buffer.waBuffer.duration;
		chan.startTime=time;
	}

	chan.rate=rate;
	
	if( chan.waSource ) chan.waSource.playbackRate.value=rate;
}

gxtkAudio.prototype.PlayMusic=function( path,flags ){
	if( this.musicState ) this.music.pause();
	this.music=new Audio( BBGame.Game().PathToUrl( path ) );
	this.music.loop=(flags&1)!=0;
	this.music.play();
	this.musicState=1;
}

gxtkAudio.prototype.StopMusic=function(){
	if( !this.musicState ) return;
	this.music.pause();
	this.music=null;
	this.musicState=0;
}

gxtkAudio.prototype.PauseMusic=function(){
	if( this.musicState!=1 ) return;
	this.music.pause();
	this.musicState=2;
}

gxtkAudio.prototype.ResumeMusic=function(){
	if( this.musicState!=2 ) return;
	this.music.play();
	this.musicState=1;
}

gxtkAudio.prototype.MusicState=function(){
	if( this.musicState==1 && this.music.ended && !this.music.loop ){
		this.music=null;
		this.musicState=0;
	}
	return this.musicState;
}

gxtkAudio.prototype.SetMusicVolume=function( volume ){
	this.musicVolume=volume;
	if( this.musicState ) this.music.volume=volume;
}

}else{

//print( "Using OldAudio!" );

// ***** gxtkChannel class *****

var gxtkChannel=function(){
	this.sample=null;
	this.audio=null;
	this.volume=1;
	this.pan=0;
	this.rate=1;
	this.flags=0;
	this.state=0;
}

// ***** gxtkAudio class *****

var gxtkAudio=function(){
	this.game=BBHtml5Game.Html5Game();
	this.okay=typeof(Audio)!="undefined";
	this.music=null;
	this.channels=new Array(33);
	for( var i=0;i<33;++i ){
		this.channels[i]=new gxtkChannel();
		if( !this.okay ) this.channels[i].state=-1;
	}
}

gxtkAudio.prototype.Suspend=function(){
	var i;
	for( i=0;i<33;++i ){
		var chan=this.channels[i];
		if( chan.state==1 ){
			if( chan.audio.ended && !chan.audio.loop ){
				chan.state=0;
			}else{
				chan.audio.pause();
				chan.state=3;
			}
		}
	}
}

gxtkAudio.prototype.Resume=function(){
	var i;
	for( i=0;i<33;++i ){
		var chan=this.channels[i];
		if( chan.state==3 ){
			chan.audio.play();
			chan.state=1;
		}
	}
}

gxtkAudio.prototype.LoadSample=function( path ){
	if( !this.okay ) return null;

	var audio=new Audio( this.game.PathToUrl( path ) );
	if( !audio ) return null;
	
	return new gxtkSample( audio );
}

gxtkAudio.prototype.PlaySample=function( sample,channel,flags ){
	if( !this.okay ) return;
	
	var chan=this.channels[channel];

	if( chan.state>0 ){
		chan.audio.pause();
		chan.state=0;
	}
	
	for( var i=0;i<33;++i ){
		var chan2=this.channels[i];
		if( chan2.state==1 && chan2.audio.ended && !chan2.audio.loop ) chan.state=0;
		if( chan2.state==0 && chan2.sample ){
			chan2.sample.FreeAudio( chan2.audio );
			chan2.sample=null;
			chan2.audio=null;
		}
	}

	var audio=sample.AllocAudio();
	if( !audio ) return;

	audio.loop=(flags&1)!=0;
	audio.volume=chan.volume;
	audio.play();

	chan.sample=sample;
	chan.audio=audio;
	chan.flags=flags;
	chan.state=1;
}

gxtkAudio.prototype.StopChannel=function( channel ){
	var chan=this.channels[channel];
	
	if( chan.state>0 ){
		chan.audio.pause();
		chan.state=0;
	}
}

gxtkAudio.prototype.PauseChannel=function( channel ){
	var chan=this.channels[channel];
	
	if( chan.state==1 ){
		if( chan.audio.ended && !chan.audio.loop ){
			chan.state=0;
		}else{
			chan.audio.pause();
			chan.state=2;
		}
	}
}

gxtkAudio.prototype.ResumeChannel=function( channel ){
	var chan=this.channels[channel];
	
	if( chan.state==2 ){
		chan.audio.play();
		chan.state=1;
	}
}

gxtkAudio.prototype.ChannelState=function( channel ){
	var chan=this.channels[channel];
	if( chan.state==1 && chan.audio.ended && !chan.audio.loop ) chan.state=0;
	if( chan.state==3 ) return 1;
	return chan.state;
}

gxtkAudio.prototype.SetVolume=function( channel,volume ){
	var chan=this.channels[channel];
	if( chan.state>0 ) chan.audio.volume=volume;
	chan.volume=volume;
}

gxtkAudio.prototype.SetPan=function( channel,pan ){
	var chan=this.channels[channel];
	chan.pan=pan;
}

gxtkAudio.prototype.SetRate=function( channel,rate ){
	var chan=this.channels[channel];
	chan.rate=rate;
}

gxtkAudio.prototype.PlayMusic=function( path,flags ){
	this.StopMusic();
	
	this.music=this.LoadSample( path );
	if( !this.music ) return;
	
	this.PlaySample( this.music,32,flags );
}

gxtkAudio.prototype.StopMusic=function(){
	this.StopChannel( 32 );

	if( this.music ){
		this.music.Discard();
		this.music=null;
	}
}

gxtkAudio.prototype.PauseMusic=function(){
	this.PauseChannel( 32 );
}

gxtkAudio.prototype.ResumeMusic=function(){
	this.ResumeChannel( 32 );
}

gxtkAudio.prototype.MusicState=function(){
	return this.ChannelState( 32 );
}

gxtkAudio.prototype.SetMusicVolume=function( volume ){
	this.SetVolume( 32,volume );
}

// ***** gxtkSample class *****

//function gxtkSample( audio ){
var gxtkSample=function( audio ){
	this.audio=audio;
	this.free=new Array();
	this.insts=new Array();
}

gxtkSample.prototype.FreeAudio=function( audio ){
	this.free.push( audio );
}

gxtkSample.prototype.AllocAudio=function(){
	var audio;
	while( this.free.length ){
		audio=this.free.pop();
		try{
			audio.currentTime=0;
			return audio;
		}catch( ex ){
//			print( "AUDIO ERROR1!" );
		}
	}
	
	//Max out?
	if( this.insts.length==8 ) return null;
	
	audio=new Audio( this.audio.src );
	
	//yucky loop handler for firefox!
	//
	audio.addEventListener( 'ended',function(){
		if( this.loop ){
			try{
				this.currentTime=0;
				this.play();
			}catch( ex ){
//				print( "AUDIO ERROR2!" );
			}
		}
	},false );

	this.insts.push( audio );
	return audio;
}

gxtkSample.prototype.Discard=function(){
}

}


function BBThread(){
	this.result=null;
	this.running=false;
}

BBThread.prototype.Start=function(){
	this.result=null;
	this.running=true;
	this.Run__UNSAFE__();
}

BBThread.prototype.IsRunning=function(){
	return this.running;
}

BBThread.prototype.Result=function(){
	return this.result;
}

BBThread.prototype.Run__UNSAFE__=function(){
	this.running=false;
}


function BBAsyncImageLoaderThread(){
	this._running=false;
}

BBAsyncImageLoaderThread.prototype.Start=function(){

	var thread=this;

	thread._surface=null;
	thread._result=false;
	thread._running=true;

	var image=new Image();

	image.onload=function( e ){
		image.meta_width=image.width;
		image.meta_height=image.height;
		thread._surface=new gxtkSurface( image,thread._device )
		thread._result=true;
		thread._running=false;
	}
	
	image.onerror=function( e ){
		thread._running=false;
	}
	
	image.src=BBGame.Game().PathToUrl( thread._path );
}

BBAsyncImageLoaderThread.prototype.IsRunning=function(){
	return this._running;
}



function BBAsyncSoundLoaderThread(){
	this._running=false;
}
  
if( CFG_HTML5_WEBAUDIO_ENABLED=="1" && (window.AudioContext || window.webkitAudioContext) ){

BBAsyncSoundLoaderThread.prototype.Start=function(){

	this._sample=null;
	if( !this._device.okay ) return;
	
	var thread=this;
	
	thread._sample=null;
	thread._result=false;
	thread._running=true;

	var req=new XMLHttpRequest();
	req.open( "get",BBGame.Game().PathToUrl( this._path ),true );
	req.responseType="arraybuffer";
	
	req.onload=function(){
		//load success!
		wa.decodeAudioData( req.response,function( buffer ){
			//decode success!
			thread._sample=new gxtkSample();
			thread._sample.waBuffer=buffer;
			thread._sample.state=1;
			thread._result=true;
			thread._running=false;
		},function(){	
			//decode fail!
			thread._running=false;
		} );
	}
	
	req.onerror=function(){
		//load fail!
		thread._running=false;
	}
	
	req.send();
}
	
}else{
 
BBAsyncSoundLoaderThread.prototype.Start=function(){

	this._sample=null;
	if( !this._device.okay ) return;
	
	var audio=new Audio();
	if( !audio ) return;
	
	var thread=this;
	
	thread._sample=null;
	thread._result=false;
	thread._running=true;

	audio.src=BBGame.Game().PathToUrl( this._path );
	audio.preload='auto';	
	
	var success=function( e ){
		thread._sample=new gxtkSample( audio );
		thread._result=true;
		thread._running=false;
		audio.removeEventListener( 'canplaythrough',success,false );
		audio.removeEventListener( 'error',error,false );
	}
	
	var error=function( e ){
		thread._running=false;
		audio.removeEventListener( 'canplaythrough',success,false );
		audio.removeEventListener( 'error',error,false );
	}
	
	audio.addEventListener( 'canplaythrough',success,false );
	audio.addEventListener( 'error',error,false );
	
	//voodoo fix for Chrome!
	var timer=setInterval( function(){ if( !thread._running ) clearInterval( timer ); },200 );
	
	audio.load();
}

}
  
BBAsyncSoundLoaderThread.prototype.IsRunning=function(){
	return this._running;
}

function c_App(){
	Object.call(this);
}
c_App.m_new=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<152>";
	if((bb_app__app)!=null){
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<152>";
		error("App has already been created");
	}
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<153>";
	bb_app__app=this;
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<154>";
	bb_app__delegate=c_GameDelegate.m_new.call(new c_GameDelegate);
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<155>";
	bb_app__game.SetDelegate(bb_app__delegate);
	pop_err();
	return this;
}
c_App.prototype.p_OnResize=function(){
	push_err();
	pop_err();
	return 0;
}
c_App.prototype.p_OnCreate=function(){
	push_err();
	pop_err();
	return 0;
}
c_App.prototype.p_OnSuspend=function(){
	push_err();
	pop_err();
	return 0;
}
c_App.prototype.p_OnResume=function(){
	push_err();
	pop_err();
	return 0;
}
c_App.prototype.p_OnUpdate=function(){
	push_err();
	pop_err();
	return 0;
}
c_App.prototype.p_OnLoading=function(){
	push_err();
	pop_err();
	return 0;
}
c_App.prototype.p_OnRender=function(){
	push_err();
	pop_err();
	return 0;
}
c_App.prototype.p_OnClose=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<177>";
	bb_app_EndApp();
	pop_err();
	return 0;
}
c_App.prototype.p_OnBack=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<181>";
	this.p_OnClose();
	pop_err();
	return 0;
}
function c_Solitaire(){
	c_App.call(this);
	this.m_atlas=null;
	this.m_font=null;
	this.m_img=null;
	this.m_undoButton=null;
	this.m_exitButton=null;
	this.m_playButton=null;
	this.m_enquiry=null;
	this.m_state=0;
	this.m_nextState=0;
	this.m_gameTime=null;
	this.m_seed=0;
	this.m_backImg=null;
	this.m_game=null;
	this.m_playTime=null;
}
c_Solitaire.prototype=extend_class(c_App);
c_Solitaire.m_new=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<18>";
	c_App.m_new.call(this);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<18>";
	pop_err();
	return this;
}
c_Solitaire.prototype.p_OnCreate=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<41>";
	bb_cSfx_SFX=c_Sfx.m_new.call(new c_Sfx);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<43>";
	this.m_atlas=bb_graphics_LoadImage("buttons.png",1,c_Image.m_DefaultFlags);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<45>";
	this.m_font=bb_FontMod_LoadAngelFont("chalk");
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<46>";
	bb_FontMod_SetAngelFont(this.m_font);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<47>";
	bb_cCardForm_cardForm=c_CardForm.m_new.call(new c_CardForm,80.0,100.0);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<48>";
	this.m_img=this.m_atlas.p_GrabImage(0,62,120,62,2,c_Image.m_DefaultFlags);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<50>";
	this.m_undoButton=c_Button.m_new.call(new c_Button,this.m_font,this.m_img,450,30,"UNDO",null);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<51>";
	this.m_exitButton=c_Button.m_new.call(new c_Button,this.m_font,this.m_img,300,30,"EXIT",null);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<52>";
	this.m_playButton=c_Button.m_new.call(new c_Button,this.m_font,this.m_atlas.p_GrabImage(0,0,190,62,2,c_Image.m_DefaultFlags),330,360,"PLAY",null);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<54>";
	this.m_enquiry=c_Enquiry.m_new.call(new c_Enquiry,this.m_font,"Exit Game?",250,100,380,130);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<56>";
	this.m_state=3;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<57>";
	this.m_nextState=3;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<59>";
	this.m_gameTime=c_GameTimer.m_new.call(new c_GameTimer,10,560);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<60>";
	bb_app_SetUpdateRate(60);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<62>";
	var t_s=bb_app_LoadState();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<63>";
	bb_random_Seed=parseInt((t_s),10);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<64>";
	this.m_seed=((bb_random_Rnd3(10000.0))|0);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<65>";
	bb_app_SaveState(String(this.m_seed));
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<66>";
	this.m_backImg=bb_graphics_LoadImage("spider.jpg",1,c_Image.m_DefaultFlags);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<67>";
	pop_err();
	return 1;
}
c_Solitaire.prototype.p_OnUpdate=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<72>";
	bb_MouseMod_mouse.p_Update();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<74>";
	this.m_state=this.m_nextState;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<75>";
	this.m_gameTime.p_Update();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<76>";
	var t_1=this.m_state;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<77>";
	if(t_1==2){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<78>";
		bb_random_Seed=this.m_seed;
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<79>";
		this.m_game=c_Game.m_new.call(new c_Game);
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<80>";
		this.m_nextState=1;
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<81>";
		this.m_playTime=c_GameTimer.m_new.call(new c_GameTimer,10,560);
	}else{
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<82>";
		if(t_1==1){
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<83>";
			this.m_undoButton.p_Update();
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<84>";
			this.m_exitButton.p_Update();
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<85>";
			if(((bb_input_KeyHit(90))!=0) || ((this.m_undoButton.p_GetState())!=0)){
				err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<85>";
				this.m_game.p_Undo();
			}
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<86>";
			this.m_game.p_Update();
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<87>";
			if((this.m_game.p_IsOver())!=0){
				err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<88>";
				this.m_nextState=4;
			}
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<90>";
			if(this.m_exitButton.p_GetState()==1){
				err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<91>";
				this.m_nextState=5;
			}
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<93>";
			this.m_playTime.p_Update();
		}else{
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<94>";
			if(t_1==5){
				err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<95>";
				this.m_enquiry.p_Update();
				err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<96>";
				if((this.m_enquiry.p_IsOK())!=0){
					err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<97>";
					this.m_nextState=3;
					err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<98>";
					bb_cSfx_SFX.p_PlayBtn();
				}else{
					err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<99>";
					if((this.m_enquiry.p_IsCanceled())!=0){
						err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<100>";
						this.m_nextState=1;
					}else{
						err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<101>";
						if((this.m_enquiry.p_IsRestart())!=0){
							err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<102>";
							this.m_nextState=2;
							err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<103>";
							bb_random_Seed=this.m_seed;
						}
					}
				}
				err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<105>";
				this.m_playTime.p_Update();
			}else{
				err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<106>";
				if(t_1==3){
					err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<107>";
					this.m_playButton.p_Update();
					err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<108>";
					if(this.m_playButton.p_GetState()==1){
						err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<109>";
						bb_cSfx_SFX.p_PlayBtn();
						err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<110>";
						this.m_nextState=2;
						err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<111>";
						this.m_seed=((bb_random_Rnd3(10000.0))|0);
					}
				}else{
					err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<113>";
					if(t_1==4){
					}
				}
			}
		}
	}
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<116>";
	pop_err();
	return 1;
}
c_Solitaire.prototype.p_OnRender=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<121>";
	bb_graphics_Cls(50.0,100.0,50.0);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<122>";
	var t_2=this.m_state;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<123>";
	if(t_2==2){
	}else{
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<124>";
		if(t_2==3){
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<125>";
			bb_graphics_DrawImage(this.m_backImg,0.0,0.0,0);
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<126>";
			this.m_playButton.p_Render2();
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<127>";
			this.m_gameTime.p_Render2();
		}else{
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<128>";
			if(t_2==1){
				err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<129>";
				this.m_undoButton.p_Render2();
				err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<130>";
				this.m_exitButton.p_Render2();
				err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<131>";
				this.m_game.p_Display();
				err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<132>";
				this.m_playTime.p_Render2();
			}else{
				err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<133>";
				if(t_2==4){
					err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<134>";
					bb_FontMod_RenderText("WONGAME",300.0,350.0);
					err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<135>";
					this.m_game.p_Display();
				}else{
					err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<136>";
					if(t_2==5){
						err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<137>";
						this.m_game.p_Display();
						err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<138>";
						this.m_enquiry.p_Render2();
						err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<139>";
						this.m_playTime.p_Render2();
					}
				}
			}
		}
	}
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<141>";
	pop_err();
	return 1;
}
var bb_app__app=null;
function c_GameDelegate(){
	BBGameDelegate.call(this);
	this.m__graphics=null;
	this.m__audio=null;
	this.m__input=null;
}
c_GameDelegate.prototype=extend_class(BBGameDelegate);
c_GameDelegate.m_new=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<65>";
	pop_err();
	return this;
}
c_GameDelegate.prototype.StartGame=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<75>";
	this.m__graphics=(new gxtkGraphics);
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<76>";
	bb_graphics_SetGraphicsDevice(this.m__graphics);
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<77>";
	bb_graphics_SetFont(null,32);
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<79>";
	this.m__audio=(new gxtkAudio);
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<80>";
	bb_audio_SetAudioDevice(this.m__audio);
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<82>";
	this.m__input=c_InputDevice.m_new.call(new c_InputDevice);
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<83>";
	bb_input_SetInputDevice(this.m__input);
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<85>";
	bb_app_ValidateDeviceWindow(false);
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<87>";
	bb_app_EnumDisplayModes();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<89>";
	bb_app__app.p_OnCreate();
	pop_err();
}
c_GameDelegate.prototype.SuspendGame=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<93>";
	bb_app__app.p_OnSuspend();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<94>";
	this.m__audio.Suspend();
	pop_err();
}
c_GameDelegate.prototype.ResumeGame=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<98>";
	this.m__audio.Resume();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<99>";
	bb_app__app.p_OnResume();
	pop_err();
}
c_GameDelegate.prototype.UpdateGame=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<103>";
	bb_app_ValidateDeviceWindow(true);
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<104>";
	this.m__input.p_BeginUpdate();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<105>";
	bb_app__app.p_OnUpdate();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<106>";
	this.m__input.p_EndUpdate();
	pop_err();
}
c_GameDelegate.prototype.RenderGame=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<110>";
	bb_app_ValidateDeviceWindow(true);
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<111>";
	var t_mode=this.m__graphics.BeginRender();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<112>";
	if((t_mode)!=0){
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<112>";
		bb_graphics_BeginRender();
	}
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<113>";
	if(t_mode==2){
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<113>";
		bb_app__app.p_OnLoading();
	}else{
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<113>";
		bb_app__app.p_OnRender();
	}
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<114>";
	if((t_mode)!=0){
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<114>";
		bb_graphics_EndRender();
	}
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<115>";
	this.m__graphics.EndRender();
	pop_err();
}
c_GameDelegate.prototype.KeyEvent=function(t_event,t_data){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<119>";
	this.m__input.p_KeyEvent(t_event,t_data);
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<120>";
	if(t_event!=1){
		pop_err();
		return;
	}
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<121>";
	var t_1=t_data;
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<122>";
	if(t_1==432){
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<123>";
		bb_app__app.p_OnClose();
	}else{
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<124>";
		if(t_1==416){
			err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<125>";
			bb_app__app.p_OnBack();
		}
	}
	pop_err();
}
c_GameDelegate.prototype.MouseEvent=function(t_event,t_data,t_x,t_y){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<130>";
	this.m__input.p_MouseEvent(t_event,t_data,t_x,t_y);
	pop_err();
}
c_GameDelegate.prototype.TouchEvent=function(t_event,t_data,t_x,t_y){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<134>";
	this.m__input.p_TouchEvent(t_event,t_data,t_x,t_y);
	pop_err();
}
c_GameDelegate.prototype.MotionEvent=function(t_event,t_data,t_x,t_y,t_z){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<138>";
	this.m__input.p_MotionEvent(t_event,t_data,t_x,t_y,t_z);
	pop_err();
}
c_GameDelegate.prototype.DiscardGraphics=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<142>";
	this.m__graphics.DiscardGraphics();
	pop_err();
}
var bb_app__delegate=null;
var bb_app__game=null;
function bbMain(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<13>";
	c_Solitaire.m_new.call(new c_Solitaire);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<14>";
	pop_err();
	return 1;
}
var bb_graphics_device=null;
function bb_graphics_SetGraphicsDevice(t_dev){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<63>";
	bb_graphics_device=t_dev;
	pop_err();
	return 0;
}
function c_Image(){
	Object.call(this);
	this.m_surface=null;
	this.m_width=0;
	this.m_height=0;
	this.m_frames=[];
	this.m_flags=0;
	this.m_tx=.0;
	this.m_ty=.0;
	this.m_source=null;
}
c_Image.m_DefaultFlags=0;
c_Image.m_new=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<70>";
	pop_err();
	return this;
}
c_Image.prototype.p_SetHandle=function(t_tx,t_ty){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<114>";
	dbg_object(this).m_tx=t_tx;
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<115>";
	dbg_object(this).m_ty=t_ty;
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<116>";
	dbg_object(this).m_flags=dbg_object(this).m_flags&-2;
	pop_err();
	return 0;
}
c_Image.prototype.p_ApplyFlags=function(t_iflags){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<197>";
	this.m_flags=t_iflags;
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<199>";
	if((this.m_flags&2)!=0){
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<200>";
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<200>";
		var t_=this.m_frames;
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<200>";
		var t_2=0;
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<200>";
		while(t_2<t_.length){
			err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<200>";
			var t_f=dbg_array(t_,t_2)[dbg_index];
			err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<200>";
			t_2=t_2+1;
			err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<201>";
			dbg_object(t_f).m_x+=1;
		}
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<203>";
		this.m_width-=2;
	}
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<206>";
	if((this.m_flags&4)!=0){
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<207>";
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<207>";
		var t_3=this.m_frames;
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<207>";
		var t_4=0;
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<207>";
		while(t_4<t_3.length){
			err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<207>";
			var t_f2=dbg_array(t_3,t_4)[dbg_index];
			err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<207>";
			t_4=t_4+1;
			err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<208>";
			dbg_object(t_f2).m_y+=1;
		}
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<210>";
		this.m_height-=2;
	}
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<213>";
	if((this.m_flags&1)!=0){
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<214>";
		this.p_SetHandle((this.m_width)/2.0,(this.m_height)/2.0);
	}
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<217>";
	if(this.m_frames.length==1 && dbg_object(dbg_array(this.m_frames,0)[dbg_index]).m_x==0 && dbg_object(dbg_array(this.m_frames,0)[dbg_index]).m_y==0 && this.m_width==this.m_surface.Width() && this.m_height==this.m_surface.Height()){
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<218>";
		this.m_flags|=65536;
	}
	pop_err();
	return 0;
}
c_Image.prototype.p_Init=function(t_surf,t_nframes,t_iflags){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<143>";
	if((this.m_surface)!=null){
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<143>";
		error("Image already initialized");
	}
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<144>";
	this.m_surface=t_surf;
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<146>";
	this.m_width=((this.m_surface.Width()/t_nframes)|0);
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<147>";
	this.m_height=this.m_surface.Height();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<149>";
	this.m_frames=new_object_array(t_nframes);
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<150>";
	for(var t_i=0;t_i<t_nframes;t_i=t_i+1){
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<151>";
		dbg_array(this.m_frames,t_i)[dbg_index]=c_Frame.m_new.call(new c_Frame,t_i*this.m_width,0);
	}
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<154>";
	this.p_ApplyFlags(t_iflags);
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<155>";
	pop_err();
	return this;
}
c_Image.prototype.p_Init2=function(t_surf,t_x,t_y,t_iwidth,t_iheight,t_nframes,t_iflags,t_src,t_srcx,t_srcy,t_srcw,t_srch){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<159>";
	if((this.m_surface)!=null){
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<159>";
		error("Image already initialized");
	}
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<160>";
	this.m_surface=t_surf;
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<161>";
	this.m_source=t_src;
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<163>";
	this.m_width=t_iwidth;
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<164>";
	this.m_height=t_iheight;
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<166>";
	this.m_frames=new_object_array(t_nframes);
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<168>";
	var t_ix=t_x;
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<168>";
	var t_iy=t_y;
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<170>";
	for(var t_i=0;t_i<t_nframes;t_i=t_i+1){
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<171>";
		if(t_ix+this.m_width>t_srcw){
			err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<172>";
			t_ix=0;
			err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<173>";
			t_iy+=this.m_height;
		}
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<175>";
		if(t_ix+this.m_width>t_srcw || t_iy+this.m_height>t_srch){
			err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<176>";
			error("Image frame outside surface");
		}
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<178>";
		dbg_array(this.m_frames,t_i)[dbg_index]=c_Frame.m_new.call(new c_Frame,t_ix+t_srcx,t_iy+t_srcy);
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<179>";
		t_ix+=this.m_width;
	}
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<182>";
	this.p_ApplyFlags(t_iflags);
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<183>";
	pop_err();
	return this;
}
c_Image.prototype.p_GrabImage=function(t_x,t_y,t_width,t_height,t_nframes,t_flags){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<109>";
	if(this.m_frames.length!=1){
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<109>";
		pop_err();
		return null;
	}
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<110>";
	var t_=(c_Image.m_new.call(new c_Image)).p_Init2(this.m_surface,t_x,t_y,t_width,t_height,t_nframes,t_flags,this,dbg_object(dbg_array(this.m_frames,0)[dbg_index]).m_x,dbg_object(dbg_array(this.m_frames,0)[dbg_index]).m_y,dbg_object(this).m_width,dbg_object(this).m_height);
	pop_err();
	return t_;
}
c_Image.prototype.p_Width=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<81>";
	pop_err();
	return this.m_width;
}
c_Image.prototype.p_Height=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<85>";
	pop_err();
	return this.m_height;
}
function c_GraphicsContext(){
	Object.call(this);
	this.m_defaultFont=null;
	this.m_font=null;
	this.m_firstChar=0;
	this.m_matrixSp=0;
	this.m_ix=1.0;
	this.m_iy=.0;
	this.m_jx=.0;
	this.m_jy=1.0;
	this.m_tx=.0;
	this.m_ty=.0;
	this.m_tformed=0;
	this.m_matDirty=0;
	this.m_color_r=.0;
	this.m_color_g=.0;
	this.m_color_b=.0;
	this.m_alpha=.0;
	this.m_blend=0;
	this.m_scissor_x=.0;
	this.m_scissor_y=.0;
	this.m_scissor_width=.0;
	this.m_scissor_height=.0;
	this.m_matrixStack=new_number_array(192);
}
c_GraphicsContext.m_new=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<29>";
	pop_err();
	return this;
}
c_GraphicsContext.prototype.p_Validate=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<40>";
	if((this.m_matDirty)!=0){
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<41>";
		bb_graphics_renderDevice.SetMatrix(dbg_object(bb_graphics_context).m_ix,dbg_object(bb_graphics_context).m_iy,dbg_object(bb_graphics_context).m_jx,dbg_object(bb_graphics_context).m_jy,dbg_object(bb_graphics_context).m_tx,dbg_object(bb_graphics_context).m_ty);
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<42>";
		this.m_matDirty=0;
	}
	pop_err();
	return 0;
}
var bb_graphics_context=null;
function bb_data_FixDataPath(t_path){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/data.monkey<7>";
	var t_i=t_path.indexOf(":/",0);
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/data.monkey<8>";
	if(t_i!=-1 && t_path.indexOf("/",0)==t_i+1){
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/data.monkey<8>";
		pop_err();
		return t_path;
	}
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/data.monkey<9>";
	if(string_startswith(t_path,"./") || string_startswith(t_path,"/")){
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/data.monkey<9>";
		pop_err();
		return t_path;
	}
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/data.monkey<10>";
	var t_="monkey://data/"+t_path;
	pop_err();
	return t_;
}
function c_Frame(){
	Object.call(this);
	this.m_x=0;
	this.m_y=0;
}
c_Frame.m_new=function(t_x,t_y){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<23>";
	dbg_object(this).m_x=t_x;
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<24>";
	dbg_object(this).m_y=t_y;
	pop_err();
	return this;
}
c_Frame.m_new2=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<18>";
	pop_err();
	return this;
}
function bb_graphics_LoadImage(t_path,t_frameCount,t_flags){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<239>";
	var t_surf=bb_graphics_device.LoadSurface(bb_data_FixDataPath(t_path));
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<240>";
	if((t_surf)!=null){
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<240>";
		var t_=(c_Image.m_new.call(new c_Image)).p_Init(t_surf,t_frameCount,t_flags);
		pop_err();
		return t_;
	}
	pop_err();
	return null;
}
function bb_graphics_LoadImage2(t_path,t_frameWidth,t_frameHeight,t_frameCount,t_flags){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<244>";
	var t_surf=bb_graphics_device.LoadSurface(bb_data_FixDataPath(t_path));
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<245>";
	if((t_surf)!=null){
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<245>";
		var t_=(c_Image.m_new.call(new c_Image)).p_Init2(t_surf,0,0,t_frameWidth,t_frameHeight,t_frameCount,t_flags,null,0,0,t_surf.Width(),t_surf.Height());
		pop_err();
		return t_;
	}
	pop_err();
	return null;
}
function bb_graphics_SetFont(t_font,t_firstChar){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<547>";
	if(!((t_font)!=null)){
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<548>";
		if(!((dbg_object(bb_graphics_context).m_defaultFont)!=null)){
			err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<549>";
			dbg_object(bb_graphics_context).m_defaultFont=bb_graphics_LoadImage("mojo_font.png",96,2);
		}
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<551>";
		t_font=dbg_object(bb_graphics_context).m_defaultFont;
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<552>";
		t_firstChar=32;
	}
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<554>";
	dbg_object(bb_graphics_context).m_font=t_font;
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<555>";
	dbg_object(bb_graphics_context).m_firstChar=t_firstChar;
	pop_err();
	return 0;
}
var bb_audio_device=null;
function bb_audio_SetAudioDevice(t_dev){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/audio.monkey<22>";
	bb_audio_device=t_dev;
	pop_err();
	return 0;
}
function c_InputDevice(){
	Object.call(this);
	this.m__joyStates=new_object_array(4);
	this.m__keyDown=new_bool_array(512);
	this.m__keyHitPut=0;
	this.m__keyHitQueue=new_number_array(33);
	this.m__keyHit=new_number_array(512);
	this.m__charGet=0;
	this.m__charPut=0;
	this.m__charQueue=new_number_array(32);
	this.m__mouseX=.0;
	this.m__mouseY=.0;
	this.m__touchX=new_number_array(32);
	this.m__touchY=new_number_array(32);
	this.m__accelX=.0;
	this.m__accelY=.0;
	this.m__accelZ=.0;
}
c_InputDevice.m_new=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<26>";
	for(var t_i=0;t_i<4;t_i=t_i+1){
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<27>";
		dbg_array(this.m__joyStates,t_i)[dbg_index]=c_JoyState.m_new.call(new c_JoyState);
	}
	pop_err();
	return this;
}
c_InputDevice.prototype.p_PutKeyHit=function(t_key){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<237>";
	if(this.m__keyHitPut==this.m__keyHitQueue.length){
		pop_err();
		return;
	}
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<238>";
	dbg_array(this.m__keyHit,t_key)[dbg_index]+=1;
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<239>";
	dbg_array(this.m__keyHitQueue,this.m__keyHitPut)[dbg_index]=t_key;
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<240>";
	this.m__keyHitPut+=1;
	pop_err();
}
c_InputDevice.prototype.p_BeginUpdate=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<189>";
	for(var t_i=0;t_i<4;t_i=t_i+1){
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<190>";
		var t_state=dbg_array(this.m__joyStates,t_i)[dbg_index];
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<191>";
		if(!BBGame.Game().PollJoystick(t_i,dbg_object(t_state).m_joyx,dbg_object(t_state).m_joyy,dbg_object(t_state).m_joyz,dbg_object(t_state).m_buttons)){
			err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<191>";
			break;
		}
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<192>";
		for(var t_j=0;t_j<32;t_j=t_j+1){
			err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<193>";
			var t_key=256+t_i*32+t_j;
			err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<194>";
			if(dbg_array(dbg_object(t_state).m_buttons,t_j)[dbg_index]){
				err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<195>";
				if(!dbg_array(this.m__keyDown,t_key)[dbg_index]){
					err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<196>";
					dbg_array(this.m__keyDown,t_key)[dbg_index]=true;
					err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<197>";
					this.p_PutKeyHit(t_key);
				}
			}else{
				err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<200>";
				dbg_array(this.m__keyDown,t_key)[dbg_index]=false;
			}
		}
	}
	pop_err();
}
c_InputDevice.prototype.p_EndUpdate=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<207>";
	for(var t_i=0;t_i<this.m__keyHitPut;t_i=t_i+1){
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<208>";
		dbg_array(this.m__keyHit,dbg_array(this.m__keyHitQueue,t_i)[dbg_index])[dbg_index]=0;
	}
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<210>";
	this.m__keyHitPut=0;
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<211>";
	this.m__charGet=0;
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<212>";
	this.m__charPut=0;
	pop_err();
}
c_InputDevice.prototype.p_KeyEvent=function(t_event,t_data){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<111>";
	var t_1=t_event;
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<112>";
	if(t_1==1){
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<113>";
		if(!dbg_array(this.m__keyDown,t_data)[dbg_index]){
			err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<114>";
			dbg_array(this.m__keyDown,t_data)[dbg_index]=true;
			err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<115>";
			this.p_PutKeyHit(t_data);
			err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<116>";
			if(t_data==1){
				err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<117>";
				dbg_array(this.m__keyDown,384)[dbg_index]=true;
				err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<118>";
				this.p_PutKeyHit(384);
			}else{
				err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<119>";
				if(t_data==384){
					err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<120>";
					dbg_array(this.m__keyDown,1)[dbg_index]=true;
					err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<121>";
					this.p_PutKeyHit(1);
				}
			}
		}
	}else{
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<124>";
		if(t_1==2){
			err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<125>";
			if(dbg_array(this.m__keyDown,t_data)[dbg_index]){
				err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<126>";
				dbg_array(this.m__keyDown,t_data)[dbg_index]=false;
				err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<127>";
				if(t_data==1){
					err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<128>";
					dbg_array(this.m__keyDown,384)[dbg_index]=false;
				}else{
					err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<129>";
					if(t_data==384){
						err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<130>";
						dbg_array(this.m__keyDown,1)[dbg_index]=false;
					}
				}
			}
		}else{
			err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<133>";
			if(t_1==3){
				err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<134>";
				if(this.m__charPut<this.m__charQueue.length){
					err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<135>";
					dbg_array(this.m__charQueue,this.m__charPut)[dbg_index]=t_data;
					err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<136>";
					this.m__charPut+=1;
				}
			}
		}
	}
	pop_err();
}
c_InputDevice.prototype.p_MouseEvent=function(t_event,t_data,t_x,t_y){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<142>";
	var t_2=t_event;
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<143>";
	if(t_2==4){
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<144>";
		this.p_KeyEvent(1,1+t_data);
	}else{
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<145>";
		if(t_2==5){
			err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<146>";
			this.p_KeyEvent(2,1+t_data);
			pop_err();
			return;
		}else{
			err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<148>";
			if(t_2==6){
			}else{
				pop_err();
				return;
			}
		}
	}
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<152>";
	this.m__mouseX=t_x;
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<153>";
	this.m__mouseY=t_y;
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<154>";
	dbg_array(this.m__touchX,0)[dbg_index]=t_x;
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<155>";
	dbg_array(this.m__touchY,0)[dbg_index]=t_y;
	pop_err();
}
c_InputDevice.prototype.p_TouchEvent=function(t_event,t_data,t_x,t_y){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<159>";
	var t_3=t_event;
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<160>";
	if(t_3==7){
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<161>";
		this.p_KeyEvent(1,384+t_data);
	}else{
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<162>";
		if(t_3==8){
			err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<163>";
			this.p_KeyEvent(2,384+t_data);
			pop_err();
			return;
		}else{
			err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<165>";
			if(t_3==9){
			}else{
				pop_err();
				return;
			}
		}
	}
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<169>";
	dbg_array(this.m__touchX,t_data)[dbg_index]=t_x;
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<170>";
	dbg_array(this.m__touchY,t_data)[dbg_index]=t_y;
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<171>";
	if(t_data==0){
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<172>";
		this.m__mouseX=t_x;
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<173>";
		this.m__mouseY=t_y;
	}
	pop_err();
}
c_InputDevice.prototype.p_MotionEvent=function(t_event,t_data,t_x,t_y,t_z){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<178>";
	var t_4=t_event;
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<179>";
	if(t_4==10){
	}else{
		pop_err();
		return;
	}
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<183>";
	this.m__accelX=t_x;
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<184>";
	this.m__accelY=t_y;
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<185>";
	this.m__accelZ=t_z;
	pop_err();
}
c_InputDevice.prototype.p_MouseX=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<69>";
	pop_err();
	return this.m__mouseX;
}
c_InputDevice.prototype.p_MouseY=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<73>";
	pop_err();
	return this.m__mouseY;
}
c_InputDevice.prototype.p_KeyDown=function(t_key){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<47>";
	if(t_key>0 && t_key<512){
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<47>";
		pop_err();
		return dbg_array(this.m__keyDown,t_key)[dbg_index];
	}
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<48>";
	pop_err();
	return false;
}
c_InputDevice.prototype.p_KeyHit=function(t_key){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<52>";
	if(t_key>0 && t_key<512){
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<52>";
		pop_err();
		return dbg_array(this.m__keyHit,t_key)[dbg_index];
	}
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<53>";
	pop_err();
	return 0;
}
function c_JoyState(){
	Object.call(this);
	this.m_joyx=new_number_array(2);
	this.m_joyy=new_number_array(2);
	this.m_joyz=new_number_array(2);
	this.m_buttons=new_bool_array(32);
}
c_JoyState.m_new=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/inputdevice.monkey<14>";
	pop_err();
	return this;
}
var bb_input_device=null;
function bb_input_SetInputDevice(t_dev){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/input.monkey<22>";
	bb_input_device=t_dev;
	pop_err();
	return 0;
}
var bb_app__devWidth=0;
var bb_app__devHeight=0;
function bb_app_ValidateDeviceWindow(t_notifyApp){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<57>";
	var t_w=bb_app__game.GetDeviceWidth();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<58>";
	var t_h=bb_app__game.GetDeviceHeight();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<59>";
	if(t_w==bb_app__devWidth && t_h==bb_app__devHeight){
		pop_err();
		return;
	}
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<60>";
	bb_app__devWidth=t_w;
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<61>";
	bb_app__devHeight=t_h;
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<62>";
	if(t_notifyApp){
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<62>";
		bb_app__app.p_OnResize();
	}
	pop_err();
}
function c_DisplayMode(){
	Object.call(this);
	this.m__width=0;
	this.m__height=0;
}
c_DisplayMode.m_new=function(t_width,t_height){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<192>";
	this.m__width=t_width;
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<193>";
	this.m__height=t_height;
	pop_err();
	return this;
}
c_DisplayMode.m_new2=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<189>";
	pop_err();
	return this;
}
function c_Map(){
	Object.call(this);
	this.m_root=null;
}
c_Map.m_new=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<7>";
	pop_err();
	return this;
}
c_Map.prototype.p_Compare=function(t_lhs,t_rhs){
}
c_Map.prototype.p_FindNode=function(t_key){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<157>";
	var t_node=this.m_root;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<159>";
	while((t_node)!=null){
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<160>";
		var t_cmp=this.p_Compare(t_key,dbg_object(t_node).m_key);
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<161>";
		if(t_cmp>0){
			err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<162>";
			t_node=dbg_object(t_node).m_right;
		}else{
			err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<163>";
			if(t_cmp<0){
				err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<164>";
				t_node=dbg_object(t_node).m_left;
			}else{
				err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<166>";
				pop_err();
				return t_node;
			}
		}
	}
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<169>";
	pop_err();
	return t_node;
}
c_Map.prototype.p_Contains=function(t_key){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<25>";
	var t_=this.p_FindNode(t_key)!=null;
	pop_err();
	return t_;
}
c_Map.prototype.p_RotateLeft=function(t_node){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<251>";
	var t_child=dbg_object(t_node).m_right;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<252>";
	dbg_object(t_node).m_right=dbg_object(t_child).m_left;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<253>";
	if((dbg_object(t_child).m_left)!=null){
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<254>";
		dbg_object(dbg_object(t_child).m_left).m_parent=t_node;
	}
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<256>";
	dbg_object(t_child).m_parent=dbg_object(t_node).m_parent;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<257>";
	if((dbg_object(t_node).m_parent)!=null){
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<258>";
		if(t_node==dbg_object(dbg_object(t_node).m_parent).m_left){
			err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<259>";
			dbg_object(dbg_object(t_node).m_parent).m_left=t_child;
		}else{
			err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<261>";
			dbg_object(dbg_object(t_node).m_parent).m_right=t_child;
		}
	}else{
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<264>";
		this.m_root=t_child;
	}
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<266>";
	dbg_object(t_child).m_left=t_node;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<267>";
	dbg_object(t_node).m_parent=t_child;
	pop_err();
	return 0;
}
c_Map.prototype.p_RotateRight=function(t_node){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<271>";
	var t_child=dbg_object(t_node).m_left;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<272>";
	dbg_object(t_node).m_left=dbg_object(t_child).m_right;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<273>";
	if((dbg_object(t_child).m_right)!=null){
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<274>";
		dbg_object(dbg_object(t_child).m_right).m_parent=t_node;
	}
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<276>";
	dbg_object(t_child).m_parent=dbg_object(t_node).m_parent;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<277>";
	if((dbg_object(t_node).m_parent)!=null){
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<278>";
		if(t_node==dbg_object(dbg_object(t_node).m_parent).m_right){
			err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<279>";
			dbg_object(dbg_object(t_node).m_parent).m_right=t_child;
		}else{
			err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<281>";
			dbg_object(dbg_object(t_node).m_parent).m_left=t_child;
		}
	}else{
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<284>";
		this.m_root=t_child;
	}
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<286>";
	dbg_object(t_child).m_right=t_node;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<287>";
	dbg_object(t_node).m_parent=t_child;
	pop_err();
	return 0;
}
c_Map.prototype.p_InsertFixup=function(t_node){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<212>";
	while(((dbg_object(t_node).m_parent)!=null) && dbg_object(dbg_object(t_node).m_parent).m_color==-1 && ((dbg_object(dbg_object(t_node).m_parent).m_parent)!=null)){
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<213>";
		if(dbg_object(t_node).m_parent==dbg_object(dbg_object(dbg_object(t_node).m_parent).m_parent).m_left){
			err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<214>";
			var t_uncle=dbg_object(dbg_object(dbg_object(t_node).m_parent).m_parent).m_right;
			err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<215>";
			if(((t_uncle)!=null) && dbg_object(t_uncle).m_color==-1){
				err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<216>";
				dbg_object(dbg_object(t_node).m_parent).m_color=1;
				err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<217>";
				dbg_object(t_uncle).m_color=1;
				err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<218>";
				dbg_object(dbg_object(t_uncle).m_parent).m_color=-1;
				err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<219>";
				t_node=dbg_object(t_uncle).m_parent;
			}else{
				err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<221>";
				if(t_node==dbg_object(dbg_object(t_node).m_parent).m_right){
					err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<222>";
					t_node=dbg_object(t_node).m_parent;
					err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<223>";
					this.p_RotateLeft(t_node);
				}
				err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<225>";
				dbg_object(dbg_object(t_node).m_parent).m_color=1;
				err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<226>";
				dbg_object(dbg_object(dbg_object(t_node).m_parent).m_parent).m_color=-1;
				err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<227>";
				this.p_RotateRight(dbg_object(dbg_object(t_node).m_parent).m_parent);
			}
		}else{
			err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<230>";
			var t_uncle2=dbg_object(dbg_object(dbg_object(t_node).m_parent).m_parent).m_left;
			err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<231>";
			if(((t_uncle2)!=null) && dbg_object(t_uncle2).m_color==-1){
				err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<232>";
				dbg_object(dbg_object(t_node).m_parent).m_color=1;
				err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<233>";
				dbg_object(t_uncle2).m_color=1;
				err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<234>";
				dbg_object(dbg_object(t_uncle2).m_parent).m_color=-1;
				err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<235>";
				t_node=dbg_object(t_uncle2).m_parent;
			}else{
				err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<237>";
				if(t_node==dbg_object(dbg_object(t_node).m_parent).m_left){
					err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<238>";
					t_node=dbg_object(t_node).m_parent;
					err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<239>";
					this.p_RotateRight(t_node);
				}
				err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<241>";
				dbg_object(dbg_object(t_node).m_parent).m_color=1;
				err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<242>";
				dbg_object(dbg_object(dbg_object(t_node).m_parent).m_parent).m_color=-1;
				err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<243>";
				this.p_RotateLeft(dbg_object(dbg_object(t_node).m_parent).m_parent);
			}
		}
	}
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<247>";
	dbg_object(this.m_root).m_color=1;
	pop_err();
	return 0;
}
c_Map.prototype.p_Set=function(t_key,t_value){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<29>";
	var t_node=this.m_root;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<30>";
	var t_parent=null;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<30>";
	var t_cmp=0;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<32>";
	while((t_node)!=null){
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<33>";
		t_parent=t_node;
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<34>";
		t_cmp=this.p_Compare(t_key,dbg_object(t_node).m_key);
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<35>";
		if(t_cmp>0){
			err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<36>";
			t_node=dbg_object(t_node).m_right;
		}else{
			err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<37>";
			if(t_cmp<0){
				err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<38>";
				t_node=dbg_object(t_node).m_left;
			}else{
				err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<40>";
				dbg_object(t_node).m_value=t_value;
				err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<41>";
				pop_err();
				return false;
			}
		}
	}
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<45>";
	t_node=c_Node.m_new.call(new c_Node,t_key,t_value,-1,t_parent);
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<47>";
	if((t_parent)!=null){
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<48>";
		if(t_cmp>0){
			err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<49>";
			dbg_object(t_parent).m_right=t_node;
		}else{
			err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<51>";
			dbg_object(t_parent).m_left=t_node;
		}
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<53>";
		this.p_InsertFixup(t_node);
	}else{
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<55>";
		this.m_root=t_node;
	}
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<57>";
	pop_err();
	return true;
}
c_Map.prototype.p_Insert=function(t_key,t_value){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<146>";
	var t_=this.p_Set(t_key,t_value);
	pop_err();
	return t_;
}
function c_IntMap(){
	c_Map.call(this);
}
c_IntMap.prototype=extend_class(c_Map);
c_IntMap.m_new=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<534>";
	c_Map.m_new.call(this);
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<534>";
	pop_err();
	return this;
}
c_IntMap.prototype.p_Compare=function(t_lhs,t_rhs){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<537>";
	var t_=t_lhs-t_rhs;
	pop_err();
	return t_;
}
function c_Stack(){
	Object.call(this);
	this.m_data=[];
	this.m_length=0;
}
c_Stack.m_new=function(){
	push_err();
	pop_err();
	return this;
}
c_Stack.m_new2=function(t_data){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/stack.monkey<13>";
	dbg_object(this).m_data=t_data.slice(0);
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/stack.monkey<14>";
	dbg_object(this).m_length=t_data.length;
	pop_err();
	return this;
}
c_Stack.prototype.p_Push=function(t_value){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/stack.monkey<67>";
	if(this.m_length==this.m_data.length){
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/stack.monkey<68>";
		this.m_data=resize_object_array(this.m_data,this.m_length*2+10);
	}
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/stack.monkey<70>";
	dbg_array(this.m_data,this.m_length)[dbg_index]=t_value;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/stack.monkey<71>";
	this.m_length+=1;
	pop_err();
}
c_Stack.prototype.p_Push2=function(t_values,t_offset,t_count){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/stack.monkey<79>";
	for(var t_i=0;t_i<t_count;t_i=t_i+1){
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/stack.monkey<80>";
		this.p_Push(dbg_array(t_values,t_offset+t_i)[dbg_index]);
	}
	pop_err();
}
c_Stack.prototype.p_Push3=function(t_values,t_offset){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/stack.monkey<75>";
	this.p_Push2(t_values,t_offset,t_values.length-t_offset);
	pop_err();
}
c_Stack.prototype.p_ToArray=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/stack.monkey<18>";
	var t_t=new_object_array(this.m_length);
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/stack.monkey<19>";
	for(var t_i=0;t_i<this.m_length;t_i=t_i+1){
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/stack.monkey<20>";
		dbg_array(t_t,t_i)[dbg_index]=dbg_array(this.m_data,t_i)[dbg_index];
	}
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/stack.monkey<22>";
	pop_err();
	return t_t;
}
function c_Node(){
	Object.call(this);
	this.m_key=0;
	this.m_right=null;
	this.m_left=null;
	this.m_value=null;
	this.m_color=0;
	this.m_parent=null;
}
c_Node.m_new=function(t_key,t_value,t_color,t_parent){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<364>";
	dbg_object(this).m_key=t_key;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<365>";
	dbg_object(this).m_value=t_value;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<366>";
	dbg_object(this).m_color=t_color;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<367>";
	dbg_object(this).m_parent=t_parent;
	pop_err();
	return this;
}
c_Node.m_new2=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<361>";
	pop_err();
	return this;
}
var bb_app__displayModes=[];
var bb_app__desktopMode=null;
function bb_app_DeviceWidth(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<263>";
	pop_err();
	return bb_app__devWidth;
}
function bb_app_DeviceHeight(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<267>";
	pop_err();
	return bb_app__devHeight;
}
function bb_app_EnumDisplayModes(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<33>";
	var t_modes=bb_app__game.GetDisplayModes();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<34>";
	var t_mmap=c_IntMap.m_new.call(new c_IntMap);
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<35>";
	var t_mstack=c_Stack.m_new.call(new c_Stack);
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<36>";
	for(var t_i=0;t_i<t_modes.length;t_i=t_i+1){
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<37>";
		var t_w=dbg_object(dbg_array(t_modes,t_i)[dbg_index]).width;
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<38>";
		var t_h=dbg_object(dbg_array(t_modes,t_i)[dbg_index]).height;
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<39>";
		var t_size=t_w<<16|t_h;
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<40>";
		if(t_mmap.p_Contains(t_size)){
		}else{
			err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<42>";
			var t_mode=c_DisplayMode.m_new.call(new c_DisplayMode,dbg_object(dbg_array(t_modes,t_i)[dbg_index]).width,dbg_object(dbg_array(t_modes,t_i)[dbg_index]).height);
			err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<43>";
			t_mmap.p_Insert(t_size,t_mode);
			err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<44>";
			t_mstack.p_Push(t_mode);
		}
	}
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<47>";
	bb_app__displayModes=t_mstack.p_ToArray();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<48>";
	var t_mode2=bb_app__game.GetDesktopMode();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<49>";
	if((t_mode2)!=null){
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<50>";
		bb_app__desktopMode=c_DisplayMode.m_new.call(new c_DisplayMode,dbg_object(t_mode2).width,dbg_object(t_mode2).height);
	}else{
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<52>";
		bb_app__desktopMode=c_DisplayMode.m_new.call(new c_DisplayMode,bb_app_DeviceWidth(),bb_app_DeviceHeight());
	}
	pop_err();
}
var bb_graphics_renderDevice=null;
function bb_graphics_SetMatrix(t_ix,t_iy,t_jx,t_jy,t_tx,t_ty){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<312>";
	dbg_object(bb_graphics_context).m_ix=t_ix;
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<313>";
	dbg_object(bb_graphics_context).m_iy=t_iy;
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<314>";
	dbg_object(bb_graphics_context).m_jx=t_jx;
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<315>";
	dbg_object(bb_graphics_context).m_jy=t_jy;
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<316>";
	dbg_object(bb_graphics_context).m_tx=t_tx;
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<317>";
	dbg_object(bb_graphics_context).m_ty=t_ty;
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<318>";
	dbg_object(bb_graphics_context).m_tformed=((t_ix!=1.0 || t_iy!=0.0 || t_jx!=0.0 || t_jy!=1.0 || t_tx!=0.0 || t_ty!=0.0)?1:0);
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<319>";
	dbg_object(bb_graphics_context).m_matDirty=1;
	pop_err();
	return 0;
}
function bb_graphics_SetMatrix2(t_m){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<308>";
	bb_graphics_SetMatrix(dbg_array(t_m,0)[dbg_index],dbg_array(t_m,1)[dbg_index],dbg_array(t_m,2)[dbg_index],dbg_array(t_m,3)[dbg_index],dbg_array(t_m,4)[dbg_index],dbg_array(t_m,5)[dbg_index]);
	pop_err();
	return 0;
}
function bb_graphics_SetColor(t_r,t_g,t_b){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<254>";
	dbg_object(bb_graphics_context).m_color_r=t_r;
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<255>";
	dbg_object(bb_graphics_context).m_color_g=t_g;
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<256>";
	dbg_object(bb_graphics_context).m_color_b=t_b;
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<257>";
	bb_graphics_renderDevice.SetColor(t_r,t_g,t_b);
	pop_err();
	return 0;
}
function bb_graphics_SetAlpha(t_alpha){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<271>";
	dbg_object(bb_graphics_context).m_alpha=t_alpha;
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<272>";
	bb_graphics_renderDevice.SetAlpha(t_alpha);
	pop_err();
	return 0;
}
function bb_graphics_SetBlend(t_blend){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<280>";
	dbg_object(bb_graphics_context).m_blend=t_blend;
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<281>";
	bb_graphics_renderDevice.SetBlend(t_blend);
	pop_err();
	return 0;
}
function bb_graphics_SetScissor(t_x,t_y,t_width,t_height){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<289>";
	dbg_object(bb_graphics_context).m_scissor_x=t_x;
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<290>";
	dbg_object(bb_graphics_context).m_scissor_y=t_y;
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<291>";
	dbg_object(bb_graphics_context).m_scissor_width=t_width;
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<292>";
	dbg_object(bb_graphics_context).m_scissor_height=t_height;
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<293>";
	bb_graphics_renderDevice.SetScissor(((t_x)|0),((t_y)|0),((t_width)|0),((t_height)|0));
	pop_err();
	return 0;
}
function bb_graphics_BeginRender(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<225>";
	bb_graphics_renderDevice=bb_graphics_device;
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<226>";
	dbg_object(bb_graphics_context).m_matrixSp=0;
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<227>";
	bb_graphics_SetMatrix(1.0,0.0,0.0,1.0,0.0,0.0);
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<228>";
	bb_graphics_SetColor(255.0,255.0,255.0);
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<229>";
	bb_graphics_SetAlpha(1.0);
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<230>";
	bb_graphics_SetBlend(0);
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<231>";
	bb_graphics_SetScissor(0.0,0.0,(bb_app_DeviceWidth()),(bb_app_DeviceHeight()));
	pop_err();
	return 0;
}
function bb_graphics_EndRender(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<235>";
	bb_graphics_renderDevice=null;
	pop_err();
	return 0;
}
function c_BBGameEvent(){
	Object.call(this);
}
function bb_app_EndApp(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<259>";
	error("");
	pop_err();
}
function c_Sfx(){
	Object.call(this);
	this.m_cardSnd=null;
	this.m_btnSnd=null;
	this.m_volum=0;
	this.m_channel=0;
}
c_Sfx.m_new=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cSfx.monkey<17>";
	this.m_cardSnd=bb_audio_LoadSound("shuffle2.mp3");
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cSfx.monkey<18>";
	if(this.m_cardSnd==null){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cSfx.monkey<18>";
		error("unable to load shuffle2.mp3");
	}
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cSfx.monkey<19>";
	this.m_btnSnd=bb_audio_LoadSound("Rico.mp3");
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cSfx.monkey<20>";
	if(this.m_btnSnd==null){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cSfx.monkey<20>";
		error("unable to load rico.mp3");
	}
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cSfx.monkey<21>";
	this.m_volum=1;
	pop_err();
	return this;
}
c_Sfx.prototype.p_GetChannel=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cSfx.monkey<42>";
	this.m_channel=(this.m_channel+1) % 16;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cSfx.monkey<43>";
	pop_err();
	return this.m_channel;
}
c_Sfx.prototype.p_PlayCard=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cSfx.monkey<36>";
	var t_chnl=this.p_GetChannel();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cSfx.monkey<37>";
	bb_audio_SetChannelVolume(t_chnl,(this.m_volum));
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cSfx.monkey<38>";
	bb_audio_PlaySound(this.m_cardSnd,t_chnl,0);
	pop_err();
}
c_Sfx.prototype.p_PlayBtn=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cSfx.monkey<29>";
	var t_chnl=this.p_GetChannel();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cSfx.monkey<30>";
	bb_audio_SetChannelVolume(t_chnl,(this.m_volum));
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cSfx.monkey<31>";
	bb_audio_PlaySound(this.m_btnSnd,t_chnl,0);
	pop_err();
}
function c_Sound(){
	Object.call(this);
	this.m_sample=null;
}
c_Sound.m_new=function(t_sample){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/audio.monkey<32>";
	dbg_object(this).m_sample=t_sample;
	pop_err();
	return this;
}
c_Sound.m_new2=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/audio.monkey<29>";
	pop_err();
	return this;
}
function bb_audio_LoadSound(t_path){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/audio.monkey<47>";
	var t_sample=bb_audio_device.LoadSample(bb_data_FixDataPath(t_path));
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/audio.monkey<48>";
	if((t_sample)!=null){
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/audio.monkey<48>";
		var t_=c_Sound.m_new.call(new c_Sound,t_sample);
		pop_err();
		return t_;
	}
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/audio.monkey<49>";
	pop_err();
	return null;
}
var bb_cSfx_SFX=null;
function c_AngelFont(){
	Object.call(this);
	this.m_iniText="";
	this.m_kernPairs=c_StringMap.m_new.call(new c_StringMap);
	this.m_chars=new_object_array(256);
	this.m_height=0;
	this.m_heightOffset=9999;
	this.m_image=null;
	this.m_name="";
	this.m__list=c_StringMap2.m_new.call(new c_StringMap2);
	this.m_italicSkew=0.25;
	this.m_useKerning=true;
	this.m_xOffset=0;
}
c_AngelFont.m_error="";
c_AngelFont.prototype.p_LoadFont=function(t_url){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<101>";
	c_AngelFont.m_error="";
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<102>";
	this.m_iniText=bb_app_LoadString(t_url+".txt");
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<103>";
	var t_lines=this.m_iniText.split(String.fromCharCode(10));
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<104>";
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<104>";
	var t_=t_lines;
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<104>";
	var t_2=0;
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<104>";
	while(t_2<t_.length){
		err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<104>";
		var t_line=dbg_array(t_,t_2)[dbg_index];
		err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<104>";
		t_2=t_2+1;
		err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<106>";
		t_line=string_trim(t_line);
		err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<108>";
		if(string_startswith(t_line,"id,") || t_line==""){
			err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<108>";
			continue;
		}
		err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<109>";
		if(string_startswith(t_line,"first,")){
			err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<111>";
			continue;
		}
		err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<113>";
		var t_data=t_line.split(",");
		err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<115>";
		for(var t_i=0;t_i<t_data.length;t_i=t_i+1){
			err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<116>";
			dbg_array(t_data,t_i)[dbg_index]=string_trim(dbg_array(t_data,t_i)[dbg_index]);
		}
		err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<119>";
		c_AngelFont.m_error=c_AngelFont.m_error+(String(t_data.length)+",");
		err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<120>";
		if(t_data.length>0){
			err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<121>";
			if(t_data.length==3){
				err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<123>";
				this.m_kernPairs.p_Insert2(String.fromCharCode(parseInt((dbg_array(t_data,0)[dbg_index]),10))+"_"+String.fromCharCode(parseInt((dbg_array(t_data,1)[dbg_index]),10)),c_KernPair.m_new.call(new c_KernPair,parseInt((dbg_array(t_data,0)[dbg_index]),10),parseInt((dbg_array(t_data,1)[dbg_index]),10),parseInt((dbg_array(t_data,2)[dbg_index]),10)));
			}else{
				err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<125>";
				if(t_data.length>=8){
					err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<126>";
					dbg_array(this.m_chars,parseInt((dbg_array(t_data,0)[dbg_index]),10))[dbg_index]=c_Char.m_new.call(new c_Char,parseInt((dbg_array(t_data,1)[dbg_index]),10),parseInt((dbg_array(t_data,2)[dbg_index]),10),parseInt((dbg_array(t_data,3)[dbg_index]),10),parseInt((dbg_array(t_data,4)[dbg_index]),10),parseInt((dbg_array(t_data,5)[dbg_index]),10),parseInt((dbg_array(t_data,6)[dbg_index]),10),parseInt((dbg_array(t_data,7)[dbg_index]),10));
					err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<127>";
					var t_ch=dbg_array(this.m_chars,parseInt((dbg_array(t_data,0)[dbg_index]),10))[dbg_index];
					err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<128>";
					if(dbg_object(t_ch).m_height>dbg_object(this).m_height){
						err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<128>";
						dbg_object(this).m_height=dbg_object(t_ch).m_height;
					}
					err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<129>";
					if(dbg_object(t_ch).m_yOffset<dbg_object(this).m_heightOffset){
						err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<129>";
						dbg_object(this).m_heightOffset=dbg_object(t_ch).m_yOffset;
					}
				}
			}
		}
	}
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<136>";
	this.m_image=bb_graphics_LoadImage(t_url+".png",1,c_Image.m_DefaultFlags);
	pop_err();
}
c_AngelFont.m_new=function(t_url){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<88>";
	if(t_url!=""){
		err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<89>";
		this.p_LoadFont(t_url);
		err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<90>";
		dbg_object(this).m_name=t_url;
		err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<91>";
		this.m__list.p_Insert3(t_url,this);
	}
	pop_err();
	return this;
}
c_AngelFont.prototype.p_TextWidth=function(t_txt){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<268>";
	var t_prevChar="";
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<269>";
	var t_width=0;
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<270>";
	for(var t_i=0;t_i<t_txt.length;t_i=t_i+1){
		err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<271>";
		var t_asc=dbg_charCodeAt(t_txt,t_i);
		err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<272>";
		var t_ac=dbg_array(this.m_chars,t_asc)[dbg_index];
		err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<273>";
		var t_thisChar=String.fromCharCode(t_asc);
		err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<274>";
		if(t_ac!=null){
			err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<275>";
			if(this.m_useKerning){
				err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<276>";
				var t_key=t_prevChar+"_"+t_thisChar;
				err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<277>";
				if(this.m_kernPairs.p_Contains2(t_key)){
					err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<278>";
					t_width+=dbg_object(this.m_kernPairs.p_Get(t_key)).m_amount;
				}
			}
			err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<281>";
			t_width+=dbg_object(t_ac).m_xAdvance;
			err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<282>";
			t_prevChar=t_thisChar;
		}
	}
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<285>";
	pop_err();
	return t_width;
}
c_AngelFont.prototype.p_TextHeight=function(t_txt){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<289>";
	var t_h=0;
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<290>";
	for(var t_i=0;t_i<t_txt.length;t_i=t_i+1){
		err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<291>";
		var t_asc=dbg_charCodeAt(t_txt,t_i);
		err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<292>";
		var t_ac=dbg_array(this.m_chars,t_asc)[dbg_index];
		err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<293>";
		if(dbg_object(t_ac).m_height+dbg_object(t_ac).m_yOffset>t_h){
			err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<293>";
			t_h=dbg_object(t_ac).m_height+dbg_object(t_ac).m_yOffset;
		}
	}
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<295>";
	pop_err();
	return t_h;
}
c_AngelFont.prototype.p_RenderText=function(t_txt,t_x,t_y){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<155>";
	var t_prevChar="";
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<156>";
	this.m_xOffset=0;
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<158>";
	for(var t_i=0;t_i<t_txt.length;t_i=t_i+1){
		err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<159>";
		var t_asc=dbg_charCodeAt(t_txt,t_i);
		err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<160>";
		var t_ac=dbg_array(this.m_chars,t_asc)[dbg_index];
		err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<161>";
		var t_thisChar=String.fromCharCode(t_asc);
		err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<162>";
		if(t_ac!=null){
			err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<163>";
			if(this.m_useKerning){
				err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<164>";
				var t_key=t_prevChar+"_"+t_thisChar;
				err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<165>";
				if(this.m_kernPairs.p_Contains2(t_key)){
					err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<166>";
					this.m_xOffset+=dbg_object(this.m_kernPairs.p_Get(t_key)).m_amount;
				}
			}
			err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<169>";
			t_ac.p_Render(this.m_image,t_x+this.m_xOffset,t_y);
			err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<170>";
			this.m_xOffset+=dbg_object(t_ac).m_xAdvance;
			err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<171>";
			t_prevChar=t_thisChar;
		}
	}
	pop_err();
}
c_AngelFont.prototype.p_RenderText2=function(t_txt,t_x,t_y,t_align){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<177>";
	this.m_xOffset=0;
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<178>";
	var t_1=t_align;
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<179>";
	if(t_1==1){
		err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<180>";
		this.p_RenderText(t_txt,t_x-((this.p_TextWidth(t_txt)/2)|0),t_y);
	}else{
		err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<181>";
		if(t_1==2){
			err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<182>";
			this.p_RenderText(t_txt,t_x-this.p_TextWidth(t_txt),t_y);
		}else{
			err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<183>";
			if(t_1==0){
				err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<184>";
				this.p_RenderText(t_txt,t_x,t_y);
			}
		}
	}
	pop_err();
}
function bb_app_LoadString(t_path){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<220>";
	var t_=bb_app__game.LoadString(bb_data_FixDataPath(t_path));
	pop_err();
	return t_;
}
function c_KernPair(){
	Object.call(this);
	this.m_first="";
	this.m_second="";
	this.m_amount=0;
}
c_KernPair.m_new=function(t_first,t_second,t_amount){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/kernpair.monkey<9>";
	dbg_object(this).m_first=String(t_first);
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/kernpair.monkey<10>";
	dbg_object(this).m_second=String(t_second);
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/kernpair.monkey<11>";
	dbg_object(this).m_amount=t_amount;
	pop_err();
	return this;
}
c_KernPair.m_new2=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/kernpair.monkey<2>";
	pop_err();
	return this;
}
function c_Map2(){
	Object.call(this);
	this.m_root=null;
}
c_Map2.m_new=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<7>";
	pop_err();
	return this;
}
c_Map2.prototype.p_Compare2=function(t_lhs,t_rhs){
}
c_Map2.prototype.p_RotateLeft2=function(t_node){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<251>";
	var t_child=dbg_object(t_node).m_right;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<252>";
	dbg_object(t_node).m_right=dbg_object(t_child).m_left;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<253>";
	if((dbg_object(t_child).m_left)!=null){
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<254>";
		dbg_object(dbg_object(t_child).m_left).m_parent=t_node;
	}
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<256>";
	dbg_object(t_child).m_parent=dbg_object(t_node).m_parent;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<257>";
	if((dbg_object(t_node).m_parent)!=null){
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<258>";
		if(t_node==dbg_object(dbg_object(t_node).m_parent).m_left){
			err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<259>";
			dbg_object(dbg_object(t_node).m_parent).m_left=t_child;
		}else{
			err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<261>";
			dbg_object(dbg_object(t_node).m_parent).m_right=t_child;
		}
	}else{
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<264>";
		this.m_root=t_child;
	}
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<266>";
	dbg_object(t_child).m_left=t_node;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<267>";
	dbg_object(t_node).m_parent=t_child;
	pop_err();
	return 0;
}
c_Map2.prototype.p_RotateRight2=function(t_node){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<271>";
	var t_child=dbg_object(t_node).m_left;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<272>";
	dbg_object(t_node).m_left=dbg_object(t_child).m_right;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<273>";
	if((dbg_object(t_child).m_right)!=null){
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<274>";
		dbg_object(dbg_object(t_child).m_right).m_parent=t_node;
	}
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<276>";
	dbg_object(t_child).m_parent=dbg_object(t_node).m_parent;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<277>";
	if((dbg_object(t_node).m_parent)!=null){
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<278>";
		if(t_node==dbg_object(dbg_object(t_node).m_parent).m_right){
			err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<279>";
			dbg_object(dbg_object(t_node).m_parent).m_right=t_child;
		}else{
			err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<281>";
			dbg_object(dbg_object(t_node).m_parent).m_left=t_child;
		}
	}else{
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<284>";
		this.m_root=t_child;
	}
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<286>";
	dbg_object(t_child).m_right=t_node;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<287>";
	dbg_object(t_node).m_parent=t_child;
	pop_err();
	return 0;
}
c_Map2.prototype.p_InsertFixup2=function(t_node){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<212>";
	while(((dbg_object(t_node).m_parent)!=null) && dbg_object(dbg_object(t_node).m_parent).m_color==-1 && ((dbg_object(dbg_object(t_node).m_parent).m_parent)!=null)){
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<213>";
		if(dbg_object(t_node).m_parent==dbg_object(dbg_object(dbg_object(t_node).m_parent).m_parent).m_left){
			err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<214>";
			var t_uncle=dbg_object(dbg_object(dbg_object(t_node).m_parent).m_parent).m_right;
			err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<215>";
			if(((t_uncle)!=null) && dbg_object(t_uncle).m_color==-1){
				err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<216>";
				dbg_object(dbg_object(t_node).m_parent).m_color=1;
				err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<217>";
				dbg_object(t_uncle).m_color=1;
				err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<218>";
				dbg_object(dbg_object(t_uncle).m_parent).m_color=-1;
				err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<219>";
				t_node=dbg_object(t_uncle).m_parent;
			}else{
				err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<221>";
				if(t_node==dbg_object(dbg_object(t_node).m_parent).m_right){
					err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<222>";
					t_node=dbg_object(t_node).m_parent;
					err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<223>";
					this.p_RotateLeft2(t_node);
				}
				err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<225>";
				dbg_object(dbg_object(t_node).m_parent).m_color=1;
				err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<226>";
				dbg_object(dbg_object(dbg_object(t_node).m_parent).m_parent).m_color=-1;
				err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<227>";
				this.p_RotateRight2(dbg_object(dbg_object(t_node).m_parent).m_parent);
			}
		}else{
			err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<230>";
			var t_uncle2=dbg_object(dbg_object(dbg_object(t_node).m_parent).m_parent).m_left;
			err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<231>";
			if(((t_uncle2)!=null) && dbg_object(t_uncle2).m_color==-1){
				err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<232>";
				dbg_object(dbg_object(t_node).m_parent).m_color=1;
				err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<233>";
				dbg_object(t_uncle2).m_color=1;
				err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<234>";
				dbg_object(dbg_object(t_uncle2).m_parent).m_color=-1;
				err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<235>";
				t_node=dbg_object(t_uncle2).m_parent;
			}else{
				err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<237>";
				if(t_node==dbg_object(dbg_object(t_node).m_parent).m_left){
					err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<238>";
					t_node=dbg_object(t_node).m_parent;
					err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<239>";
					this.p_RotateRight2(t_node);
				}
				err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<241>";
				dbg_object(dbg_object(t_node).m_parent).m_color=1;
				err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<242>";
				dbg_object(dbg_object(dbg_object(t_node).m_parent).m_parent).m_color=-1;
				err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<243>";
				this.p_RotateLeft2(dbg_object(dbg_object(t_node).m_parent).m_parent);
			}
		}
	}
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<247>";
	dbg_object(this.m_root).m_color=1;
	pop_err();
	return 0;
}
c_Map2.prototype.p_Set2=function(t_key,t_value){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<29>";
	var t_node=this.m_root;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<30>";
	var t_parent=null;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<30>";
	var t_cmp=0;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<32>";
	while((t_node)!=null){
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<33>";
		t_parent=t_node;
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<34>";
		t_cmp=this.p_Compare2(t_key,dbg_object(t_node).m_key);
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<35>";
		if(t_cmp>0){
			err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<36>";
			t_node=dbg_object(t_node).m_right;
		}else{
			err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<37>";
			if(t_cmp<0){
				err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<38>";
				t_node=dbg_object(t_node).m_left;
			}else{
				err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<40>";
				dbg_object(t_node).m_value=t_value;
				err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<41>";
				pop_err();
				return false;
			}
		}
	}
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<45>";
	t_node=c_Node2.m_new.call(new c_Node2,t_key,t_value,-1,t_parent);
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<47>";
	if((t_parent)!=null){
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<48>";
		if(t_cmp>0){
			err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<49>";
			dbg_object(t_parent).m_right=t_node;
		}else{
			err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<51>";
			dbg_object(t_parent).m_left=t_node;
		}
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<53>";
		this.p_InsertFixup2(t_node);
	}else{
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<55>";
		this.m_root=t_node;
	}
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<57>";
	pop_err();
	return true;
}
c_Map2.prototype.p_Insert2=function(t_key,t_value){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<146>";
	var t_=this.p_Set2(t_key,t_value);
	pop_err();
	return t_;
}
c_Map2.prototype.p_FindNode2=function(t_key){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<157>";
	var t_node=this.m_root;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<159>";
	while((t_node)!=null){
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<160>";
		var t_cmp=this.p_Compare2(t_key,dbg_object(t_node).m_key);
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<161>";
		if(t_cmp>0){
			err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<162>";
			t_node=dbg_object(t_node).m_right;
		}else{
			err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<163>";
			if(t_cmp<0){
				err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<164>";
				t_node=dbg_object(t_node).m_left;
			}else{
				err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<166>";
				pop_err();
				return t_node;
			}
		}
	}
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<169>";
	pop_err();
	return t_node;
}
c_Map2.prototype.p_Contains2=function(t_key){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<25>";
	var t_=this.p_FindNode2(t_key)!=null;
	pop_err();
	return t_;
}
c_Map2.prototype.p_Get=function(t_key){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<101>";
	var t_node=this.p_FindNode2(t_key);
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<102>";
	if((t_node)!=null){
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<102>";
		pop_err();
		return dbg_object(t_node).m_value;
	}
	pop_err();
	return null;
}
function c_StringMap(){
	c_Map2.call(this);
}
c_StringMap.prototype=extend_class(c_Map2);
c_StringMap.m_new=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<551>";
	c_Map2.m_new.call(this);
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<551>";
	pop_err();
	return this;
}
c_StringMap.prototype.p_Compare2=function(t_lhs,t_rhs){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<554>";
	var t_=string_compare(t_lhs,t_rhs);
	pop_err();
	return t_;
}
function c_Node2(){
	Object.call(this);
	this.m_key="";
	this.m_right=null;
	this.m_left=null;
	this.m_value=null;
	this.m_color=0;
	this.m_parent=null;
}
c_Node2.m_new=function(t_key,t_value,t_color,t_parent){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<364>";
	dbg_object(this).m_key=t_key;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<365>";
	dbg_object(this).m_value=t_value;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<366>";
	dbg_object(this).m_color=t_color;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<367>";
	dbg_object(this).m_parent=t_parent;
	pop_err();
	return this;
}
c_Node2.m_new2=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<361>";
	pop_err();
	return this;
}
function c_Char(){
	Object.call(this);
	this.m_x=0;
	this.m_y=0;
	this.m_width=0;
	this.m_height=0;
	this.m_xOffset=0;
	this.m_yOffset=0;
	this.m_xAdvance=0;
}
c_Char.m_new=function(t_x,t_y,t_w,t_h,t_xoff,t_yoff,t_xadv){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/char.monkey<17>";
	dbg_object(this).m_x=t_x;
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/char.monkey<18>";
	dbg_object(this).m_y=t_y;
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/char.monkey<19>";
	dbg_object(this).m_width=t_w;
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/char.monkey<20>";
	dbg_object(this).m_height=t_h;
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/char.monkey<22>";
	dbg_object(this).m_xOffset=t_xoff;
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/char.monkey<23>";
	dbg_object(this).m_yOffset=t_yoff;
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/char.monkey<24>";
	dbg_object(this).m_xAdvance=t_xadv;
	pop_err();
	return this;
}
c_Char.m_new2=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/char.monkey<3>";
	pop_err();
	return this;
}
c_Char.prototype.p_Render=function(t_fontImage,t_linex,t_liney){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/char.monkey<28>";
	bb_graphics_DrawImageRect(t_fontImage,(t_linex+this.m_xOffset),(t_liney+this.m_yOffset),this.m_x,this.m_y,this.m_width,this.m_height,0);
	pop_err();
	return 0;
}
function c_Map3(){
	Object.call(this);
	this.m_root=null;
}
c_Map3.m_new=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<7>";
	pop_err();
	return this;
}
c_Map3.prototype.p_Compare2=function(t_lhs,t_rhs){
}
c_Map3.prototype.p_RotateLeft3=function(t_node){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<251>";
	var t_child=dbg_object(t_node).m_right;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<252>";
	dbg_object(t_node).m_right=dbg_object(t_child).m_left;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<253>";
	if((dbg_object(t_child).m_left)!=null){
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<254>";
		dbg_object(dbg_object(t_child).m_left).m_parent=t_node;
	}
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<256>";
	dbg_object(t_child).m_parent=dbg_object(t_node).m_parent;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<257>";
	if((dbg_object(t_node).m_parent)!=null){
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<258>";
		if(t_node==dbg_object(dbg_object(t_node).m_parent).m_left){
			err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<259>";
			dbg_object(dbg_object(t_node).m_parent).m_left=t_child;
		}else{
			err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<261>";
			dbg_object(dbg_object(t_node).m_parent).m_right=t_child;
		}
	}else{
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<264>";
		this.m_root=t_child;
	}
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<266>";
	dbg_object(t_child).m_left=t_node;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<267>";
	dbg_object(t_node).m_parent=t_child;
	pop_err();
	return 0;
}
c_Map3.prototype.p_RotateRight3=function(t_node){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<271>";
	var t_child=dbg_object(t_node).m_left;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<272>";
	dbg_object(t_node).m_left=dbg_object(t_child).m_right;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<273>";
	if((dbg_object(t_child).m_right)!=null){
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<274>";
		dbg_object(dbg_object(t_child).m_right).m_parent=t_node;
	}
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<276>";
	dbg_object(t_child).m_parent=dbg_object(t_node).m_parent;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<277>";
	if((dbg_object(t_node).m_parent)!=null){
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<278>";
		if(t_node==dbg_object(dbg_object(t_node).m_parent).m_right){
			err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<279>";
			dbg_object(dbg_object(t_node).m_parent).m_right=t_child;
		}else{
			err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<281>";
			dbg_object(dbg_object(t_node).m_parent).m_left=t_child;
		}
	}else{
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<284>";
		this.m_root=t_child;
	}
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<286>";
	dbg_object(t_child).m_right=t_node;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<287>";
	dbg_object(t_node).m_parent=t_child;
	pop_err();
	return 0;
}
c_Map3.prototype.p_InsertFixup3=function(t_node){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<212>";
	while(((dbg_object(t_node).m_parent)!=null) && dbg_object(dbg_object(t_node).m_parent).m_color==-1 && ((dbg_object(dbg_object(t_node).m_parent).m_parent)!=null)){
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<213>";
		if(dbg_object(t_node).m_parent==dbg_object(dbg_object(dbg_object(t_node).m_parent).m_parent).m_left){
			err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<214>";
			var t_uncle=dbg_object(dbg_object(dbg_object(t_node).m_parent).m_parent).m_right;
			err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<215>";
			if(((t_uncle)!=null) && dbg_object(t_uncle).m_color==-1){
				err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<216>";
				dbg_object(dbg_object(t_node).m_parent).m_color=1;
				err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<217>";
				dbg_object(t_uncle).m_color=1;
				err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<218>";
				dbg_object(dbg_object(t_uncle).m_parent).m_color=-1;
				err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<219>";
				t_node=dbg_object(t_uncle).m_parent;
			}else{
				err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<221>";
				if(t_node==dbg_object(dbg_object(t_node).m_parent).m_right){
					err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<222>";
					t_node=dbg_object(t_node).m_parent;
					err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<223>";
					this.p_RotateLeft3(t_node);
				}
				err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<225>";
				dbg_object(dbg_object(t_node).m_parent).m_color=1;
				err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<226>";
				dbg_object(dbg_object(dbg_object(t_node).m_parent).m_parent).m_color=-1;
				err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<227>";
				this.p_RotateRight3(dbg_object(dbg_object(t_node).m_parent).m_parent);
			}
		}else{
			err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<230>";
			var t_uncle2=dbg_object(dbg_object(dbg_object(t_node).m_parent).m_parent).m_left;
			err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<231>";
			if(((t_uncle2)!=null) && dbg_object(t_uncle2).m_color==-1){
				err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<232>";
				dbg_object(dbg_object(t_node).m_parent).m_color=1;
				err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<233>";
				dbg_object(t_uncle2).m_color=1;
				err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<234>";
				dbg_object(dbg_object(t_uncle2).m_parent).m_color=-1;
				err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<235>";
				t_node=dbg_object(t_uncle2).m_parent;
			}else{
				err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<237>";
				if(t_node==dbg_object(dbg_object(t_node).m_parent).m_left){
					err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<238>";
					t_node=dbg_object(t_node).m_parent;
					err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<239>";
					this.p_RotateRight3(t_node);
				}
				err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<241>";
				dbg_object(dbg_object(t_node).m_parent).m_color=1;
				err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<242>";
				dbg_object(dbg_object(dbg_object(t_node).m_parent).m_parent).m_color=-1;
				err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<243>";
				this.p_RotateLeft3(dbg_object(dbg_object(t_node).m_parent).m_parent);
			}
		}
	}
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<247>";
	dbg_object(this.m_root).m_color=1;
	pop_err();
	return 0;
}
c_Map3.prototype.p_Set3=function(t_key,t_value){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<29>";
	var t_node=this.m_root;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<30>";
	var t_parent=null;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<30>";
	var t_cmp=0;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<32>";
	while((t_node)!=null){
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<33>";
		t_parent=t_node;
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<34>";
		t_cmp=this.p_Compare2(t_key,dbg_object(t_node).m_key);
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<35>";
		if(t_cmp>0){
			err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<36>";
			t_node=dbg_object(t_node).m_right;
		}else{
			err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<37>";
			if(t_cmp<0){
				err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<38>";
				t_node=dbg_object(t_node).m_left;
			}else{
				err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<40>";
				dbg_object(t_node).m_value=t_value;
				err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<41>";
				pop_err();
				return false;
			}
		}
	}
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<45>";
	t_node=c_Node3.m_new.call(new c_Node3,t_key,t_value,-1,t_parent);
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<47>";
	if((t_parent)!=null){
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<48>";
		if(t_cmp>0){
			err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<49>";
			dbg_object(t_parent).m_right=t_node;
		}else{
			err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<51>";
			dbg_object(t_parent).m_left=t_node;
		}
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<53>";
		this.p_InsertFixup3(t_node);
	}else{
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<55>";
		this.m_root=t_node;
	}
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<57>";
	pop_err();
	return true;
}
c_Map3.prototype.p_Insert3=function(t_key,t_value){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<146>";
	var t_=this.p_Set3(t_key,t_value);
	pop_err();
	return t_;
}
function c_StringMap2(){
	c_Map3.call(this);
}
c_StringMap2.prototype=extend_class(c_Map3);
c_StringMap2.m_new=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<551>";
	c_Map3.m_new.call(this);
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<551>";
	pop_err();
	return this;
}
c_StringMap2.prototype.p_Compare2=function(t_lhs,t_rhs){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<554>";
	var t_=string_compare(t_lhs,t_rhs);
	pop_err();
	return t_;
}
function c_Node3(){
	Object.call(this);
	this.m_key="";
	this.m_right=null;
	this.m_left=null;
	this.m_value=null;
	this.m_color=0;
	this.m_parent=null;
}
c_Node3.m_new=function(t_key,t_value,t_color,t_parent){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<364>";
	dbg_object(this).m_key=t_key;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<365>";
	dbg_object(this).m_value=t_value;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<366>";
	dbg_object(this).m_color=t_color;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<367>";
	dbg_object(this).m_parent=t_parent;
	pop_err();
	return this;
}
c_Node3.m_new2=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/map.monkey<361>";
	pop_err();
	return this;
}
function bb_FontMod_LoadAngelFont(t_url){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<15>";
	var t_font=c_AngelFont.m_new.call(new c_AngelFont,"");
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<16>";
	dbg_object(t_font).m_italicSkew=0.15;
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<17>";
	t_font.p_LoadFont(t_url);
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<18>";
	pop_err();
	return t_font;
}
var bb_FontMod___Afont=null;
function bb_FontMod_SetAngelFont(t_font){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<22>";
	bb_FontMod___Afont=t_font;
	pop_err();
}
function c_CardForm(){
	Object.call(this);
	this.m__image=null;
	this.m__FrontStyle=0;
	this.m__backStyle=0;
	this.m__width=0;
	this.m__height=0;
	this.m__cardclass=[];
	this.m__cardName=[];
	this.m__scalex=.0;
	this.m__scaley=.0;
	this.m__viewWidth=.0;
	this.m__viewHeight=.0;
}
c_CardForm.m_new=function(t_w,t_h){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<103>";
	this.m__image=bb_graphics_LoadImage2("carddeckjp.png",250,360,55,c_Image.m_DefaultFlags);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<104>";
	this.m__FrontStyle=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<105>";
	this.m__backStyle=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<106>";
	this.m__width=250;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<107>";
	this.m__height=360;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<108>";
	this.m__cardclass=["Clover","Heart","Spade","Diamond"];
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<110>";
	this.m__cardName=["Ace","two","Three","Four","Five","Six","Seven","Eight","Nine","Ten","Jack","Queen","King","Joker"];
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<111>";
	this.m__scalex=250.0/t_w;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<112>";
	this.m__scaley=360.0/t_h;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<113>";
	this.m__viewWidth=250.0*this.m__scalex;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<114>";
	this.m__viewHeight=360.0*this.m__scaley;
	pop_err();
	return this;
}
c_CardForm.m_new2=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<86>";
	pop_err();
	return this;
}
c_CardForm.prototype.p_SetScale=function(t_xs,t_ys){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<148>";
	this.m__viewWidth=250.0*t_xs;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<149>";
	this.m__viewHeight=360.0*t_ys;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<150>";
	this.m__scalex=t_xs;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<151>";
	this.m__scaley=t_ys;
	pop_err();
}
c_CardForm.prototype.p_DrawOutline=function(t_x,t_y){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<214>";
	bb_graphics_SetColor(255.0,255.0,255.0);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<215>";
	bb_graphics_DrawLine((t_x),(t_y),(t_x)+this.m__viewWidth-1.0,(t_y));
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<216>";
	bb_graphics_DrawLine((t_x),(t_y)+this.m__viewHeight-1.0,(t_x)+this.m__viewWidth-1.0,(t_y)+this.m__viewHeight-1.0);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<217>";
	bb_graphics_DrawLine((t_x),(t_y),(t_x),(t_y)+this.m__viewHeight-1.0);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<218>";
	bb_graphics_DrawLine((t_x)+this.m__viewWidth-1.0,(t_y),(t_x)+this.m__viewWidth-1.0,(t_y)+this.m__viewHeight-1.0);
	pop_err();
}
c_CardForm.prototype.p_DrawFrontFace=function(t_x,t_y,t_cardPos,t_suit){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<186>";
	var t_i=t_suit*13;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<187>";
	if(t_cardPos>9){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<188>";
		t_i+=this.m__FrontStyle*3+t_cardPos;
	}else{
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<190>";
		t_i+=t_cardPos;
	}
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<192>";
	bb_graphics_DrawImage2(this.m__image,(t_x),(t_y),0.0,this.m__scalex,this.m__scaley,t_i);
	pop_err();
}
c_CardForm.prototype.p_DrawBackFace=function(t_x,t_y){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<203>";
	var t_i=52+this.m__backStyle;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<204>";
	bb_graphics_DrawImage2(this.m__image,(t_x),(t_y),0.0,this.m__scalex,this.m__scaley,t_i);
	pop_err();
}
var bb_cCardForm_cardForm=null;
function c_Button(){
	Object.call(this);
	this.m_font=null;
	this.m_pos=null;
	this.m_x=.0;
	this.m_y=.0;
	this.m_text="";
	this.m_width=.0;
	this.m_height=.0;
	this.m_offx=.0;
	this.m_offy=.0;
	this.m_image=null;
	this.m_oldDown=0;
	this.m_selected=0;
	this.m_activated=0;
}
c_Button.prototype.p_SetText=function(t_str){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/ButtonMod.monkey<41>";
	this.m_text=t_str;
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/ButtonMod.monkey<42>";
	if(this.m_text.length>0){
		err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/ButtonMod.monkey<43>";
		this.m_offx=(this.m_image.p_Width()-this.m_font.p_TextWidth(t_str))/2.0;
		err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/ButtonMod.monkey<44>";
		this.m_offy=(this.m_image.p_Height()-this.m_font.p_TextHeight(t_str))/2.0;
	}
	pop_err();
}
c_Button.m_new=function(t_font,t_img,t_x,t_y,t_str,t_p){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/ButtonMod.monkey<21>";
	dbg_object(this).m_font=t_font;
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/ButtonMod.monkey<22>";
	if(t_p==null){
		err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/ButtonMod.monkey<23>";
		dbg_object(this).m_pos=c_PVector2D.m_new.call(new c_PVector2D,(t_x),(t_y));
		err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/ButtonMod.monkey<24>";
		dbg_object(this).m_x=0.0;
		err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/ButtonMod.monkey<25>";
		dbg_object(this).m_y=0.0;
	}else{
		err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/ButtonMod.monkey<27>";
		this.m_pos=t_p;
		err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/ButtonMod.monkey<28>";
		dbg_object(this).m_x=(t_x);
		err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/ButtonMod.monkey<29>";
		dbg_object(this).m_y=(t_y);
	}
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/ButtonMod.monkey<31>";
	dbg_object(this).m_text=t_str;
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/ButtonMod.monkey<32>";
	dbg_object(this).m_width=(t_img.p_Width());
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/ButtonMod.monkey<33>";
	dbg_object(this).m_height=(t_img.p_Height());
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/ButtonMod.monkey<34>";
	dbg_object(this).m_offx=this.m_offx;
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/ButtonMod.monkey<35>";
	dbg_object(this).m_offy=this.m_offy;
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/ButtonMod.monkey<36>";
	dbg_object(this).m_image=t_img;
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/ButtonMod.monkey<37>";
	this.p_SetText(t_str);
	pop_err();
	return this;
}
c_Button.m_new2=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/ButtonMod.monkey<5>";
	pop_err();
	return this;
}
c_Button.prototype.p_inArea=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/ButtonMod.monkey<80>";
	var t_tx=dbg_object(bb_MouseMod_mouse).m_x;
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/ButtonMod.monkey<81>";
	var t_ty=dbg_object(bb_MouseMod_mouse).m_y;
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/ButtonMod.monkey<82>";
	if((t_tx)<dbg_object(this.m_pos).m_x+this.m_x){
		err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/ButtonMod.monkey<82>";
		pop_err();
		return 0;
	}
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/ButtonMod.monkey<83>";
	if((t_ty)<dbg_object(this.m_pos).m_y+this.m_y){
		err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/ButtonMod.monkey<83>";
		pop_err();
		return 0;
	}
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/ButtonMod.monkey<84>";
	if((t_tx)>dbg_object(this.m_pos).m_x+this.m_x+this.m_width){
		err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/ButtonMod.monkey<84>";
		pop_err();
		return 0;
	}
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/ButtonMod.monkey<85>";
	if((t_ty)>dbg_object(this.m_pos).m_y+this.m_y+this.m_height){
		err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/ButtonMod.monkey<85>";
		pop_err();
		return 0;
	}
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/ButtonMod.monkey<86>";
	pop_err();
	return 1;
}
c_Button.prototype.p_Update=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/ButtonMod.monkey<49>";
	var t_thisDown=bb_MouseMod_mouse.p_ButtonActivated(0);
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/ButtonMod.monkey<50>";
	if((t_thisDown)!=0){
		err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/ButtonMod.monkey<51>";
		if(!((this.m_oldDown)!=0) && ((this.p_inArea())!=0)){
			err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/ButtonMod.monkey<52>";
			this.m_selected=1;
		}
	}else{
		err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/ButtonMod.monkey<54>";
		if((this.m_oldDown)!=0){
			err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/ButtonMod.monkey<55>";
			if(this.m_selected==1){
				err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/ButtonMod.monkey<56>";
				if(this.m_activated==0){
					err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/ButtonMod.monkey<57>";
					if((this.p_inArea())!=0){
						err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/ButtonMod.monkey<58>";
						this.m_activated=1;
						err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/ButtonMod.monkey<59>";
						this.m_selected=0;
					}else{
						err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/ButtonMod.monkey<61>";
						this.m_selected=0;
					}
				}
			}else{
				err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/ButtonMod.monkey<64>";
				if((this.m_activated)!=0){
					err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/ButtonMod.monkey<65>";
					this.m_activated=0;
				}
			}
		}else{
			err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/ButtonMod.monkey<68>";
			this.m_activated=0;
		}
	}
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/ButtonMod.monkey<70>";
	this.m_oldDown=t_thisDown;
	pop_err();
}
c_Button.prototype.p_GetState=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/ButtonMod.monkey<74>";
	var t_state=this.m_activated;
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/ButtonMod.monkey<75>";
	this.m_activated=0;
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/ButtonMod.monkey<76>";
	pop_err();
	return t_state;
}
c_Button.prototype.p_Render2=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/ButtonMod.monkey<90>";
	var t_index=0;
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/ButtonMod.monkey<91>";
	if(((this.m_selected)!=0) || ((this.p_inArea())!=0)){
		err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/ButtonMod.monkey<91>";
		t_index=1;
	}
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/ButtonMod.monkey<92>";
	bb_graphics_SetColor(255.0,255.0,255.0);
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/ButtonMod.monkey<93>";
	bb_graphics_DrawImage(this.m_image,dbg_object(this.m_pos).m_x+this.m_x,dbg_object(this.m_pos).m_y+this.m_y,t_index);
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/ButtonMod.monkey<94>";
	if(this.m_text.length>0){
		err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/ButtonMod.monkey<95>";
		this.m_font.p_RenderText(this.m_text,((dbg_object(this.m_pos).m_x+this.m_x+this.m_offx+(t_index))|0),((dbg_object(this.m_pos).m_y+this.m_y+this.m_offy+(t_index))|0));
	}
	pop_err();
}
function c_PVector2D(){
	Object.call(this);
	this.m_x=.0;
	this.m_y=.0;
}
c_PVector2D.prototype.p_Set4=function(t_v){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/VectorMod/VectorMod.monkey<21>";
	this.m_x=dbg_object(t_v).m_x;
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/VectorMod/VectorMod.monkey<22>";
	this.m_y=dbg_object(t_v).m_y;
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/VectorMod/VectorMod.monkey<23>";
	pop_err();
	return this;
}
c_PVector2D.prototype.p_Set5=function(t_x,t_y){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/VectorMod/VectorMod.monkey<27>";
	dbg_object(this).m_x=t_x;
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/VectorMod/VectorMod.monkey<28>";
	dbg_object(this).m_y=t_y;
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/VectorMod/VectorMod.monkey<29>";
	pop_err();
	return this;
}
c_PVector2D.m_new=function(t_x,t_y){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/VectorMod/VectorMod.monkey<9>";
	this.p_Set5(t_x,t_y);
	pop_err();
	return this;
}
c_PVector2D.m_new2=function(t_x1,t_y1,t_x2,t_y2){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/VectorMod/VectorMod.monkey<13>";
	this.p_Set5(t_x2-t_x1,t_y2-t_y1);
	pop_err();
	return this;
}
c_PVector2D.m_new3=function(t_v){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/VectorMod/VectorMod.monkey<17>";
	this.p_Set4(t_v);
	pop_err();
	return this;
}
c_PVector2D.m_new4=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/VectorMod/VectorMod.monkey<4>";
	pop_err();
	return this;
}
function c_Enquiry(){
	Object.call(this);
	this.m_frame=null;
	this.m_txtBox=null;
	this.m_okBtn=null;
	this.m_cancelBtn=null;
	this.m_startBtn=null;
}
c_Enquiry.m_new=function(t_font,t_txt,t_x,t_y,t_width,t_height){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/EnquiryMod.monkey<13>";
	this.m_frame=c_GuiFrame.m_new.call(new c_GuiFrame,(t_x-5),(t_y-5),(t_width+5),(t_height+5),4474026);
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/EnquiryMod.monkey<14>";
	this.m_txtBox=c_GuiTextBox.m_new.call(new c_GuiTextBox,t_txt,t_x,t_y,t_width,t_height);
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/EnquiryMod.monkey<15>";
	var t_btnImage=bb_GuiMod2_GetBtnAtlas().p_GrabImage(0,62,120,62,2,c_Image.m_DefaultFlags);
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/EnquiryMod.monkey<16>";
	this.m_okBtn=c_Button.m_new.call(new c_Button,t_font,t_btnImage,t_x,t_y+t_height-70,"OK",null);
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/EnquiryMod.monkey<17>";
	this.m_cancelBtn=c_Button.m_new.call(new c_Button,t_font,t_btnImage,t_x+130,t_y+t_height-70,"Cancel",null);
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/EnquiryMod.monkey<18>";
	this.m_startBtn=c_Button.m_new.call(new c_Button,t_font,t_btnImage,t_x+260,t_y+t_height-70,"Restart",null);
	pop_err();
	return this;
}
c_Enquiry.m_new2=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/EnquiryMod.monkey<3>";
	pop_err();
	return this;
}
c_Enquiry.prototype.p_Update=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/EnquiryMod.monkey<22>";
	this.m_okBtn.p_Update();
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/EnquiryMod.monkey<23>";
	this.m_cancelBtn.p_Update();
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/EnquiryMod.monkey<24>";
	this.m_startBtn.p_Update();
	pop_err();
}
c_Enquiry.prototype.p_IsOK=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/EnquiryMod.monkey<32>";
	var t_=((this.m_okBtn.p_GetState()==1)?1:0);
	pop_err();
	return t_;
}
c_Enquiry.prototype.p_IsCanceled=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/EnquiryMod.monkey<28>";
	var t_=((this.m_cancelBtn.p_GetState()==1)?1:0);
	pop_err();
	return t_;
}
c_Enquiry.prototype.p_IsRestart=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/EnquiryMod.monkey<36>";
	var t_=((this.m_startBtn.p_GetState()==1)?1:0);
	pop_err();
	return t_;
}
c_Enquiry.prototype.p_Render2=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/EnquiryMod.monkey<40>";
	this.m_frame.p_Render2();
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/EnquiryMod.monkey<41>";
	this.m_txtBox.p_Render2();
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/EnquiryMod.monkey<42>";
	this.m_okBtn.p_Render2();
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/EnquiryMod.monkey<43>";
	this.m_cancelBtn.p_Render2();
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/EnquiryMod.monkey<44>";
	this.m_startBtn.p_Render2();
	pop_err();
}
function c_GuiFrame(){
	Object.call(this);
	this.m_x=.0;
	this.m_y=.0;
	this.m_width=.0;
	this.m_height=.0;
	this.m_color=.0;
	this.m_leftTopImg=null;
	this.m_leftBotImg=null;
	this.m_rightTopImg=null;
	this.m_rightBotImg=null;
	this.m_topImg=null;
	this.m_botImg=null;
	this.m_leftImg=null;
	this.m_rightImg=null;
	this.m_areaImg=null;
	this.m_lft=.0;
	this.m_top=.0;
	this.m_bottom=.0;
	this.m_right=.0;
}
c_GuiFrame.m_new=function(t_x,t_y,t_width,t_height,t_color){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/FrameMod.monkey<29>";
	dbg_object(this).m_x=t_x;
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/FrameMod.monkey<30>";
	dbg_object(this).m_y=t_y;
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/FrameMod.monkey<31>";
	dbg_object(this).m_width=t_width;
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/FrameMod.monkey<32>";
	dbg_object(this).m_height=t_height;
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/FrameMod.monkey<33>";
	dbg_object(this).m_color=(t_color);
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/FrameMod.monkey<35>";
	var t_atlas=bb_GuiMod2_GetAtlas();
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/FrameMod.monkey<36>";
	dbg_object(this).m_leftTopImg=t_atlas.p_GrabImage(0,0,16,16,1,c_Image.m_DefaultFlags);
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/FrameMod.monkey<37>";
	dbg_object(this).m_leftBotImg=t_atlas.p_GrabImage(0,16,16,16,1,c_Image.m_DefaultFlags);
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/FrameMod.monkey<38>";
	dbg_object(this).m_rightTopImg=t_atlas.p_GrabImage(16,0,16,16,1,c_Image.m_DefaultFlags);
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/FrameMod.monkey<39>";
	dbg_object(this).m_rightBotImg=t_atlas.p_GrabImage(16,16,16,16,1,c_Image.m_DefaultFlags);
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/FrameMod.monkey<41>";
	dbg_object(this).m_topImg=t_atlas.p_GrabImage(15,0,1,16,1,c_Image.m_DefaultFlags);
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/FrameMod.monkey<42>";
	dbg_object(this).m_botImg=t_atlas.p_GrabImage(15,16,1,16,1,c_Image.m_DefaultFlags);
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/FrameMod.monkey<43>";
	dbg_object(this).m_leftImg=t_atlas.p_GrabImage(0,15,16,1,1,c_Image.m_DefaultFlags);
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/FrameMod.monkey<44>";
	dbg_object(this).m_rightImg=t_atlas.p_GrabImage(16,15,16,1,1,c_Image.m_DefaultFlags);
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/FrameMod.monkey<45>";
	dbg_object(this).m_areaImg=t_atlas.p_GrabImage(16,16,1,1,1,c_Image.m_DefaultFlags);
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/FrameMod.monkey<47>";
	dbg_object(this).m_lft=t_x-8.0;
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/FrameMod.monkey<48>";
	dbg_object(this).m_top=t_y-8.0;
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/FrameMod.monkey<49>";
	dbg_object(this).m_bottom=t_y+t_height;
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/FrameMod.monkey<50>";
	dbg_object(this).m_right=t_x+t_width;
	pop_err();
	return this;
}
c_GuiFrame.m_new2=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/FrameMod.monkey<6>";
	pop_err();
	return this;
}
c_GuiFrame.prototype.p_Render2=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/FrameMod.monkey<73>";
	var t_oldColor=bb_graphics_GetColor();
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/FrameMod.monkey<74>";
	bb_GuiMod2_SetColor((this.m_color)|0);
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/FrameMod.monkey<76>";
	bb_graphics_DrawImage2(this.m_leftTopImg,this.m_lft,this.m_top,0.0,.5,.5,0);
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/FrameMod.monkey<77>";
	bb_graphics_DrawImage2(this.m_rightTopImg,this.m_right,this.m_top,0.0,0.5,0.5,0);
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/FrameMod.monkey<78>";
	bb_graphics_DrawImage2(this.m_leftBotImg,this.m_lft,this.m_bottom,0.0,0.5,0.5,0);
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/FrameMod.monkey<79>";
	bb_graphics_DrawImage2(this.m_rightBotImg,this.m_right,this.m_bottom,0.0,0.5,0.5,0);
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/FrameMod.monkey<81>";
	bb_graphics_DrawImage2(this.m_topImg,this.m_x,this.m_top,0.0,this.m_width,.5,0);
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/FrameMod.monkey<82>";
	bb_graphics_DrawImage2(this.m_botImg,this.m_x,this.m_bottom,0.0,this.m_width,.5,0);
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/FrameMod.monkey<83>";
	bb_graphics_DrawImage2(this.m_leftImg,this.m_lft,this.m_y,0.0,.5,this.m_height,0);
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/FrameMod.monkey<84>";
	bb_graphics_DrawImage2(this.m_rightImg,this.m_right,this.m_y,0.0,.5,this.m_height,0);
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/FrameMod.monkey<85>";
	bb_graphics_DrawImage2(this.m_areaImg,this.m_x,this.m_y,0.0,this.m_width,this.m_height,0);
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/FrameMod.monkey<86>";
	bb_graphics_SetColor(dbg_array(t_oldColor,0)[dbg_index],dbg_array(t_oldColor,1)[dbg_index],dbg_array(t_oldColor,2)[dbg_index]);
	pop_err();
}
var bb_GuiMod2___atlas=null;
function bb_GuiMod2_GetAtlas(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GuiMod/GuiMod.monkey<21>";
	if(bb_GuiMod2___atlas==null){
		err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GuiMod/GuiMod.monkey<22>";
		bb_GuiMod2___atlas=bb_graphics_LoadImage("frame.png",1,c_Image.m_DefaultFlags);
	}
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GuiMod/GuiMod.monkey<24>";
	pop_err();
	return bb_GuiMod2___atlas;
}
function c_GuiTextBox(){
	Object.call(this);
	this.m_slist=null;
	this.m_align=0;
	this.m_yOffset=0;
}
c_GuiTextBox.m_new=function(t_text,t_x,t_y,t_width,t_alignment){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/TextBoxMod.monkey<16>";
	this.m_slist=c_List.m_new.call(new c_List);
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/TextBoxMod.monkey<17>";
	var t_thisLine="";
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/TextBoxMod.monkey<18>";
	var t_charOffset=0;
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/TextBoxMod.monkey<20>";
	var t_wordLen=0;
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/TextBoxMod.monkey<21>";
	var t_word="";
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/TextBoxMod.monkey<23>";
	this.m_align=t_alignment;
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/TextBoxMod.monkey<25>";
	this.m_yOffset=0;
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/TextBoxMod.monkey<26>";
	for(var t_i=0;t_i<t_text.length;t_i=t_i+1){
		err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/TextBoxMod.monkey<27>";
		if(t_y+this.m_yOffset>bb_app_DeviceHeight()){
			err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/TextBoxMod.monkey<28>";
			pop_err();
			return this;
		}
		err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/TextBoxMod.monkey<31>";
		var t_asc=dbg_charCodeAt(t_text,t_i);
		err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/TextBoxMod.monkey<32>";
		var t_1=t_asc;
		err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/TextBoxMod.monkey<33>";
		if(t_1==32){
			err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/TextBoxMod.monkey<34>";
			t_wordLen=bb_FontMod_ATextWidth(t_word);
			err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/TextBoxMod.monkey<35>";
			if(t_charOffset+t_wordLen>t_width){
				err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/TextBoxMod.monkey<36>";
				this.m_slist.p_AddLast(c_StringLine.m_new.call(new c_StringLine,t_thisLine,t_x,t_y+this.m_yOffset));
				err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/TextBoxMod.monkey<37>";
				this.m_yOffset+=5+bb_FontMod_AFontHeight();
				err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/TextBoxMod.monkey<38>";
				t_thisLine="";
				err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/TextBoxMod.monkey<39>";
				t_charOffset=0;
			}
			err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/TextBoxMod.monkey<41>";
			t_charOffset+=t_wordLen+dbg_object(dbg_array(bb_FontMod_GetChars(),32)[dbg_index]).m_xAdvance;
			err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/TextBoxMod.monkey<42>";
			t_thisLine=t_thisLine+(t_word+" ");
			err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/TextBoxMod.monkey<44>";
			t_word="";
		}else{
			err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/TextBoxMod.monkey<45>";
			if(t_1==10){
				err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/TextBoxMod.monkey<46>";
				t_wordLen=bb_FontMod_ATextWidth(t_word);
				err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/TextBoxMod.monkey<47>";
				if(t_charOffset+t_wordLen>t_width){
					err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/TextBoxMod.monkey<48>";
					this.m_slist.p_AddLast(c_StringLine.m_new.call(new c_StringLine,t_thisLine,t_x,t_y+this.m_yOffset));
					err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/TextBoxMod.monkey<49>";
					this.m_yOffset+=5+bb_FontMod_AFontHeight();
					err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/TextBoxMod.monkey<50>";
					t_thisLine="";
				}
				err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/TextBoxMod.monkey<52>";
				t_thisLine=t_thisLine+t_word;
				err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/TextBoxMod.monkey<54>";
				this.m_slist.p_AddLast(c_StringLine.m_new.call(new c_StringLine,t_thisLine,t_x,t_y+this.m_yOffset));
				err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/TextBoxMod.monkey<55>";
				this.m_yOffset+=5+bb_FontMod_AFontHeight();
				err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/TextBoxMod.monkey<56>";
				t_thisLine="";
				err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/TextBoxMod.monkey<57>";
				t_charOffset=0;
				err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/TextBoxMod.monkey<58>";
				t_word="";
			}else{
				err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/TextBoxMod.monkey<60>";
				var t_ch=dbg_array(bb_FontMod_GetChars(),t_asc)[dbg_index];
				err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/TextBoxMod.monkey<61>";
				t_word=t_word+String.fromCharCode(t_asc);
			}
		}
	}
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/TextBoxMod.monkey<65>";
	if(t_word!=""){
		err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/TextBoxMod.monkey<66>";
		t_wordLen=bb_FontMod_ATextWidth(t_word);
		err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/TextBoxMod.monkey<67>";
		if(t_charOffset+t_wordLen>t_width){
			err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/TextBoxMod.monkey<68>";
			this.m_slist.p_AddLast(c_StringLine.m_new.call(new c_StringLine,t_thisLine,t_x,t_y+this.m_yOffset));
			err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/TextBoxMod.monkey<69>";
			this.m_yOffset+=5+bb_FontMod_AFontHeight();
			err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/TextBoxMod.monkey<70>";
			t_thisLine="";
		}
		err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/TextBoxMod.monkey<72>";
		t_thisLine=t_thisLine+t_word;
	}
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/TextBoxMod.monkey<74>";
	if(t_thisLine!=""){
		err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/TextBoxMod.monkey<75>";
		this.m_slist.p_AddLast(c_StringLine.m_new.call(new c_StringLine,t_thisLine,t_x,t_y+this.m_yOffset));
		err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/TextBoxMod.monkey<76>";
		this.m_yOffset+=5+bb_FontMod_AFontHeight();
	}
	pop_err();
	return this;
}
c_GuiTextBox.m_new2=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/TextBoxMod.monkey<6>";
	pop_err();
	return this;
}
c_GuiTextBox.prototype.p_Render2=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/TextBoxMod.monkey<81>";
	var t_node=this.m_slist.p_FirstNode();
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/TextBoxMod.monkey<82>";
	bb_graphics_SetColor(255.0,255.0,0.0);
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/TextBoxMod.monkey<83>";
	while((t_node)!=null){
		err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/TextBoxMod.monkey<84>";
		t_node.p_Value().p_Render2();
		err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/TextBoxMod.monkey<85>";
		t_node=t_node.p_NextNode();
	}
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/TextBoxMod.monkey<87>";
	bb_graphics_SetColor(255.0,255.0,255.0);
	pop_err();
}
function c_StringLine(){
	Object.call(this);
	this.m_txt="";
	this.m_x=0;
	this.m_y=0;
}
c_StringLine.m_new=function(t_txt,t_x,t_y){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/EnquiryMod.monkey<54>";
	dbg_object(this).m_txt=t_txt;
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/EnquiryMod.monkey<55>";
	dbg_object(this).m_x=t_x;
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/EnquiryMod.monkey<56>";
	dbg_object(this).m_y=t_y;
	pop_err();
	return this;
}
c_StringLine.m_new2=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/EnquiryMod.monkey<48>";
	pop_err();
	return this;
}
c_StringLine.prototype.p_Render2=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GUiMod/EnquiryMod.monkey<60>";
	bb_FontMod_RenderText(this.m_txt,(this.m_x),(this.m_y));
	pop_err();
}
function c_List(){
	Object.call(this);
	this.m__head=(c_HeadNode.m_new.call(new c_HeadNode));
}
c_List.m_new=function(){
	push_err();
	pop_err();
	return this;
}
c_List.prototype.p_AddLast=function(t_data){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<108>";
	var t_=c_Node4.m_new.call(new c_Node4,this.m__head,dbg_object(this.m__head).m__pred,t_data);
	pop_err();
	return t_;
}
c_List.m_new2=function(t_data){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<13>";
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<13>";
	var t_=t_data;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<13>";
	var t_2=0;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<13>";
	while(t_2<t_.length){
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<13>";
		var t_t=dbg_array(t_,t_2)[dbg_index];
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<13>";
		t_2=t_2+1;
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<14>";
		this.p_AddLast(t_t);
	}
	pop_err();
	return this;
}
c_List.prototype.p_FirstNode=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<62>";
	if(dbg_object(this.m__head).m__succ!=this.m__head){
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<62>";
		pop_err();
		return dbg_object(this.m__head).m__succ;
	}
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<63>";
	pop_err();
	return null;
}
function c_Node4(){
	Object.call(this);
	this.m__succ=null;
	this.m__pred=null;
	this.m__data=null;
}
c_Node4.m_new=function(t_succ,t_pred,t_data){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<261>";
	this.m__succ=t_succ;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<262>";
	this.m__pred=t_pred;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<263>";
	dbg_object(this.m__succ).m__pred=this;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<264>";
	dbg_object(this.m__pred).m__succ=this;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<265>";
	this.m__data=t_data;
	pop_err();
	return this;
}
c_Node4.m_new2=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<258>";
	pop_err();
	return this;
}
c_Node4.prototype.p_Value=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<269>";
	pop_err();
	return this.m__data;
}
c_Node4.prototype.p_GetNode=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<301>";
	pop_err();
	return this;
}
c_Node4.prototype.p_NextNode=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<282>";
	if(dbg_object(this.m__succ).m__pred!=this){
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<282>";
		error("Illegal operation on removed node");
	}
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<284>";
	var t_=this.m__succ.p_GetNode();
	pop_err();
	return t_;
}
function c_HeadNode(){
	c_Node4.call(this);
}
c_HeadNode.prototype=extend_class(c_Node4);
c_HeadNode.m_new=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<310>";
	c_Node4.m_new2.call(this);
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<311>";
	this.m__succ=(this);
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<312>";
	this.m__pred=(this);
	pop_err();
	return this;
}
c_HeadNode.prototype.p_GetNode=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<316>";
	pop_err();
	return null;
}
function bb_FontMod_ATextWidth(t_str){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<30>";
	var t_=bb_FontMod___Afont.p_TextWidth(t_str);
	pop_err();
	return t_;
}
function bb_FontMod_AFontHeight(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<34>";
	if(bb_FontMod___Afont==null){
		err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<34>";
		error("font not initialized");
	}
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<35>";
	pop_err();
	return dbg_object(bb_FontMod___Afont).m_height;
}
function bb_FontMod_GetChars(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<49>";
	if(bb_FontMod___Afont==null){
		err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<49>";
		error("font not initialized");
	}
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<50>";
	pop_err();
	return dbg_object(bb_FontMod___Afont).m_chars;
}
var bb_GuiMod2___btnAtlas=null;
function bb_GuiMod2_GetBtnAtlas(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GuiMod/GuiMod.monkey<28>";
	if(bb_GuiMod2___btnAtlas==null){
		err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GuiMod/GuiMod.monkey<29>";
		bb_GuiMod2___btnAtlas=bb_graphics_LoadImage("button.png",1,c_Image.m_DefaultFlags);
	}
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GuiMod/GuiMod.monkey<31>";
	pop_err();
	return bb_GuiMod2___btnAtlas;
}
function c_GameTimer(){
	Object.call(this);
	this.m_x=0;
	this.m_y=0;
	this.m_startTime=0;
	this.m_time=0;
	this.m_secs=0;
	this.m_mins=0;
	this.m_hours=0;
}
c_GameTimer.prototype.p_Init3=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<165>";
	this.m_startTime=bb_app_Millisecs();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<166>";
	this.m_time=0;
	pop_err();
}
c_GameTimer.m_new=function(t_x,t_y){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<158>";
	dbg_object(this).m_x=t_x;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<159>";
	dbg_object(this).m_y=t_y;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<160>";
	this.p_Init3();
	pop_err();
	return this;
}
c_GameTimer.m_new2=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<147>";
	pop_err();
	return this;
}
c_GameTimer.prototype.p_Update=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<171>";
	this.m_time=bb_app_Millisecs()-this.m_startTime;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<172>";
	this.m_secs=((this.m_time/1000)|0);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<173>";
	this.m_mins=((this.m_secs/60)|0);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<174>";
	this.m_hours=((this.m_mins/60)|0);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<175>";
	this.m_secs%=60;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<176>";
	this.m_mins%=60;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<177>";
	this.m_hours%=24;
	pop_err();
}
c_GameTimer.prototype.p_Render2=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<183>";
	var t_s=String(this.m_secs);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<184>";
	var t_m=String(this.m_mins);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<185>";
	var t_h=String(this.m_hours);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<186>";
	if(t_s.length==1){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<186>";
		t_s="0"+t_s;
	}
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<187>";
	if(t_m.length==1){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<187>";
		t_m="0"+t_m;
	}
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<188>";
	if(t_h.length==1){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<188>";
		t_h="0"+t_h;
	}
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/solitaire.monkey<189>";
	bb_FontMod_RenderText(t_h+":"+t_m+":"+t_s,(this.m_x),(this.m_y));
	pop_err();
}
function bb_app_Millisecs(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<233>";
	var t_=bb_app__game.Millisecs();
	pop_err();
	return t_;
}
var bb_app__updateRate=0;
function bb_app_SetUpdateRate(t_hertz){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<224>";
	bb_app__updateRate=t_hertz;
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<225>";
	bb_app__game.SetUpdateRate(t_hertz);
	pop_err();
}
function bb_app_LoadState(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<212>";
	var t_=bb_app__game.LoadState();
	pop_err();
	return t_;
}
var bb_random_Seed=0;
function bb_random_Rnd(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/random.monkey<21>";
	bb_random_Seed=bb_random_Seed*1664525+1013904223|0;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/random.monkey<22>";
	var t_=(bb_random_Seed>>8&16777215)/16777216.0;
	pop_err();
	return t_;
}
function bb_random_Rnd2(t_low,t_high){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/random.monkey<30>";
	var t_=bb_random_Rnd3(t_high-t_low)+t_low;
	pop_err();
	return t_;
}
function bb_random_Rnd3(t_range){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/random.monkey<26>";
	var t_=bb_random_Rnd()*t_range;
	pop_err();
	return t_;
}
function bb_app_SaveState(t_state){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/app.monkey<216>";
	bb_app__game.SaveState(t_state);
	pop_err();
}
function c_Mouse(){
	Object.call(this);
	this.m_called=0;
	this.m_x=0;
	this.m_oldx=0;
	this.m_y=0;
	this.m_oldy=0;
	this.m_mousewheel=0;
	this.m_oldmousewheel=0;
	this.m_pressed=new_number_array(3);
	this.m_oldpressed=new_number_array(3);
	this.m_state=new_number_array(3);
	this.m_doublePressed=new_number_array(3);
	this.m_clickCount=new_number_array(3);
	this.m_endTime=new_number_array(3);
}
c_Mouse.m_new=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/MouseMod/MouseMod.monkey<12>";
	pop_err();
	return this;
}
c_Mouse.prototype.p_Update=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/MouseMod/MouseMod.monkey<40>";
	this.m_called=1;
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/MouseMod/MouseMod.monkey<41>";
	this.m_oldx=this.m_x;
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/MouseMod/MouseMod.monkey<42>";
	this.m_oldy=this.m_y;
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/MouseMod/MouseMod.monkey<43>";
	this.m_oldmousewheel=this.m_mousewheel;
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/MouseMod/MouseMod.monkey<44>";
	this.m_x=((bb_input_MouseX())|0);
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/MouseMod/MouseMod.monkey<45>";
	this.m_y=((bb_input_MouseY())|0);
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/MouseMod/MouseMod.monkey<47>";
	for(var t_b=0;t_b<=2;t_b=t_b+1){
		err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/MouseMod/MouseMod.monkey<49>";
		dbg_array(this.m_oldpressed,t_b)[dbg_index]=dbg_array(this.m_pressed,t_b)[dbg_index];
		err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/MouseMod/MouseMod.monkey<50>";
		dbg_array(this.m_pressed,t_b)[dbg_index]=bb_input_MouseDown(t_b);
		err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/MouseMod/MouseMod.monkey<52>";
		if((dbg_array(this.m_oldpressed,t_b)[dbg_index])!=0){
			err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/MouseMod/MouseMod.monkey<54>";
			if((dbg_array(this.m_pressed,t_b)[dbg_index])!=0){
				err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/MouseMod/MouseMod.monkey<55>";
				dbg_array(this.m_state,t_b)[dbg_index]=2;
			}else{
				err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/MouseMod/MouseMod.monkey<57>";
				dbg_array(this.m_state,t_b)[dbg_index]=3;
			}
		}else{
			err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/MouseMod/MouseMod.monkey<60>";
			if((dbg_array(this.m_pressed,t_b)[dbg_index])!=0){
				err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/MouseMod/MouseMod.monkey<61>";
				dbg_array(this.m_state,t_b)[dbg_index]=1;
			}else{
				err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/MouseMod/MouseMod.monkey<63>";
				dbg_array(this.m_state,t_b)[dbg_index]=0;
			}
		}
		err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/MouseMod/MouseMod.monkey<66>";
		dbg_array(this.m_doublePressed,t_b)[dbg_index]=0;
		err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/MouseMod/MouseMod.monkey<68>";
		if(dbg_array(this.m_state,t_b)[dbg_index]==1){
			err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/MouseMod/MouseMod.monkey<70>";
			if(dbg_array(this.m_clickCount,t_b)[dbg_index]==0){
				err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/MouseMod/MouseMod.monkey<72>";
				dbg_array(this.m_clickCount,t_b)[dbg_index]=1;
				err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/MouseMod/MouseMod.monkey<73>";
				dbg_array(this.m_endTime,t_b)[dbg_index]=bb_app_Millisecs()+250;
			}else{
				err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/MouseMod/MouseMod.monkey<77>";
				if(bb_app_Millisecs()<dbg_array(this.m_endTime,t_b)[dbg_index]){
					err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/MouseMod/MouseMod.monkey<78>";
					dbg_array(this.m_doublePressed,t_b)[dbg_index]=1;
				}
				err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/MouseMod/MouseMod.monkey<80>";
				dbg_array(this.m_clickCount,t_b)[dbg_index]=0;
			}
		}else{
			err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/MouseMod/MouseMod.monkey<83>";
			if(bb_app_Millisecs()>dbg_array(this.m_endTime,t_b)[dbg_index]){
				err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/MouseMod/MouseMod.monkey<85>";
				dbg_array(this.m_clickCount,t_b)[dbg_index]=0;
			}
		}
	}
	pop_err();
}
c_Mouse.prototype.p_ButtonActivated=function(t_selected){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/MouseMod/MouseMod.monkey<134>";
	t_selected&=3;
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/MouseMod/MouseMod.monkey<136>";
	if(dbg_array(this.m_state,t_selected)[dbg_index]==1){
		err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/MouseMod/MouseMod.monkey<137>";
		pop_err();
		return 1;
	}
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/MouseMod/MouseMod.monkey<139>";
	pop_err();
	return 0;
}
c_Mouse.prototype.p_ButtonReleased=function(t_selected){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/MouseMod/MouseMod.monkey<146>";
	t_selected&=3;
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/MouseMod/MouseMod.monkey<148>";
	if(dbg_array(this.m_state,t_selected)[dbg_index]==3){
		err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/MouseMod/MouseMod.monkey<149>";
		pop_err();
		return 1;
	}
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/MouseMod/MouseMod.monkey<152>";
	pop_err();
	return 0;
}
var bb_MouseMod_mouse=null;
function bb_input_MouseX(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/input.monkey<58>";
	var t_=bb_input_device.p_MouseX();
	pop_err();
	return t_;
}
function bb_input_MouseY(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/input.monkey<62>";
	var t_=bb_input_device.p_MouseY();
	pop_err();
	return t_;
}
function bb_input_MouseDown(t_button){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/input.monkey<66>";
	var t_=((bb_input_device.p_KeyDown(1+t_button))?1:0);
	pop_err();
	return t_;
}
function c_Game(){
	Object.call(this);
	this.m_dealer=null;
	this.m_playField=null;
	this.m_mouseStack=null;
	this.m_animation=null;
	this.m_dump=null;
	this.m_buffer=null;
	this.m_disableUndo=0;
	this.m_enableUndo=0;
	this.m_dumping=0;
	this.m_dealing=0;
	this.m_Undealing=0;
	this.m_rel=null;
	this.m_RedoingUndoing=0;
	this.m_tempSupply=null;
	this.m_Undumping=0;
	this.m_count=0;
	this.m_group=null;
}
c_Game.m_new=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1614>";
	this.m_dealer=c_Dealer.m_new.call(new c_Dealer,700,10,2,11,10);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1615>";
	this.m_playField=c_PlayField.m_new.call(new c_PlayField,bb_app_DeviceWidth(),600,120);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1616>";
	this.m_mouseStack=c_MouseStack.m_new.call(new c_MouseStack);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1617>";
	this.m_mouseStack.p_SeTCardSpacing(0,20,1);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1618>";
	this.m_mouseStack.p_SeTCardSpacing(0,10,2);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1620>";
	bb_cCardForm_cardForm.p_SetScale(.3,.3);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1621>";
	this.m_playField.p_CreateStacks(10);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1622>";
	this.m_playField.p_StackSeTSpacing(0,20,1);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1623>";
	this.m_playField.p_StackSeTSpacing(0,10,2);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1624>";
	this.m_animation=c_Animation.m_new.call(new c_Animation);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1625>";
	this.m_dump=c_Dump.m_new.call(new c_Dump,10,10);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1626>";
	this.m_buffer=c_Buffer.m_new.call(new c_Buffer);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1627>";
	this.m_disableUndo=1;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1628>";
	this.m_enableUndo=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1629>";
	this.m_dumping=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1630>";
	this.m_dealing=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1631>";
	this.m_Undealing=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1632>";
	bb_cCardForm_cardMoves=0;
	pop_err();
	return this;
}
c_Game.prototype.p_Undo=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1904>";
	if(((this.m_animation.p_IsDone())!=0) && this.m_mouseStack.p_ContainCards()==0){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1906>";
		var t_x=0;
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1906>";
		var t_y=0;
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1907>";
		this.m_rel=this.m_buffer.p_Undo();
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1908>";
		if(this.m_rel==null){
			pop_err();
			return;
		}
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1909>";
		var t_stp=this.m_rel.p_Extract();
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1910>";
		if(t_stp==null){
			pop_err();
			return;
		}
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1911>";
		if(dbg_object(t_stp).m_oldStack>=0 && dbg_object(t_stp).m_oldStack<10){
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1912>";
			this.m_playField.p_StackSetFrontFace(dbg_object(t_stp).m_oldStack,dbg_object(t_stp).m_oldFace);
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1913>";
			var t_card=this.m_playField.p_GetCards2(dbg_object(t_stp).m_currentStack,dbg_object(t_stp).m_currentIndex);
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1914>";
			t_x=this.m_playField.p_GetStackNextX(dbg_object(t_stp).m_oldStack);
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1915>";
			t_y=this.m_playField.p_GetStackNextY(dbg_object(t_stp).m_oldStack);
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1916>";
			var t_animated=c_AnimatedCard.m_new.call(new c_AnimatedCard,t_card,(t_x),(t_y),20.0,dbg_object(t_stp).m_oldStack);
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1917>";
			this.m_animation.p_AddAnimation(t_animated);
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1918>";
			this.m_RedoingUndoing=1;
		}else{
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1919>";
			if(dbg_object(t_stp).m_oldStack==-1){
				err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1920>";
				var t_card2=this.m_playField.p_StackExtractFrontCard(dbg_object(t_stp).m_currentStack);
				err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1921>";
				t_x=this.m_dealer.p_GetNextX();
				err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1922>";
				t_y=this.m_dealer.p_GetNextY();
				err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1923>";
				while((t_card2).length!=0){
					err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1924>";
					var t_animated2=c_AnimatedCard.m_new.call(new c_AnimatedCard,t_card2,(t_x),(t_y),20.0,dbg_object(t_stp).m_oldStack);
					err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1925>";
					this.m_animation.p_AddAnimation(t_animated2);
					err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1926>";
					t_stp=this.m_rel.p_Extract();
					err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1927>";
					var t_c=[];
					err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1928>";
					t_card2=t_c;
					err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1929>";
					if((t_stp)!=null){
						err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1929>";
						t_card2=this.m_playField.p_StackExtractFrontCard(dbg_object(t_stp).m_currentStack);
					}
				}
				err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1931>";
				this.m_tempSupply=c_Supply.m_new.call(new c_Supply);
				err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1932>";
				this.m_Undealing=1;
			}else{
				err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1934>";
				if(dbg_object(t_stp).m_oldStack==-2){
					err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1935>";
					var t_tempSupply=this.m_dump.p_GetASet();
					err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1936>";
					if((t_tempSupply)!=null){
						err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1937>";
						t_x=this.m_playField.p_GetStackNextX(dbg_object(t_stp).m_currentStack);
						err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1938>";
						t_y=this.m_playField.p_GetStackNextY(dbg_object(t_stp).m_currentStack);
						err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1939>";
						var t_sx=0;
						err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1939>";
						var t_sy=0;
						err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1940>";
						t_sx=this.m_playField.p_StackGetCardspacingX(1,dbg_object(t_stp).m_currentStack);
						err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1941>";
						t_sy=this.m_playField.p_StackGetCardspacingY(1,dbg_object(t_stp).m_currentStack);
						err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1942>";
						var t_card3=t_tempSupply.p_ExtractCard();
						err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1943>";
						while((t_card3).length!=0){
							err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1944>";
							dbg_array(t_card3,0)[dbg_index].p_SetFace(1);
							err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1945>";
							var t_animated3=c_AnimatedCard.m_new.call(new c_AnimatedCard,t_card3,(t_x),(t_y),20.0,dbg_object(t_stp).m_currentStack);
							err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1946>";
							this.m_animation.p_AddAnimation(t_animated3);
							err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1947>";
							t_card3=t_tempSupply.p_ExtractCard();
							err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1948>";
							t_y+=t_sy;
						}
						err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1950>";
						this.m_Undumping=1;
					}
				}
			}
		}
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1954>";
		if((this.m_buffer.p_UndoIsEmpty())!=0){
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1955>";
			this.m_disableUndo=1;
		}
	}
	pop_err();
}
c_Game.prototype.p_RedoUndo=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2007>";
	var t_slotIndex=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2007>";
	var t_card=[];
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2008>";
	if(this.m_animation.p_Update()==1){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2009>";
		var t_animated=this.m_animation.p_ExtractAnimation();
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2010>";
		while((t_animated)!=null){
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2011>";
			t_card=t_animated.p_GetCard();
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2012>";
			t_slotIndex=t_animated.p_GetSlotIndex();
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2013>";
			this.m_playField.p_AddCardsToStack(t_card,t_slotIndex);
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2014>";
			t_animated=this.m_animation.p_ExtractAnimation();
		}
	}else{
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2017>";
		var t_animated2=this.m_animation.p_ExtractAnimation();
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2018>";
		while((t_animated2)!=null){
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2019>";
			var t_slotIndex2=0;
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2020>";
			t_card=t_animated2.p_GetCard();
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2021>";
			t_slotIndex2=t_animated2.p_GetSlotIndex();
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2022>";
			this.m_playField.p_AddCardsToStack(t_card,t_slotIndex2);
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2023>";
			t_animated2=this.m_animation.p_ExtractAnimation();
		}
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2025>";
		bb_cCardForm_cardMoves+=1;
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2026>";
		var t_stp=this.m_rel.p_Extract();
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2027>";
		if((t_stp)!=null){
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2028>";
			var t_x=0;
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2028>";
			var t_y=0;
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2029>";
			this.m_playField.p_StackSetFrontFace(dbg_object(t_stp).m_oldStack,dbg_object(t_stp).m_oldFace);
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2030>";
			var t_card2=this.m_playField.p_GetCards2(dbg_object(t_stp).m_currentStack,dbg_object(t_stp).m_currentIndex);
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2031>";
			t_x=this.m_playField.p_GetStackNextX(dbg_object(t_stp).m_oldStack);
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2032>";
			t_y=this.m_playField.p_GetStackNextY(dbg_object(t_stp).m_oldStack);
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2033>";
			var t_animated3=c_AnimatedCard.m_new.call(new c_AnimatedCard,t_card2,(t_x),(t_y),20.0,dbg_object(t_stp).m_oldStack);
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2034>";
			this.m_animation.p_AddAnimation(t_animated3);
		}else{
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2036>";
			if((this.m_buffer.p_UndoIsEmpty())!=0){
				err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2037>";
				this.m_disableUndo=1;
			}
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2039>";
			this.m_RedoingUndoing=0;
		}
	}
	pop_err();
}
c_Game.prototype.p_DealingCards=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1636>";
	var t_slotIndex=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1636>";
	var t_card=[];
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1637>";
	if(this.m_animation.p_Update()==1){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1638>";
		var t_animated=this.m_animation.p_ExtractAnimation();
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1639>";
		while((t_animated)!=null){
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1640>";
			t_card=t_animated.p_GetCard();
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1641>";
			t_slotIndex=t_animated.p_GetSlotIndex();
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1642>";
			this.m_playField.p_AddCardsToStack(t_card,t_slotIndex);
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1643>";
			t_animated=this.m_animation.p_ExtractAnimation();
		}
	}else{
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1646>";
		var t_animated2=this.m_animation.p_ExtractAnimation();
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1647>";
		while((t_animated2)!=null){
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1648>";
			var t_slotIndex2=0;
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1649>";
			t_card=t_animated2.p_GetCard();
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1650>";
			t_slotIndex2=t_animated2.p_GetSlotIndex();
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1651>";
			this.m_playField.p_AddCardsToStack(t_card,t_slotIndex2);
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1652>";
			t_animated2=this.m_animation.p_ExtractAnimation();
		}
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1654>";
		this.m_dealing=0;
	}
	pop_err();
}
c_Game.prototype.p_Undeal=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1980>";
	var t_card=[];
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1980>";
	var t_slotIndex=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1981>";
	if(this.m_animation.p_Update()==1){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1982>";
		var t_animated=this.m_animation.p_ExtractAnimation();
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1983>";
		while((t_animated)!=null){
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1984>";
			t_card=t_animated.p_GetCard();
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1985>";
			t_slotIndex=t_animated.p_GetSlotIndex();
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1986>";
			dbg_object(dbg_array(t_card,0)[dbg_index]).m_face=2;
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1987>";
			this.m_tempSupply.p_AddCards(t_card);
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1988>";
			t_animated=this.m_animation.p_ExtractAnimation();
		}
	}else{
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1991>";
		var t_animated2=this.m_animation.p_ExtractAnimation();
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1992>";
		while((t_animated2)!=null){
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1993>";
			var t_slotIndex2=0;
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1994>";
			t_card=t_animated2.p_GetCard();
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1995>";
			t_slotIndex2=t_animated2.p_GetSlotIndex();
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1996>";
			dbg_object(dbg_array(t_card,0)[dbg_index]).m_face=2;
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1997>";
			this.m_tempSupply.p_AddCards(t_card);
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1998>";
			t_animated2=this.m_animation.p_ExtractAnimation();
		}
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2000>";
		this.m_dealer.p_AddASet(this.m_tempSupply);
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2001>";
		this.m_tempSupply=null;
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2002>";
		this.m_Undealing=0;
	}
	pop_err();
}
c_Game.prototype.p_DumpingCards=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1659>";
	var t_slotIndex=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1659>";
	var t_card=[];
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1660>";
	if(this.m_animation.p_Update()==1){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1661>";
		var t_animated=this.m_animation.p_ExtractAnimation();
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1662>";
		while((t_animated)!=null){
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1663>";
			var t_slotIndex2=0;
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1664>";
			t_card=t_animated.p_GetCard();
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1665>";
			t_slotIndex2=t_animated.p_GetSlotIndex();
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1666>";
			this.m_dump.p_AddCard(t_card);
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1667>";
			t_animated=this.m_animation.p_ExtractAnimation();
		}
	}else{
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1670>";
		var t_animated2=this.m_animation.p_ExtractAnimation();
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1671>";
		while((t_animated2)!=null){
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1672>";
			var t_slotIndex3=0;
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1673>";
			t_card=t_animated2.p_GetCard();
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1674>";
			t_slotIndex3=t_animated2.p_GetSlotIndex();
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1675>";
			this.m_dump.p_AddCard(t_card);
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1676>";
			t_animated2=this.m_animation.p_ExtractAnimation();
		}
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1678>";
		this.m_dumping=0;
	}
	pop_err();
}
c_Game.prototype.p_Undump=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1866>";
	var t_slotIndex=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1866>";
	var t_card=[];
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1867>";
	var t_x=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1867>";
	var t_y=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1868>";
	var t_sx=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1868>";
	var t_sy=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1869>";
	if(this.m_animation.p_Update()==1){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1870>";
		var t_animated=this.m_animation.p_ExtractAnimation();
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1871>";
		while((t_animated)!=null){
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1872>";
			t_card=t_animated.p_GetCard();
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1873>";
			t_slotIndex=t_animated.p_GetSlotIndex();
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1874>";
			this.m_playField.p_AddCardsToStack(t_card,t_slotIndex);
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1875>";
			t_animated=this.m_animation.p_ExtractAnimation();
		}
	}else{
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1878>";
		var t_animated2=this.m_animation.p_ExtractAnimation();
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1879>";
		while((t_animated2)!=null){
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1880>";
			var t_slotIndex2=0;
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1881>";
			t_card=t_animated2.p_GetCard();
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1882>";
			t_slotIndex2=t_animated2.p_GetSlotIndex();
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1883>";
			this.m_playField.p_AddCardsToStack(t_card,t_slotIndex2);
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1884>";
			t_animated2=this.m_animation.p_ExtractAnimation();
		}
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1887>";
		var t_stp=this.m_rel.p_Extract();
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1888>";
		if(t_stp==null){
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1889>";
			this.m_Undumping=0;
			pop_err();
			return;
		}
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1892>";
		this.m_playField.p_StackSetFrontFace(dbg_object(t_stp).m_oldStack,dbg_object(t_stp).m_oldFace);
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1893>";
		t_card=this.m_playField.p_GetCards2(dbg_object(t_stp).m_currentStack,dbg_object(t_stp).m_currentIndex);
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1894>";
		t_x=this.m_playField.p_GetStackNextX(dbg_object(t_stp).m_oldStack);
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1895>";
		t_y=this.m_playField.p_GetStackNextY(dbg_object(t_stp).m_oldStack);
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1896>";
		t_animated2=c_AnimatedCard.m_new.call(new c_AnimatedCard,t_card,(t_x),(t_y),20.0,dbg_object(t_stp).m_oldStack);
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1897>";
		this.m_animation.p_AddAnimation(t_animated2);
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1898>";
		bb_cCardForm_cardMoves+=1;
	}
	pop_err();
}
c_Game.prototype.p_DealFaceDown=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1683>";
	var t_x=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1683>";
	var t_y=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1684>";
	var t_index=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1686>";
	var t_supply=this.m_dealer.p_GetASet();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1687>";
	if((t_supply)!=null){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1689>";
		var t_card=t_supply.p_ExtractCard();
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1691>";
		t_index=0;
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1692>";
		while((t_card).length!=0){
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1693>";
			bb_cSfx_SFX.p_PlayCard();
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1694>";
			dbg_array(t_card,0)[dbg_index].p_SetFace(2);
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1695>";
			t_x=this.m_playField.p_GetStackNextX(t_index);
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1696>";
			t_y=this.m_playField.p_GetStackNextY(t_index);
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1697>";
			var t_animated=c_AnimatedCard.m_new.call(new c_AnimatedCard,t_card,(t_x),(t_y),20.0,t_index);
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1698>";
			this.m_animation.p_AddAnimation(t_animated);
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1699>";
			t_card=t_supply.p_ExtractCard();
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1700>";
			this.m_dealing=1;
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1701>";
			t_index+=1;
		}
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1703>";
		this.m_count+=1;
	}
	pop_err();
}
c_Game.prototype.p_DealFaceUp=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1708>";
	var t_x=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1709>";
	var t_y=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1710>";
	var t_index=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1711>";
	var t_supply=this.m_dealer.p_GetASet();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1712>";
	if((t_supply)!=null){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1713>";
		var t_card=t_supply.p_ExtractCard();
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1714>";
		t_index=0;
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1715>";
		while((t_card).length!=0){
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1716>";
			dbg_array(t_card,0)[dbg_index].p_SetFace(1);
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1717>";
			t_x=this.m_playField.p_GetStackNextX(t_index);
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1718>";
			t_y=this.m_playField.p_GetStackNextY(t_index);
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1719>";
			var t_animated=c_AnimatedCard.m_new.call(new c_AnimatedCard,t_card,(t_x),(t_y),20.0,t_index);
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1720>";
			this.m_animation.p_AddAnimation(t_animated);
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1721>";
			t_card=t_supply.p_ExtractCard();
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1722>";
			this.m_dealing=1;
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1723>";
			t_index+=1;
		}
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1725>";
		this.m_count+=1;
	}
	pop_err();
}
c_Game.prototype.p_AddStep=function(t_index,t_stackNo,t_oldStackNo,t_oldFace){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1971>";
	this.m_group.p_AddStep2(c_BufferStep.m_new.call(new c_BufferStep,t_stackNo,t_index,t_oldStackNo,t_oldFace));
	pop_err();
}
c_Game.prototype.p_PostSteps=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1975>";
	if((this.m_group)!=null){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1975>";
		this.m_buffer.p_Save(this.m_group);
	}
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1976>";
	this.m_group=null;
	pop_err();
}
c_Game.prototype.p_DistributeCards=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1756>";
	var t_x=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1756>";
	var t_y=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1757>";
	var t_column=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1758>";
	var t_row=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1759>";
	var t_cardPos=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1760>";
	var t_suit=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1761>";
	if(!((this.m_playField.p_EmptyStacks())!=0)){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1762>";
		var t_supply=this.m_dealer.p_GetASet();
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1763>";
		if((t_supply)!=null){
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1764>";
			var t_card=t_supply.p_ExtractCard();
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1765>";
			t_column=0;
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1766>";
			this.m_group=c_BufferGroup.m_new.call(new c_BufferGroup,null);
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1767>";
			while((t_card).length!=0){
				err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1768>";
				t_cardPos=this.m_playField.p_StackPeekFrontCardNumber(t_column);
				err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1769>";
				t_suit=this.m_playField.p_StackPeekFrontCardSuit(t_column);
				err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1770>";
				t_row=this.m_playField.p_StackPeekFrontCardIndex(t_column);
				err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1771>";
				this.p_AddStep(t_row,t_column,-1,t_suit);
				err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1772>";
				dbg_array(t_card,0)[dbg_index].p_SetFace(1);
				err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1773>";
				t_x=this.m_playField.p_GetStackNextX(t_column);
				err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1774>";
				t_y=this.m_playField.p_GetStackNextY(t_column);
				err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1775>";
				var t_animated=c_AnimatedCard.m_new.call(new c_AnimatedCard,t_card,(t_x),(t_y),20.0,t_column);
				err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1776>";
				this.m_animation.p_AddAnimation(t_animated);
				err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1777>";
				t_card=t_supply.p_ExtractCard();
				err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1778>";
				this.m_dealing=1;
				err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1779>";
				t_column+=1;
			}
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1781>";
			this.p_PostSteps();
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1782>";
			this.m_count+=1;
		}
	}
	pop_err();
}
c_Game.prototype.p_GetCards=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1730>";
	var t_stackNo=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1731>";
	var t_cardPos=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1732>";
	var t_oldStackFrontCardFace=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1733>";
	var t_number2=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1734>";
	t_stackNo=this.m_playField.p_GetMouseStackNumber();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1735>";
	t_cardPos=-1;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1736>";
	if(t_stackNo!=-1){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1737>";
		t_cardPos=this.m_playField.p_GetMouseCardIndex(t_stackNo);
	}
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1739>";
	if(t_cardPos!=-1){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1740>";
		if(t_cardPos>=0){
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1741>";
			if((this.m_playField.p_StackValidCardRules(t_stackNo,t_cardPos))!=0){
				err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1742>";
				t_oldStackFrontCardFace=this.m_playField.p_IndexPreviousCardFace(t_stackNo,t_cardPos);
				err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1743>";
				var t_card=this.m_playField.p_GetCards2(t_stackNo,t_cardPos);
				err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1744>";
				if((t_card).length!=0){
					err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1745>";
					this.m_mouseStack.p_AddCards2(t_card,t_stackNo,t_oldStackFrontCardFace);
				}
			}
		}
	}else{
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1749>";
		if((this.m_dealer.p_MouseInSet())!=0){
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1750>";
			this.p_DistributeCards();
		}
	}
	pop_err();
}
c_Game.prototype.p_InitSteps=function(t_index,t_stackNo,t_oldStackNo,t_oldFace){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1967>";
	this.m_group=c_BufferGroup.m_new.call(new c_BufferGroup,c_BufferStep.m_new.call(new c_BufferStep,t_stackNo,t_index,t_oldStackNo,t_oldFace));
	pop_err();
}
c_Game.prototype.p_PositionCards=function(t_stackNo,t_state){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1791>";
	var t_number=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1792>";
	var t_number2=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1793>";
	var t_suit=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1794>";
	var t_index=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1795>";
	var t_oldFace=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1796>";
	var t_x=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1796>";
	var t_y=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1797>";
	var t_oldStackNo=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1798>";
	var t_card=[];
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1799>";
	if((this.m_mouseStack.p_ContainCards())!=0){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1800>";
		t_number=this.m_mouseStack.p_PeekFirsTCardNumber();
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1801>";
		t_suit=this.m_mouseStack.p_PeekFirsTCardSuit();
	}
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1803>";
	var t_tn=this.m_playField.p_StackContainCards(t_stackNo);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1804>";
	if((t_tn)!=0){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1805>";
		t_number2=this.m_playField.p_StackPeekFrontCardNumber(t_stackNo);
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1806>";
		t_suit=this.m_playField.p_StackPeekFrontCardSuit(t_stackNo);
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1807>";
		t_index=this.m_playField.p_StackPeekFrontCardIndex(t_stackNo);
	}
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1809>";
	if(t_number+1==t_number2){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1810>";
		bb_cSfx_SFX.p_PlayCard();
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1811>";
		t_card=this.m_mouseStack.p_ExtractAllCards();
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1812>";
		t_oldStackNo=this.m_mouseStack.p_GetOldStackIndex();
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1813>";
		t_oldFace=this.m_mouseStack.p_GetOldFace();
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1814>";
		this.p_InitSteps(t_index+1,t_stackNo,t_oldStackNo,t_oldFace);
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1815>";
		this.m_playField.p_AddCardsToStack(t_card,t_stackNo);
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1816>";
		if(t_oldStackNo!=t_stackNo){
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1817>";
			bb_cCardForm_cardMoves+=1;
		}
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1819>";
		if(t_stackNo!=t_oldStackNo){
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1820>";
			this.m_playField.p_StackFaceFrontCard(t_oldStackNo);
		}
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1822>";
		if((this.m_playField.p_StackCompleteSuit(t_stackNo))!=0){
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1823>";
			t_card=this.m_playField.p_StackExtractFrontCard(t_stackNo);
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1824>";
			this.p_AddStep(t_index,t_stackNo,-2,t_oldFace);
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1825>";
			this.p_PostSteps();
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1826>";
			do{
				err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1827>";
				t_x=this.m_dump.p_GetNextX();
				err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1828>";
				t_y=this.m_dump.p_GetNextY();
				err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1829>";
				var t_animated=c_AnimatedCard.m_new.call(new c_AnimatedCard,t_card,(t_x),(t_y),20.0,t_stackNo);
				err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1830>";
				this.m_animation.p_AddAnimation(t_animated);
				err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1831>";
				if(dbg_object(dbg_array(t_card,0)[dbg_index]).m_number==12){
					err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1831>";
					break;
				}
				err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1832>";
				t_card=this.m_playField.p_StackExtractFrontCard(t_stackNo);
			}while(!(false));
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1834>";
			this.m_playField.p_StackFaceFrontCard(t_oldStackNo);
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1835>";
			this.m_dumping=1;
		}
	}else{
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1837>";
		if(t_tn==0){
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1838>";
			t_card=this.m_mouseStack.p_ExtractAllCards();
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1839>";
			t_oldStackNo=this.m_mouseStack.p_GetOldStackIndex();
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1840>";
			t_oldFace=this.m_mouseStack.p_GetOldFace();
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1841>";
			this.p_InitSteps(t_index,t_stackNo,t_oldStackNo,t_oldFace);
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1842>";
			this.m_playField.p_AddCardsToStack(t_card,t_stackNo);
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1843>";
			if(t_oldStackNo!=t_stackNo){
				err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1844>";
				bb_cCardForm_cardMoves+=1;
			}
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1846>";
			if(t_stackNo!=t_oldStackNo){
				err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1847>";
				this.m_playField.p_StackFaceFrontCard(t_oldStackNo);
			}
		}else{
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1850>";
			t_card=this.m_mouseStack.p_ExtractAllCards();
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1851>";
			t_stackNo=this.m_mouseStack.p_GetOldStackIndex();
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1852>";
			t_oldFace=this.m_mouseStack.p_GetOldFace();
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1853>";
			if((t_card).length!=0){
				err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1854>";
				t_x=this.m_playField.p_GetStackNextX(t_stackNo);
				err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1855>";
				t_y=this.m_playField.p_GetStackNextY(t_stackNo);
				err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1856>";
				var t_animated2=c_AnimatedCard.m_new.call(new c_AnimatedCard,t_card,(t_x),(t_y),20.0,t_stackNo);
				err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1857>";
				if(t_card.length>1){
					err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1857>";
					t_animated2.p_SeTSpacing2(0,20);
				}
				err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1858>";
				this.m_animation.p_AddAnimation(t_animated2);
				err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1859>";
				this.m_dealing=1;
			}
		}
	}
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1862>";
	this.p_PostSteps();
	pop_err();
}
c_Game.prototype.p_Update=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2045>";
	var t_card=[];
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2046>";
	var t_index=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2047>";
	var t_x=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2047>";
	var t_y=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2048>";
	var t_stackNo=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2049>";
	var t_cardPos=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2050>";
	var t_OldStackNo=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2051>";
	var t_oldFace=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2053>";
	if(this.m_RedoingUndoing==1){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2054>";
		this.p_RedoUndo();
	}else{
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2055>";
		if(this.m_dealing==1){
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2056>";
			this.p_DealingCards();
		}else{
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2057>";
			if((this.m_Undealing)!=0){
				err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2058>";
				this.p_Undeal();
			}else{
				err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2059>";
				if(this.m_dumping==1){
					err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2060>";
					this.p_DumpingCards();
				}else{
					err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2061>";
					if((this.m_Undumping)!=0){
						err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2062>";
						this.p_Undump();
					}else{
						err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2064>";
						if(this.m_count<4){
							err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2065>";
							this.p_DealFaceDown();
						}else{
							err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2067>";
							if(this.m_count<5){
								err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2068>";
								this.p_DealFaceUp();
							}else{
								err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2069>";
								if((bb_MouseMod_mouse.p_ButtonActivated(0))!=0){
									err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2070>";
									this.p_GetCards();
								}else{
									err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2071>";
									if((bb_MouseMod_mouse.p_ButtonReleased(0))!=0){
										err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2072>";
										if((this.m_mouseStack.p_IsActive())!=0){
											err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2073>";
											t_cardPos=-1;
											err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2074>";
											t_stackNo=this.m_playField.p_GetMouseStackNumber();
											err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2075>";
											if(t_stackNo!=-1){
												err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2076>";
												t_cardPos=this.m_playField.p_GetMouseCardIndex(t_stackNo);
											}
											err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2078>";
											if(t_cardPos!=-1){
												err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2079>";
												this.p_PositionCards(t_stackNo,t_cardPos);
											}else{
												err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2081>";
												t_card=this.m_mouseStack.p_ExtractAllCards();
												err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2082>";
												t_stackNo=this.m_mouseStack.p_GetOldStackIndex();
												err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2083>";
												t_oldFace=this.m_mouseStack.p_GetOldFace();
												err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2084>";
												t_x=this.m_playField.p_GetStackNextX(t_stackNo);
												err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2085>";
												t_y=this.m_playField.p_GetStackNextY(t_stackNo);
												err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2086>";
												var t_animated=c_AnimatedCard.m_new.call(new c_AnimatedCard,t_card,(t_x),(t_y),20.0,t_stackNo);
												err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2087>";
												this.m_animation.p_AddAnimation(t_animated);
												err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2088>";
												this.m_dealing=1;
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
	}
	pop_err();
}
c_Game.prototype.p_IsOver=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2095>";
	var t_=((this.m_dump.p_GetCount()==104)?1:0);
	pop_err();
	return t_;
}
c_Game.prototype.p_Display=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2100>";
	this.m_playField.p_Display();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2101>";
	this.m_dealer.p_Display();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2102>";
	this.m_dump.p_Display();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2103>";
	if((this.m_mouseStack.p_IsActive())!=0){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2103>";
		this.m_mouseStack.p_Display();
	}
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2104>";
	this.m_animation.p_Display();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<2105>";
	bb_FontMod_RenderText("Moves "+String(bb_cCardForm_cardMoves),620.0,560.0);
	pop_err();
}
function c_Dealer(){
	Object.call(this);
	this.m_position=null;
	this.m_spacing=null;
	this.m_stackCount=0;
	this.m_stacks=[];
}
c_Dealer.m_new=function(t_x,t_y,t_decks,t_stacks,t_cardsEach){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<731>";
	dbg_object(this).m_position=c_Position.m_new.call(new c_Position);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<732>";
	dbg_object(this).m_spacing=c_Spacing.m_new.call(new c_Spacing);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<733>";
	var t_deck=new_object_array(t_decks);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<734>";
	dbg_object(dbg_object(this).m_position).m_x=t_x;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<735>";
	dbg_object(dbg_object(this).m_position).m_y=t_y;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<736>";
	for(var t_i=0;t_i<t_decks;t_i=t_i+1){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<737>";
		dbg_array(t_deck,t_i)[dbg_index]=c_Deck.m_new.call(new c_Deck);
	}
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<740>";
	var t_supply=c_Supply.m_new.call(new c_Supply);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<741>";
	for(var t_n=0;t_n<t_decks;t_n=t_n+1){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<742>";
		t_supply.p_AddCards(dbg_array(t_deck,t_n)[dbg_index].p_GetCards());
	}
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<744>";
	dbg_object(this).m_stackCount=t_stacks;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<745>";
	dbg_object(this).m_stacks=new_object_array(dbg_object(this).m_stackCount);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<746>";
	for(var t_i2=0;t_i2<dbg_object(this).m_stackCount;t_i2=t_i2+1){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<747>";
		dbg_array(dbg_object(this).m_stacks,t_i2)[dbg_index]=c_Supply.m_new.call(new c_Supply);
	}
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<750>";
	dbg_object(dbg_object(this).m_spacing).m_backx=-10;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<751>";
	dbg_object(dbg_object(this).m_spacing).m_backy=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<753>";
	t_supply.p_Shuffle(300);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<755>";
	var t_i3=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<756>";
	var t_c=1;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<757>";
	var t_card=t_supply.p_ExtractCard();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<758>";
	while(t_card.length>0){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<759>";
		dbg_array(t_card,0)[dbg_index].p_SeTPosition(t_x,t_y);
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<760>";
		dbg_array(t_card,0)[dbg_index].p_SetFace(2);
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<761>";
		dbg_array(dbg_object(this).m_stacks,t_i3)[dbg_index].p_AddCards(t_card);
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<762>";
		if(t_c==t_cardsEach){
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<763>";
			t_i3+=1;
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<764>";
			t_x+=dbg_object(dbg_object(this).m_spacing).m_backx;
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<765>";
			t_y+=dbg_object(dbg_object(this).m_spacing).m_backy;
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<766>";
			t_c=0;
		}
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<768>";
		t_c+=1;
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<769>";
		t_card=t_supply.p_ExtractCard();
	}
	pop_err();
	return this;
}
c_Dealer.m_new2=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<714>";
	pop_err();
	return this;
}
c_Dealer.prototype.p_GetNextX=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<859>";
	var t_=dbg_object(this.m_position).m_x+this.m_stackCount*dbg_object(this.m_spacing).m_backx;
	pop_err();
	return t_;
}
c_Dealer.prototype.p_GetNextY=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<863>";
	pop_err();
	return dbg_object(this.m_position).m_y;
}
c_Dealer.prototype.p_AddASet=function(t_set){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<848>";
	var t_x=dbg_object(this.m_position).m_x+dbg_object(this.m_spacing).m_backx*this.m_stackCount;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<849>";
	var t_y=dbg_object(this.m_position).m_y+dbg_object(this.m_spacing).m_backy*this.m_stackCount;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<850>";
	t_set.p_SeTPosition(t_x,t_y);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<851>";
	for(var t_i=0;t_i<dbg_object(t_set).m_count;t_i=t_i+1){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<852>";
		dbg_array(dbg_object(t_set).m_cards,t_i)[dbg_index].p_SeTPosition(t_x,t_y);
	}
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<854>";
	dbg_array(this.m_stacks,this.m_stackCount)[dbg_index]=t_set;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<855>";
	this.m_stackCount+=1;
	pop_err();
}
c_Dealer.prototype.p_GetASet=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<839>";
	if(this.m_stackCount>0){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<840>";
		this.m_stackCount-=1;
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<841>";
		var t_stack=dbg_array(this.m_stacks,this.m_stackCount)[dbg_index];
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<842>";
		pop_err();
		return t_stack;
	}
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<844>";
	pop_err();
	return null;
}
c_Dealer.prototype.p_MouseInSet=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<780>";
	if(this.m_stackCount>0){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<781>";
		if((dbg_object(bb_MouseMod_mouse).m_x)>(dbg_object(dbg_object(dbg_array(this.m_stacks,0)[dbg_index]).m_position).m_x)+dbg_object(bb_cCardForm_cardForm).m__viewWidth){
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<781>";
			pop_err();
			return 0;
		}
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<782>";
		if(dbg_object(bb_MouseMod_mouse).m_x<dbg_object(dbg_object(dbg_array(this.m_stacks,this.m_stackCount-1)[dbg_index]).m_position).m_x){
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<782>";
			pop_err();
			return 0;
		}
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<783>";
		if(dbg_object(bb_MouseMod_mouse).m_y<dbg_object(dbg_object(dbg_array(this.m_stacks,0)[dbg_index]).m_position).m_y){
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<783>";
			pop_err();
			return 0;
		}
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<784>";
		if((dbg_object(bb_MouseMod_mouse).m_y)>(dbg_object(dbg_object(dbg_array(this.m_stacks,0)[dbg_index]).m_position).m_y)+dbg_object(bb_cCardForm_cardForm).m__viewHeight){
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<784>";
			pop_err();
			return 0;
		}
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<785>";
		pop_err();
		return 1;
	}
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<787>";
	pop_err();
	return 0;
}
c_Dealer.prototype.p_Display=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<867>";
	var t_x=dbg_object(this.m_position).m_x;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<868>";
	var t_y=dbg_object(this.m_position).m_y;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<869>";
	for(var t_i=0;t_i<this.m_stackCount;t_i=t_i+1){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<870>";
		dbg_array(this.m_stacks,t_i)[dbg_index].p_SeTPosition(t_x,t_y);
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<871>";
		dbg_array(this.m_stacks,t_i)[dbg_index].p_Display();
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<872>";
		t_x+=dbg_object(this.m_spacing).m_backx;
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<873>";
		t_y+=dbg_object(this.m_spacing).m_backy;
	}
	pop_err();
}
function c_Position(){
	Object.call(this);
	this.m_x=0;
	this.m_y=0;
}
c_Position.m_new=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<237>";
	pop_err();
	return this;
}
function c_Spacing(){
	Object.call(this);
	this.m_backx=0;
	this.m_backy=0;
	this.m_Frontx=0;
	this.m_Fronty=0;
}
c_Spacing.m_new=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<328>";
	pop_err();
	return this;
}
function c_Deck(){
	Object.call(this);
	this.m_suits=new_object_array(4);
	this.m_position=null;
	this.m_Spacing=null;
}
c_Deck.m_new=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<466>";
	dbg_array(this.m_suits,0)[dbg_index]=c_Suit.m_new.call(new c_Suit,0);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<467>";
	dbg_array(this.m_suits,1)[dbg_index]=c_Suit.m_new.call(new c_Suit,1);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<468>";
	dbg_array(this.m_suits,2)[dbg_index]=c_Suit.m_new.call(new c_Suit,2);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<469>";
	dbg_array(this.m_suits,3)[dbg_index]=c_Suit.m_new.call(new c_Suit,3);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<470>";
	this.m_position=c_Position.m_new.call(new c_Position);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<471>";
	this.m_Spacing=c_Position.m_new.call(new c_Position);
	pop_err();
	return this;
}
c_Deck.prototype.p_GetCards=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<492>";
	var t_c=new_object_array(52);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<493>";
	var t_i=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<494>";
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<494>";
	var t_=dbg_array(this.m_suits,0)[dbg_index].p_GetCards();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<494>";
	var t_2=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<494>";
	while(t_2<t_.length){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<494>";
		var t_tc=dbg_array(t_,t_2)[dbg_index];
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<494>";
		t_2=t_2+1;
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<495>";
		dbg_array(t_c,t_i)[dbg_index]=t_tc;
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<496>";
		t_i+=1;
	}
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<498>";
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<498>";
	var t_3=dbg_array(this.m_suits,1)[dbg_index].p_GetCards();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<498>";
	var t_4=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<498>";
	while(t_4<t_3.length){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<498>";
		var t_tc2=dbg_array(t_3,t_4)[dbg_index];
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<498>";
		t_4=t_4+1;
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<499>";
		dbg_array(t_c,t_i)[dbg_index]=t_tc2;
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<500>";
		t_i+=1;
	}
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<502>";
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<502>";
	var t_5=dbg_array(this.m_suits,2)[dbg_index].p_GetCards();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<502>";
	var t_6=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<502>";
	while(t_6<t_5.length){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<502>";
		var t_tc3=dbg_array(t_5,t_6)[dbg_index];
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<502>";
		t_6=t_6+1;
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<503>";
		dbg_array(t_c,t_i)[dbg_index]=t_tc3;
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<504>";
		t_i+=1;
	}
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<506>";
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<506>";
	var t_7=dbg_array(this.m_suits,3)[dbg_index].p_GetCards();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<506>";
	var t_8=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<506>";
	while(t_8<t_7.length){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<506>";
		var t_tc4=dbg_array(t_7,t_8)[dbg_index];
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<506>";
		t_8=t_8+1;
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<507>";
		dbg_array(t_c,t_i)[dbg_index]=t_tc4;
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<508>";
		t_i+=1;
	}
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<510>";
	pop_err();
	return t_c;
}
function c_Suit(){
	Object.call(this);
	this.m_position=null;
	this.m_Spacing=null;
	this.m_suitClass=0;
	this.m_cards=new_object_array(13);
}
c_Suit.m_new=function(t_suitClass){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<355>";
	dbg_object(this).m_position=c_Position.m_new.call(new c_Position);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<356>";
	dbg_object(this).m_Spacing=c_Spacing.m_new.call(new c_Spacing);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<357>";
	dbg_object(this).m_suitClass=t_suitClass;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<358>";
	for(var t_i=0;t_i<13;t_i=t_i+1){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<359>";
		dbg_array(dbg_object(this).m_cards,t_i)[dbg_index]=c_Card.m_new.call(new c_Card,t_i,t_suitClass,1);
	}
	pop_err();
	return this;
}
c_Suit.m_new2=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<341>";
	pop_err();
	return this;
}
c_Suit.prototype.p_GetCards=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<423>";
	var t_c=new_object_array(13);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<424>";
	var t_i=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<425>";
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<425>";
	var t_=this.m_cards;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<425>";
	var t_2=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<425>";
	while(t_2<t_.length){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<425>";
		var t_tc=dbg_array(t_,t_2)[dbg_index];
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<425>";
		t_2=t_2+1;
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<426>";
		dbg_array(t_c,t_i)[dbg_index]=t_tc;
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<427>";
		t_i+=1;
	}
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<429>";
	pop_err();
	return t_c;
}
function c_Card(){
	Object.call(this);
	this.m_position=null;
	this.m_number=0;
	this.m_face=0;
	this.m_suit=0;
}
c_Card.m_new=function(t_cardPos,t_suit,t_face){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<263>";
	dbg_object(this).m_position=c_Position.m_new.call(new c_Position);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<264>";
	dbg_object(this).m_number=t_cardPos;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<265>";
	dbg_object(this).m_face=t_face;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<266>";
	dbg_object(this).m_suit=t_suit;
	pop_err();
	return this;
}
c_Card.m_new2=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<249>";
	pop_err();
	return this;
}
c_Card.prototype.p_SeTPosition=function(t_x,t_y){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<288>";
	dbg_object(this.m_position).m_x=t_x;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<289>";
	dbg_object(this.m_position).m_y=t_y;
	pop_err();
}
c_Card.prototype.p_SetFace=function(t_f){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<278>";
	this.m_face=t_f;
	pop_err();
}
c_Card.prototype.p_GetXPosition=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<299>";
	pop_err();
	return dbg_object(this.m_position).m_x;
}
c_Card.prototype.p_GetYPosition=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<303>";
	pop_err();
	return dbg_object(this.m_position).m_y;
}
c_Card.prototype.p_Draw=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<313>";
	if(this.m_face==1){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<314>";
		bb_cCardForm_cardForm.p_DrawFrontFace(dbg_object(this.m_position).m_x,dbg_object(this.m_position).m_y,this.m_number,this.m_suit);
	}else{
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<316>";
		bb_cCardForm_cardForm.p_DrawBackFace(dbg_object(this.m_position).m_x,dbg_object(this.m_position).m_y);
	}
	pop_err();
}
function c_Supply(){
	Object.call(this);
	this.m_position=null;
	this.m_spacing=null;
	this.m_count=0;
	this.m_cards=new_object_array(104);
}
c_Supply.m_new=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<574>";
	this.m_position=c_Position.m_new.call(new c_Position);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<575>";
	this.m_spacing=c_Spacing.m_new.call(new c_Spacing);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<576>";
	this.m_count=0;
	pop_err();
	return this;
}
c_Supply.prototype.p_AddCards=function(t_cards){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<586>";
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<586>";
	var t_=t_cards;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<586>";
	var t_2=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<586>";
	while(t_2<t_.length){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<586>";
		var t_c=dbg_array(t_,t_2)[dbg_index];
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<586>";
		t_2=t_2+1;
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<587>";
		dbg_array(dbg_object(this).m_cards,this.m_count)[dbg_index]=t_c;
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<588>";
		this.m_count+=1;
	}
	pop_err();
}
c_Supply.prototype.p_Shuffle=function(t_n){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<625>";
	for(var t_t=0;t_t<t_n;t_t=t_t+1){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<626>";
		for(var t_i=0;t_i<this.m_count;t_i=t_i+1){
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<627>";
			var t_i2=((bb_random_Rnd3(this.m_count)-1.0)|0);
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<628>";
			var t_i1=((bb_random_Rnd3(this.m_count)-1.0)|0);
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<629>";
			var t_temp=dbg_array(this.m_cards,t_i1)[dbg_index];
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<630>";
			dbg_array(this.m_cards,t_i1)[dbg_index]=dbg_array(this.m_cards,t_i2)[dbg_index];
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<631>";
			dbg_array(this.m_cards,t_i2)[dbg_index]=t_temp;
		}
	}
	pop_err();
}
c_Supply.prototype.p_ExtractCard=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<609>";
	var t_c=[];
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<610>";
	if(this.m_count==0){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<610>";
		pop_err();
		return t_c;
	}
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<611>";
	var t_card=new_object_array(1);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<612>";
	this.m_count-=1;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<613>";
	dbg_array(t_card,0)[dbg_index]=dbg_array(this.m_cards,this.m_count)[dbg_index];
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<614>";
	pop_err();
	return t_card;
}
c_Supply.prototype.p_SeTPosition=function(t_x,t_y){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<644>";
	dbg_object(this.m_position).m_x=t_x;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<645>";
	dbg_object(this.m_position).m_y=t_y;
	pop_err();
}
c_Supply.prototype.p_Display=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<673>";
	var t_x=dbg_object(this.m_position).m_x;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<674>";
	var t_y=dbg_object(this.m_position).m_y;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<675>";
	var t_a=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<676>";
	var t_d=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<678>";
	if(dbg_object(dbg_array(this.m_cards,0)[dbg_index]).m_face==1){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<679>";
		t_a=dbg_object(this.m_spacing).m_Frontx;
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<680>";
		t_d=dbg_object(this.m_spacing).m_Fronty;
	}else{
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<682>";
		t_a=dbg_object(this.m_spacing).m_backx;
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<683>";
		t_d=dbg_object(this.m_spacing).m_backy;
	}
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<686>";
	if(t_a==0 && t_d==0){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<687>";
		var t_i=this.m_count-1;
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<688>";
		dbg_array(this.m_cards,t_i)[dbg_index].p_SeTPosition(t_x,t_y);
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<689>";
		dbg_array(this.m_cards,t_i)[dbg_index].p_Draw();
	}else{
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<691>";
		for(var t_i2=0;t_i2<this.m_count;t_i2=t_i2+1){
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<692>";
			dbg_array(this.m_cards,t_i2)[dbg_index].p_SeTPosition(t_x,t_y);
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<693>";
			if(dbg_object(dbg_array(this.m_cards,t_i2)[dbg_index]).m_face==1){
				err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<694>";
				t_x+=dbg_object(this.m_spacing).m_Frontx;
				err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<695>";
				t_y+=dbg_object(this.m_spacing).m_Fronty;
			}else{
				err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<697>";
				t_x+=dbg_object(this.m_spacing).m_backx;
				err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<698>";
				t_y+=dbg_object(this.m_spacing).m_backy;
			}
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<700>";
			dbg_array(this.m_cards,t_i2)[dbg_index].p_SeTPosition(t_x,t_y);
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<701>";
			dbg_array(this.m_cards,t_i2)[dbg_index].p_Draw();
		}
	}
	pop_err();
}
function c_PlayField(){
	Object.call(this);
	this.m_width=0;
	this.m_height=0;
	this.m_positiony=0;
	this.m_stacks=[];
	this.m_spacingx=0;
}
c_PlayField.m_new=function(t_width,t_height,t_y){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1208>";
	dbg_object(this).m_width=t_width;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1209>";
	dbg_object(this).m_height=t_height;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1210>";
	dbg_object(this).m_positiony=t_y;
	pop_err();
	return this;
}
c_PlayField.m_new2=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1199>";
	pop_err();
	return this;
}
c_PlayField.prototype.p_CreateStacks=function(t_n){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1219>";
	this.m_stacks=new_object_array(t_n);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1220>";
	this.m_spacingx=((((this.m_width)-dbg_object(bb_cCardForm_cardForm).m__viewWidth*(t_n))/(t_n+1))|0);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1221>";
	var t_x=this.m_spacingx;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1222>";
	var t_y=this.m_positiony;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1223>";
	for(var t_i=0;t_i<this.m_stacks.length;t_i=t_i+1){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1224>";
		dbg_array(this.m_stacks,t_i)[dbg_index]=c_Stack2.m_new.call(new c_Stack2,t_x,t_y);
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1225>";
		t_x=(((t_x)+((this.m_spacingx)+dbg_object(bb_cCardForm_cardForm).m__viewWidth))|0);
	}
	pop_err();
}
c_PlayField.prototype.p_StackSeTSpacing=function(t_x,t_y,t_face){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1299>";
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1299>";
	var t_=this.m_stacks;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1299>";
	var t_2=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1299>";
	while(t_2<t_.length){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1299>";
		var t_stack=dbg_array(t_,t_2)[dbg_index];
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1299>";
		t_2=t_2+1;
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1300>";
		t_stack.p_SeTSpacing(t_x,t_y,t_face);
	}
	pop_err();
}
c_PlayField.prototype.p_StackSetFrontFace=function(t_stackNo,t_face){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1261>";
	if(t_face==1){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1262>";
		dbg_array(this.m_stacks,t_stackNo)[dbg_index].p_FrontCardFaceUp();
	}else{
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1263>";
		if(t_face==2){
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1264>";
			dbg_array(this.m_stacks,t_stackNo)[dbg_index].p_FrontCardFaceDown();
		}
	}
	pop_err();
}
c_PlayField.prototype.p_GetCards2=function(t_stackNo,t_cardPos){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1245>";
	var t_=dbg_array(this.m_stacks,t_stackNo)[dbg_index].p_ExtractFromIndex(t_cardPos);
	pop_err();
	return t_;
}
c_PlayField.prototype.p_GetStackNextX=function(t_stackIndex){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1283>";
	var t_=dbg_array(this.m_stacks,t_stackIndex)[dbg_index].p_GetNextX();
	pop_err();
	return t_;
}
c_PlayField.prototype.p_GetStackNextY=function(t_stackIndex){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1287>";
	var t_=dbg_array(this.m_stacks,t_stackIndex)[dbg_index].p_GetNextY();
	pop_err();
	return t_;
}
c_PlayField.prototype.p_StackExtractFrontCard=function(t_stackNo){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1249>";
	var t_=dbg_array(this.m_stacks,t_stackNo)[dbg_index].p_ExtractFrontCard();
	pop_err();
	return t_;
}
c_PlayField.prototype.p_StackGetCardspacingX=function(t_face,t_stackIndex){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1305>";
	var t_=dbg_array(this.m_stacks,t_stackIndex)[dbg_index].p_GetXSpacing(t_face);
	pop_err();
	return t_;
}
c_PlayField.prototype.p_StackGetCardspacingY=function(t_face,t_stackIndex){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1309>";
	var t_=dbg_array(this.m_stacks,t_stackIndex)[dbg_index].p_GetYSpacing(t_face);
	pop_err();
	return t_;
}
c_PlayField.prototype.p_AddCardsToStack=function(t_card,t_StackIndex){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1313>";
	dbg_array(this.m_stacks,t_StackIndex)[dbg_index].p_AddToEnd(t_card);
	pop_err();
}
c_PlayField.prototype.p_GetMouseStackNumber=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1269>";
	var t_stackNo=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1270>";
	if(dbg_object(bb_MouseMod_mouse).m_y<this.m_positiony){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1270>";
		pop_err();
		return -1;
	}
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1271>";
	t_stackNo=(((dbg_object(bb_MouseMod_mouse).m_x)/((this.m_spacingx)+dbg_object(bb_cCardForm_cardForm).m__viewWidth))|0);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1272>";
	var t_r=(((dbg_object(bb_MouseMod_mouse).m_x) % ((this.m_spacingx)+dbg_object(bb_cCardForm_cardForm).m__viewWidth))|0);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1273>";
	if(t_stackNo>=this.m_stacks.length){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1273>";
		pop_err();
		return -1;
	}
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1274>";
	if(t_r<=this.m_spacingx){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1274>";
		pop_err();
		return -1;
	}
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1275>";
	pop_err();
	return t_stackNo;
}
c_PlayField.prototype.p_GetMouseCardIndex=function(t_stackNo){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1279>";
	var t_=dbg_array(this.m_stacks,t_stackNo)[dbg_index].p_GetCardOnPoint(dbg_object(bb_MouseMod_mouse).m_x,dbg_object(bb_MouseMod_mouse).m_y);
	pop_err();
	return t_;
}
c_PlayField.prototype.p_StackValidCardRules=function(t_stackNo,t_cardPos){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1237>";
	var t_=dbg_array(this.m_stacks,t_stackNo)[dbg_index].p_ValidCardRules(t_cardPos);
	pop_err();
	return t_;
}
c_PlayField.prototype.p_IndexPreviousCardFace=function(t_stackNo,t_cardPos){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1241>";
	var t_=dbg_array(this.m_stacks,t_stackNo)[dbg_index].p_IndexPreviousCardFace2(t_cardPos);
	pop_err();
	return t_;
}
c_PlayField.prototype.p_EmptyStacks=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1230>";
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1230>";
	var t_=this.m_stacks;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1230>";
	var t_2=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1230>";
	while(t_2<t_.length){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1230>";
		var t_stack=dbg_array(t_,t_2)[dbg_index];
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1230>";
		t_2=t_2+1;
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1231>";
		if((t_stack.p_IsEmpty())!=0){
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1231>";
			pop_err();
			return 1;
		}
	}
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1233>";
	pop_err();
	return 0;
}
c_PlayField.prototype.p_StackPeekFrontCardNumber=function(t_stackIndex){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1335>";
	var t_=dbg_array(this.m_stacks,t_stackIndex)[dbg_index].p_PeekFrontCardValue();
	pop_err();
	return t_;
}
c_PlayField.prototype.p_StackPeekFrontCardSuit=function(t_stackIndex){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1339>";
	var t_=dbg_array(this.m_stacks,t_stackIndex)[dbg_index].p_PeekFrontCardSuit();
	pop_err();
	return t_;
}
c_PlayField.prototype.p_StackPeekFrontCardIndex=function(t_stackIndex){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1343>";
	var t_=dbg_array(this.m_stacks,t_stackIndex)[dbg_index].p_PeekFrontCardIndex();
	pop_err();
	return t_;
}
c_PlayField.prototype.p_StackContainCards=function(t_stackIndex){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1331>";
	var t_=dbg_array(this.m_stacks,t_stackIndex)[dbg_index].p_ContainCards();
	pop_err();
	return t_;
}
c_PlayField.prototype.p_StackFaceFrontCard=function(t_stackNo){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1257>";
	dbg_array(this.m_stacks,t_stackNo)[dbg_index].p_FrontCardFaceUp();
	pop_err();
}
c_PlayField.prototype.p_StackCompleteSuit=function(t_stackIndex){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1253>";
	var t_=dbg_array(this.m_stacks,t_stackIndex)[dbg_index].p_CompleteSuit();
	pop_err();
	return t_;
}
c_PlayField.prototype.p_Display=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1347>";
	var t_x=this.m_spacingx;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1348>";
	var t_y=this.m_positiony;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1349>";
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1349>";
	var t_=this.m_stacks;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1349>";
	var t_2=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1349>";
	while(t_2<t_.length){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1349>";
		var t_stack=dbg_array(t_,t_2)[dbg_index];
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1349>";
		t_2=t_2+1;
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1350>";
		t_stack.p_Display();
	}
	pop_err();
}
function c_MouseStack(){
	Object.call(this);
	this.m_cardShift=null;
	this.m_spacing=null;
	this.m_count=0;
	this.m_cards=new_object_array(104);
	this.m_oldStackIndex=0;
	this.m_oldFace=0;
}
c_MouseStack.m_new=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1372>";
	dbg_object(this).m_cardShift=c_Position.m_new.call(new c_Position);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1373>";
	dbg_object(this).m_spacing=c_Spacing.m_new.call(new c_Spacing);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1374>";
	dbg_object(this).m_count=0;
	pop_err();
	return this;
}
c_MouseStack.prototype.p_SeTCardSpacing=function(t_x,t_y,t_face){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1394>";
	if(t_face==1){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1395>";
		dbg_object(this.m_spacing).m_Frontx=t_x;
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1396>";
		dbg_object(this.m_spacing).m_Fronty=t_y;
	}else{
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1398>";
		dbg_object(this.m_spacing).m_backx=t_x;
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1399>";
		dbg_object(this.m_spacing).m_backy=t_y;
	}
	pop_err();
}
c_MouseStack.prototype.p_ContainCards=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1412>";
	var t_=((this.m_count>0)?1:0);
	pop_err();
	return t_;
}
c_MouseStack.prototype.p_SetOffset=function(t_x,t_y){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1435>";
	dbg_object(this.m_cardShift).m_x=dbg_object(bb_MouseMod_mouse).m_x-t_x;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1436>";
	dbg_object(this.m_cardShift).m_y=dbg_object(bb_MouseMod_mouse).m_y-t_y;
	pop_err();
}
c_MouseStack.prototype.p_AddCards2=function(t_card,t_oldStack,t_oldFace){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1382>";
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1382>";
	var t_=t_card;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1382>";
	var t_2=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1382>";
	while(t_2<t_.length){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1382>";
		var t_c=dbg_array(t_,t_2)[dbg_index];
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1382>";
		t_2=t_2+1;
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1383>";
		dbg_array(dbg_object(this).m_cards,this.m_count)[dbg_index]=t_c;
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1384>";
		this.m_count+=1;
	}
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1387>";
	dbg_object(this).m_oldStackIndex=t_oldStack;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1388>";
	dbg_object(this).m_oldFace=t_oldFace;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1389>";
	this.p_SetOffset(dbg_object(dbg_object(dbg_array(t_card,0)[dbg_index]).m_position).m_x,dbg_object(dbg_object(dbg_array(t_card,0)[dbg_index]).m_position).m_y);
	pop_err();
}
c_MouseStack.prototype.p_IsActive=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1378>";
	var t_=((this.m_count>0)?1:0);
	pop_err();
	return t_;
}
c_MouseStack.prototype.p_PeekFirsTCardNumber=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1404>";
	pop_err();
	return dbg_object(dbg_array(this.m_cards,0)[dbg_index]).m_number;
}
c_MouseStack.prototype.p_PeekFirsTCardSuit=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1408>";
	pop_err();
	return dbg_object(dbg_array(this.m_cards,0)[dbg_index]).m_suit;
}
c_MouseStack.prototype.p_ExtractAllCards=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1416>";
	var t_c=new_object_array(this.m_count);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1417>";
	for(var t_i=0;t_i<this.m_count;t_i=t_i+1){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1418>";
		dbg_array(t_c,t_i)[dbg_index]=dbg_array(dbg_object(this).m_cards,t_i)[dbg_index];
	}
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1420>";
	this.m_count=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1421>";
	this.m_oldFace=dbg_object(this).m_oldFace;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1423>";
	pop_err();
	return t_c;
}
c_MouseStack.prototype.p_GetOldStackIndex=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1427>";
	pop_err();
	return dbg_object(this).m_oldStackIndex;
}
c_MouseStack.prototype.p_GetOldFace=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1431>";
	pop_err();
	return dbg_object(this).m_oldFace;
}
c_MouseStack.prototype.p_Display=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1440>";
	var t_px=dbg_object(bb_MouseMod_mouse).m_x-dbg_object(this.m_cardShift).m_x;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1441>";
	var t_py=dbg_object(bb_MouseMod_mouse).m_y-dbg_object(this.m_cardShift).m_y;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1442>";
	var t_n=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1443>";
	for(var t_i=0;t_i<this.m_count;t_i=t_i+1){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1444>";
		dbg_array(this.m_cards,t_i)[dbg_index].p_SeTPosition(t_px,t_py);
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1445>";
		if(dbg_object(dbg_array(this.m_cards,t_i)[dbg_index]).m_face==1){
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1446>";
			t_px+=dbg_object(this.m_spacing).m_Frontx;
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1447>";
			t_py+=dbg_object(this.m_spacing).m_Fronty;
		}else{
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1449>";
			t_px+=dbg_object(this.m_spacing).m_backx;
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1450>";
			t_py+=dbg_object(this.m_spacing).m_backx;
		}
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1452>";
		dbg_array(this.m_cards,t_i)[dbg_index].p_Draw();
	}
	pop_err();
}
function c_Stack2(){
	Object.call(this);
	this.m_position=null;
	this.m_spacing=null;
	this.m_count=0;
	this.m_cards=new_object_array(104);
}
c_Stack2.m_new=function(t_x,t_y){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<965>";
	dbg_object(this).m_position=c_Position.m_new.call(new c_Position);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<966>";
	dbg_object(this).m_spacing=c_Spacing.m_new.call(new c_Spacing);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<967>";
	dbg_object(this).m_count=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<968>";
	dbg_object(dbg_object(this).m_position).m_x=t_x;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<969>";
	dbg_object(dbg_object(this).m_position).m_y=t_y;
	pop_err();
	return this;
}
c_Stack2.m_new2=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<958>";
	pop_err();
	return this;
}
c_Stack2.prototype.p_SeTSpacing=function(t_x,t_y,t_face){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<998>";
	if(t_face==1){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<999>";
		dbg_object(this.m_spacing).m_Frontx=t_x;
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1000>";
		dbg_object(this.m_spacing).m_Fronty=t_y;
	}else{
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1002>";
		dbg_object(this.m_spacing).m_backx=t_x;
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1003>";
		dbg_object(this.m_spacing).m_backy=t_y;
	}
	pop_err();
}
c_Stack2.prototype.p_FrontCardFaceUp=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1022>";
	if((this.m_count)!=0){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1023>";
		dbg_object(dbg_array(this.m_cards,this.m_count-1)[dbg_index]).m_face=1;
	}
	pop_err();
}
c_Stack2.prototype.p_FrontCardFaceDown=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1028>";
	if((this.m_count)!=0){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1029>";
		dbg_object(dbg_array(this.m_cards,this.m_count-1)[dbg_index]).m_face=2;
	}
	pop_err();
}
c_Stack2.prototype.p_ExtractFromIndex=function(t_index){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1149>";
	if(t_index==-1){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1149>";
		t_index=0;
	}
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1150>";
	var t_n=this.m_count-t_index;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1151>";
	var t_c=new_object_array(t_n);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1152>";
	for(var t_i=0;t_i<t_n;t_i=t_i+1){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1153>";
		dbg_array(t_c,t_i)[dbg_index]=dbg_array(this.m_cards,t_index+t_i)[dbg_index];
	}
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1155>";
	this.m_count=t_index;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1156>";
	pop_err();
	return t_c;
}
c_Stack2.prototype.p_GetNextX=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1064>";
	if(this.m_count==0){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1065>";
		pop_err();
		return dbg_object(this.m_position).m_x;
	}else{
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1067>";
		var t_x=dbg_array(this.m_cards,this.m_count-1)[dbg_index].p_GetXPosition();
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1068>";
		if(dbg_object(dbg_array(this.m_cards,this.m_count-1)[dbg_index]).m_face==1){
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1069>";
			var t_=t_x+dbg_object(this.m_spacing).m_Frontx;
			pop_err();
			return t_;
		}else{
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1071>";
			var t_2=t_x+dbg_object(this.m_spacing).m_backx;
			pop_err();
			return t_2;
		}
	}
}
c_Stack2.prototype.p_GetNextY=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1077>";
	if(this.m_count==0){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1078>";
		pop_err();
		return dbg_object(this.m_position).m_y;
	}else{
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1080>";
		var t_y=dbg_array(this.m_cards,this.m_count-1)[dbg_index].p_GetYPosition();
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1081>";
		if(dbg_object(dbg_array(this.m_cards,this.m_count-1)[dbg_index]).m_face==1){
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1082>";
			var t_=t_y+dbg_object(this.m_spacing).m_Fronty;
			pop_err();
			return t_;
		}else{
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1084>";
			var t_2=t_y+dbg_object(this.m_spacing).m_backy;
			pop_err();
			return t_2;
		}
	}
}
c_Stack2.prototype.p_ExtractFrontCard=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1034>";
	var t_c=[];
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1035>";
	if(this.m_count==0){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1035>";
		pop_err();
		return t_c;
	}
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1036>";
	var t_card=new_object_array(1);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1037>";
	this.m_count-=1;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1038>";
	dbg_array(t_card,0)[dbg_index]=dbg_array(this.m_cards,this.m_count)[dbg_index];
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1039>";
	pop_err();
	return t_card;
}
c_Stack2.prototype.p_GetXSpacing=function(t_face){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1008>";
	if(t_face==1){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1009>";
		pop_err();
		return dbg_object(this.m_spacing).m_Frontx;
	}
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1011>";
	pop_err();
	return dbg_object(this.m_spacing).m_backx;
}
c_Stack2.prototype.p_GetYSpacing=function(t_face){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1015>";
	if(t_face==1){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1016>";
		pop_err();
		return dbg_object(this.m_spacing).m_Fronty;
	}
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1018>";
	pop_err();
	return dbg_object(this.m_spacing).m_backy;
}
c_Stack2.prototype.p_AddToEnd=function(t_card){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1169>";
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1169>";
	var t_=t_card;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1169>";
	var t_2=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1169>";
	while(t_2<t_.length){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1169>";
		var t_c=dbg_array(t_,t_2)[dbg_index];
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1169>";
		t_2=t_2+1;
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1170>";
		dbg_array(this.m_cards,this.m_count)[dbg_index]=t_c;
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1171>";
		this.m_count+=1;
	}
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1173>";
	var t_x=dbg_object(this.m_position).m_x;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1174>";
	var t_y=dbg_object(this.m_position).m_y;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1175>";
	for(var t_i=0;t_i<this.m_count;t_i=t_i+1){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1176>";
		dbg_array(this.m_cards,t_i)[dbg_index].p_SeTPosition(t_x,t_y);
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1177>";
		if(dbg_object(dbg_array(this.m_cards,t_i)[dbg_index]).m_face==1){
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1178>";
			t_x+=dbg_object(this.m_spacing).m_Frontx;
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1179>";
			t_y+=dbg_object(this.m_spacing).m_Fronty;
		}else{
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1181>";
			t_x+=dbg_object(this.m_spacing).m_backx;
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1182>";
			t_y+=dbg_object(this.m_spacing).m_backy;
		}
	}
	pop_err();
}
c_Stack2.prototype.p_GetCardOnPoint=function(t_mx,t_my){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1043>";
	var t_x=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1043>";
	var t_y=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1044>";
	for(var t_i=this.m_count-1;t_i>=0;t_i=t_i+-1){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1045>";
		t_x=dbg_array(this.m_cards,t_i)[dbg_index].p_GetXPosition();
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1046>";
		t_y=dbg_array(this.m_cards,t_i)[dbg_index].p_GetYPosition();
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1047>";
		if(t_mx<t_x){
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1047>";
			continue;
		}
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1048>";
		if(t_my<t_y){
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1048>";
			continue;
		}
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1049>";
		if((t_mx)>(t_x)+dbg_object(bb_cCardForm_cardForm).m__viewWidth){
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1049>";
			continue;
		}
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1050>";
		if((t_my)>(t_y)+dbg_object(bb_cCardForm_cardForm).m__viewHeight){
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1050>";
			continue;
		}
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1051>";
		pop_err();
		return t_i;
	}
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1053>";
	t_x=dbg_object(this.m_position).m_x;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1054>";
	t_y=dbg_object(this.m_position).m_y;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1055>";
	if(t_mx<t_x){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1055>";
		pop_err();
		return -1;
	}
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1056>";
	if(t_my<t_y){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1056>";
		pop_err();
		return -1;
	}
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1057>";
	if((t_mx)>(t_x)+dbg_object(bb_cCardForm_cardForm).m__viewWidth){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1057>";
		pop_err();
		return -1;
	}
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1058>";
	if((t_my)>(t_y)+dbg_object(bb_cCardForm_cardForm).m__viewHeight){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1058>";
		pop_err();
		return -1;
	}
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1060>";
	pop_err();
	return -2;
}
c_Stack2.prototype.p_ValidCardRules=function(t_index){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1104>";
	if(t_index==this.m_count-1 && dbg_object(dbg_array(this.m_cards,t_index)[dbg_index]).m_face==1){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1104>";
		pop_err();
		return 1;
	}
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1106>";
	var t_suit=dbg_object(dbg_array(this.m_cards,t_index)[dbg_index]).m_suit;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1107>";
	var t_number=dbg_object(dbg_array(this.m_cards,t_index)[dbg_index]).m_number;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1108>";
	for(var t_i=t_index+1;t_i<this.m_count;t_i=t_i+1){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1109>";
		if(dbg_object(dbg_array(this.m_cards,t_i)[dbg_index]).m_face==2){
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1109>";
			pop_err();
			return 0;
		}
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1110>";
		if(dbg_object(dbg_array(this.m_cards,t_i)[dbg_index]).m_suit!=t_suit){
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1110>";
			pop_err();
			return 0;
		}
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1111>";
		if(dbg_object(dbg_array(this.m_cards,t_i)[dbg_index]).m_number!=t_number-1){
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1111>";
			pop_err();
			return 0;
		}
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1112>";
		t_suit=dbg_object(dbg_array(this.m_cards,t_i)[dbg_index]).m_suit;
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1113>";
		t_number-=1;
	}
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1115>";
	pop_err();
	return 1;
}
c_Stack2.prototype.p_IndexPreviousCardFace2=function(t_index){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1160>";
	if(t_index==-1){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1160>";
		t_index=0;
	}
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1161>";
	if(t_index>0){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1162>";
		var t_=dbg_object(dbg_array(this.m_cards,t_index-1)[dbg_index]).m_face;
		pop_err();
		return t_;
	}
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1164>";
	pop_err();
	return 0;
}
c_Stack2.prototype.p_IsEmpty=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1145>";
	var t_=((this.m_count==0)?1:0);
	pop_err();
	return t_;
}
c_Stack2.prototype.p_PeekFrontCardValue=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<978>";
	var t_=dbg_object(dbg_array(this.m_cards,this.m_count-1)[dbg_index]).m_number;
	pop_err();
	return t_;
}
c_Stack2.prototype.p_PeekFrontCardSuit=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<982>";
	var t_=dbg_object(dbg_array(this.m_cards,this.m_count-1)[dbg_index]).m_suit;
	pop_err();
	return t_;
}
c_Stack2.prototype.p_PeekFrontCardIndex=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<986>";
	var t_=this.m_count-1;
	pop_err();
	return t_;
}
c_Stack2.prototype.p_ContainCards=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<974>";
	var t_=((this.m_count>0)?1:0);
	pop_err();
	return t_;
}
c_Stack2.prototype.p_CompleteSuit=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1119>";
	if(this.m_count<13){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1119>";
		pop_err();
		return 0;
	}
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1120>";
	var t_suit=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1120>";
	var t_number=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1121>";
	for(var t_index=0;t_index<=12;t_index=t_index+1){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1122>";
		var t_card=dbg_array(this.m_cards,this.m_count-1-t_index)[dbg_index];
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1123>";
		if(t_index==0){
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1124>";
			if(dbg_object(t_card).m_number==0){
				err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1125>";
				t_suit=dbg_object(t_card).m_suit;
				err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1126>";
				t_number=0;
			}else{
				err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1128>";
				pop_err();
				return 0;
			}
		}else{
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1130>";
			if(dbg_object(t_card).m_suit==t_suit){
				err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1131>";
				if(dbg_object(t_card).m_face==2){
					err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1131>";
					pop_err();
					return 0;
				}
				err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1132>";
				t_number=t_number+1;
				err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1133>";
				if(dbg_object(t_card).m_number!=t_number){
					err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1134>";
					pop_err();
					return 0;
				}
			}else{
				err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1137>";
				pop_err();
				return 0;
			}
		}
	}
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1140>";
	pop_err();
	return 1;
}
c_Stack2.prototype.p_Display=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1188>";
	if(this.m_count==0){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1189>";
		bb_cCardForm_cardForm.p_DrawOutline(dbg_object(this.m_position).m_x,dbg_object(this.m_position).m_y);
	}else{
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1191>";
		for(var t_i=0;t_i<this.m_count;t_i=t_i+1){
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1192>";
			dbg_array(this.m_cards,t_i)[dbg_index].p_Draw();
		}
	}
	pop_err();
}
function c_Animation(){
	Object.call(this);
	this.m_inList=null;
	this.m_outList=null;
	this.m_activeList=null;
	this.m_startTime=.0;
	this.m_wait=.0;
	this.m_working=0;
}
c_Animation.m_new=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1534>";
	dbg_object(this).m_inList=c_List2.m_new.call(new c_List2);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1535>";
	dbg_object(this).m_outList=c_List2.m_new.call(new c_List2);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1536>";
	dbg_object(this).m_activeList=c_List2.m_new.call(new c_List2);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1537>";
	dbg_object(this).m_startTime=(bb_app_Millisecs());
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1538>";
	dbg_object(this).m_wait=50.0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1539>";
	dbg_object(this).m_working=1;
	pop_err();
	return this;
}
c_Animation.prototype.p_IsDone=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1578>";
	var t_=((this.m_working==0)?1:0);
	pop_err();
	return t_;
}
c_Animation.prototype.p_AddAnimation=function(t_anim){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1543>";
	this.m_inList.p_AddFirst(t_anim);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1544>";
	this.m_working=1;
	pop_err();
}
c_Animation.prototype.p_Update=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1554>";
	if((this.m_working)!=0){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1555>";
		var t_time=(bb_app_Millisecs())-this.m_startTime;
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1557>";
		if(t_time>this.m_wait){
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1558>";
			if(this.m_inList.p_IsEmpty()==false){
				err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1559>";
				bb_cSfx_SFX.p_PlayCard();
				err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1560>";
				this.m_activeList.p_AddLast2(this.m_inList.p_RemoveLast());
			}
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1562>";
			this.m_startTime=(bb_app_Millisecs());
		}
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1564>";
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1564>";
		var t_=this.m_activeList.p_ObjectEnumerator();
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1564>";
		while(t_.p_HasNext()){
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1564>";
			var t_c=t_.p_NextObject();
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1565>";
			if(t_c.p_Update()==0){
				err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1566>";
				this.m_activeList.p_RemoveEach(t_c);
				err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1567>";
				this.m_outList.p_AddFirst(t_c);
			}
		}
	}
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1572>";
	if(this.m_activeList.p_IsEmpty() && this.m_inList.p_IsEmpty()){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1572>";
		this.m_working=0;
	}
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1573>";
	pop_err();
	return this.m_working;
}
c_Animation.prototype.p_ExtractAnimation=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1548>";
	if(this.m_outList.p_IsEmpty()){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1548>";
		pop_err();
		return null;
	}
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1549>";
	bb_cSfx_SFX.p_PlayCard();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1550>";
	var t_=this.m_outList.p_RemoveLast();
	pop_err();
	return t_;
}
c_Animation.prototype.p_Display=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1582>";
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1582>";
	var t_=this.m_inList.p_ObjectEnumerator();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1582>";
	while(t_.p_HasNext()){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1582>";
		var t_animate=t_.p_NextObject();
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1583>";
		t_animate.p_Display();
	}
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1586>";
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1586>";
	var t_2=this.m_activeList.p_ObjectEnumerator();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1586>";
	while(t_2.p_HasNext()){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1586>";
		var t_animate2=t_2.p_NextObject();
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1587>";
		t_animate2.p_Display();
	}
	pop_err();
}
function c_AnimatedCard(){
	Object.call(this);
	this.m_spacing=null;
	this.m_source=null;
	this.m_card=[];
	this.m_x=.0;
	this.m_y=.0;
	this.m_dx=.0;
	this.m_dy=.0;
	this.m_distance=.0;
	this.m_slotIndex=0;
	this.m_speed=.0;
}
c_AnimatedCard.m_new=function(t_card,t_destinationx,t_destinationy,t_speed,t_slotIndex){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1472>";
	dbg_object(this).m_spacing=c_Spacing.m_new.call(new c_Spacing);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1473>";
	dbg_object(this).m_source=c_Position.m_new.call(new c_Position);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1474>";
	dbg_object(this).m_card=t_card;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1475>";
	dbg_object(dbg_object(this).m_source).m_x=dbg_array(t_card,0)[dbg_index].p_GetXPosition();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1476>";
	dbg_object(dbg_object(this).m_source).m_y=dbg_array(t_card,0)[dbg_index].p_GetYPosition();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1478>";
	dbg_object(this).m_x=(dbg_object(dbg_object(this).m_source).m_x);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1479>";
	dbg_object(this).m_y=(dbg_object(dbg_object(this).m_source).m_y);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1480>";
	var t_lx=t_destinationx-dbg_object(this).m_x;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1481>";
	var t_ly=t_destinationy-dbg_object(this).m_y;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1482>";
	var t_angle=(Math.atan2(t_ly,t_lx)*R2D);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1483>";
	dbg_object(this).m_dx=Math.cos((t_angle)*D2R);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1484>";
	dbg_object(this).m_dy=Math.sin((t_angle)*D2R);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1485>";
	dbg_object(this).m_distance=Math.sqrt(t_lx*t_lx+t_ly*t_ly);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1486>";
	dbg_object(this).m_slotIndex=t_slotIndex;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1487>";
	dbg_object(dbg_object(this).m_spacing).m_Frontx=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1488>";
	dbg_object(dbg_object(this).m_spacing).m_Fronty=15;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1489>";
	dbg_object(this).m_speed=t_speed;
	pop_err();
	return this;
}
c_AnimatedCard.m_new2=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1459>";
	pop_err();
	return this;
}
c_AnimatedCard.prototype.p_Update=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1506>";
	this.m_x+=this.m_dx*this.m_speed;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1507>";
	this.m_y+=this.m_dy*this.m_speed;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1508>";
	var t_td=Math.sqrt((this.m_x-(dbg_object(this.m_source).m_x))*(this.m_x-(dbg_object(this.m_source).m_x))+(this.m_y-(dbg_object(this.m_source).m_y))*(this.m_y-(dbg_object(this.m_source).m_y)));
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1509>";
	if(t_td>=this.m_distance){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1509>";
		pop_err();
		return 0;
	}
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1510>";
	dbg_array(this.m_card,0)[dbg_index].p_SeTPosition(((this.m_x)|0),((this.m_y)|0));
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1511>";
	pop_err();
	return 1;
}
c_AnimatedCard.prototype.p_GetCard=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1498>";
	pop_err();
	return dbg_object(this).m_card;
}
c_AnimatedCard.prototype.p_GetSlotIndex=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1502>";
	pop_err();
	return dbg_object(this).m_slotIndex;
}
c_AnimatedCard.prototype.p_SeTSpacing2=function(t_x,t_y){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1493>";
	dbg_object(this.m_spacing).m_Frontx=t_x;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1494>";
	dbg_object(this.m_spacing).m_Fronty=t_y;
	pop_err();
}
c_AnimatedCard.prototype.p_Display=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1515>";
	var t_n=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1516>";
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1516>";
	var t_=this.m_card;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1516>";
	var t_2=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1516>";
	while(t_2<t_.length){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1516>";
		var t_c=dbg_array(t_,t_2)[dbg_index];
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1516>";
		t_2=t_2+1;
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1517>";
		t_c.p_SeTPosition(((this.m_x)|0),((this.m_y+(dbg_object(this.m_spacing).m_Fronty*t_n))|0));
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1518>";
		t_c.p_Draw();
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<1519>";
		t_n+=1;
	}
	pop_err();
}
function c_List2(){
	Object.call(this);
	this.m__head=(c_HeadNode2.m_new.call(new c_HeadNode2));
}
c_List2.m_new=function(){
	push_err();
	pop_err();
	return this;
}
c_List2.prototype.p_AddLast2=function(t_data){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<108>";
	var t_=c_Node5.m_new.call(new c_Node5,this.m__head,dbg_object(this.m__head).m__pred,t_data);
	pop_err();
	return t_;
}
c_List2.m_new2=function(t_data){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<13>";
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<13>";
	var t_=t_data;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<13>";
	var t_2=0;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<13>";
	while(t_2<t_.length){
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<13>";
		var t_t=dbg_array(t_,t_2)[dbg_index];
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<13>";
		t_2=t_2+1;
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<14>";
		this.p_AddLast2(t_t);
	}
	pop_err();
	return this;
}
c_List2.prototype.p_AddFirst=function(t_data){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<104>";
	var t_=c_Node5.m_new.call(new c_Node5,dbg_object(this.m__head).m__succ,this.m__head,t_data);
	pop_err();
	return t_;
}
c_List2.prototype.p_IsEmpty=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<50>";
	var t_=dbg_object(this.m__head).m__succ==this.m__head;
	pop_err();
	return t_;
}
c_List2.prototype.p_RemoveLast=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<96>";
	if(this.p_IsEmpty()){
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<96>";
		error("Illegal operation on empty list");
	}
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<98>";
	var t_data=dbg_object(dbg_object(this.m__head).m__pred).m__data;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<99>";
	dbg_object(this.m__head).m__pred.p_Remove();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<100>";
	pop_err();
	return t_data;
}
c_List2.prototype.p_Equals=function(t_lhs,t_rhs){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<28>";
	var t_=t_lhs==t_rhs;
	pop_err();
	return t_;
}
c_List2.prototype.p_FindLast=function(t_value,t_start){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<128>";
	while(t_start!=this.m__head){
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<129>";
		if(this.p_Equals(t_value,dbg_object(t_start).m__data)){
			err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<129>";
			pop_err();
			return t_start;
		}
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<130>";
		t_start=dbg_object(t_start).m__pred;
	}
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<132>";
	pop_err();
	return null;
}
c_List2.prototype.p_FindLast2=function(t_value){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<124>";
	var t_=this.p_FindLast(t_value,dbg_object(this.m__head).m__pred);
	pop_err();
	return t_;
}
c_List2.prototype.p_RemoveLast2=function(t_value){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<146>";
	var t_node=this.p_FindLast2(t_value);
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<147>";
	if((t_node)!=null){
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<147>";
		t_node.p_Remove();
	}
	pop_err();
}
c_List2.prototype.p_ObjectEnumerator=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<186>";
	var t_=c_Enumerator.m_new.call(new c_Enumerator,this);
	pop_err();
	return t_;
}
c_List2.prototype.p_RemoveEach=function(t_value){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<151>";
	var t_node=dbg_object(this.m__head).m__succ;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<152>";
	while(t_node!=this.m__head){
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<153>";
		var t_succ=dbg_object(t_node).m__succ;
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<154>";
		if(this.p_Equals(dbg_object(t_node).m__data,t_value)){
			err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<154>";
			t_node.p_Remove();
		}
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<155>";
		t_node=t_succ;
	}
	pop_err();
	return 0;
}
function c_Node5(){
	Object.call(this);
	this.m__succ=null;
	this.m__pred=null;
	this.m__data=null;
}
c_Node5.m_new=function(t_succ,t_pred,t_data){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<261>";
	this.m__succ=t_succ;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<262>";
	this.m__pred=t_pred;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<263>";
	dbg_object(this.m__succ).m__pred=this;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<264>";
	dbg_object(this.m__pred).m__succ=this;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<265>";
	this.m__data=t_data;
	pop_err();
	return this;
}
c_Node5.m_new2=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<258>";
	pop_err();
	return this;
}
c_Node5.prototype.p_Remove=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<274>";
	if(dbg_object(this.m__succ).m__pred!=this){
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<274>";
		error("Illegal operation on removed node");
	}
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<276>";
	dbg_object(this.m__succ).m__pred=this.m__pred;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<277>";
	dbg_object(this.m__pred).m__succ=this.m__succ;
	pop_err();
	return 0;
}
function c_HeadNode2(){
	c_Node5.call(this);
}
c_HeadNode2.prototype=extend_class(c_Node5);
c_HeadNode2.m_new=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<310>";
	c_Node5.m_new2.call(this);
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<311>";
	this.m__succ=(this);
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<312>";
	this.m__pred=(this);
	pop_err();
	return this;
}
function c_Dump(){
	Object.call(this);
	this.m_position=null;
	this.m_spacing=null;
	this.m_count=0;
	this.m_cards=new_object_array(104);
}
c_Dump.m_new=function(t_x,t_y){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<886>";
	dbg_object(this).m_position=c_Position.m_new.call(new c_Position);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<887>";
	dbg_object(this).m_spacing=c_Spacing.m_new.call(new c_Spacing);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<888>";
	dbg_object(this).m_count=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<889>";
	dbg_object(dbg_object(this).m_position).m_x=t_x;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<890>";
	dbg_object(dbg_object(this).m_position).m_y=t_y;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<891>";
	dbg_object(dbg_object(this).m_spacing).m_Frontx=15;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<892>";
	dbg_object(dbg_object(this).m_spacing).m_Fronty=0;
	pop_err();
	return this;
}
c_Dump.m_new2=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<879>";
	pop_err();
	return this;
}
c_Dump.prototype.p_GetASet=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<935>";
	if(this.m_count==0){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<935>";
		pop_err();
		return null;
	}
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<936>";
	var t_c=new_object_array(13);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<937>";
	for(var t_i=0;t_i<13;t_i=t_i+1){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<938>";
		this.m_count-=1;
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<939>";
		dbg_array(t_c,12-t_i)[dbg_index]=dbg_array(this.m_cards,this.m_count)[dbg_index];
	}
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<941>";
	var t_supply=c_Supply.m_new.call(new c_Supply);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<942>";
	t_supply.p_AddCards(t_c);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<943>";
	pop_err();
	return t_supply;
}
c_Dump.prototype.p_AddCard=function(t_card){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<912>";
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<912>";
	var t_=t_card;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<912>";
	var t_2=0;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<912>";
	while(t_2<t_.length){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<912>";
		var t_c=dbg_array(t_,t_2)[dbg_index];
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<912>";
		t_2=t_2+1;
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<913>";
		dbg_array(dbg_object(this).m_cards,this.m_count)[dbg_index]=t_c;
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<914>";
		this.m_count+=1;
	}
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<916>";
	if(this.m_count==0){
		pop_err();
		return;
	}
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<917>";
	var t_x=dbg_object(this.m_position).m_x;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<918>";
	var t_y=dbg_object(this.m_position).m_y;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<919>";
	for(var t_i=0;t_i<this.m_count;t_i=t_i+1){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<920>";
		if(t_i % 13==0 && t_i>0){
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<921>";
			dbg_array(this.m_cards,t_i)[dbg_index].p_SeTPosition(t_x,t_y);
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<922>";
			t_x+=dbg_object(this.m_spacing).m_Frontx;
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<923>";
			t_y+=dbg_object(this.m_spacing).m_Fronty;
		}else{
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<925>";
			dbg_array(this.m_cards,t_i)[dbg_index].p_SeTPosition(t_x,t_y);
		}
	}
	pop_err();
}
c_Dump.prototype.p_GetNextX=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<896>";
	if(this.m_count==0){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<897>";
		pop_err();
		return dbg_object(this.m_position).m_x;
	}else{
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<899>";
		var t_=dbg_object(dbg_object(dbg_array(this.m_cards,this.m_count-1)[dbg_index]).m_position).m_x+dbg_object(this.m_spacing).m_Frontx;
		pop_err();
		return t_;
	}
}
c_Dump.prototype.p_GetNextY=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<904>";
	if(this.m_count==0){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<905>";
		pop_err();
		return dbg_object(this.m_position).m_y;
	}else{
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<907>";
		var t_=dbg_object(dbg_object(dbg_array(this.m_cards,this.m_count-1)[dbg_index]).m_position).m_y+dbg_object(this.m_spacing).m_Fronty;
		pop_err();
		return t_;
	}
}
c_Dump.prototype.p_GetCount=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<931>";
	pop_err();
	return this.m_count;
}
c_Dump.prototype.p_Display=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<947>";
	if(this.m_count==0){
		pop_err();
		return;
	}
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<948>";
	for(var t_i=-1;t_i<this.m_count;t_i=t_i+13){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<949>";
		if(t_i>=0){
			err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<949>";
			dbg_array(this.m_cards,t_i)[dbg_index].p_Draw();
		}
	}
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<951>";
	if((this.m_count)!=0){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cCardForm.monkey<952>";
		dbg_array(this.m_cards,this.m_count-1)[dbg_index].p_Draw();
	}
	pop_err();
}
function c_Buffer(){
	Object.call(this);
	this.m_undoList=null;
	this.m_redoList=null;
}
c_Buffer.m_new=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cBuffer.monkey<46>";
	this.m_undoList=c_List3.m_new.call(new c_List3);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cBuffer.monkey<47>";
	this.m_redoList=c_List3.m_new.call(new c_List3);
	pop_err();
	return this;
}
c_Buffer.prototype.p_Undo=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cBuffer.monkey<75>";
	if(this.m_undoList.p_IsEmpty()){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cBuffer.monkey<75>";
		pop_err();
		return null;
	}
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cBuffer.monkey<76>";
	var t_obj=this.m_undoList.p_RemoveLast();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cBuffer.monkey<77>";
	this.m_redoList.p_AddLast3(t_obj);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cBuffer.monkey<78>";
	pop_err();
	return t_obj;
}
c_Buffer.prototype.p_UndoIsEmpty=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cBuffer.monkey<60>";
	var t_=((this.m_undoList.p_IsEmpty())?1:0);
	pop_err();
	return t_;
}
c_Buffer.prototype.p_Save=function(t_obj){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cBuffer.monkey<51>";
	this.m_undoList.p_AddLast3(t_obj);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cBuffer.monkey<52>";
	this.m_redoList.p_Clear();
	pop_err();
}
function c_BufferGroup(){
	Object.call(this);
	this.m_list=null;
}
c_BufferGroup.prototype.p_Extract=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cBuffer.monkey<16>";
	if(this.m_list.p_IsEmpty()){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cBuffer.monkey<16>";
		pop_err();
		return null;
	}
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cBuffer.monkey<17>";
	var t_=this.m_list.p_RemoveLast();
	pop_err();
	return t_;
}
c_BufferGroup.m_new=function(t_stp){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cBuffer.monkey<7>";
	dbg_object(this).m_list=c_List4.m_new.call(new c_List4);
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cBuffer.monkey<8>";
	if((t_stp)!=null){
		err_info="/Users/legend/programming/monkey-x/games/cards/card05/cBuffer.monkey<8>";
		dbg_object(this).m_list.p_AddLast4(t_stp);
	}
	pop_err();
	return this;
}
c_BufferGroup.prototype.p_AddStep2=function(t_stp){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cBuffer.monkey<12>";
	this.m_list.p_AddLast4(t_stp);
	pop_err();
}
function c_List3(){
	Object.call(this);
	this.m__head=(c_HeadNode3.m_new.call(new c_HeadNode3));
}
c_List3.m_new=function(){
	push_err();
	pop_err();
	return this;
}
c_List3.prototype.p_AddLast3=function(t_data){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<108>";
	var t_=c_Node6.m_new.call(new c_Node6,this.m__head,dbg_object(this.m__head).m__pred,t_data);
	pop_err();
	return t_;
}
c_List3.m_new2=function(t_data){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<13>";
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<13>";
	var t_=t_data;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<13>";
	var t_2=0;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<13>";
	while(t_2<t_.length){
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<13>";
		var t_t=dbg_array(t_,t_2)[dbg_index];
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<13>";
		t_2=t_2+1;
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<14>";
		this.p_AddLast3(t_t);
	}
	pop_err();
	return this;
}
c_List3.prototype.p_IsEmpty=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<50>";
	var t_=dbg_object(this.m__head).m__succ==this.m__head;
	pop_err();
	return t_;
}
c_List3.prototype.p_RemoveLast=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<96>";
	if(this.p_IsEmpty()){
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<96>";
		error("Illegal operation on empty list");
	}
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<98>";
	var t_data=dbg_object(dbg_object(this.m__head).m__pred).m__data;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<99>";
	dbg_object(this.m__head).m__pred.p_Remove();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<100>";
	pop_err();
	return t_data;
}
c_List3.prototype.p_Equals2=function(t_lhs,t_rhs){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<28>";
	var t_=t_lhs==t_rhs;
	pop_err();
	return t_;
}
c_List3.prototype.p_FindLast3=function(t_value,t_start){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<128>";
	while(t_start!=this.m__head){
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<129>";
		if(this.p_Equals2(t_value,dbg_object(t_start).m__data)){
			err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<129>";
			pop_err();
			return t_start;
		}
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<130>";
		t_start=dbg_object(t_start).m__pred;
	}
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<132>";
	pop_err();
	return null;
}
c_List3.prototype.p_FindLast4=function(t_value){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<124>";
	var t_=this.p_FindLast3(t_value,dbg_object(this.m__head).m__pred);
	pop_err();
	return t_;
}
c_List3.prototype.p_RemoveLast3=function(t_value){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<146>";
	var t_node=this.p_FindLast4(t_value);
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<147>";
	if((t_node)!=null){
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<147>";
		t_node.p_Remove();
	}
	pop_err();
}
c_List3.prototype.p_Clear=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<36>";
	dbg_object(this.m__head).m__succ=this.m__head;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<37>";
	dbg_object(this.m__head).m__pred=this.m__head;
	pop_err();
	return 0;
}
function c_Node6(){
	Object.call(this);
	this.m__succ=null;
	this.m__pred=null;
	this.m__data=null;
}
c_Node6.m_new=function(t_succ,t_pred,t_data){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<261>";
	this.m__succ=t_succ;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<262>";
	this.m__pred=t_pred;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<263>";
	dbg_object(this.m__succ).m__pred=this;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<264>";
	dbg_object(this.m__pred).m__succ=this;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<265>";
	this.m__data=t_data;
	pop_err();
	return this;
}
c_Node6.m_new2=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<258>";
	pop_err();
	return this;
}
c_Node6.prototype.p_Remove=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<274>";
	if(dbg_object(this.m__succ).m__pred!=this){
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<274>";
		error("Illegal operation on removed node");
	}
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<276>";
	dbg_object(this.m__succ).m__pred=this.m__pred;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<277>";
	dbg_object(this.m__pred).m__succ=this.m__succ;
	pop_err();
	return 0;
}
function c_HeadNode3(){
	c_Node6.call(this);
}
c_HeadNode3.prototype=extend_class(c_Node6);
c_HeadNode3.m_new=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<310>";
	c_Node6.m_new2.call(this);
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<311>";
	this.m__succ=(this);
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<312>";
	this.m__pred=(this);
	pop_err();
	return this;
}
var bb_cCardForm_cardMoves=0;
function bb_input_KeyHit(t_key){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/input.monkey<44>";
	var t_=bb_input_device.p_KeyHit(t_key);
	pop_err();
	return t_;
}
function c_BufferStep(){
	Object.call(this);
	this.m_oldStack=0;
	this.m_oldFace=0;
	this.m_currentStack=0;
	this.m_currentIndex=0;
}
c_BufferStep.m_new=function(t_currentStack,t_currentIndex,t_oldStack,t_oldFace){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cBuffer.monkey<32>";
	dbg_object(this).m_currentStack=t_currentStack;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cBuffer.monkey<33>";
	dbg_object(this).m_currentIndex=t_currentIndex;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cBuffer.monkey<34>";
	dbg_object(this).m_oldStack=t_oldStack;
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cBuffer.monkey<35>";
	dbg_object(this).m_oldFace=t_oldFace;
	pop_err();
	return this;
}
c_BufferStep.m_new2=function(){
	push_err();
	err_info="/Users/legend/programming/monkey-x/games/cards/card05/cBuffer.monkey<25>";
	pop_err();
	return this;
}
function c_List4(){
	Object.call(this);
	this.m__head=(c_HeadNode4.m_new.call(new c_HeadNode4));
}
c_List4.prototype.p_IsEmpty=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<50>";
	var t_=dbg_object(this.m__head).m__succ==this.m__head;
	pop_err();
	return t_;
}
c_List4.prototype.p_RemoveLast=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<96>";
	if(this.p_IsEmpty()){
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<96>";
		error("Illegal operation on empty list");
	}
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<98>";
	var t_data=dbg_object(dbg_object(this.m__head).m__pred).m__data;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<99>";
	dbg_object(this.m__head).m__pred.p_Remove();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<100>";
	pop_err();
	return t_data;
}
c_List4.prototype.p_Equals3=function(t_lhs,t_rhs){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<28>";
	var t_=t_lhs==t_rhs;
	pop_err();
	return t_;
}
c_List4.prototype.p_FindLast5=function(t_value,t_start){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<128>";
	while(t_start!=this.m__head){
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<129>";
		if(this.p_Equals3(t_value,dbg_object(t_start).m__data)){
			err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<129>";
			pop_err();
			return t_start;
		}
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<130>";
		t_start=dbg_object(t_start).m__pred;
	}
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<132>";
	pop_err();
	return null;
}
c_List4.prototype.p_FindLast6=function(t_value){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<124>";
	var t_=this.p_FindLast5(t_value,dbg_object(this.m__head).m__pred);
	pop_err();
	return t_;
}
c_List4.prototype.p_RemoveLast4=function(t_value){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<146>";
	var t_node=this.p_FindLast6(t_value);
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<147>";
	if((t_node)!=null){
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<147>";
		t_node.p_Remove();
	}
	pop_err();
}
c_List4.m_new=function(){
	push_err();
	pop_err();
	return this;
}
c_List4.prototype.p_AddLast4=function(t_data){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<108>";
	var t_=c_Node7.m_new.call(new c_Node7,this.m__head,dbg_object(this.m__head).m__pred,t_data);
	pop_err();
	return t_;
}
c_List4.m_new2=function(t_data){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<13>";
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<13>";
	var t_=t_data;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<13>";
	var t_2=0;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<13>";
	while(t_2<t_.length){
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<13>";
		var t_t=dbg_array(t_,t_2)[dbg_index];
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<13>";
		t_2=t_2+1;
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<14>";
		this.p_AddLast4(t_t);
	}
	pop_err();
	return this;
}
function c_Node7(){
	Object.call(this);
	this.m__succ=null;
	this.m__pred=null;
	this.m__data=null;
}
c_Node7.m_new=function(t_succ,t_pred,t_data){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<261>";
	this.m__succ=t_succ;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<262>";
	this.m__pred=t_pred;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<263>";
	dbg_object(this.m__succ).m__pred=this;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<264>";
	dbg_object(this.m__pred).m__succ=this;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<265>";
	this.m__data=t_data;
	pop_err();
	return this;
}
c_Node7.m_new2=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<258>";
	pop_err();
	return this;
}
c_Node7.prototype.p_Remove=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<274>";
	if(dbg_object(this.m__succ).m__pred!=this){
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<274>";
		error("Illegal operation on removed node");
	}
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<276>";
	dbg_object(this.m__succ).m__pred=this.m__pred;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<277>";
	dbg_object(this.m__pred).m__succ=this.m__succ;
	pop_err();
	return 0;
}
function c_HeadNode4(){
	c_Node7.call(this);
}
c_HeadNode4.prototype=extend_class(c_Node7);
c_HeadNode4.m_new=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<310>";
	c_Node7.m_new2.call(this);
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<311>";
	this.m__succ=(this);
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<312>";
	this.m__pred=(this);
	pop_err();
	return this;
}
function bb_audio_SetChannelVolume(t_channel,t_volume){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/audio.monkey<73>";
	bb_audio_device.SetVolume(t_channel,t_volume);
	pop_err();
	return 0;
}
function bb_audio_PlaySound(t_sound,t_channel,t_flags){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/audio.monkey<53>";
	if(((t_sound)!=null) && ((dbg_object(t_sound).m_sample)!=null)){
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/audio.monkey<53>";
		bb_audio_device.PlaySample(dbg_object(t_sound).m_sample,t_channel,t_flags);
	}
	pop_err();
	return 0;
}
function c_Enumerator(){
	Object.call(this);
	this.m__list=null;
	this.m__curr=null;
}
c_Enumerator.m_new=function(t_list){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<326>";
	this.m__list=t_list;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<327>";
	this.m__curr=dbg_object(dbg_object(t_list).m__head).m__succ;
	pop_err();
	return this;
}
c_Enumerator.m_new2=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<323>";
	pop_err();
	return this;
}
c_Enumerator.prototype.p_HasNext=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<331>";
	while(dbg_object(dbg_object(this.m__curr).m__succ).m__pred!=this.m__curr){
		err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<332>";
		this.m__curr=dbg_object(this.m__curr).m__succ;
	}
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<334>";
	var t_=this.m__curr!=dbg_object(this.m__list).m__head;
	pop_err();
	return t_;
}
c_Enumerator.prototype.p_NextObject=function(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<338>";
	var t_data=dbg_object(this.m__curr).m__data;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<339>";
	this.m__curr=dbg_object(this.m__curr).m__succ;
	err_info="/Users/legend/MonkeyXPro79e/modules/monkey/list.monkey<340>";
	pop_err();
	return t_data;
}
function bb_graphics_DebugRenderDevice(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<53>";
	if(!((bb_graphics_renderDevice)!=null)){
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<53>";
		error("Rendering operations can only be performed inside OnRender");
	}
	pop_err();
	return 0;
}
function bb_graphics_Cls(t_r,t_g,t_b){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<378>";
	bb_graphics_DebugRenderDevice();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<380>";
	bb_graphics_renderDevice.Cls(t_r,t_g,t_b);
	pop_err();
	return 0;
}
function bb_graphics_DrawImage(t_image,t_x,t_y,t_frame){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<451>";
	bb_graphics_DebugRenderDevice();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<452>";
	if(t_frame<0 || t_frame>=dbg_object(t_image).m_frames.length){
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<452>";
		error("Invalid image frame");
	}
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<455>";
	var t_f=dbg_array(dbg_object(t_image).m_frames,t_frame)[dbg_index];
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<457>";
	bb_graphics_context.p_Validate();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<459>";
	if((dbg_object(t_image).m_flags&65536)!=0){
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<460>";
		bb_graphics_renderDevice.DrawSurface(dbg_object(t_image).m_surface,t_x-dbg_object(t_image).m_tx,t_y-dbg_object(t_image).m_ty);
	}else{
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<462>";
		bb_graphics_renderDevice.DrawSurface2(dbg_object(t_image).m_surface,t_x-dbg_object(t_image).m_tx,t_y-dbg_object(t_image).m_ty,dbg_object(t_f).m_x,dbg_object(t_f).m_y,dbg_object(t_image).m_width,dbg_object(t_image).m_height);
	}
	pop_err();
	return 0;
}
function bb_graphics_PushMatrix(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<333>";
	var t_sp=dbg_object(bb_graphics_context).m_matrixSp;
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<334>";
	if(t_sp==dbg_object(bb_graphics_context).m_matrixStack.length){
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<334>";
		dbg_object(bb_graphics_context).m_matrixStack=resize_number_array(dbg_object(bb_graphics_context).m_matrixStack,t_sp*2);
	}
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<335>";
	dbg_array(dbg_object(bb_graphics_context).m_matrixStack,t_sp+0)[dbg_index]=dbg_object(bb_graphics_context).m_ix;
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<336>";
	dbg_array(dbg_object(bb_graphics_context).m_matrixStack,t_sp+1)[dbg_index]=dbg_object(bb_graphics_context).m_iy;
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<337>";
	dbg_array(dbg_object(bb_graphics_context).m_matrixStack,t_sp+2)[dbg_index]=dbg_object(bb_graphics_context).m_jx;
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<338>";
	dbg_array(dbg_object(bb_graphics_context).m_matrixStack,t_sp+3)[dbg_index]=dbg_object(bb_graphics_context).m_jy;
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<339>";
	dbg_array(dbg_object(bb_graphics_context).m_matrixStack,t_sp+4)[dbg_index]=dbg_object(bb_graphics_context).m_tx;
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<340>";
	dbg_array(dbg_object(bb_graphics_context).m_matrixStack,t_sp+5)[dbg_index]=dbg_object(bb_graphics_context).m_ty;
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<341>";
	dbg_object(bb_graphics_context).m_matrixSp=t_sp+6;
	pop_err();
	return 0;
}
function bb_graphics_Transform(t_ix,t_iy,t_jx,t_jy,t_tx,t_ty){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<355>";
	var t_ix2=t_ix*dbg_object(bb_graphics_context).m_ix+t_iy*dbg_object(bb_graphics_context).m_jx;
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<356>";
	var t_iy2=t_ix*dbg_object(bb_graphics_context).m_iy+t_iy*dbg_object(bb_graphics_context).m_jy;
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<357>";
	var t_jx2=t_jx*dbg_object(bb_graphics_context).m_ix+t_jy*dbg_object(bb_graphics_context).m_jx;
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<358>";
	var t_jy2=t_jx*dbg_object(bb_graphics_context).m_iy+t_jy*dbg_object(bb_graphics_context).m_jy;
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<359>";
	var t_tx2=t_tx*dbg_object(bb_graphics_context).m_ix+t_ty*dbg_object(bb_graphics_context).m_jx+dbg_object(bb_graphics_context).m_tx;
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<360>";
	var t_ty2=t_tx*dbg_object(bb_graphics_context).m_iy+t_ty*dbg_object(bb_graphics_context).m_jy+dbg_object(bb_graphics_context).m_ty;
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<361>";
	bb_graphics_SetMatrix(t_ix2,t_iy2,t_jx2,t_jy2,t_tx2,t_ty2);
	pop_err();
	return 0;
}
function bb_graphics_Transform2(t_m){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<351>";
	bb_graphics_Transform(dbg_array(t_m,0)[dbg_index],dbg_array(t_m,1)[dbg_index],dbg_array(t_m,2)[dbg_index],dbg_array(t_m,3)[dbg_index],dbg_array(t_m,4)[dbg_index],dbg_array(t_m,5)[dbg_index]);
	pop_err();
	return 0;
}
function bb_graphics_Translate(t_x,t_y){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<365>";
	bb_graphics_Transform(1.0,0.0,0.0,1.0,t_x,t_y);
	pop_err();
	return 0;
}
function bb_graphics_Rotate(t_angle){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<373>";
	bb_graphics_Transform(Math.cos((t_angle)*D2R),-Math.sin((t_angle)*D2R),Math.sin((t_angle)*D2R),Math.cos((t_angle)*D2R),0.0,0.0);
	pop_err();
	return 0;
}
function bb_graphics_Scale(t_x,t_y){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<369>";
	bb_graphics_Transform(t_x,0.0,0.0,t_y,0.0,0.0);
	pop_err();
	return 0;
}
function bb_graphics_PopMatrix(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<345>";
	var t_sp=dbg_object(bb_graphics_context).m_matrixSp-6;
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<346>";
	bb_graphics_SetMatrix(dbg_array(dbg_object(bb_graphics_context).m_matrixStack,t_sp+0)[dbg_index],dbg_array(dbg_object(bb_graphics_context).m_matrixStack,t_sp+1)[dbg_index],dbg_array(dbg_object(bb_graphics_context).m_matrixStack,t_sp+2)[dbg_index],dbg_array(dbg_object(bb_graphics_context).m_matrixStack,t_sp+3)[dbg_index],dbg_array(dbg_object(bb_graphics_context).m_matrixStack,t_sp+4)[dbg_index],dbg_array(dbg_object(bb_graphics_context).m_matrixStack,t_sp+5)[dbg_index]);
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<347>";
	dbg_object(bb_graphics_context).m_matrixSp=t_sp;
	pop_err();
	return 0;
}
function bb_graphics_DrawImage2(t_image,t_x,t_y,t_rotation,t_scaleX,t_scaleY,t_frame){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<469>";
	bb_graphics_DebugRenderDevice();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<470>";
	if(t_frame<0 || t_frame>=dbg_object(t_image).m_frames.length){
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<470>";
		error("Invalid image frame");
	}
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<473>";
	var t_f=dbg_array(dbg_object(t_image).m_frames,t_frame)[dbg_index];
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<475>";
	bb_graphics_PushMatrix();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<477>";
	bb_graphics_Translate(t_x,t_y);
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<478>";
	bb_graphics_Rotate(t_rotation);
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<479>";
	bb_graphics_Scale(t_scaleX,t_scaleY);
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<481>";
	bb_graphics_Translate(-dbg_object(t_image).m_tx,-dbg_object(t_image).m_ty);
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<483>";
	bb_graphics_context.p_Validate();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<485>";
	if((dbg_object(t_image).m_flags&65536)!=0){
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<486>";
		bb_graphics_renderDevice.DrawSurface(dbg_object(t_image).m_surface,0.0,0.0);
	}else{
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<488>";
		bb_graphics_renderDevice.DrawSurface2(dbg_object(t_image).m_surface,0.0,0.0,dbg_object(t_f).m_x,dbg_object(t_f).m_y,dbg_object(t_image).m_width,dbg_object(t_image).m_height);
	}
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<491>";
	bb_graphics_PopMatrix();
	pop_err();
	return 0;
}
function bb_graphics_DrawImageRect(t_image,t_x,t_y,t_srcX,t_srcY,t_srcWidth,t_srcHeight,t_frame){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<497>";
	bb_graphics_DebugRenderDevice();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<498>";
	if(t_frame<0 || t_frame>=dbg_object(t_image).m_frames.length){
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<498>";
		error("Invalid image frame");
	}
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<499>";
	if(t_srcX<0 || t_srcY<0 || t_srcX+t_srcWidth>dbg_object(t_image).m_width || t_srcY+t_srcHeight>dbg_object(t_image).m_height){
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<499>";
		error("Invalid image rectangle");
	}
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<502>";
	var t_f=dbg_array(dbg_object(t_image).m_frames,t_frame)[dbg_index];
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<504>";
	bb_graphics_context.p_Validate();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<506>";
	bb_graphics_renderDevice.DrawSurface2(dbg_object(t_image).m_surface,-dbg_object(t_image).m_tx+t_x,-dbg_object(t_image).m_ty+t_y,t_srcX+dbg_object(t_f).m_x,t_srcY+dbg_object(t_f).m_y,t_srcWidth,t_srcHeight);
	pop_err();
	return 0;
}
function bb_graphics_DrawImageRect2(t_image,t_x,t_y,t_srcX,t_srcY,t_srcWidth,t_srcHeight,t_rotation,t_scaleX,t_scaleY,t_frame){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<512>";
	bb_graphics_DebugRenderDevice();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<513>";
	if(t_frame<0 || t_frame>=dbg_object(t_image).m_frames.length){
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<513>";
		error("Invalid image frame");
	}
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<514>";
	if(t_srcX<0 || t_srcY<0 || t_srcX+t_srcWidth>dbg_object(t_image).m_width || t_srcY+t_srcHeight>dbg_object(t_image).m_height){
		err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<514>";
		error("Invalid image rectangle");
	}
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<517>";
	var t_f=dbg_array(dbg_object(t_image).m_frames,t_frame)[dbg_index];
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<519>";
	bb_graphics_PushMatrix();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<521>";
	bb_graphics_Translate(t_x,t_y);
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<522>";
	bb_graphics_Rotate(t_rotation);
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<523>";
	bb_graphics_Scale(t_scaleX,t_scaleY);
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<524>";
	bb_graphics_Translate(-dbg_object(t_image).m_tx,-dbg_object(t_image).m_ty);
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<526>";
	bb_graphics_context.p_Validate();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<528>";
	bb_graphics_renderDevice.DrawSurface2(dbg_object(t_image).m_surface,0.0,0.0,t_srcX+dbg_object(t_f).m_x,t_srcY+dbg_object(t_f).m_y,t_srcWidth,t_srcHeight);
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<530>";
	bb_graphics_PopMatrix();
	pop_err();
	return 0;
}
function bb_FontMod_RenderText(t_txt,t_x,t_y){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<44>";
	if(bb_FontMod___Afont==null){
		err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<44>";
		error("font not initialized");
	}
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/FontMod/FontMod.monkey<45>";
	bb_FontMod___Afont.p_RenderText(t_txt,((t_x)|0),((t_y)|0));
	pop_err();
}
function bb_graphics_DrawLine(t_x1,t_y1,t_x2,t_y2){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<401>";
	bb_graphics_DebugRenderDevice();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<403>";
	bb_graphics_context.p_Validate();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<404>";
	bb_graphics_renderDevice.DrawLine(t_x1,t_y1,t_x2,t_y2);
	pop_err();
	return 0;
}
function bb_graphics_GetColor(){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<261>";
	var t_=[dbg_object(bb_graphics_context).m_color_r,dbg_object(bb_graphics_context).m_color_g,dbg_object(bb_graphics_context).m_color_b];
	pop_err();
	return t_;
}
function bb_graphics_GetColor2(t_color){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<265>";
	dbg_array(t_color,0)[dbg_index]=dbg_object(bb_graphics_context).m_color_r;
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<266>";
	dbg_array(t_color,1)[dbg_index]=dbg_object(bb_graphics_context).m_color_g;
	err_info="/Users/legend/MonkeyXPro79e/modules/mojo/graphics.monkey<267>";
	dbg_array(t_color,2)[dbg_index]=dbg_object(bb_graphics_context).m_color_b;
	pop_err();
	return 0;
}
function bb_GuiMod2_SetColor(t_color){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GuiMod/GuiMod.monkey<35>";
	bb_graphics_SetColor((t_color>>16&255),(t_color>>8&255),(t_color&255));
	pop_err();
}
function bb_GuiMod2_SetColor2(t_r,t_g,t_b){
	push_err();
	err_info="/Users/legend/MonkeyXPro79e/modules_ext/JPMod/GuiMod/GuiMod.monkey<39>";
	bb_graphics_SetColor((t_r),(t_g),(t_b));
	pop_err();
}
function bbInit(){
	bb_app__app=null;
	bb_app__delegate=null;
	bb_app__game=BBGame.Game();
	bb_graphics_device=null;
	bb_graphics_context=c_GraphicsContext.m_new.call(new c_GraphicsContext);
	c_Image.m_DefaultFlags=0;
	bb_audio_device=null;
	bb_input_device=null;
	bb_app__devWidth=0;
	bb_app__devHeight=0;
	bb_app__displayModes=[];
	bb_app__desktopMode=null;
	bb_graphics_renderDevice=null;
	bb_cSfx_SFX=null;
	c_AngelFont.m_error="";
	bb_FontMod___Afont=null;
	bb_cCardForm_cardForm=null;
	bb_GuiMod2___atlas=null;
	bb_GuiMod2___btnAtlas=null;
	bb_app__updateRate=0;
	bb_random_Seed=1234;
	bb_MouseMod_mouse=c_Mouse.m_new.call(new c_Mouse);
	bb_cCardForm_cardMoves=0;
}
//${TRANSCODE_END}
