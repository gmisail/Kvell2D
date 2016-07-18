package kvell2D.graphics;

/** 
* Lightweight Layer System 
* Add graphics to layer, and the layer is rendered.
*/

class Layer {
	
	public var contents:Array<Object>;

	public function new(){
		contents = [];

	}

	public function attach(object:Object){
		contents.push(object);
	}

	public function detach(object:Object){
		contents.remove(object);
	}

}