package kvell2D.input;

import kha.math.FastVector2;

class Mouse {
	
	/* mouse flags */
	public var down:Bool = false;
	public var rightDown:Bool = false;
	public var leftDown:Bool = false;
	
	/* mouse position */
	public var position:FastVector2;
	public var distanceFromLast:FastVector2;
	
	public function new(){
		position = new FastVector2(0, 0);
		distanceFromLast = new FastVector2(0, 0);
	}

	private function _onMouseDown(button:Int, x:Int, y:Int) {
  		down = true;
		  
		if(button == 0){
			leftDown = true;
		}
		
		if(button == 1){
			rightDown = true;
		}
	}

	private function _onMouseUp(button:Int, x:Int, y:Int) {
  		down = false;
		  
		if(button == 0){
			leftDown = true;
		}
		
		if(button == 1){
			rightDown = true;
		}
	}
	
	private function _onMouseMove(x:Int, y:Int, mx:Int, my:Int){
		position.x = x;
		position.y = y;	
		distanceFromLast.x = mx;
		distanceFromLast.y = my;
	}
	
	public function get(){
		kha.input.Mouse.get().notify(_onMouseDown, _onMouseUp, _onMouseMove, null);
	}

}