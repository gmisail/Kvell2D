package kvell2D;

import kvell2D.math.Rectangle;
import kha.math.FastMatrix3;

class Camera{
	
	public var matrix:FastMatrix3;
	public var scaleX:Float = 1;
	public var scaleY:Float = 1;
	
	public var viewport:Rectangle;
	
	public var bounds:Rectangle;
	public var boundries:Bool = false;
	
	public var followObject:Object;
	
	public var following:Bool = false;
	
	public function new(){
		viewport = new Rectangle(0, 0, Manager.screen.width, Manager.screen.height);
		matrix = FastMatrix3.translation(-viewport.x, -viewport.y);
	}
	
	public function follow(followObject:Object){
		this.followObject = followObject;
		this.followObject.center(true, true);
		this.following = true;
	}
	
	public function reset(){
		this.viewport.x = 0;
		this.viewport.y = 0;
	}
	
	public function setBounds(x:Int, y:Int, width:Int, height:Int){
		bounds = new Rectangle(x, y, width, height);
		boundries = true;
	}
	
	
	
	public function update(){
		//if(following){
		//	if(boundries){
		//		if(viewport.x >= 0 && viewport.x <= Std.int(bounds.width - viewport.width) && viewport.y >= 0 && viewport.y <= Std.int(bounds.height - viewport.height)){
		//			this.viewport.x = followObject.x - (Manager.screen.width / 2);
		//			this.viewport.y = followObject.y - (Manager.screen.height / 2);
		//		}
		//	}else{
		//		this.viewport.x = followObject.x - (Manager.screen.width / 2);
		//		this.viewport.y = followObject.y - (Manager.screen.height / 2);
		//	}
		//}
	}
	
}