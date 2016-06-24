package kvell2D;

class Scene{
	
	public var objects:Array<Object>;
	
	public function new(){
		objects = [];	
	}
	
	public function add(o:Object){
		objects.push(o);
	}
	
	public function remove(o:Object){
		objects.remove(o);
	}
	
	public function begin(){
		
	}
	
	public function update(){
		for(object in objects){
			object.update();
		}
	}
	
	public function render(){
		for(object in objects){
			object.render(Kvell2D.engine.buffer);
		}
	}
	
}