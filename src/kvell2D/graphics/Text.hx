package kvell2D.graphics;

import kha.Font;
import kha.Image;
import kha.graphics2.Graphics;
import kha.Color;

class Text extends Object{
	
	public var color:Color;
	public var text:String;
	public var font:Font;
	public var size:Int = 64;
	
	public function new(x:Float, y:Float, text:String, font:Font){
		super();
		
		this.transform.x = x;
		this.transform.y = y;
		this.color = Color.White;
		this.text = text;
		this.font = font;
	}

	public override function center(x:Bool, y:Bool){
		var tw = this.font.width(size, text);
		var th = this.font.height(size);

		if(x){
			this.transform.x = Std.int((Manager.screen.width / 2) - (tw / 2));
		}
		
		if(y){
			this.transform.y = Std.int((Manager.screen.height / 2) - (th / 2));
		}
	}
	
	public override function render(i:Image){
		super.render(i);
		
		var g = i.g2;
		g.font = font;
		g.fontSize = size;
		g.color = color;
		g.drawString(text, this.transform.x, this.transform.y);
	}
	
}