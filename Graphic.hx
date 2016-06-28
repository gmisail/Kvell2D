package kvell2D;

import kha.Image;
import kha.math.Vector2;
import kha.graphics2.Graphics;

class Graphic extends Object{
	
	public var image:Image;
	
	public var scaleX:Int = 1;
	public var scaleY:Int = 1; 

	public var animation:Animation;
	public var frameWidth:Int = 16;
	public var frameHeight:Int = 16;
	public var frameX:Int = 0;
	public var frameY:Int = 0;

	public var velocity:Vector2;
	
	public function new(x:Float, y:Float, image:Image){
		super();
		
		this.x = x;
		this.y = y;
		this.velocity = new Vector2(0, 0);
		this.image = image;
		this.width = image.width;
		this.height = image.height;
		this.animation = new Animation(image, frameWidth, frameHeight);
	}
	
	public override function render(i:Image){
		super.render(i);
		
		this.x += this.velocity.x * Time.delta;
		this.y += this.velocity.y * Time.delta;
		
		var g = i.g2;
		g.drawSubImage(image, x, y, frameX, frameY, animation.tileWidth, animation.tileHeight);
	}


	/* positioning */

	public function halt(){
		this.velocity.x = this.velocity.y = 0;
	}

	public function moveX(mx:Float){
		this.velocity.x = mx;
	}

	public function moveY(my:Float){
		this.velocity.y = my;
	}

	public function move(mx:Float, my:Float){
		moveX(mx);
		moveY(my);
	}

	public function center(x:Bool, y:Bool){
		if(x){
			this.x = Std.int((Kvell2D.engine.width / 2) - (image.width / 2));
		}
		
		if(y){
			this.y = Std.int((Kvell2D.engine.height / 2) - (image.height / 2));
		}
	}
	
	public function onScreen():Bool{
		if(Std.int(this.x - this.width) < 0 || this.x > Kvell2D.engine.width || Std.int(this.y + this.height) < 0 || this.y > Kvell2D.engine.height){
			return false;
		}else{
			return true;
		}
	}

	/* animation */

	public function setFrameDimensions(x:Int, y:Int){
		this.frameWidth = x;
		this.frameHeight = y;
	}

	public function setFrame(x:Int, y:Int){
		this.frameX = Std.int(x * frameWidth);
		this.frameY = Std.int(y * frameHeight);
	}

	public function animate(order:Array<Int>, seconds:Int){
		
	}

	
}