package kvell2D;

class Physics{
	
	public function new(){
		
	}
	
	public function overlap(a:Object, b:Object):Bool{
		if (a.x < b.x + b.width && a.x + a.width > b.x && a.y < b.y + b.height && a.height + a.y > b.y) {
   			return true;
		}
		return false;
	}
	
	public function collide(a:Object, b:Object):Bool{
		if (a.x < b.x + b.width && a.x + a.width > b.x && a.y < b.y + b.height && a.height + a.y > b.y) {
   			//collision event
			   
			return true;
		}
		return false;
	}
	
}