package kvell2D;

import kha.Image;
import kha.math.Vector2;
import kha.math.FastMatrix3;
import kha.graphics2.Graphics;

class Graphic extends Object{
	
	public var image:Image;
	
	public var scaleX:Int = 1;
	public var scaleY:Int = 1; 

	public var frame:Frame;
	
	public function new(?x:Float = 0, ?y:Float = 0, ?image:Image = null){
		super();
		
		this.transform.x = x;
		this.transform.y = y;
		this.transform.velocity = new Vector2(0, 0);
		this.transform.acceleration = new Vector2(0, 0);
		this.transform.width = 0;
		this.transform.height = 0;

		if(image != null){
			load(image);
		}
		
		this.scaleX = this.transform.width;
		this.scaleY = this.transform.height;
	}


	/** 	
	*	Load image as visible graphic
	*
	*	@param	i	Image being loaded
	*	@return Nothing
	*/
	public function load(i:Image){
		this.image = i;
		this.transform.width = image.width;
		this.transform.height = image.height;
		this.scaleX = this.transform.width;
		this.scaleY = this.transform.height;

		if(frame == null){
			this.frame = new Frame(image, transform.width, transform.height);
		}
	}
	
	public override function render(i:Image){
		super.render(i);

		this.transform.x += this.transform.acceleration.x * this.transform.x;
		this.transform.y += this.transform.acceleration.y * this.transform.y;
		
		this.transform.x += this.transform.velocity.x * Manager.time.delta;
		this.transform.y += this.transform.velocity.y * Manager.time.delta;
		
		if(!onScreen()){
			return;
		}

		trace("active");

		var g = i.g2;
		g.drawScaledSubImage(image, frame.x, frame.y, frame.width, frame.height, transform.x, transform.y, scaleX, scaleY);
	}


	/* positioning */

	/** 	
	*	Reset x and y velocity
	*
	*	@param	Nothing
	*	@return Nothing
	*/
	public function stop(){
		this.transform.velocity.x = this.transform.velocity.y = 0;
	}

	/** 	
	*	Move along x axis
	*
	*	@param	mx	Speed
	*	@return Nothing
	*/
	public function moveX(mx:Float){
		this.transform.velocity.x = mx;
	}

	/** 	
	*	Inverse the direction of a moving graphic
	*
	*	@param	Nothing	
	*	@return Nothing
	*/
	public function inverseDirectionX(){
		this.transform.velocity.x *= -1;
	}

	public function moveY(my:Float){
		this.transform.velocity.y = my;
	}

	public function inverseDirectionY(){
		this.transform.velocity.y *= -1;
	}

	public function move(mx:Float, my:Float){
		moveX(mx);
		moveY(my);
	}

	public function inverseDirections(){
		inverseDirectionX();
		inverseDirectionY();
	}

	public function setAccelerationX(x:Int){
		this.transform.acceleration.x = x;
	}

	public function setAccelerationY(y:Int){
		this.transform.acceleration.y = y;
	}

	public function setAcceleration(x:Int, y:Int){
		setAccelerationX(x);
		setAccelerationY(y);
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
		this.frame.y = Std.int(y * frame.height);
	}

	public function animate(order:Array<Int>, seconds:Int){
		
	}
	
	/* stuff */
	
	public function setSize(x:Int, y:Int){
		this.scaleX = x;
		this.scaleY = y;
	}

	
}