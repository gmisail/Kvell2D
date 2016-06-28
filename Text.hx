package kvell2D;

import kha.Font;
import kha.Image;
import kha.graphics2.Graphics;
import kha.Color;

class Text extends Object{
	
	public var color:Color;
	public var text:String;
	public var font:Font;
	public var size:Int = 64;
	
	public function new(x:Int, y:Int, text:String, font:Font){
		super();
		
		this.color = Color.White;
		this.text = text;
		this.font = font;
	}
	
	public override function render(i:Image){
		super.render(i);
		
		var g = i.g2;
		g.font = font;
		g.fontSize = size;
		g.color = color;
		g.drawString(text, x, y);
	}
	
}