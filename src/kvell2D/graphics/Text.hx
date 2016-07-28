package kvell2D.graphics;

import kha.Font;
import kha.Image;
import kha.graphics2.Graphics;
import kha.Color;

class Text extends Object{
	
	public var color:Color;
	public var text:String;
	public var font:Font;
	
	@:isVar
	public var size(get, set):Int;
	
	public function new(x:Float, y:Float, text:String, font:Font){
		super();
		
		this.transform.x = x;
		this.transform.y = y;
		this.color = Color.White;
		this.text = text;
		this.font = font;
		this.size = 16;
		
		this.transform.width = Std.int(this.font.width(size, text));
		this.transform.height = Std.int(this.font.height(size));
	}

	public override function center(x:Bool, y:Bool){
		if(x){
			this.transform.x = Std.int((Manager.screen.width / 2) - (this.transform.width / 2));
		}
		
		if(y){
			this.transform.y = Std.int((Manager.screen.height / 2) - (this.transform.height / 2));
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
	
	
	public function get_size():Int{
		return size;
	}
	
	public function set_size(size):Int{
		this.size = size;
		this.transform.width = Std.int(this.font.width(size, text));
		this.transform.height = Std.int(this.font.height(size));
		
		return size;
	}
	
	
}