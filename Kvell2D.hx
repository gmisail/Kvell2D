package kvell2D;

import kvell2D.input.Mouse;
import kvell2D.input.Keyboard;

class Kvell2D{
	
	public static var engine = new Engine();
	public static var keyboard = new Keyboard();
	public static var mouse = new Mouse();
	public static var physics = new Physics();
	public static var time = new Time();
	public static var log = new Log();
	public static var audio = new Audio();
	
	public function new(){
		
	}
	
	public static function init(){
		keyboard.get();
		mouse.get();
	}
	
}