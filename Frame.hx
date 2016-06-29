package kvell2D;

import kha.Image;

class Frame{
	
	public var baseImage:Image;
	public var width:Int;
	public var height:Int;
	public var x:Int;
	public var y:Int;

	public function new(baseImage:Image, width:Int, height:Int){
		this.baseImage = baseImage;
		this.width = width;
		this.height = height;
		this.x = 0;
		this.y = 0;
	}


}