package kvell2D;

import kha.Image;
import kha.math.Vector2;
import kha.graphics2.Graphics;

class Graphic extends Object{
	
	public var image:Image;
	
	public var scaleX:Int = 1;
	public var scaleY:Int = 1; 

	public var frame:Frame;

	public var velocity:Vector2;
	
	public function new(x:Float, y:Float, image:Image){
		super();
		
		this.x = x;
		this.y = y;
		this.velocity = new Vector2(0, 0);
		this.image = image;
		this.width = image.width;
		this.height = image.height;

		if(frame == null){
			this.frame = new Frame(image, width, height);
		}
	}
	
	public override function render(i:Image){
		super.render(i);
		
		this.x += this.velocity.x * Time.delta;
		this.y += this.velocity.y * Time.delta;
		
		var g = i.g2;
		g.drawSubImage(image, x, y, frame.x, frame.y, frame.width, frame.height);
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

	public function onScreen():Bool{
		if(Std.int(this.x - this.width) < 0 || this.x > Kvell2D.engine.width || Std.int(this.y + this.height) < 0 || this.y > Kvell2D.engine.height){
			return false;
		}else{
			return true;
		}
	}
	

	/* animation */

	public function createFrames(frameWidth:Int, frameHeight:Int){
		this.frame = new Frame(image, frameWidth, frameHeight);
	}

	public function setFrameDimensions(x:Int, y:Int){
		this.frame.width = x;
		this.frame.height = y;
	}

	public function setFrame(x:Int, y:Int){
		this.frame.x = Std.int(x * frame.width);
		this.frame.x = Std.int(y * frame.height);
	}

	public function animate(order:Array<Int>, seconds:Int){
		
	}

	
}