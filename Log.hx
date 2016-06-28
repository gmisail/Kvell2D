package kvell2D;

class Log{
	
	public function new(){

	}

	public function send(text:String){
		trace(text);
	}

	public function trackDraw(s:Scene){
		send("Draw: " + s.objects.length);
	}

}