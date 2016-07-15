package kvell2D;

class Log{
	
	public function new(){

	}

	public function send(text:String){
		trace(text + "\n");
	}

	public function statistics(s:Scene){
		send("Added: " + s.objects.length);
	//	send("Drawn: " + s.drawn.length);
	}

}