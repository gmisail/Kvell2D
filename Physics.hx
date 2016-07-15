package kvell2D;

class Physics{
	
	public function new(){
		
	}
	
	public function overlap(a:Object, b:Object):Bool{
		if (a.transform.x < b.transform.x + b.transform.width && a.transform.x + a.transform.width > b.transform.x && a.transform.y < b.transform.y + b.transform.height && a.transform.height + a.transform.y > b.transform.y) {
   			return true;
		}
		return false;
	}
	

	public function collide(a:Object, b:Object):Bool{
		return false;
	}
	
}