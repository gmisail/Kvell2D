package kvell2D.input;



class Mouse {
	
	public var down:Bool = false;

	//public var position

	public function new(){

	}

	private function _onMouseDown(button:Int, x:Int, y:Int) {
  		down = true;
	}

	private function _onMouseUp(button:Int, x:Int, y:Int) {
  		down = false;
	}

	public function init(){

	}

}