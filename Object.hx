package kvell2D;

import kha.graphics2.Graphics;
import kha.Image;

class Object{
	
	public var x:Float;
	public var y:Float;
	
	public var width:Int;
	public var height:Int;
	
	public var active:Bool = true;
	public var visible:Bool = true;
	
	public function new(){
		
	}

	public function center(x:Bool, y:Bool){
		if(x){
			this.x = Std.int((Kvell2D.engine.width / 2) - (this.width / 2));
		}
		
		if(y){
			this.y = Std.int((Kvell2D.engine.height / 2) - (this.height / 2));
		}
	}

	
	public function update(){
		
	}
	
	public function render(i:Image){
		
	}
	
	
}