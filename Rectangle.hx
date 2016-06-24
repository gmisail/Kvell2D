package kvell2D;

import kha.Font;
import kha.Image;
import kha.graphics2.Graphics;

class Rectangle extends Object{
	
	public var width:Int;
	public var height:Int;
	
	public function new(x:Int, y:Int, width:Int, height:Int){
		super();
		
		this.x = x;
		this.y = y;
		this.width = width;
		this.height = height;
	}
	
	public override function render(i:Image){
		super.render(i);
		
		var g = i.g2;
		g.drawRect(x, y, width, height);
	}
	
}