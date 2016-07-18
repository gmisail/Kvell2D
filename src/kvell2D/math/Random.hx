package kvell2D.math;

import kha.math.Vector2;

class Random{
	
	public function new(){

	}

	public function getScreenCoordinate():Vector2{
		return new Vector2(get(Manager.screen.width), get(Manager.screen.height));
	}

	public function get(range:Int):Int{
		if(range <= 1){
			trace("If the range is <= 1, it will always return 1.");
		}
		return Std.random(range);
	}

}