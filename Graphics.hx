package kvell2D;

import kha.Image;
import kha.Font;

class Graphics {
	
	public function new(){}
	
	public function create(x:Int, y:Int, img:Image){
		return new Graphic(x, y, img);	
	}
	
	public function createText(x:Int, y:Int, text:String, font:Font){
		return new Text(x, y, text, font);
	}
	
}