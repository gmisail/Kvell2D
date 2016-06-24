package kvell2D;

import kvell2D.input.Mouse;
import kvell2D.input.Keyboard;

class Kvell2D{
	
	public static var engine = new Engine();
	public static var graphics = new Graphics();
	public static var keyboard = new Keyboard();
	public static var mouse = new Mouse();
	
	public function new(){ }
	
	public static function init(){
		keyboard.get();
	}
	
}