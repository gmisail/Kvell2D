package kvell2D.graphics;

import kha.Color;
import kha.Image;

class BasicGraphic extends Object{
	
	public var color:Color;
	
	public function new(x:Int, y:Int, w:Int, h:Int){
		super();
		
		this.transform.x = x;
		this.transform.y = y;
		this.transform.width = w;
		this.transform.height = h;
		
		color = Color.White;
	}
	
	override function render(i:Image){
		super.render(i);
		
		var g = i.g2;
		
		g.color = color;
		g.fillRect(this.transform.x, this.transform.y, this.transform.width, this.transform.height);
	}
	
}