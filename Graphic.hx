package kvell2D;

import kha.Image;
import kha.math.Vector2;
import kha.graphics2.Graphics;

class Graphic extends Object{
	
	public var image:Image;
	
	public var velocity:Vector2;
	
	public var width:Int;
	public var height:Int;
	
	public function new(x:Int, y:Int, image:Image){
		super();
		
		this.x = x;
		this.y = y;
		this.velocity = new Vector2(0, 0);
		this.image = image;
		this.width = image.width;
		this.height = image.height;
	}
	
	public override function render(i:Image){
		super.render(i);
		
		this.x += Std.int(this.velocity.x * Time.delta);
		this.y += Std.int(this.velocity.y * Time.delta);
		
		var g = i.g2;
		g.drawImage(image, x, y);
	}
	
	public function resetVelocity(){
		this.velocity.x = this.velocity.y = 0;
	}
	
	public function center(x:Bool, y:Bool){
		if(x){
			this.x = Std.int((Kvell2D.engine.width / 2) - (image.width / 2));
		}
		
		if(y){
			this.y = Std.int((Kvell2D.engine.height / 2) - (image.height / 2));
		}
	}
	
}