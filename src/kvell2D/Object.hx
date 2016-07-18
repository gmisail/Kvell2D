package kvell2D;

import kha.graphics2.Graphics;
import kha.Image;

class Object{

	public var transform:Transform;

	public var active:Bool = true;
	public var visible:Bool = true;
	
	public function new(){
		transform = new Transform();
	}

	public function center(x:Bool, y:Bool){
		if(x){
			this.transform.x = Std.int((Manager.screen.width / 2) - (this.transform.width / 2));
		}
		
		if(y){
			this.transform.y = Std.int((Manager.screen.height / 2) - (this.transform.height / 2));
		}
	}
	
	public function onScreen():Bool{
		//if(Std.int(this.x - this.width) < Manager.engine.camera.viewport.x || this.x > Manager.engine.camera.viewport.width || Std.int(this.y + this.height) < Manager.engine.camera.viewport.y || this.y > Manager.engine.camera.viewport.height){
		//	return false;
		//}

		return true;
	}
	
	public function update(){

	}
	
	public function render(i:Image){
		
	}
	
	
}