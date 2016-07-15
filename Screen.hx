package kvell2D;

import kha.math.Vector2;

class Screen{
	
	public function new(){

	}

	public function center():Vector2{
		return new Vector(Manager.engine.width / 2, Manager.engine.height / 2);
	}

}