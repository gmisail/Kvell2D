package kvell2D;

import kvell2D.graphics.Layer;

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

	public function addLayer(l:Layer){
		for(o in l.contents){
			add(o);
		}
	}
	
	public function begin(){
		
	}
	
	public function update(){				
		for(object in objects){
			if(object.active){
				object.update();
			}
		}

	}
	
	public function render(){
		for(object in objects){
			if(object.visible) object.render(Manager.engine.buffer);
		}
	}

	public function dispose(){
		
	}
	
}